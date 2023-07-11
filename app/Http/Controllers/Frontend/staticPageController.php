<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use App\Faq;
use App\Http\Requests\CustomerContactRequest;
class staticPageController extends Controller
{
    public function aboutUs()
    {
    	$type= session()->get('locale')?? 'en';
    	$data= DB::table('about_us')->first();
    	return view('frontend.aboutUs',compact('data','type'));
    }
    public function contactUs()
    {
        $type= session()->get('locale')?? 'en';
        $data= DB::table('contact_us')->first();
        return view('frontend.contactUs',compact('data','type'));
    }
    public function faq()
    {
    	$type= session()->get('locale')?? 'en';
    	$faqs= Faq::where('status',1)->get();
    	return view('frontend.faq',compact('faqs','type'));
    }
    public function sendContactMail(CustomerContactRequest $request)
    {
    	DB::table('customer_contact')->insert([
    		'name' =>$request->name,
    		'email' =>$request->email,
    		'subject' =>$request->subject,
    		'message' =>$request->message
    	]);
    	toastr()->success('Contact mail send successfully');
    	return redirect()->back();
    }
}
