<?php

namespace App\Http\Controllers\Auth;

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

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
        //$this->middleware('guest:admin');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            // 'name' => ['required', 'string', 'max:255'],
            'gender' => ['required'],
            // 'nickname' => ['required','min:3','alpha_dash','unique:users'],
            'g-recaptcha-response' => ['required','captcha'],
            'age' => ['required','digits_between:1,100'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed','regex:/^.*(?=.{8,})(?=.*[a-z])(?=.*[0-9]).*$/'],
        ],[
           'password.regex'=>'Password must contain at least 1 Smallcase, 1 Uppercase, 1 Number and 1 Special character',
        
        ]);
    }
    public function showAdminRegisterForm()
    {
        return view('auth.register', ['url' => 'admin']);
    }
    public function showSubAdminRegisterForm()
    {
        return view('auth.register', ['url' => 'sub_admin']);
    }
    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {

        $systemNickname= $this->randomChar($data['gender']);
        // setting session for showing nickname on popup 
        // Session::put('nickname', $data['nickname']);
        Session::put('systemNickname', $systemNickname);
        $ip= $_SERVER['REMOTE_ADDR']; 
        // ip address paste krna hai last mei user ka
        $mailContent= EmailTemplate::GetEmailTemplate('register-user');
        $content['content'] = str_replace(array('{email}','{password}','{url}'), array($data['email'],$data['password'],url('/')), $mailContent->content);
        Helper::mailSend($content,$mailContent->subject,$data['email']);
        return User::create([
            'name' => '',
            'email' => $data['email'],
            'systemNickname' => $systemNickname,
            'gender' =>$data['gender'],
            // 'nickname' =>$data['nickname'],
            'age' =>$data['age'],
            'profile' => ($data['gender']==1 ? 'male.png':'female.png'),
            'password' => Hash::make($data['password']),
            'ip'=>$ip,
        ]);
        
    }
    protected function createAdmin(Request $request)
    {
        $this->validator($request->all())->validate();
        Admin::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);
        return redirect()->intended('login/admin');
    }
    protected function createSubAdmin(Request $request)
    {
        $this->validator($request->all())->validate();
        SubAdmin::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);
        return redirect()->intended('login/sub_admin');
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
        $this->validator($request->all())->validate();

        event(new Registered($user = $this->create($request->all())));
        // $nickname= Session::get('nickname');
        $systemNickname= Session::get('systemNickname');
        session::forget(['systemNickname']);
        $this->guard()->login($user);
        // go social pe user nickname ayega and go rate pe system nickname ayega
            if(session::get('previousUrl')){
                $lasturl = session::get('previousUrl');
                session()->forget('previousUrl');
                return $this->registered($request, $user)
                        ?: Redirect::to($lasturl)->with(['registersuccess'=>$systemNickname,'gender'=>$request->gender]);
            }
        return $this->registered($request, $user)
                        ?: redirect($this->redirectPath())->with(['registersuccess'=>$systemNickname,'gender'=>$request->gender]);
    }
      public function modalsignup(Request $request)
    {
         $validator =Validator::make($request->all(), [
            // 'name' => ['required', 'string', 'max:255'],
            'gender' => ['required'],
            'registercheckbox' => ['required'],
            'privacypol' => ['required'],
            // 'nickname' => ['required','min:3','alpha_dash','unique:users'],
            'g-recaptcha-response' => ['required','captcha'],
            'age' => ['required','digits_between:1,100'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed','regex:/^.*(?=.{8,})(?=.*[a-z])(?=.*[0-9]).*$/'],
        ],[
           'password.regex'=>'Password must contain at least 1 Smallcase, and 1 Number',
        ]);
        if($validator->fails()){
            return Response::json(array(
                'status' => 'signuperror',
                'errors' => $validator->getMessageBag()->toArray()
            )); // 400 being the HTTP code for an invalid request.
        }
        else{
            event(new Registered($user = $this->create($request->all())));
        // $resp['nickname']= Session::get('nickname');
        $resp['systemNickname']= Session::get('systemNickname');
        $resp['gender']= $request->gender;
        session::forget(['systemNickname']);
        $this->guard()->login($user);
        return Response::json(array(
                'status' => 'success',
                'data' => $resp,
            ),200);
        }
    }
}
