<?php

namespace App\Http\Middleware;

use Closure;
use Auth;
class CheckActiveSubAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(Auth::guard('admin')->user()->is_delete==1){

            toastr()->error('Your Account is Deleted by Admin');
            Auth::guard('admin')->logout();
            return redirect()->route('admin.login');
        }
        if(Auth::guard('admin')->user()->status==1){

            toastr()->error('Your Account is Deactivated by Admin');
            Auth::guard('admin')->logout();
            return redirect()->route('admin.login');
        }
        return $next($request);
    }
}
