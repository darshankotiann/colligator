const express = require("express");
var cors = require("cors");
var fs = require("fs");
var bodyParser = require("body-parser");
var moment = require("moment");
var databaseName = "collegator_db";
var databaseUsername = "root";
// var databasePassword= 'IfRDrUQHlimCv';
var databasePassword = "";
// var databaseName = "collegator_db";
// var databaseUsername = "collegator_usr";
// // var databasePassword= 'IfRDrUQHlimCv';
// var databasePassword = "_collIfRDrUQHlimCv";
// const mysql2 = require('mysql2')
const mysql = require("mysql2/promise");
const app = express();

/* Live Work Start */
const httpsOn = require("https");
// const privateKey = fs.readFileSync("/var/www/collegator.com/collegator.com/privkey1.pem","utf8");
// const certificate = fs.readFileSync("/var/www/collegator.com/collegator.com/cert.pem","utf8");
// const ca = fs.readFileSync("/var/www/collegator.com/collegator.com/fullchain1.pem","utf8");
// const privateKey = fs.readFileSync('/var/SSL/massdl.devtechnosys.tech/private.key', 'utf8');
// const certificate = fs.readFileSync('/var/SSL/massdl.devtechnosys.tech/certificate.crt', 'utf8');f
// const ca = fs.readFileSync('/var/SSL/massdl.devtechnosys.tech/ca_bundle.crt', 'utf8');
// const credentials = {
//     key: privateKey,
//     cert: certificate,
//     ca: ca
// };
var https = httpsOn.createServer(app);
/* Live Work Start */

const port = 17281;
app.use(cors());
var http = require("http").Server(app);
var io = require("socket.io")(http, { cors: { origin: "*" } });

app.use(bodyParser.urlencoded({ extended: false }));

app.get("/", (req, res) => {
    res.send("hello");
});

app.post("/", async (req, res) => {
    const connection = await mysql.createConnection({
        host: "localhost",
        user: databaseUsername,
        password: databasePassword,
        database: databaseName
    });
    var receiverId = Buffer.from(req.body.receiver_id, "base64").toString();
    var response = {};
    if (req.body.message == "") {
        response.status = "error";
    } else {
        var lastCId;
        var NewIdInserted;
        var date = new Date();
        if (req.body.conversation_id == "") {
            var userID = receiverId + "," + req.body.userId;
            const [
                addUser,
                resas
            ] = await connection.execute(
                "INSERT INTO conversations (user_id,created_at,updated_at) VALUES(?,?,?)",
                [userID, date, date]
            );
            lastCId = addUser.insertId;
            const [resultData, keyfield] = await connection.execute(
                "Select * from users where id =" + req.body.userId
            );
            var dates = moment().format("h:mm A");
            // response.createdDate = dates;
            // 		response.status  = 'success';
            // response.message = req.body.message;
            // response.profile = resultData[0].profile;
            // response.conversation_id = Buffer.from(lastCId.toString()).toString('base64');
            // res.json(response);
        } else {
            lastCId = Buffer.from(
                req.body.conversation_id,
                "base64"
            ).toString();
        }
        var Type = req.body.is_group ? 1 : 0;
        connection
            .execute(
                "INSERT INTO messages (message,Type,conversation_id,sender_id,created_at,updated_at) VALUES (?,?,?,?,?,?)",
                [req.body.message, Type, lastCId, req.body.userId, date, date]
            )
            .then(async ([result, data]) => {
                var date = moment().format("h:mm A");
                NewIdInserted = result.insertId;
                var createdDate = date;
                const [resultnew, field] = await connection.execute(
                    "Select * from users where id =" + req.body.userId
                );
                response.status = "success";
                response.createdDate = createdDate;
                response.message = req.body.message;
                response.profile = resultnew[0].profile;
                response.conversation_id = Buffer.from(
                    lastCId.toString()
                ).toString("base64");
                connection.end();
                console.log("response", response);
                res.json(response);
            })
            .catch(function(e) {
                res.json({ status: "failed", error: e });
            });
        if (socketList[receiverId]) {
            io.to(socketList[receiverId].id).emit("newMessage", {
                conversation: lastCId
            });
        }
    }
});

