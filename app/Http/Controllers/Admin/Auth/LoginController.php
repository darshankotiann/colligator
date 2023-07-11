<?php

namespace App\Http\Controllers\Admin\Auth;

use Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Session;

class LoginController extends Controller
{
use AuthenticatesUsers;

    protected $guardName = 'admin';
    protected $maxAttempts = 3;
    protected $decayMinutes = 2;

    protected $loginRoute;

    public function __construct()
    {
        $this->middleware('guest:admin')->except('logout');
        $this->loginRoute = route('admin.login');
    }

    public function showLoginForm()
    {
        return view('admin.auth.login',[
            'title' => 'Admin Login',
            'loginRoute' => 'admin.login',
            'forgotPasswordRoute' => 'admin.password.request',
        ]);
    }

    /**
     * Login the admin.
     * 
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function login(Request $request)
    {
        $this->validator($request);
        
        if(Auth::guard('admin')->attempt($request->only('email','password'), $request->get('remember'))){
            $request->session()->regenerate();
            $this->clearLoginAttempts($request);//Authentication passed...
            return redirect()
                ->intended(route('admin.home'))
                ->with('status','Admin Login Successfully!');
        }

        //Authentication failed...
        return back()->withInput($request->only('email', 'remember'))->with(['error'=>'Login Credintials doesnt match']);
    }

    /**
     * Logout the admin.
     * 
     * @return \Illuminate\Http\RedirectResponse
     */
    public function logout()
	{
        Auth::guard($this->guardName)->logout();
        Session::flush();
	    return redirect()
	        ->route('admin.login')
	        ->with('status','Admin has been logged out!');
	}

    /**
     * Validate the form data.
     * 
     * @param \Illuminate\Http\Request $request
     * @return 
     */
    private function validator(Request $request)
	{
	    //validation rules.
	    $rules = [
	        'email'    => 'required|email|exists:admins|min:5|max:191',
	        'password' => 'required|string|min:4|max:255',
	    ];

	    //custom validation error messages.
	    $messages = [
	        'email.exists' => 'Email Not Found.',
	    ];

	    //validate the request.
	    $request->validate($rules,$messages);
	}

    /**
     * Redirect back after a failed login.
     * 
     * @return \Illuminate\Http\RedirectResponse
     */
   private function loginFailed(){
    return redirect()
        ->back()
        ->withInput()
        ->with('error','Login failed, please try again!');
    }
protected function guard()
    {
        return Auth::guard('admin');
    }
}
