<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App;
use Auth;
class CommonController extends Controller
{
    public function lang($locale='')
    {
    	$locale= $locale== 'en' ? 'ar' : 'en';
    	App::setlocale($locale);
        session()->put('locale', $locale);
        return redirect()->back();
    }
    public function checkAuthUser(Request $request)
    {
    	if(Auth::user()){
	    	$data['status']='success';
    	}else{
    		$data['status']='error';
    	}
    	echo json_encode($data);
    }
    public function popupsocial(Request $request)
    {
        session()->put('popuppreviousUrl', $request->previousUrl);
    }
    public function ShareLink(Request $request)
    {

        $data= $request->all();
        return view('frontend.share',compact('data'));
    }
}
