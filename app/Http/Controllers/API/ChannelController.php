<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Channel;
use App\User;
use App\UserFollowers;
use App\ChannelJoinedUsers;

use Validator;
use App\Helpers\Helper;
use File;
use DateTime;
use DateTimeZone;
use App\CustomClass\RtcTokenBuilder;
use App\CustomClass\RtmTokenBuilder;
use DB;
class ChannelController extends Controller
{
    public function index()
    {
    //     $allChannels= DB::select('SELECT  GROUP_CONCAT(users.name) as userNames,channels.* FROM users join channels on find_in_set(users.id,channels.all_users) GROUP BY channels.id order By channels.id DESC');
    //     foreach($allChannels as $key=> $channel){
    //     $allUsersIds=  explode(',',$channel->all_users);
    //     $allUsersNames=  explode(',',$channel->userNames);
    //     $fav= explode(',',$channel->favourites);
    //     $allChannels[$key]->favourites = $fav[0] != '' ? $fav : []  ;

    //     $newData= [];
    //     foreach($allUsersIds as $ikey => $ival){
    //         $newData[$ikey]['id']= $ival;
    //         $newData[$ikey]['name']= $allUsersNames[$ikey];
    //     }
    //     $allChannels[$key]->userDetail = $newData;
    // } 
        $allchannelUsers= [];
    // $channelData = Channel::with('limitedUsers')->orderBy('id','DESC')->paginate(10)->map(function ($q){
    //     $fav= explode(',',$q->favourites);
    //     $q->favourites =  $fav[0] != '' ? $fav : []  ;
    //     return $q;
    // });
        $channelData = Channel::with('limitedUsers')->withCount('users')->orderBy('id','DESC')->paginate(10);
        foreach($channelData as $key=> $cdata){
            $fav= explode(',',$cdata->favourites);
            $channelData[$key]->favourites = $fav[0] != '' ? $fav : []  ;
        }

        $data['channels'] = $channelData;
        $data['imageUrl'] = asset('channels').'/';
        $message= 'Successful';
        $json=[
        'status'    => 'success',
        'message'   => $message,
        'data'      => $data
    ];
    return response()->json($json, 200);
    }
    public function favourites($id)
    {
        $channel= Channel::where('id',$id)->first();
        $favourites= explode(',',$channel->favourites);
        $uId= auth()->user()->id;
        if(in_array($uId,$favourites)){
            $pos = array_search($uId,$favourites);
            unset($favourites[$pos]);
            $message= 'Favourite remove';
        }else{
            array_push($favourites,$uId);
            $message= 'Favourite added';

        }
        $channelFav= implode(',',$favourites);
        $channel->favourites =trim($channelFav,',');
        $channel->save(); 
        return Helper::successMessage($message,$channel);
    }
    public function add(Request $request)
    {
        $validate= Validator::make($request->all(),[
            'name'=>'required|unique:channels',
            'type'=>'required'
        ]);
        if($validate->fails()){
            return Helper::errorMessage(Helper::firstErrorHandling($validate->errors()->all()));
        }else{
        $channel= new Channel;
        if($request->file('profile'))
        {
            $allowedMimeTypes = ['image/jpeg','image/gif','image/png'];
            $contentType = $request->file('profile')->getClientMimeType();
            if(! in_array($contentType, $allowedMimeTypes) ){
                return Helper::errorMessage('Not an image');
            }
            $channelimageName = time().'channel.'.$request->profile->extension();  
            $imagebase64 = base64_encode(file_get_contents($request->file('profile')));
            $request->profile->move(public_path('channels'), $channelimageName);
            $channel->profile = $channelimageName;
        }
        $channel->name = $request->name;
        $channel->all_users = auth()->user()->id;
        $channel->type = $request->type;
        $channel->created_by = auth('api')->user()->id;
        $channel->old_admin = auth('api')->user()->id;
        $channel->new_admin = auth('api')->user()->id;
        $channel->save();
        if($request->inviteUsers){
            $data['ids']=$request->inviteUsers;
            $data['message']='You have a new group invitation';
            $data['title']='New Group Invitation';
            sendPushNotification($data);
        }
        $message= 'Channel created successfully';

        return Helper::successMessage($message,$channel);
        }
    }
    public function delete($id)
    {
        Channel::where('id',$id)->update(['is_deleted'=>1]);
        return Helper::successMessage('Channel Deleted Successfully',[]);

    }
    public function update(Request $request)
    {
        $validator= Validator::make($request->all(),[
            'name'=>'required|unique:channels,name,'.$request->id,
            'type'=>'required'
        ]);
        if($validator->fails()){
            return Helper::errorMessage(Helper::firstErrorHandling($validator->errors()->all()));

        }else{
            $channel= Channel::where('id',$request->id)->first();
            if($request->file('profile'))
            {
                $allowedMimeTypes = ['image/jpeg','image/gif','image/png'];
                $contentType = $request->file('profile')->getClientMimeType();
                if(! in_array($contentType, $allowedMimeTypes) ){
                    return Helper::errorMessage('Not an image');
                }
                if(File::exists(public_path('channels/'.$channel->profile))){
                    File::delete(public_path('channels/'.$channel->profile));
                }
                $channelimageName = time().'channel.'.$request->profile->extension();  
                $imagebase64 = base64_encode(file_get_contents($request->file('profile')));
                $request->profile->move(public_path('channels'), $channelimageName);
                $channel->profile = $channelimageName;
            }
            $channel->name = $request->name;
            $channel->type = $request->type;
            $channel->save(); 
        return Helper::successMessage('Channel Updated Successfully',[]);

        }
    }
    public function sharedLink($id)
    {
        $channel= Channel::where('id',$id)->first();
        $allUsers= explode(',',$channel->shared_users);
        if(!in_array($id,$allUsers)){
            array_push($allUsers,$id);
        }
        $newUsers= implode(',',$allUsers);
        $channel->shared_users = $newUsers;
        $channel->save();
        return Helper::successMessage('user added successfully',[]);

    }
    public function generateToken(Request $request)
    {
        $appID = "690ea15e89fb486f8a875bde09d3cf7e";
        $appCertificate = "53191a0c79644b7bb6631298aed657f4";
        $channelName = $request->channelName;
        $uid = auth()->user()->id;
        $uidStr =  (string)auth('api')->user()->id;
        // $role = RtcTokenBuilder::RoleSubscriber;
        if($channelData= $this->updateChannelAdmin($request->channelId)){

            $expireTimeInSeconds = 3600;
            $currentTimestamp = (new DateTime("now", new DateTimeZone('UTC')))->getTimestamp();
            $privilegeExpiredTs = $currentTimestamp + $expireTimeInSeconds;
            
            // $token = RtcTokenBuilder::buildTokenWithUid($appID, $appCertificate, $channelName, $uid, $role, $privilegeExpiredTs);
            // $data['uidToken'] = $token;
            $role = RtmTokenBuilder::RoleRtmUser;
            $token = RtmTokenBuilder::buildToken($appID, $appCertificate, $uidStr, $role, $privilegeExpiredTs);
            $data['rtmUserToken'] = $token;
            
            $role = RtcTokenBuilder::RolePublisher;
            $token = RtcTokenBuilder::buildTokenWithUid($appID, $appCertificate, $channelName, $uid, $role, $privilegeExpiredTs);
            $data['rtcUserToken'] = $token;
            $data['appID'] = $appID;
            $data['userID'] = auth('api')->user()->id;
            $data['channelData'] = $channelData;
            return Helper::successMessage('RTC token',$data);
        }
            
    }
    public function updateChannelAdmin($id)
    {
        $channelData= Channel::where('id',$id)->first();
        $newAdmin= $channelData->new_admin;
        if(auth()->user()->role==1){
            $newAdmin= auth('api')->user()->id;
        }
        $channelData->new_admin = $newAdmin;
        $channelData->save();
        return $channelData;
    }
    public function generateRtcToken(Request $request)
    {
        $appID = "690ea15e89fb486f8a875bde09d3cf7e";
        $appCertificate = "53191a0c79644b7bb6631298aed657f4";
        $channelName = $request->channelName;
        $uid = auth()->user()->id;
        $uidStr = auth()->user()->id;
        $role = RtcTokenBuilder::RoleAttendee;
        // $role = RtcTokenBuilder::RoleSubscriber;

        $expireTimeInSeconds = 3600;
        $currentTimestamp = (new DateTime("now", new DateTimeZone('UTC')))->getTimestamp();
        $privilegeExpiredTs = $currentTimestamp + $expireTimeInSeconds;
        
        $token = RtcTokenBuilder::buildTokenWithUid($appID, $appCertificate, $channelName, $uid, $role, $privilegeExpiredTs);
        $data['rtcUserToken'] = $token;
        
        $token = RtcTokenBuilder::buildTokenWithUserAccount($appID, $appCertificate, $channelName, $uidStr, $role, $privilegeExpiredTs);
        // $data['userToken'] = $token;
        $data['appID'] = $appID;
        $data['userID'] = auth('api')->user()->id;
        return Helper::successMessage('RTC token',$data);

    }

