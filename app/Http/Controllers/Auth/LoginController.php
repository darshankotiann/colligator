<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Foundation\Auth\RedirectsUsers;
use Illuminate\Http\Request;
use Auth;
use Session;
use Redirect;
use Response;
use Validator;
use App\User;
use App\Helpers\Helper;
class LoginController extends Controller
{
      public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */
    use AuthenticatesUsers;    
    use RedirectsUsers;
    protected $guardName = 'web';
    

    public function redirectPath()
    {

        if (method_exists($this, 'redirectTo')) {
            return $this->redirectTo();
        }

        if(Auth::user()){
            if(Auth::user()['status']==0){
                toastr()->error('Admin Deactivate your account ');
                Auth::logout();
            }
            if(Auth::user()['is_delete']==1){
                toastr()->error('Admin Delete your account ');
                Auth::logout();
            }
        }
            return property_exists($this, 'redirectTo') ? $this->redirectTo : '/home';
    }
    protected $redirectTo = '/home';

    public function showLoginForm()
    {
        return view('auth.login',[
            'title' => 'Login',
            'loginRoute' => 'login',
            'forgotPasswordRoute' => 'password.request',
        ]);
    }
    public function login(Request $request)
    {   
        $input = $request->all();
        $this->validate($request, [
            'nickname' => 'required',
            'password' => 'required',
        ]);
  
        $fieldType = filter_var($request->nickname, FILTER_VALIDATE_EMAIL) ? 'email' : 'nickname';
        if(auth()->attempt(array($fieldType => $input['nickname'], 'password' => $input['password']),$request->filled('remember')))
        {
        if($this->authenticated()){
            User::where('id',auth()->user()->id)->update(['ip'=>$_SERVER['REMOTE_ADDR']]);
            if(session::get('previousUrl')){
                $lasturl = session::get('previousUrl');
                session()->forget('previousUrl');
                return Redirect::to($lasturl);
            }
            toastr()->success('Login Successfully');
            return redirect()->route('frontend.home');
        }else{
            return redirect()->route('login');
        }
        }else{
          toastr()->error('Email-Address And Password Are Wrong.');
            return redirect()->route('login')->with('error','Email-Address And Password Are Wrong.');
        }
          
    }
    public function modallogin(Request $request)
    {  

        $input = $request->all();
        $rules = array('nickname' => 'required', 'password' => 'required');
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails())
        {
            return Response::json(array(
                'status' => 'loginerror',
                'errors' => $validator->getMessageBag()->toArray()
            )); // 400 being the HTTP code for an invalid request.
        }
        else{
            $fieldType = filter_var($request->nickname, FILTER_VALIDATE_EMAIL) ? 'email' : 'nickname';
            if(auth()->attempt(array($fieldType => $input['nickname'], 'password' => $input['password']),$request->filled('remember')))
            {
            if(Auth::user()['status']==1 && Auth::user()['is_delete']==0){
                User::where('id',auth()->user()->id)->update(['ip'=>$_SERVER['REMOTE_ADDR']]);
                return Response::json(array(
                'status' => 'success',
            ),200); // 400 being the HTTP code for an invalid request.
            }else{
                $errorRes = Auth::user()['status']==0 ? 'Admin Deactivate your account'  : 'Admin Delete your account';
                Auth::logout();
                return Response::json(array(
                'status' => 'error',
                'errors' => ['error'=>$errorRes],
            )); // 400 being the HTTP code for an invalid request.
            }
            }else{
            return Response::json(array(
                'status' => 'error',
                'errors' => ['error'=>'Email-Address And Password Are Wrong'],
            )); // 400 being the HTTP code for an invalid request.
            }
        }
          
    }
  
    public function logout(){
        Auth::logout();
        return redirect('/')->with('status','User has been logged out!');
    }
    public function otpreset(Request $request)
    {
        if($request->token){
            session::put('token',$request->token);
        }
        $email= session::get('resetemail');
        if($email==''){
            return redirect()->route('frontend.home');
        }

        return view('auth/otpverify');
    }
    public function otpsubmit(Request $request)
    {

        $oldotp= session::get('otp');
        $token= session::get('token');
        $email= session::get('resetemail');
        if($email==''){
            return redirect()->route('frontend.home');
        }
        $newotp= $request->otp;
        if($newotp != $oldotp){
        toastr()->error('Otp Mismatch');
            return redirect()->back();
        }
        return view('auth/passwords/reset',compact('token','email'));
    }
    public function ResendOtp()
    {
        $email= session::get('resetemail');
        $otp= Helper::generateOTP();
        session()->put('otp',$otp);


        $data['content']='Use this otp <b>'.$otp.'</b> to change your password';
        $subject='Otp resend';
        $touser=$email;
        Helper::mailSend($data,$subject,$touser);
        toastr()->success('Otp resend successfully');
        return redirect()->route('otpreset');

    }
    protected function authenticated()
    {
        if(Auth::user()){
           if(Auth::user()['status']==0){
                toastr()->error('Admin Deactivate your account');
                Auth::logout();
                return false;
            }
            if(Auth::user()['is_delete']==1){
                toastr()->error('Admin Delete your account ');
                Auth::logout();
                $lasturl = session::get('previousUrl');
                session()->forget('previousUrl');
                return false;
            }
        }
        return true;
    }

    /**
     * Where to redirect users after login.
     *
     * @var string
     */

    /**
     * Create a new controller instance.
     *
     * @return void
     */
  /*  public function __construct()
    {
        $this->middleware('guest')->except('logout');
        $this->middleware('guest:admin')->except('logout');
        $this->middleware('guest:subAdmin')->except('logout');
    }*/
    
}
