<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use App\Country;
use App\Banner;
use App\Permissions;
use View;
use Auth;
use File;
class CountryCode extends Controller
{
	private $countries;
	function __construct(){
		$this->countries = Country::all();
	}
	public function index()
	{
		$countries= DB::table('countries')->select('name','iso2','flag','id')->get();
		return View::make('admin.country.list')->with('countries',$countries);
	}
	public function status($id)
	{
		$id= base64_decode($id);
		$oldData= DB::table('countries')->where('id',$id)->first();
		if($oldData->flag==0){
			DB::table('countries')->where('id',$id)->update(['flag'=>1]);
			toastr()->success('Country Activated Successfully');
		}else{
			DB::table('countries')->where('id',$id)->update(['flag'=>0]);
			toastr()->success('Country Deactivated Successfully');
		}
		return redirect()->route('admin.country.index');
	}
	public function activeDeactiveAll(Request $request)
	{
		$type= $request->type;
		$countries= $this->countries;
		$ids= trim($request->ids,',');
        if(!empty($ids)){
           $allIds=  explode(',',$ids);
           $zeronewId=[];
           $onenewId=[];
           foreach ($allIds as $ikey => $ivalue) {
           $onenewId[]= base64_decode($ivalue);
			// $data= $countries->where('id',base64_decode($ivalue))->first();
			// 	if($data->flag==1){
			// 		$zeronewId[] = $data->id;
			// 	}else{
			// 		$onenewId[] =  $data->id;
			// 	}
	        }
           	if($type=='Active'){
	         	Country::whereIn('id',$onenewId)->update(['flag'=>1]);
           	}else{
           		Country::whereIn('id',$onenewId)->update(['flag'=>0]);
           	}
        	echo 'success';
        }else{
            echo 'error';
        }
	}
	public function bannerIndex()
	{
        $permissions=[];

	    if(Auth::guard('admin')->user()->role==2){
			 $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Banner'])->first();
        }
		$countries= DB::table('countries')->select('name','id','flag')->get();
		return View::make('admin.banner.list')->with(['countries'=>$countries,'permissions'=>$permissions]);
	}
	public function bannerEdit($id='')
	{
		$id = base64_decode($id);
		$bannerData= Country::where('id',$id)->with('banners')->first();
		return view('admin.banner.edit',compact('bannerData'));
		// DB::table('countries')->select('countries.id','countries.name','banners.*')->where('id',$id)->;
	}
	public function updateBanner(Request $request)
	{
		$newData=[];
        $oldbanner= Banner::where('country_id',base64_decode($request->country_id))->first();
		$newData['university']= $oldbanner->university??'';
		$newData['country']= $oldbanner->country??'';
		$newData['professor']= $oldbanner->professor??'';
		$newData['school']= $oldbanner->school??'';
		$newData['teacher']= $oldbanner->teacher??'';
		$newData['country_en']= $request->country_en;
		$newData['country_ar']= $request->country_ar;
		$newData['university_en']= $request->university_en;
		$newData['university_ar']= $request->university_ar;
		$newData['professor_en']= $request->professor_en;
		$newData['professor_ar']= $request->professor_ar;
		$newData['school_en']= $request->school_en;
		$newData['school_ar']= $request->school_ar;
		$newData['teacher_en']= $request->teacher_en;
		$newData['teacher_ar']= $request->teacher_ar;
		 if($request->university){
		 	if($oldbanner['university']){
		 		if(File::exists(public_path('banner/'.$oldbanner->university))){
	                File::delete(public_path('banner/'.$oldbanner->university));
	            }
		 	}
            $logoimageName = 'university'.time().'.'.$request->university->extension();  

            $request->university->move(public_path('banner'), $logoimageName);
            $newData['university'] = $logoimageName;
        }
		 if($request->country){
		 	if($oldbanner['country']){
		 		if(File::exists(public_path('banner/'.$oldbanner->country))){
	                File::delete(public_path('banner/'.$oldbanner->country));
	            }
		 	}
            $logoimageName = 'country'.time().'.'.$request->country->extension();  

            $request->country->move(public_path('banner'), $logoimageName);
            $newData['country'] = $logoimageName;
        }
		 if($request->professor){
		 	if($oldbanner['professor']){
	            if(File::exists(public_path('banner/'.$oldbanner->professor))){
	                File::delete(public_path('banner/'.$oldbanner->professor));
	            }
		 	}
            $logoimageName = 'professor'.time().'.'.$request->professor->extension();  
            $request->professor->move(public_path('banner'), $logoimageName);
            $newData['professor'] = $logoimageName;
        }
		 if($request->school){
		 	if($oldbanner['school']){
		 		if(File::exists(public_path('banner/'.$oldbanner->school))){
	                File::delete(public_path('banner/'.$oldbanner->school));
	            }
		 	}
            $logoimageName = 'school'.time().'.'.$request->school->extension();  

            $request->school->move(public_path('banner'), $logoimageName);
            $newData['school'] = $logoimageName;
        }
		 if($request->teacher){
            if($oldbanner['teacher']){
            	if(File::exists(public_path('banner/'.$oldbanner->teacher))){
	                File::delete(public_path('banner/'.$oldbanner->teacher));
	            }
            } 
            $logoimageName = 'teacher'.time().'.'.$request->teacher->extension();  

            $request->teacher->move(public_path('banner'), $logoimageName);
            $newData['teacher'] = $logoimageName;
        }
        $newData['country_id'] = base64_decode($request->country_id);
        if(!empty($oldbanner)){
        	toastr()->success('Banner updated sucessfully');
        	Banner::where('country_id',$oldbanner->country_id)->update($newData);
        }else{
        	toastr()->success('Banner added sucessfully');
        	Banner::create($newData);
        }
        return redirect()->route('admin.country.editBanner',$request->country_id);
	}
}