    public function generateRtmToken(Request $request)
    {

        $appID = "690ea15e89fb486f8a875bde09d3cf7e";
        $appCertificate = "53191a0c79644b7bb6631298aed657f4";
        $user = (string)auth('api')->user()->id;
        $role = RtmTokenBuilder::RoleRtmUser;
        $expireTimeInSeconds = 3600;
        $currentTimestamp = (new DateTime("now", new DateTimeZone('UTC')))->getTimestamp();
        $privilegeExpiredTs = $currentTimestamp + $expireTimeInSeconds;
        $token = RtmTokenBuilder::buildToken($appID, $appCertificate, $user, $role, $privilegeExpiredTs);
        $data['userToken'] = $token;
        $data['appID'] = $appID;
        $data['userID'] = auth('api')->user()->id;
        return Helper::successMessage('RTM token',$data);
    }
    public function sendPushNotification($request)
    {
        $request->ids= rtrim($request->ids, ',');
    	$ids= explode(',',$request->ids);
    	$msg = array(
            'body'      => $request->message,
            'title'     => $request->title,
            'subtitle'  => 'Collegator',
            'key'       => '2',
            'vibrate'   => 1,
            'sound'     => 1,
            'largeIcon' => 'large_icon',
            'smallIcon' => 'small_icon',
            'badge'=>2

            );
    	$userdata =  User::all();

	    foreach ($ids as $key => $value) {
	        $data= $userdata->where('id',base64_decode($value))->first();
	        // $device_token = "fEitKDpvRU42qcpyeW4uCS:APA91bFOu_hkbwi23kG-UJRwsp-Rw4F26u0_woAMEla_MYmEC_ZwROaZk6ZEdA4IzE_ksaHpCkjoP0qY_E7tiOD6zhN5wm8UsXx755iQnwM5Wjk-h1gBeIubqvsCGwixbU2c_Rr1rsPv";
	        $device_token = $data['device_token'];
	        if(!empty($device_token)){
	        	Helper::pushNotification($msg,$device_token);
	        }
	    }
    }
    public function addLeftUserInChannel(Request $request)
    {
        $validator= Validator::make($request->all(),[
            'channel_id'=>'required',
            'status'=>'required',
        ]);
        if($validator->fails()){
            return Helper::errorMessage(Helper::firstErrorHandling($validator->errors()->all()));

        }else{
            
            $channelData= Channel::where('id',$request->channel_id)->first();
            if($channelData){

            
            $allUsers= explode(',',$channelData->all_users);
            $uId= auth('api')->user()->id;

            
            if(!in_array($uId,$allUsers)){
                array_push($allUsers,$uId);
                $message= 'Favourite added';
            }
            $channelFav= implode(',',$allUsers);
            $channelData->all_users =trim($channelFav,',');
            $channelData->save();
            if($this->updateCurrentUserAccess($request['channel_id'])){

                $allchannelUsers= $this->JoinedUser($request->all());
                
                return Helper::successMessage('User Updated Successfully',$allchannelUsers);
            }
            }
        return Helper::errorMessage('Channel not found',[]);
        }
    }
    public function updateCurrentUserAccess($channelId)
    {
        $channelData= Channel::where('id',$channelId)->first();
        $micAccess= 0;
        $messageAccess= 0;
        $user= auth('api')->user();
        if($user->role==1){
            $micAccess= 1;
            $messageAccess= 1;
        }
        else{
            if($channelData->new_admin == $user->id){
                $micAccess= 1;
                $messageAccess= 1;
            }
        }
        $userData= user::where('id',$user->id)->first();
        $userData->mic_access = $micAccess;
        $userData->message_access = $messageAccess;
        $userData->save();
        return true;
    }
    public function updateMicMessage (Request $request)
    {
        $userData= User::where('id',$request->uid)->first();
        $micAccess = $request->micAccess ?? $userData->mic_access;
        $messageAccess = $request->messageAccess ?? $userData->message_access;
        User::where('id',$request->uid)->update(['mic_access'=>$micAccess,'message_access' =>$messageAccess ]);
        return $this->channelUserList($request->channelId);

    }
    
