<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Validator;
use Auth;
use JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;
use App\Helpers\Helper;
use Illuminate\Support\Facades\Hash;
use DB;

class LoginController extends Controller
{
 public function __construct()
    {
        $this->middleware('jwt', ['except' => ['login','socialLogin','forgotPassword','resetPassword']]);
    }
    public function register(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|min:3',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6',
            'ip' => 'required',
        ]);
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'ip' => $request->ip,
            'password' => bcrypt($request->password)
        ]);
        if ($this->loginAfterSignUp) {
            return $this->login($request);
        }
        $token = $user->createToken('API Token')->accessToken;
        return response()->json(['token' => $token], 200);
    }
    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'username' => 'required',
            'password' => 'required|min:6',
            'deviceToken' => 'nullable|min:6',
            'ip' => 'required',
            
        ]);
        if ($validator->fails()) {
            $json=[
                'status'    => 'error',
                'message'   => Helper::firstErrorHandling($validator->errors()->all()) ,
                'data'      => [],
            ];
        }else{
        $fieldType = filter_var($request->username, FILTER_VALIDATE_EMAIL) ? 'email' : 'nickname';
        $token = null;

       if (!$token = auth('api')->attempt(array($fieldType => $request['username'], 'password' => $request['password']))) {
		        $json=[
		        	'status'	=> 'error',
		        	'message'	=> 'Invalid Username/Password',
		        	'data'		=> [],
		        ];
	        }else{
	        	if($check= $this->authenticated()){
                    User::where('id',auth('api')->user()->id)->update(['device_token'=>$request['deviceToken'],'ip'=>$request['ip']]);
                    
                    auth('api')->user()->device_token = $request['deviceToken'];

                    $response=$check;
	        		if($response['status']=='success'){
			        	// $token = auth()->user()->createToken('API Token')->accessToken;
				        $json=[
				        	'status'	=> 'success',
				        	'message'	=> 'login successfully',
				        	'data'		=> [
				        		'user'	=>auth('api')->user(),
				        	],
			        	]+$this->respondWithToken($token);
	        		}else{
		        	$json=[
			        	'status'	=> 'error',
			        	'message'	=> $response['message'],
			        	'data'		=> [],
			        ];		
	        		}
	        	}
	        }
        }
        return response()->json($json, 200);
    }
    protected function authenticated()
    {
        $json=[
        	'status'=>'success',
        	'message'=>''
        ];
        if(auth('api')->user()){
            if(auth('api')->user()->status==0){
                $json=[
                	'status'=>'error',
                	'message'=>'Admin Deactivate your account'
                ];
            }
            if(auth('api')->user()->is_delete==1 && auth('api')->user()->user_delete==1){
                $json=[
                	'status'=>'error',
                	'message'=>'User not found'
                ];
            }
        }
        return $json;
    }
    public function testing()
    {
        // Auth::loginUsingId(23);
        // $token = auth('api')->fromUser(auth()->user());

        print_r(auth()->user());
        echo "lele";
    }
      public function logout(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'token' => 'nullable'
        ]);
        if ($validator->fails()) {
            $json=[
                'status'    => 'error',
                'message'   => Helper::firstErrorHandling($validator->errors()->all()),
                'data'      => [],
            ];
        return response()->json($json, 200);
        }else{
            try {
                User::where('id',auth('api')->user()->id)->update(['device_token'=>'']);

                JWTAuth::invalidate($request->token);
                $message = 'User logged out successfully';

                return Helper::successMessage($message);

            } catch (JWTException $exception) {
                $message = 'Sorry, the user cannot be logged out';
                return Helper::errorMessage($message);                
            }
        }
    }
    public function socialLogin(Request $request)
    {
        $validator= Validator::make($request->all(),[
            'provider_id'=>'required',
            'email' =>  'nullable',
            'deviceToken' =>  'nullable',
            'ip' => 'required',

        ]);
        if ($validator->fails()) {
            $message   = Helper::firstErrorHandling($validator->errors()->all());
            return Helper::errorMessage($message);
        }
        else{
            $user = User::where('provider_id', $request->provider_id)->orWhere('ip',$request->ip)->first();
            
            if($user['systemNickname']){
                Auth::loginUsingId($user->id,true);
                
                User::where('id',$user->id)->update(['device_token'=>$request['deviceToken'],'ip'=>$request['ip']]);
                auth()->user()->device_token = $request['deviceToken'];
                $user->device_token  = $request['deviceToken'];
                $token = JWTAuth::fromUser(auth()->user());
                $json=[
                    'status'    => 'success',
                    'message'   => 'login successfully',
                    'data'      => [
                        'user'  =>$user,
                        'token' => $token
                    ],
                ];
                return response()->json($json, 200);
            }else{
                 $json=[
                    'status'    => 'user_not_found',
                    'message'   => 'User Not found,Need more Details to login',
                    'data'      => [],
                ];
                return response()->json($json, 200);
            }
        }
    }
    public function forgotPassword(Request $request)
    {
        $validator= Validator::make($request->all(),[
            'email' => 'required'
        ]);
        if($validator->fails()){
            $message   = Helper::firstErrorHandling($validator->errors()->all());
            return Helper::errorMessage($message);
        }
        else{
            $user= User::where('email',$request->email)->first();
            if(empty($user)){
                $message   = 'Email Not Found';
                return Helper::errorMessage($message);                
            }else{
                $otp = $this->sendOtp($user->email);
                $user->otp = $otp;
                $user->save();
                $message= 'otp send successfully';
                return Helper::successMessage($message);
            }
        }
    }
    public function sendOtp($emailId)
    {
        $email= $emailId;
        $otp= Helper::generateOTP();
        $data['content']='Use this otp <b>'.$otp.'</b> to change your password';
        $subject='Otp send';
        $touser=$email;
        Helper::mailSend($data,$subject,$touser);
        return $otp;
    }
    public function resetPassword(Request $request)
    {
        $validator= validator::make($request->all(),[
            'email'=>'required',
            'otp'   => 'required',
            'password'=>'required|regex:/^.*(?=.{8,})(?=.*[a-z])(?=.*[0-9]).*$/'
        ]);
        if($validator->fails()){
            $message   =Helper::firstErrorHandling($validator->errors()->all());
            return Helper::errorMessage($message);
        }else{
            if(!empty($userData= User::where('email',$request->email)->first())){
                if(!empty($userData->otp)){
                    if($userData->otp == $request->otp){
                        $userData->password = Hash::make($request->password);
                        $userData->otp = '';
                        $userData->save();
                        $message= 'Password Change Successfully';
                    return Helper::successMessage($message);
                    }
                    else{
                        $message   = 'Otp Mismatch';
                        return Helper::errorMessage($message);     
                    }
                }else{
                        $message   = 'Otp Mismatch';
                        return Helper::errorMessage($message);     
                    
                }
            }else{
                    $message   = 'Email Not Found';
                    return Helper::errorMessage($message);     
            }
        }
    }
    protected function respondWithToken($token)
    {
        return [
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth('api')->factory()->getTTL() * 60
        ];
    }


    public function softDelete($id)
    {
        try {
         
           $account = DB::table('users')->where('id', $id)->update([
                        'is_delete' => 1,
                        'user_delete' => 1,
                    ]);
                    return response()->json([
                        'status' => "success",
                        'message' => "Successfully! User account deactivate"
           ]);
             
            
        } catch (\Throwable $th) {
            return response()->json($json, 200);
        }
    }

}
