<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use App\Country;
use App\University;
use App\Helpers\Helper;
class SendPushNotification extends Controller
{
    public function list()
    {
    	$countries= Country::where(['flag'=>1])->get();
    	// $universities= University::where(['is_delete'=>0,'status'=>1])->get();
    	$users= User::where(['status'=>1,'is_delete'=>0])->get();
    	return view('admin.pushNotification.list',compact('users','countries'));
    }
    public function Send(Request $request)
    {
    	$request->ids= rtrim($request->ids, ',');
    	$ids= explode(',',$request->ids);
    	$msg = array(
            'body'      => $request->message,
            'title'     => $request->title,
            'subtitle'  => '',
            'key'       => '2',
            'vibrate'   => 1,
            'sound'     => 1,
            'largeIcon' => 'large_icon',
            'smallIcon' => 'small_icon'
            );
    	$userdata =  User::all();
	    foreach ($ids as $key => $value) {
	        $data= $userdata->where('id',base64_decode($value))->first();
	        // $device_token = "fEitKDpvRU42qcpyeW4uCS:APA91bFOu_hkbwi23kG-UJRwsp-Rw4F26u0_woAMEla_MYmEC_ZwROaZk6ZEdA4IzE_ksaHpCkjoP0qY_E7tiOD6zhN5wm8UsXx755iQnwM5Wjk-h1gBeIubqvsCGwixbU2c_Rr1rsPv";
	        $device_token = $data['device_token'];
	        if(!empty($device_token)){
	   			toastr()->success('Notification send successfully');
	        	Helper::pushNotification($msg,$device_token);
	        }else{
	   			toastr()->error('Error In Notification');
	        }
	    }
	   return redirect()->back();
    }
    public function Filter(Request $request)
    {
    	$countryId= $request->country;
    	$countries= Country::where(['flag'=>1])->get();
    	// $universities= University::where(['is_delete'=>0,'status'=>1])->get();
    	$allUsers= User::where(['status'=>1,'is_delete'=>0])->get();
    	$users=[];
    	foreach ($allUsers as $key => $value) {
    		if(!empty($value['ip'])){
    		// $details = 	json_decode(file_get_contents("http://www.geoplugin.net/json.gp?ip=".$value['ip']));
    		$details = json_decode(file_get_contents("http://ipinfo.io/{$value['ip']}"));
			if(!empty($details->country)){

			if($details->country == $request->country){
					$users[]= $value;
				}
    		}
		}

    	}
    	return view('admin.pushNotification.list',compact('users','countries','countryId'));

    }
    public function getUniversities(Request $request)
    {
    	$code= $request->code;
    	$universities= University::where(['country_code'=>$code,'is_delete'=>0,'status'=>1])->get();
    	$ulist=  view('admin.pushNotification.universityList',compact('universities'))->render();
    	return $ulist;
    }
}
