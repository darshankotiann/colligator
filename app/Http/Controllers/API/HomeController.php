<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Slider;
use DB;
use App\Testimonial;
use Config;
use File;
use Hash;
use Lang;
use App\User;
use App\Faq;
use App\GlobalSetting;
use App\Country;
use App\CmsPages;
use App\Helpers\Helper;
use Illuminate\Support\Facades\Validator;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public $twordLimit = 0;
    public $dwordLimit = 0;
public function __construct(){
    $this->twordLimit=  Config::get('app.twordLimit');
    $this->dwordLimit=  Config::get('app.dwordLimit');
}
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function changeLang($type='')
    {
        app()->setLocale($type);
        $data['jsonData']= __('*', [], '');

        $data['langData']= trans('lang');
        print_r(json_encode($data));

    }
    public function faq()
    {
        $faqs= Faq::where('status',1)->get();

        foreach ($faqs as $item){
              $item->description_en=strip_tags($item->description_en);
              $item->description_ar=strip_tags($item->description_ar);

         }

        $message='Date retrieve successfully';
        return Helper::successMessage($message,$faqs);
        
    }
    public function index(Request $request)
    {
        $countryData= Country::where(['iso2'=>$request->country_code])->first();
        $data['headlimit']= $this->twordLimit; 
        $data['desclimit']= $this->dwordLimit; 
        $data['sliders']= Slider::where(['status'=>1,'is_delete'=>0,'country'=>$countryData->id])->get();
        $data['testimonials']= Testimonial::where(['status'=>1,'is_delete'=>0])->get();
        $data['aboutUs']= DB::table('about_us')->first();
        $message='Date retrieve successfully';
        return Helper::successMessage($message,$data);

    }
    public function updateMyProfile(Request $request)
    {
        $validator= validator::make($request->all(),[
            'name'=> 'nullable|min:3,max:30',
            'profile' => 'image|mimes:jpeg,png,jpg',
        ]);
        if ($validator->fails()) {
            $errors= Helper::firstErrorHandling($validator->errors()->all());
            return Helper::errorMessage($errors);

        }else{
            $userData= auth()->guard('api')->user();
            $newData=[];
            $imageName= $request->profileImage?'colleicon.png':$userData->profile;
            $newData['profile']= $imageName;
            $newData['name']= $request->name??'';
            if($request->profile){
                if($userData->profile != 'colleicon.png'){
                    if(File::exists(public_path('profile/'.$userData->profile))){
                        File::delete(public_path('profile/'.$userData->profile));
                    }
                }
                $logoimageName = time().'.'.$request->profile->extension();  

                $imagebase64 = base64_encode(file_get_contents($request->file('profile')));
                $request->profile->move(public_path('profile'), $logoimageName);
                $newData['profile'] = $logoimageName;
            }
            User::where('id',$userData->id)->update($newData);
            $newuserData= User::where('id',$userData->id)->first();
            $message   = 'Profile Updated Successfully';
            return Helper::successMessage($message,$newuserData);
        }
    }
    public function updatePassword(Request $request)
    {
        $validator= Validator::make($request->all(),[
            'oldpassword' => 'required',
             'password' => ['required', 'string', 'min:8', 'confirmed','regex:/^.*(?=.{8,})(?=.*[a-z])(?=.*[0-9]).*$/'],
        ]);
        if($validator->fails()){
            $errors= Helper::firstErrorHandling($validator->errors()->all());
            return Helper::errorMessage($errors);

        }else{
            $userdata= auth()->guard('api')->user();
            if(Hash::check($request->oldpassword,$userdata->password)){
                User::where('id',$userdata->id)->update(['password'=>Hash::make($request->password)]);
                $message   = 'Password Updated Successfully';
                return Helper::successMessage($message);
    
           }else{
                $message   = 'old password doesnt match';
                return Helper::errorMessage($message);
            }
        }
    }
    public function aboutUs()
    {
        $data= DB::table('about_us')->first();
        // $data= DB::table('about_us')->select('title_en','title_ar','description_en','description_ar','desc_image')->first();
        $message   = 'About Us Data';
        $data      = $data;
        return Helper::successMessage($message,$data);
    }
    public function contactUs()
    {
        $data= DB::table('contact_us')->first();
        $message   = 'Contact Us Data';
        $data      = $data;
        return Helper::successMessage($message,$data);
    }
    public function sendContactMail(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name'=>'required|max:250',
            'email'=>'required|email',
            'subject'=>'required',
            'message'=>'required',
        ]);
        if ($validator->fails()) {
            $errors= Helper::firstErrorHandling($validator->errors()->all());
            return Helper::errorMessage($errors);
        }else{
            DB::table('customer_contact')->insert([
                'name' =>$request->name,
                'email' =>$request->email,
                'subject' =>$request->subject,
                'message' =>$request->message
            ]);
               $message   = 'Contact mail send successfully';
            return Helper::successMessage($message);
        }
    }
    public function CmsView($slug='')
    {
        $content= CmsPages::where('slug',$slug)->first();
            $message   = 'Cms Data received successfully';
            $data      = $content;
        return Helper::successMessage($message,$data);
    }
    public function introduction()
    {
        $data= DB::table('introductions')->get();
        $message   = 'Introduction Data';
        $data      = $data;
        return Helper::successMessage($message,$data);
    }
    public function globalSetting()
    {
        $globalData= GlobalSetting::first();
        $message= 'Global Data';
        return Helper::successMessage($message,$globalData);
    
    }
  
}
