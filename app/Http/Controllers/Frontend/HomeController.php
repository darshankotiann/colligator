<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Slider;
use DB;
use App\Testimonial;
use Config;
use File;
use Hash;
use App\User;
use App\Country;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public $twordLimit = 0;
    public $dwordLimit = 0;
    public $sliders ;
public function __construct(){
    $this->twordLimit=  Config::get('app.twordLimit');
    $this->dwordLimit=  Config::get('app.dwordLimit');
    $ip= $_SERVER['REMOTE_ADDR']; 
    $dataArray = json_decode(file_get_contents("http://www.geoplugin.net/json.gp?ip=".$ip));
    // $countryData= Country::where('iso2','KW')->first();
    $countryData= Country::where('iso2',$dataArray->geoplugin_countryCode)->first();
    if(!empty($countryData)){
        $this->sliders= Slider::where(['status'=>1,'is_delete'=>0,'country'=>$countryData->id])->get();
    }
}
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $tlimit= $this->twordLimit; 
        $dlimit= $this->dwordLimit; 
        $type= session()->get('locale')?? 'en';
        $sliders= !empty($this->sliders) ? $this->sliders : [] ;
        $testimonials= Testimonial::where(['status'=>1,'is_delete'=>0])->get();
        $aboutUs= DB::table('about_us')->first();
        return view('home',compact('sliders','testimonials','aboutUs','type','tlimit','dlimit'));
    }
    public function myProfile(Request $request)
    {

        $request->validate([
            'name'=> 'nullable|min:3,max:30',
            'profile' => 'image|mimes:jpeg,png,jpg|max:2048',
        ]);
        $userData= Auth()->guard('web')->user();
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
        toastr()->success('profile updated successfully');
        return redirect()->route('frontend.my_profile');
    }
    public function updatePassword(Request $request)
    {
        $request->validate([
            'oldpassword' => 'required',
             'password' => ['required', 'string', 'min:8', 'confirmed','regex:/^.*(?=.{8,})(?=.*[a-z])(?=.*[0-9]).*$/'],
        ]);
        $userdata= Auth()->guard('web')->user();
        if(Hash::check($request->oldpassword,$userdata->password)){
            User::where('id',$userdata->id)->update(['password'=>Hash::make($request->password)]);
            toastr()->success('Password Updated Successfully');
        }else{
            toastr()->error("Old Password Doesn't Match");
        }
        return redirect()->route('frontend.change_password');
    }
}
