<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use App\Conversation;
use App\Message;
use Validator;
use DB;
class ChatController extends Controller
{
    private $users;
    public function __construct(User $user){
        $this->users = $user;
    }
    public function singleChat($id)
    {
        $user= User::find(base64_decode($id));
        if(Auth()->user()->id == base64_decode($id)){
            toastr()->error('You cant reply your self');
            return redirect()->back();
        }
        // $allconversation= Conversation::whereRaw('FIND_IN_SET("'.Auth()->user()->id.'",user_id)')->orderBy('id','desc')->get();
        // foreach ($allconversation as $ckey => $cvalue) {
        //     $usersId= explode(',', $cvalue['user_id']);
        //     if(count($usersId)>2){
        //         $allconversation[$ckey]['username']=$cvalue['name'];
        //         $allconversation[$ckey]['profile']='setting/icon.png';
        //         $allconversation[$ckey]['userId']='';
        //     }else{
        //         $keyNo= array_search(auth()->user()->id, $usersId);
        //         unset($usersId[$keyNo]);
        //         $usersId =array_values($usersId);
        //         $userName= $this->users::select('name','profile','systemNickname')->where('id',$usersId[0])->first();
        //         $allconversation[$ckey]['username']=$userName['systemNickname'];
        //         $allconversation[$ckey]['profile']=$userName['profile'];
        //         $allconversation[$ckey]['userId']=base64_encode($usersId[0]);
        //     }
        // }
        $userId1= base64_decode($id).','.Auth()->user()->id;
        $userId2= Auth()->user()->id.','.base64_decode($id);
        $matchConversation= '';
        $matchConversation= Conversation::where('user_id',$userId1)->orWhere('user_id',$userId2)->first();
        $allMessages='';
        if($matchConversation){
            $allMessages= Message::where('conversation_id',$matchConversation->id)->with('user')->orderBy('id','Desc')->limit(10)->get();
            $allMessages = $allMessages->reverse();
        }
        return view('frontend/chat/chat-one',compact('user','matchConversation','allMessages'));
    }
    public function addChat(Request $request)
    {
    $validator = Validator::make($request->all(), [
    'message' => 'required',
    'receiver_id' => 'required'
        ]);
        $response=[];
        if ($validator->fails()) {
            $response['status']='error';
        } 
        else {
            $response['status']='success';
            if(empty($request->conversation_id)){
                $conversation= new Conversation;
                $data['user_id']= base64_decode($request->receiver_id).','.auth()->user()->id; 
                $lastCId= $conversation->create($data)->id;
            }else{
                $lastCId = base64_decode($request->conversation_id);
            }
            $messages= new Message; 
            $data['message'] = $request->message;
            $data['type'] = $request->is_group? 1 : 0;
            $data['conversation_id'] = $lastCId;
            $data['sender_id'] = auth()->user()->id;
            $lastMId= $messages->create($data)->id;

            $newMessage= Message::where('id',$lastMId)->with('user')->first();
            $response['newMessages'] = view('frontend/chat/messages',compact('newMessage'))->render();
            $response['conversation_id'] = base64_encode($lastCId);
        }
        echo json_encode($response);
    }
    public function getChatUserName(Request $request)
    {
        // "SELECT * FROM `users` WHERE id in(8,15,24) AND systemNickname LIKE '%Gxe$kB%'";
        $usersIds=[];
            $allconversation= Conversation::withCount('messages')->whereRaw('FIND_IN_SET("'.Auth()->user()->id.'",user_id)')->get();
            $usersIds['ids']=[];
            foreach ($allconversation as $ckey => $cvalue) {
            $usersId='';
            $usersId= explode(',', $cvalue['user_id']);
            $keyNo= array_search(auth()->user()->id, $usersId);
            unset($usersId[$keyNo]);
            $usersId = array_values($usersId);
            if(!in_array($usersId[0],$usersIds['ids'])){
                $usersIds['ids'][] = $usersId[0];
                $usersIds['countmsg'][] = $cvalue['messages_count'];
            }
        }
        $newIds= $usersIds['ids'];
        if(!empty($request->name)){
            $users= User::whereIn('id',$newIds)->where('systemNickname','like','%'.$request->name.'%')->get();
        }else{
            
            $users= User::whereIn('id',$newIds)->get();
        }
        
         $messageData=  view('frontend/chat/chatmessagelist',compact('users','usersIds'))->render();
        echo json_encode($messageData);
         
        // foreach ($allconversation as $key => $value) {
            
        // }
    }

    public function chatList($id)
    {
        // "SELECT * FROM `users` WHERE id in(8,15,24) AND systemNickname LIKE '%Gxe$kB%'";
        $user= User::find(base64_decode($id));
        if(Auth()->user()->id == base64_decode($id)){
            toastr()->error('You cant reply your self');
            return redirect()->back();
        }
        // $allconversation= Conversation::whereRaw('FIND_IN_SET("'.Auth()->user()->id.'",user_id)')->orderBy('id','desc')->get();
        // foreach ($allconversation as $ckey => $cvalue) {
        //     $usersId= explode(',', $cvalue['user_id']);
        //     if(count($usersId)>2){
        //         $allconversation[$ckey]['username']=$cvalue['name'];
        //         $allconversation[$ckey]['profile']='setting/icon.png';
        //         $allconversation[$ckey]['userId']='';
        //     }else{
        //         $keyNo= array_search(auth()->user()->id, $usersId);
        //         unset($usersId[$keyNo]);
        //         $usersId =array_values($usersId);
        //         $userName= $this->users::select('name','profile','systemNickname')->where('id',$usersId[0])->first();
        //         $allconversation[$ckey]['username']=$userName['systemNickname'];
        //         $allconversation[$ckey]['profile']=$userName['profile'];
        //         $allconversation[$ckey]['userId']=base64_encode($usersId[0]);
        //     }
        // }
        $userId1= base64_decode($id).','.Auth()->user()->id;
        $userId2= Auth()->user()->id.','.base64_decode($id);
        $matchConversation= '';
        $matchConversation= Conversation::where('user_id',$userId1)->orWhere('user_id',$userId2)->first();
        $allMessages='';
        if($matchConversation){
            $allMessages= Message::where('conversation_id',$matchConversation->id)->with('user')->orderBy('id','Desc')->limit(10)->get();
            $allMessages = $allMessages->reverse();
        }
        return view('frontend/chat/chatlist',compact('user','matchConversation','allMessages'));
    }
    public function NoChat()
    {
        return view('frontend.chat.no-chat');
    }


}