app.post("/get-old-chatData", async function(req, res) {
    var response = {};
    var chatId = Buffer.from(req.body.chatId, "base64").toString();
    console.log(chatId);
    var pageNo = (Number(req.body.pageNo) - 1) * 10;
    if (chatId != undefined) {
        const connection = await mysql.createConnection({
            host: "localhost",
            user: databaseUsername,
            password: databasePassword,
            database: databaseName
        });
        await connection.execute(
            "update `messages` set `is_read` = 0 where `conversation_id` = " +
                chatId +
                " and `sender_id` != " +
                req.body.userId
        );
        connection
            .execute(
                "Select messages.*,users.id as userId,users.profile from messages join users on users.id = messages.sender_id where conversation_id =" +
                    chatId +
                    "  order by messages.id desc limit " +
                    pageNo +
                    ", 10"
            )
            .then(([result, data]) => {
                console.log(result);
                if (result.length > 0) {
                    response.status = "success";
                    response.page = Number(req.body.pageNo) + 1;
                    response.result = result.reverse();
                } else {
                    response.page = Number(req.body.pageNo);
                    response.status = "error";
                }
                connection.end();
                res.json(response);
            });
    } else {
        response.status = "error";
        res.json(response);
    }
});
app.post("/update-chatList", async function(req, res) {
    var response = {};
    var userId = req.body.userId;
    const connection = await mysql.createConnection({
        host: "localhost",
        user: databaseUsername,
        password: databasePassword,
        database: databaseName
    });
    connection
        .execute(
            "select conversations.*,(SELECT COUNT(messages.id)  FROM messages WHERE messages.conversation_id = conversations.id and messages.is_read =1 and sender_id != " +
                userId +
                ")as mcount,(SELECT messages.created_at  FROM messages WHERE messages.conversation_id = conversations.id ORDER by id DESC limit 1)as lastCreated from `conversations`   where  FIND_IN_SET(" +
                userId +
                ",user_id) order by lastCreated DESC "
        )
        .then(async ([result, data]) => {
            var newArr = [];

            console.log(result, "dsfdfdddddddddddddddddddddddddddddsf");
            if (result.length > 0) {
                for (const resdata of result) {
                    var usersId = resdata.user_id.split(",");
                    const keyNo = usersId.indexOf(userId);
                    usersId.splice(keyNo, 1);
                    var uid = usersId[0];
                    var recId = Buffer.from(usersId[0]).toString("base64");
                    const [
                        userdata,
                        udata
                    ] = await connection.execute(
                        "select name,profile,gender,systemNickname,id  FROM users WHERE id = ?",
                        [uid]
                    );
                    newArr.push({
                        ...resdata,
                        profile: userdata[0].profile,
                        username: userdata[0].name,
                        gender: userdata[0].gender,
                        userNickname: userdata[0].systemNickname,
                        recId: recId
                    });
                }
                connection.end();
            }
            res.json(newArr);
        });
});

app.post("/update-chatMessageList", async function(req, res) {
    var response = {};
    var userId = req.body.userId;
    const connection = await mysql.createConnection({
        host: "localhost",
        user: databaseUsername,
        password: databasePassword,
        database: databaseName
    });
    console.log("oops");
    connection
        .execute(
            "select conversations.*,(SELECT COUNT(messages.id)  FROM messages WHERE messages.conversation_id = conversations.id and messages.is_read =1 and sender_id != " +
                userId +
                ")as mcount,(SELECT messages.created_at  FROM messages WHERE messages.conversation_id = conversations.id ORDER by id DESC limit 1)as lastCreated from `conversations`   where  FIND_IN_SET(" +
                userId +
                ",user_id) order by lastCreated DESC limit 5 "
        )
        .then(async ([result, data]) => {
            var newArr = [];
            if (result.length > 0) {
                for (const resdata of result) {
                    var usersId = resdata.user_id.split(",");
                    const keyNo = usersId.indexOf(userId);
                    usersId.splice(keyNo, 1);
                    var uid = usersId[0];
                    var recId = Buffer.from(usersId[0]).toString("base64");
                    const [
                        userdata,
                        udata
                    ] = await connection.execute(
                        "select name,profile,systemNickname,id  FROM users WHERE id = ?",
                        [uid]
                    );
                    newArr.push({
                        ...resdata,
                        profile: userdata[0].profile,
                        username: userdata[0].name,
                        userNickname: userdata[0].systemNickname,
                        recId: recId
                    });
                }
            }
            connection.end();
            res.json(newArr);
        });
});

// app.listen(port, () => {
//   console.log(`Example app listening at http://localhost:${port}`)
// });

// // import { createServer } from "http";
// // import { Server } from "socket.io";

// const httpServer =require("http").createServer();
// // const options = {
// // 	path: "/my-custom-path/",
// // 	 cors: {
// //     origin: '*',
// //   },
// // 	 };
// const io = require("socket.io")(httpServer);

// io.on('connection', function(socket) {
// 	console.log('here aa ja');
//     socket.emit('callajaxfunctions', { message: 'Call krr update chat list function ko ' });
//     // socket.on('event', function(data) {
//     //     console.log('A client sent us this dumb message:', data.message);
//     // });
// });
// httpServer.listen(3002);
// Start Server
// var http = require('http').createServer();

//  if (socketList[req.body.recieverId]) {
//     io.to(socketList[req.body.recieverId].id).emit('newMessage', { conversation: group._id })
// }

const server = https.listen(port, function() {
    console.log(`Server started on port ${port}...`);
});
var io = require("socket.io")(server, {
    cors: {
        origin: "*"
    }
});
global.io = io;
global.socketList = {};

io.on("connection", socket => {
    console.log(socket.handshake.query.auth);
    console.log(socket);

    console.log("*******");
    console.log("socket.id");
    console.log(socketList);
    console.log("socket.id");
    socketList[socket.handshake.query.auth] = socket;
});