    public function channelUserList($channelId)
    {
        $channelData = Channel::with('users')->find($channelId);
        $followers= UserFollowers::where('following',auth('api')->user()->id)->get()->pluck('follower');
        $allchannelUsers=[];
        if(!empty($channelData)){
            $allchannelUsers['activeUserData']=$channelData->users()->orderBy('channel_joined_users.id','DESC')->paginate(10); 
            // $allchannelUsers['activeUserData']=$channelData->users()->paginate(10); 
            $allchannelUsers['activeUserCount']= $channelData->users()->count();
            $allchannelUsers['followers']= $followers;
            $allchannelUsers['channel']= $channelData;
        } 
        return Helper::successMessage('Active Channel List',$allchannelUsers);
    }
    public function giveControl(Request $request)
    {
        $validator= Validator::make($request->all(),[
            'channelId'=>'required',
            'uId'=>'required'
        ]);
        if($validator->fails()){
            return Helper::errorMessage(Helper::firstErrorHandling($validator->errors()->all()));

        }else{

        $channelData = Channel::find($request->channelId);
        $channelData->old_admin = $request->uId;
        $channelData->save();
        return Helper::successMessage('Control Grant Successfully',$channelData);
        }       
    }
    public function JoinedUser($request)
    {
        $channelId= $request['channel_id'];
        $channelData = Channel::with('users')->find($channelId);
        $allchannelUsers=[];
        if(!empty($channelData))
        {
            $followers= UserFollowers::where('following',auth('api')->user()->id)->get()->pluck('follower');
            $resultData= $channelData->users()->where('user_id',auth('api')->user()->id)->first();
            if(empty($resultData) && $request['status']== 1){

                $channelData->users()->attach(auth('api')->user()->id);
            }
            if($resultData && $request['status']== 2){
                $channelData->users()->detach(auth('api')->user()->id);
                if($channelData->new_admin == auth('api')->user()->id){
                    $channelData->new_admin = $channelData->old_admin;  
                    $channelData->save();   
                }
            }
            $allUsers= Channel::with('users')->find($channelId);
            $allchannelUsers['activeUserData']=$allUsers->users()->orderBy('channel_joined_users.id','DESC')->paginate(10); 
            $allchannelUsers['activeUserCount']= $allUsers->users()->count();
            $allchannelUsers['followers']= $followers;
            $allchannelUsers['channel']= $channelData;
        } 
        return $allchannelUsers;
    }
    // check current user following users

    public function UserFollowing($id)
    {
        $userData= UserFollowers::where(['following'=>auth('api')->user()->id,'follower'=>$id])->first();
        if(empty($userData)){
            UserFollowers::create(['following'=>auth('api')->user()->id,'follower'=>$id]);
        return Helper::successMessage('follow sucessfully',[]);
        }else{
            UserFollowers::where(['following'=>auth('api')->user()->id,'follower'=>$id])->delete();
            return Helper::successMessage('unfollow sucessfully',[]);
        }
    }
}
