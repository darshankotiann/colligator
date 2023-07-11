<?php
namespace App\Helpers;
use Mail;
use DB;
use Auth;
use App\Permissions;
use App\Notification;
use App\University;
use App\Jobs\SendEmailJob;
class Helper{
    public static function generateOTP(){
        $otp = mt_rand(1000,9999);
        return $otp;
    }
    public static function mailSend($content,$subject,$touser)
    {
        $details['content']= $content;
        $details['subject']= $subject;
        $details['touser']= $touser;
         dispatch(new SendEmailJob($details));

        $username=\Config::get('mail.serveremail'); 
        Mail::send('email.mailTemplate',$content , function ($message) use ($username,$subject,$touser) {
            $message->from('noreply@gmail.com', 'Collegator');
            $message->subject($subject);
            $message->to($touser);
        });
    }
   
    public static function globalSetting()
    {
        return DB::table('global_setting')->first();
    }
    public static function Country()
    {
        return DB::table('countries')->where('flag',1)->get();
    }
    public static function SelectedCountry($id)
    {
        return DB::table('countries')->where('id',$id)->first();
    }
    public static function FetchCustomData($from,$where)
    {
        return DB::table($from)->where($where)->get();
    }
    public static function PermissionCheck($modal='',$permissionType)
    {
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>$modal])->first();
            if($permissions[$permissionType]!=1){
                return false;
            }else{
                return true;
            }
        }
        return true;
    }
    public static function PermissionGet($modal='')
    {
        if(Auth::guard('admin')->user()->role==2){
        return  Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>$modal])->first();
        }else{
            return [];
        }
    }
    public static function getColor($number)
    {
        if($number<= 3){
            return 'lr-bg';
        }
        if($number > 3 && $number<= 7){
            return 'ly-bg';
        }
        if($number > 7 && $number<= 10){
            return 'lg-bg';
        }
    }
    public static function Notification($senderId,$receiverId,$type,$ratingPageId,$ratingType,$Rnotiftype='',$message,$replyMsgId)
    {
        if($senderId != $receiverId){
            //notification section
            $notification= Notification::where(['sender_id'=>$senderId,'receiver_id'=>$receiverId,'type'=>$type,'rating_pageId'=>$ratingPageId,'rating_type'=>$ratingType,'rating_msg_id'=>$replyMsgId])->first();
            if(empty($notification)){
                if(!empty($Rnotiftype)){
                    Notification::where(['sender_id'=>$senderId,'receiver_id'=>$receiverId,'type'=>$Rnotiftype,'rating_pageId'=>$ratingPageId,'rating_type'=>$ratingType,'rating_msg_id'=>$replyMsgId])->delete();
                }
                Notification::create(['sender_id'=>$senderId,'receiver_id'=>$receiverId,'type'=>$type,'rating_pageId'=>$ratingPageId,'rating_type'=>$ratingType,'is_read'=>0,'message'=>$message,'rating_msg_id'=>$replyMsgId]);
            }else{
                Notification::where(['sender_id'=>$senderId,'receiver_id'=>$receiverId,'type'=>$type,'rating_pageId'=>$ratingPageId,'rating_type'=>$ratingType,'rating_msg_id'=>$replyMsgId])->delete();
                if(!empty($Rnotiftype)){
                    Notification::where(['sender_id'=>$senderId,'receiver_id'=>$receiverId,'type'=>$Rnotiftype,'rating_pageId'=>$ratingPageId,'rating_type'=>$ratingType,'rating_msg_id'=>$replyMsgId])->delete();
                }
            }
        }
        //notification section
    }
    public static function pushNotification($msg,$device_token){
        
        $url = 'https://fcm.googleapis.com/fcm/send';
        $fields = array(
                   'to' => $device_token,
                   'data' => $msg,
                   'notification' => $msg,

               );
        // Firebase API Key
        $headers = array('Authorization:key=AAAAe8Zz5Ng:APA91bFOASp16OoJjeoRG1cPN6JTd8ScrcQ4n8ooTB8LS7cw--hXnFILeTwUHduv24M5FOQX1Ixc_ZinRn78L0n5u7pwLgyWYlNXEZpmaqZQjAKIbtwVs0caEyVwR1Pp0oW5iik9Y39y','Content-Type:application/json');
        // Open connection
        $ch = curl_init();
        // Set the url, number of POST vars, POST data
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        // Disabling SSL Certificate support temporarly
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));
        $result = curl_exec($ch);
        if ($result === false) {
            die('Curl failed: ' . curl_error($ch));
        }
        curl_close($ch);

        // $notification  = new Notification;
        // $notification->user_id = $user_id;
        // if(isset($msg['order_id']))
        // {
        //     $notification->order_id = $msg['order_id'];
        // }
        // $notification->message = $msg['body'];
        // $notification->message_key = $msg['key'];
        // $notification->save();

   
    }
    public static function GetGrade($id)
    {
        $grades= ['1'=>'A++','2'=>'A+','3'=>'A','4'=>'B+','5'=>'B','6'=>'C','7'=>'D','8'=>'E','9'=>'F'];
        return $grades[$id];
    }
    public static function successMessage($message='',$data=[])
    {
          

        $json=[
            'status'    => 'success',
            'message'   => $message,
            'data'      => $data,
        ];
        return response()->json($json, 200);
    
    }
    public static function errorMessage($error=[])
    {
        $json=[
                'status'    => 'error',
                'message'   => $error,
                'data'      => []
            ];
        return response()->json($json, 200);

    }
    public static function randomChar($gender='')
    {
        $length= 6;
        $str_result = 'abcdefghijklmnopqrstuvwxyz';
        $num_result = '0123456789';
        $char=  substr(str_shuffle($str_result), 0, 4);
        $char.=  substr(str_shuffle($num_result), 0, 2);
        $charnum=  str_shuffle($char);
        $gtype=$gender==1 ? 'Collegito-': 'Collegita-';
        return $gtype.$charnum;
    }
    public static function firstErrorHandling($errorDatas)
    {
        foreach($errorDatas as $error ){
            return $error;
        }
    }



    public  static function getUniversity($id){

        $university= University::where('id',$id)->first();

        return $university;

    }

    public static function clean($array, $str) {
        $words = array_keys($array);
        $replacements = array_values($array);
    
        return preg_replace($words, $replacements, $str);
    }
    
}