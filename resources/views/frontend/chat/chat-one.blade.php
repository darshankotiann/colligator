@extends('layouts.frontend.app')
@section('content')
    <script type="text/JavaScript" src=" https://MomentJS.com/downloads/moment.js"></script>
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/socket.io/4.1.3/socket.io.js"
        integrity="sha512-PU5S6BA03fRv1Q5fpwXjg5nlRrgdoguZ74urFInkbABMCENyx5oP3hrDzYMMPh3qdLdknIvrGj3yqZ4JuU7Nag=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script> -->
    <div class="site-wraper">
        <section class="chat-box-section">
            <div class="container">
                <div class="chat-box-block">

                    <div class="row">

                        <div class="col-md-3 conversationList">
                            <div class="chat-box-user-block">
                                <div class="chat-box-top-block">
                                    <div class="chat-box-user-blk">

                                        <div class="chat-box-user-info">
                                            <h4
                                                style="color:{{ Auth()->user()->gender == 1 ? 'male-color' : 'female-color' }}">
                                                {{ Auth()->user()->systemNickname }}</h4>
                                            <!-- <p>Lorem Ipsum is simply </p> -->
                                        </div>
                                    </div>
                                    <div class="chat-user-search">
                                        <form>
                                            <input type="text" class="form-control searchNameBox" name="search"
                                                placeholder="Search">
                                        </form>
                                    </div>
                                </div>
                                <div class="chat-box-user-list-blk">

                                </div>
                            </div>
                        </div>

                        <div class="col-md-9">

                            <div class="chat-box-active-user-blk">

                                <div class="chat-box-active-user-detail">
                                    <!-- <figure class="obj-fit">
                                                                    <img src="{{ asset('setting/' . $global_setting->logo) }}">
                                                                </figure> -->
                                    <div class="chat_heading">
                                        <h4 class="{{ $user['gender'] == 1 ? 'male-color' : 'female-color' }}"
                                            style="font-size: 18px;font-weight: 700;font-family:'Aktiv-Bold';word-break: break-all;">
                                            {{ $user['systemNickname'] }}</h4>
                                        <!-- <p>Lorem Ipsum is simply </p> -->
                                    </div>

                                </div>

                                <div class="active-user-chat-box">
                                    @if ($allMessages)
                                        <input type="hidden" name="pageNo" class="pageNo" value="1">
                                        <input type="hidden" name="dynamic" class="dynamic" value="">
                                        <input type="hidden" name="chatId" class="chatId"
                                            value="{{ base64_encode($matchConversation->id) }}">
                                        <div id="loading" class="btn-blue-new" style="" onclick="cllAjaxData()">
                                            Load More
                                        </div>
                                    @endif
                                    <ul class="messageList">


                                    </ul>
                                </div>

                                <div class="message-form-blk">
                                    <form action="{{ route('frontend.add-chat') }}" method="post" id="chatMessage">
                                        @csrf
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="textMessage" name="message"
                                                placeholder="Write a message....">
                                            <input type="hidden" name="receiver_id" value="{{ base64_encode($user->id) }}">
                                            <input type="hidden" id="conversation_id" name="conversation_id"
                                                value="{{ $matchConversation ? base64_encode($matchConversation->id) : '' }}">
                                            <input type="hidden" name="is_group"
                                                value="{{ $matchConversation ? $matchConversation->is_group : '' }}">
                                            <button type="submit" class="btn message-submit-btn btn-blue-new chatMsgBox">
                                                <i class="ri-send-plane-fill"></i>
                                            </button>
                                        </div>
                                    </form>
                                </div>

                            </div>

                        </div>

                    </div>

                </div>
            </div>
        </section>
    </div>
    <script>
        $('#chatMessage').on('submit', function(e) {
            if ($('#textMessage').val() != '') {
                $('.chatMsgBox').attr('disabled', true);
            }
            e.preventDefault();
            var form = $(this);
            var userId = "{{ auth()->user()->id }}";
            $.ajax({
                'type': 'post',
                // 'url':baseurl+'/add-chat',
                'url': nodeip,
                'dataType': 'json',
                'data': form.serialize() + "&userId=" + userId,


                success: function(response) {
                    $('.chatMsgBox').attr('disabled', false);

                    // var result= jQuery.parseJSON(response);
                    console.log("append adatat");
                    if (response.status == 'error') {
                        toastr.error('No Blank Message allowed');
                    } else {
                        updateChatList();
                        $('#textMessage').val('');
                        // var ImageData = imagePath+'/profile/'+response.profile;
                        var ImageData = imagePath + '/profile/colleicon.png';
                        var htmltext = '<div class="active-user-message-box"><span class="message">' +
                            response.message + '</span><span class="date-time"> ' + response
                            .createdDate + '</span></div>';
                        $('#conversation_id').val(response.conversation_id);
                        $('.messageList').append('<li class="reply">' + htmltext + '</li>');
                        var myDiv = document.querySelector(".active-user-chat-box");
                        myDiv.scrollTop = myDiv.scrollHeight;
                    }
                },
                error: function(response) {
                    $('.chatMsgBox').attr('disabled', false);
                }
            });
        });
        $('.searchNameBox').on('keyup', function(e) {
            var keyvalue = this.value;
            $.ajax({
                'type': 'post',
                'url': baseurl + '/get-chat-userName',
                'data': {
                    'name': keyvalue,
                },
                success: function(response) {
                    var result = jQuery.parseJSON(response);
                    $('.chat-box-user-list-blk').html(result);
                }
            });
        });
    </script>
    <script type="text/javascript">
        socket.on('newMessage', data => {
            console.log('mei ab chat room mie hu:');
            $('.pageNo').val(1);
            $('.dynamic').val(1);
            this.cllAjaxData();
            this.updateChatList();
            this.changeHeaderMessageList();
        });
        // socket.emit('event', { message: 'Hey, I have an important message!' });
        // socket.on("disconnect", (reason) => {
        //   console.log(reason); // "ping timeout"
        // });


        // $(".active-user-chat-box").animate({scrollTop: $('ul.messageList li:last').prop("scrollHeight")}, 500); 
        // $( "li.reply:first" ).on("mouseenter",function(){
        //     cllAjaxData();
        // });
        // $(document).ajaxStart(function () {
        //     $("#loading").show();
        // }).ajaxStop(function () {
        //     $("#loading").hide();
        // });

        window.onload = function() {
            cllAjaxData()
            updateChatList()
        };

        function cllAjaxData() {
            var pageNo = $('.pageNo').val();
            var chatId = $('.chatId').val();
            var dynamic = $('.dynamic').val();
            if (chatId) {
                $.ajax({
                    'type': "post",
                    'url': nodeip + '/get-old-chatData',
                    'data': {
                        userId: "{{ auth()->user()->id }}",
                        pageNo: pageNo,
                        chatId: chatId
                    },
                    beforeSend: function() {
                        $('#loading').html('Loading...');
                    },
                    success: function(data) {
                        if (data.status == 'error') {
                            $('#loading').html('');
                            $('#loading').addClass('importantRule');

                        } else {
                            console.log('data mere hai yha');
                            console.log(data);
                            $('#loading').html('Load More');
                            $('.pageNo').val(data.page);
                            var htmldata = '';
                            var lastDate = '';
                            $.each(data.result, function(k, v) {
                                if (moment(v.created_at).format('MMMM Do YYYY') != lastDate) {
                                    lastDate = moment(v.created_at).format('MMMM Do YYYY');
                                    if (moment(v.created_at).format('MMMM Do YYYY') == moment().format(
                                            'MMMM Do YYYY')) {
                                        htmldata += '<li class="dateLine">Today</li>';
                                    } else {
                                        htmldata += '<li class="dateLine">' + moment(v.created_at)
                                            .format('D MMM YYYY') + '</li>';
                                    }
                                }
                                console.log('v========', v);
                                var uId = "{{ auth()->user()->id }}";
                                var Reply = uId == v.userId ? 'reply' : 'revert';
                                htmldata += '<li class="' + Reply +
                                    '"><div class="active-user-message-box"><span class="message">' + v
                                    .message + '</span><span class="date-time">' + moment(v.created_at)
                                    .format('h:mm A') + '</span></div></li>';
                                // htmldata+='<li class="'+Reply+'"><div class="active-user-message-pic" style="background-image: url('+imagePath+'profile/colleicon.png);"></div><div class="active-user-message-box"><span class="message">'+v.message+'</span><span class="date-time">'+moment(v.created_at).format('MMM Do YYYY, h:mm:ss a')+'</span></div></li>';
                                // htmldata+='<li class="'+Reply+'"><div class="active-user-message-pic" style="background-image: url('+imagePath+'profile/'+v.profile+');"></div><div class="active-user-message-box"><span class="message">'+v.message+'</span><span class="date-time">'+moment(v.created_at).format('MMM Do YYYY, h:mm:ss a')+'</span></div></li>';
                            });
                            if (dynamic == 1) {
                                $('.messageList').html(htmldata);
                                $('.dynamic').val('');
                            } else {
                                $('.messageList').prepend(htmldata);
                            }
                            if (data.page == 2) {

                                var myDiv = document.querySelector(".active-user-chat-box");
                                myDiv.scrollTop = myDiv.scrollHeight;
                            }
                            // $('.messageList').prepend('<li>Hello amit nalle</li>');
                        }
                    }
                });
            }
        }

        function updateChatList() {
            $.ajax({
                'type': "post",
                'url': nodeip + '/update-chatList',
                'data': {
                    userId: "{{ auth()->user()->id }}",
                },
                success: function(data) {

                    console.log('deepanshu ji');
                    console.log(data);
                    var conversation_id = $('#conversation_id').val();
                    htmldata = '';
                    htmldata += '<ul>';
                    $.each(data, function(k, v) {
                        classStyle = conversation_id == v.id ? 'newChat' : '';
                        mcountStyle = v.mcount > 0 ? 'newChat' : '';
                        userName = v.name != null ? v.name : v.userNickname;
                        gender = v.gender == 1 ? 'male-color' : 'female-color';
                        hrefData = baseurl + "/chat/" + v.recId;
                        htmldata += '<li class="' + classStyle + mcountStyle + '"><a href="' +
                            hrefData +
                            '" class="chat-box-user-list-item"><div class="chat-box-user-list-item-dtl "><div class=""><h4 class="' +
                            gender +
                            '" style="font-size: 16px;font-weight: 600;font-family:Aktiv-Bold;word-break: break-all;">' +
                            userName + ' </h4></div></div>';
                        // htmldata+='<li class="'+classStyle+mcountStyle+'"><a href="'+hrefData+'" class="chat-box-user-list-item"><div class="chat-box-user-list-item-dtl "><figure class="obj-fit"><img src="'+imagePath+'profile/colleicon.png"></figure><div class="chat-box-user-list-item-info"><h4>'+userName+'</h4></div></div>';
                        if (v.mcount > 0) {
                            htmldata += '<span class="badge badge-secondary ">' + v.mcount + '</span>';
                        }
                        htmldata += '</a></li>';
                    });
                    htmldata += '</ul>';
                    $('.chat-box-user-list-blk').html(htmldata);
                }
            });
        }
    </script>
@endsection
<style>
    .dateLine {
        font-size: 12px;
        justify-content: center;
    }

    @media (max-width: 479px) {
        .footer_none {
            display: none;
        }
    }
</style>
