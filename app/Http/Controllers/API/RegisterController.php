<?php

namespace App\Http\Controllers\API;

use App\User;
use App\Admin;
use App\SubAdmin;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;
use App\Helpers\Helper;
use App\EmailTemplate;
use Session;
use Response;
use Redirect;
use Illuminate\Auth\Events\Registered;
use JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;

class RegisterController extends Controller
{
    use RegistersUsers;
    public $loginAfterSignUp = true;

	// public function __construct()
 //    {
 //        $this->middleware('guest');
 //        //$this->middleware('guest:admin');
 //    }

    protected function validator(array $data)
    {
        return Validator::make($data, [
            // 'name' => ['required', 'string', 'max:255'],
            'gender' => ['required'],
            'deviceToken' => ['required'],
            // 'nickname' => ['required','min:3','alpha_dash','unique:users'],
            // 'g-recaptcha-response' => ['required'],
            // 'g-recaptcha-response' => ['required','captcha'],
            'age' => ['nullable'],

            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            // 'password' => ['required', 'string', 'min:8', 'confirmed','regex:/^.*(?=.{8,})(?=.*[a-z])(?=.*[0-9]).*$/'],
            'password' => ['required', 'string', 'min:8','regex:/^.*(?=.{8,})(?=.*[a-z])(?=.*[0-9]).*$/'],
        ],[
           'password.regex'=>'Password must contain at least 1 Smallcase, 1 Uppercase, 1 Number and 1 Special character',
        
        ]);
    }
    protected function create(array $data)
    {

        $systemNickname= $this->randomChar($data['gender']);
        $mailContent= EmailTemplate::GetEmailTemplate('register-user');
        $content['content'] = str_replace(array('{email}','{password}','{url}'), array($data['email'],$data['password'],url('/')), $mailContent->content);
        Helper::mailSend($content,$mailContent->subject,$data['email']);
        return User::create([
            'name' => '',
            'email' => $data['email'],
            'systemNickname' => $systemNickname,
            'gender' =>$data['gender'],
            'nickname' =>null,
            // 'age' =>$data['age'],
            'device_token' =>$data['deviceToken'],
            'profile' => 'colleicon.png',
            'password' => Hash::make($data['password']),
        ]);
        
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
    public function register(Request $request)
    {
        $result= $this->validator($request->all());
        if ($result->fails()) {
		    $json=[
	        	'status'	=> 'error',
	        	'message'	=> Helper::firstErrorHandling($result->errors()->all()),
	        	'data'		=> [],
	        ];
		}else{

	        event(new Registered($user = $this->create($request->all())));
        	// $this->guard()->login($user);

            $token = JWTAuth::attempt(array('email' => $user['email'], 'password' => $request['password']));

        	
	        $data= $user;
	        $data['token']= $token;
	        $json=[
	        	'status'	=> 'success',
	        	'message'	=> 'User register successfully',
	        	'data'		=> $data,
	        ];
		}
        return response()->json($json, 200);

    }
    public function socialRegister(Request $request)
    {
        $validator= Validator::make($request->all(),[
            'gender' => ['required'],
            'provider' => ['required'],
            'email' => ['required','email','unique:users'],
            'provider_id' => ['required'],
            'deviceToken' => ['required'],
            // 'nickname' => ['required','min:3','alpha_dash','unique:users'],
            'age' => ['required','digits_between:1,100'],
        ]);
        if($validator->fails()){
            $errors= Helper::firstErrorHandling($validator->errors()->all());
          return  Helper::errorMessage($errors);
        }else{
            $user = User::where('provider_id', $request->provider_id)->orWhere('email',$request->email)->first();
            if (!$user) {
                  $user = User::create([
                    'name'     => ($request->name?$request->name:''),
                    'email'    => $request->email,
                    'provider' => $request->provider,
                    'provider_id' => $request->provider_id,
                    'age' =>$request->age,
                    'nickname' =>null,
                    'profile' => $request->profile??'colleicon.png',
                    'gender' =>  $request->gender ,
                    'device_token' =>  $request->deviceToken ,
                    'login_type' => 2,
                    'systemNickname' => $this->randomChar($request->gender),
                 ]);
                    auth()->loginUsingId($user->id);
                    $token = auth('api')->fromUser(auth()->user());
                    $json=[
                        'status'    => 'success',
                        'message'   => 'register successfully',
                        'data'      => [
                            'user'  =>$user,
                            'token' => $token
                        ],
                    ];
                    return response()->json($json, 200);
            }else{
                $message= 'user already exist, please login';
                return Helper::errorMessage($message);   
            }
        }
    }
   
}
