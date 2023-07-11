<?php

namespace App\Http\Controllers\SubAdmin\Auth;

use Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Session;

class LoginController extends Controller
{
use AuthenticatesUsers;

    protected $guardName = 'subAdmin';
    protected $maxAttempts = 3;
    protected $decayMinutes = 2;

    protected $loginRoute;

    public function __construct()
    {
        $this->middleware('guest:subAdmin')->except('logout');
        $this->loginRoute = route('sub_admin.login');
    }

    public function showLoginForm()
    {
        return view('BCommon.auth.login',[
            'title' => 'SubAdmin Login',
            'loginRoute' => 'sub_admin.login',
            'forgotPasswordRoute' => 'subAdmin.password.request',
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
	    
	    if(Auth::guard('subAdmin')->attempt($request->only('email','password'),$request->filled('remember'))){
	        $request->session()->regenerate();
            $this->clearLoginAttempts($request);
            //Authentication passed...
	        return redirect()
	            ->intended(route('common.home'))
	            ->with('status','You are Logged in as SubAdmin!');
	    }

	    //Authentication failed...
	    //return $this->loginFailed();
        return back()->withInput($request->only('email', 'remember'));

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
	        ->route('sub_admin.login')
	        ->with('status','SubAdmin has been logged out!');
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
            'email'    => 'required|email|exists:sub_admins|min:5|max:191',
            'password' => 'required|string|min:4|max:255',
        ];

        //custom validation error messages.
        $messages = [
            'email.exists' => 'These credentials do not match our records.',
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
}
