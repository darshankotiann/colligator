<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use App\Conversation;
use App\Notification;
use App\Message;
use App\SocialMessaging;
use Validator;
use DB;
use App\Helpers\Helper;
class ChatController extends Controller
{
    private $users;
    public function __construct(User $user){
        $this->users = $user;
    }
    public function singleChat($id)
    {
        $user= User::find(base64_decode($id));
        if(auth('api')->user()->id == base64_decode($id)){
            return Helper::errorMessage('You cant reply your self');
        }else{
            $userId1= base64_decode($id).','.auth('api')->user()->id;
            $userId2= auth('api')->user()->id.','.base64_decode($id);
            $matchConversation= '';
            $matchConversation= Conversation::where('user_id',$userId1)->orWhere('user_id',$userId2)->first();
            $allMessages='';
            if($matchConversation){
                $allMessages= Message::where('conversation_id',$matchConversation->id)->with('user')->orderBy('id','Desc')->limit(10)->get();
                $allMessages = $allMessages->reverse();
            }
                $data['user'] = $user;
                $data['matchConversation'] = $matchConversation;
                $data['allMessages'] = $allMessages;
                $message= 'Successful';
                $json=[
                'status'    => 'success',
                'message'   => $message,
                'data'      => $data
            ];
            return response()->json($json, 200);
        }
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

           // for push notification
            $msg = array(
                'body'      => $request->message,
                'title'     => 'New Conversation Notification',
                'subtitle'  => 'Collegator',
                'key'       => '1',
                'vibrate'   => 1,
                'sound'     => 1,
                'largeIcon' => 'large_icon',
                'smallIcon' => 'small_icon'
                );
            $userdata =  User::where('id',base64_decode($request->receiver_id))->first();
                // $device_token = "fEitKDpvRU42qcpyeW4uCS:APA91bFOu_hkbwi23kG-UJRwsp-Rw4F26u0_woAMEla_MYmEC_ZwROaZk6ZEdA4IzE_ksaHpCkjoP0qY_E7tiOD6zhN5wm8UsXx755iQnwM5Wjk-h1gBeIubqvsCGwixbU2c_Rr1rsPv";
            $device_token = $userdata['device_token'];
            if(!empty($device_token)){
                Helper::pushNotification($msg,$device_token);
            }
           // for push notification ends

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
    public function allNotification()
    {
        // Notification::where('receiver_id',auth('api')->user()->id)->update(['is_read'=>1]);
        $allNotifications= Notification::with('users')->where('receiver_id',auth('api')->user()->id)->where('type','!=',5)->orderBy('is_read','ASC')->orderBy('created_at','desc')->get();
                $message= 'Successful';
            return Helper::successMessage($message,$allNotifications);
    }
    public function markNotification($id)
    {
        $notification=Notification::find($id);
        if(!empty($notification)){
            $notification->is_read=1; //returns true/false
            $notification->save();
            $message= 'Marked Successfully';
            return Helper::successMessage($message);

        }else{
            $message= 'Id Not found';
            return Helper::errorMessage($message);
        }
    }
    public function newNotification()
    {
        $countNewNotification=0;
        $allNotifications=[];

        $allNotifications= Notification::where('receiver_id',auth('api')->user()->id)->where('type','!=',5)->limit(5)->orderBy('id','desc')->get();
        foreach ($allNotifications as $nkey => $value) {
                $userName= $this->users::select('profile','systemNickname')->where('id',$value['sender_id'])->first();
                $allNotifications[$nkey]['profile']= $userName['profile'];
        }
        $countNewNotification= Notification::where(['receiver_id'=>auth('api')->user()->id,'is_read'=>0])->where('type','!=',5)->count();
        $data['allNotifications']= $allNotifications;
        $data['countNewNotification']= $countNewNotification;
        $message= 'Successful';
        return Helper::successMessage($message,$data);
    }
    public function deleteNotification($id)
    {
        $notification=Notification::find($id);
        if(!empty($notification)){
            $notification->delete(); //returns true/false
            $message= 'Successful deleted';
            return Helper::successMessage($message);

        }else{
            $message= 'Id Not found';
            return Helper::errorMessage($message);
        }
    }
    public function AllChannelMessages($id)
    {
        $socialMessages['data'] = SocialMessaging::with('users')->where('channel_id',$id)->get();
        $socialMessages['imageUrl'] = asset('public/profile/').'/';
        
        $message= 'Channel Messages';
        return Helper::successMessage($message,$socialMessages);
    }
    public function AddChannelMessage(Request $request)
    {
       $validator=  Validator::make($request->all(),[
            'channel_id'=>'required',
            'message'=>'required|max:255',
            'sender_id'=>'required'
        ]);
        if ($validator->fails()) {
            $errors= Helper::firstErrorHandling($validator->errors()->all());
            return Helper::errorMessage($errors);
        } 
        else
        {
            $smessage= new SocialMessaging;
            $smessage->message = $request->message;
            $smessage->channel_id = $request->channel_id;
            $smessage->sender_id = $request->sender_id;
            $smessage->save();
            $socialMessages['data'] = SocialMessaging::with('users')->where('id',$smessage->id)->first();
            $socialMessages['imageUrl'] = asset('public/profile/').'/';

            $message= 'Messages Added Successfully';
            return Helper::successMessage($message,$socialMessages);
        }
    }
    public function LatestMessage($channelId)
    {
        $socialMessages= SocialMessaging::with('users')->where('channel_id',$channelId)->orderBy('id','DESC')->first();
        $socialMessages['imageUrl'] = asset('public/profile/').'/';
        $message= 'Messages Reterive Successfully';
        return Helper::successMessage($message,$socialMessages);

    }
    
}
