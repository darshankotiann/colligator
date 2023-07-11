<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\ResetsPasswords;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Password;
use Session;
use App\Helpers\Helper;
use Illuminate\Support\Facades\Validator;
class ResetPasswordController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Password Reset Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling password reset requests
    | and uses a simple trait to include this behavior. You're free to
    | explore this trait and override any methods you wish to tweak.
    |
    */

    use ResetsPasswords;

    public function reset(Request $request)
    {
        // print_r($request->all()); die;
         $validate= Validator::make($request->all(),[
            'token' => 'required',
            'email' => 'required|email',
            'change_password' => 'required|min:8',
        ]);
        $token = $request->token;
        $email = $request->email;
        if($validate->fails()){
            $errorMessage= Helper::firstErrorHandling($validate->errors()->all());
            toastr()->error($errorMessage);
            return view('auth/passwords/reset',compact('token','email'));
        }else{
            
        
            // Here we will attempt to reset the user's password. If it is successful we
            // will update the password on an actual user model and persist it to the
            // database. Otherwise we will parse the error and return the response.
            $response = $this->broker()->reset(
                $this->credentials($request), function ($user, $password) {
                    $this->resetPassword($user, $password);
                }
            );

            // If the password was successfully reset, we will redirect the user back to
            // the application's home authenticated view. If there is an error we can
            // redirect them back to where they came from with their error message.
            // toastr()->success('Password reset successfully');
            session()->forget(['otp','token','resetemail']);
            Auth::logout();
            return $response == Password::PASSWORD_RESET
                        ? ($this->sendResetResponse($request, $response)->with('success','Password reset successfully'))
                        : $this->sendResetFailedResponse($request, $response);
        }
    }
    /**
     * Where to redirect users after resetting their password.
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
    }
}
