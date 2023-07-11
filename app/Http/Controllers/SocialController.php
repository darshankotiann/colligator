<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
 use Validator,Redirect,Response,File;
 use Socialite;
 use App\User;
 use Exception;
class SocialController extends Controller
{
  	public function redirect($provider)
 	{
    	return Socialite::driver($provider)->redirect();
 	}
	 public function callback($provider) {
		try {
			$getInfo = Socialite::driver($provider)->user();
		} catch (Exception $e) {
			return redirect()->route('frontend.home');
		}
		$user = User::where('provider_id', $getInfo->id)->orWhere('email', $getInfo->user['email'])->first();
		if (!$user) {
			$user = $this->createUser($getInfo, $provider);
		}
		auth()->login($user);
		if (session()->get('popuppreviousUrl')) {
			$previousUrl = session()->get('popuppreviousUrl');
			session()->forget('popuppreviousUrl');
			return Redirect::to($previousUrl);
		} else {
			return redirect()->route('frontend.home');
		}
	}	
//  	public function callback($provider)
// {
//     try {
// 		   $getInfo = Socialite::driver($provider)->user();
//         } 
//         catch (Exception $e) {
//             return redirect ()->route('frontend.home');
//         }
//         $user = User::where('provider_id', $getInfo->id)->orWhere('email',$getInfo->user['email'])->first();
//         if($user['systemNickname']){
//  		  	auth()->login($user);
// 			if(session()->get('popuppreviousUrl'))
// 				{
// 					$previousUrl = session()->get('popuppreviousUrl');
// 					session()->forget('popuppreviousUrl');
// 					return Redirect::to($previousUrl);
// 				}
// 				else{
// 				   return redirect()->route('frontend.home');
// 				}
//         }else{
        	
//         $getInfo['provider']= $provider;
//         return Redirect::route('social_register_form')->with( ['getInfo' => $getInfo] );
//         }
//  //   	$user = $this->createUser($getInfo,$provider); 
	
// }
	public function socialRegisterForm()
	{
		$getInfo= session()->get('getInfo');
		if(!empty($getInfo)){
			session()->put(['allgetInfo'=>$getInfo]);
		}
		$getInfo= session()->get('allgetInfo');
        return view('frontend.register',compact(['getInfo']));

	}
 	function createUser($getInfo,$provider){
		 $user = User::where('provider_id', $getInfo->id)->orWhere('email',$getInfo->user['email'])->first();

	 	if (!$user) {
	    	  $user = User::create([
	        	'name'     => $getInfo->user['name'] ??  $getInfo->user['first_name'].' '.$getInfo->user['last_name'],
		        'email'    => $getInfo->user['email'],
		        'provider' => $provider,
		        'provider_id' => $getInfo->user['id'],
		        'profile' => $getInfo->avatar??'colleicon.png',
		        'gender' =>  0 ,
		        'systemNickname' => $this->randomChar(),
		     ]);
	   }
	   return $user;
	 }
	public function socialRegister(Request $request)
	{
	 	$request->validate([
            // 'name' => ['required', 'string', 'max:255'],
            'gender' => ['required'],
            'nickname' => ['required','min:3','alpha_dash','unique:users'],
            'age' => ['required','digits_between:1,100'],
           
        ]);
 		$user = User::where('provider_id', $request->provider_id)->orWhere('email',$request->email)->first();
	 	if (!$user) {
	    	  $user = User::create([
	        	'name'     => ($request->name?$request->name:null),
		        'email'    => $request->email,
		        'provider' => $request->provider,
		        'provider_id' => $request->provider_id,
            	'age' =>$request->age,
            	'nickname' =>$request->nickname,
		        'profile' => $request->avatar??'colleicon.png',
		        'gender' =>  $request->gender ,
		        'systemNickname' => $this->randomChar($request->gender),
		     ]);
	   	}
	   	auth()->login($user);
			session()->forget(['allgetInfo']);

		if(session()->get('popuppreviousUrl'))
		{
			$previousUrl = session()->get('popuppreviousUrl');
			session()->forget('popuppreviousUrl');
			return Redirect::to($previousUrl);
		}
		else{
		   return redirect()->route('frontend.home');
		}
	}
	function random_strings($length_of_string)
	{
	  
	    // String of all alphanumeric character
	    $str_result = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
	  
	    // Shufle the $str_result and returns substring
	    // of specified length
	    return substr(str_shuffle($str_result), 
	                       0, $length_of_string);
	}
	public function randomChar($gender='')
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

}
