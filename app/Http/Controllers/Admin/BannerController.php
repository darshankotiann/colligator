<?php

namespace App\Http\Controllers\Admin;

use App\Banner;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use View;
use App\Helpers\Helper;
use App\Permissions;
use App\User;
use App\Country;
use App\School;
use App\University;
use App\Subject;
use App\Http\Requests\BannerRequest;
use Auth;
use File;
class BannerController extends Controller
{

    protected $schools;
    protected $university;
    function __construct(School $school)
    {
        $this->schools= $school::where(['is_delete'=>0,'status'=>1])->get();
        $this->subjects= Subject::where('is_delete',0)->with('school')->orderBy('created_at', 'desc')->get();
        $this->university = University::where(['is_delete' => 0, 'status' => 1])->get();
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $permissions= Helper::PermissionGet('Banner');
        $allBanners= Banner::where('is_active',1)->with('country:name,id,iso2')->get();
        return view('admin.banner.list',compact('allBanners','permissions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        if(Helper::PermissionCheck('Banner','add')){
            $countries= Country::where('flag',1)->get();

           // $allBanners= Banner::where('is_active',1)->;

            $countData = School::lastSIId($request->country_code);

            $universityname= University::select('name','id')->where('country_code','CA')->get();
           $schoolname = School::with('subject')->where(['is_delete' => 0, 'status' => 1]);
            if (old('country_code')) {
                $schoolname = $schoolname->where('country_code', old('country_code'));
            }
            $schoolname = $schoolname->get();
            return view('admin.banner.add',compact('countries','universityname','schoolname'));
        }else{
            toastr()->error('you dont have permission to add Banner');
            return redirect()->back();
        }
    }
    public function RangeSearch(Request $request)
    {
        $permissions= Helper::PermissionGet('Banner');
        
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;
        $allBanners= Banner::where('is_active',1)->with('country:name,id,iso2')->whereBetween('created_at',[$startDate,$endDate])->latest()->get();
        return view('admin.banner.list',compact('allBanners','permissions','StartDates','EndDates'));

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(BannerRequest $request)
    {

        $data= new Banner;
        $data->country_code = $request->country_code;
        $data->type = $request->type;
        $data->link = $request->link;
        $data->text_en = $request->text_en;
        $data->text_ar = $request->text_ar;
        $data->university_code = $request->university_code;
        $data->school_code = $request->school_code;
        if($request->file('image')){
            $logoimageName = time().'.'.$request->image->extension();  
            $request->image->move(public_path('banner'), $logoimageName);
            $data->image = $logoimageName;
            }
          // dd($data);   
        $data->save();
        toastr()->success('Banner Added Successfully');
        return redirect()->route('admin.banner.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Banner  $banner
     * @return \Illuminate\Http\Response
     */
    public function show(Banner $banner)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Banner  $banner
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if(Helper::PermissionCheck('Banner','edit')){
            // $id = base64_decode($id);
            $banner = Banner::with('school','university')->find(base64_decode($id));
            $countries= Country::where('flag',1)->get();

            
            $schools = School::where('country_code', $banner->country_code)->where(['is_delete' => 0, 'status' => 1])->get();
            $universities = University::with('country')->where('country_code', $banner->country_code)->where(['is_delete' => 0, 'status' => 1])->get();
           
          
            return view('admin.banner.edit',compact('countries','banner','schools','universities'));
        }else{
            toastr()->error('you dont have permission to add Banner');
            return redirect()->back();
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Banner  $banner
     * @return \Illuminate\Http\Response
     */
    public function update(BannerRequest $request,$id)
    {
        $id= base64_decode($id); 
        $data= Banner::find($id);

       
        $data->country_code = $request->country_code;

         if ($request->type == 1) {    
            $data->school_code = "";
            $data->university_code = "";
        }

         $data->type = $request->type;

        if ($request->type == 2) {
           
            $data->school_code = "";
            $data->university_code = "";
        }

        if ($request->type == 4) {
           
            $data->school_code = "";
            $data->university_code = "";
        }

        $data->text_en = $request->text_en;
        $data->link = $request->link;
        $data->text_ar = $request->text_ar;
        $data->image = $data->image;
        if($request->type == 3){
        $data->university_code = $request->university_code;
         $data->school_code = "";
        }
        if($request->type == 5){
        $data->school_code = $request->school_code;
         $data->university_code = "";
        }
        if($request->file('image')){
            $usersImage = public_path("banner/{$data->image}"); // get previous image from folder
            if (File::exists($usersImage)) { // unlink or remove previous image from folder
                unlink($usersImage);
            }
            $logoimageName = time().'.'.$request->image->extension();  
            $request->image->move(public_path('banner'), $logoimageName);
            $data->image = $logoimageName;
            }

        $data->save();
        toastr()->success('Banner Updated Successfully');
        return redirect()->route('admin.banner.index');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Banner  $banner
     * @return \Illuminate\Http\Response
     */
    public function destroy(Banner $banner)
    {
        //
    }
    public function deleteAll(Request $request)
    {
        if(Helper::PermissionCheck('Banner','delete')){

        $ids= trim($request->ids,',');
        if(!empty($ids)){
           $allIds=  explode(',',$ids);
           $newId=[];
           foreach ($allIds as $ikey => $ivalue) {
            $newId[]= base64_decode($ivalue);
           }
           Banner::whereIn('id',$newId)->delete();
           echo 'success';
        }
        }else{
           echo 'NoPermission';
        }
    }

    public function Status($id)
    {
        $id= base64_decode($id);
        $data= Banner::find($id);
        $newStatus= $data->status== 1 ? 0 : 1;
        $data->status=$newStatus;
        $data->save(); 
        if($newStatus==0){
                toastr()->error('Banner Deactivated Successfully');
        }else{
            toastr()->success('Banner Activated Successfully');
        }
        return redirect()->route('admin.banner.index');
        // return redirect()->back();
    }


    public function universityListbanner(Request $request)
    {
        $code = $request->code;
        $unilist= Helper::FetchCustomData('universities',['country_code'=>$request->countrycode,'is_delete'=>0,'status'=>1]); 
        $html='';
        $html='<option value="" selected disabled>Select University</option>';
        foreach ($unilist as $ukey => $uvalue) {


            $html.="<option ".($code==$uvalue->university_code ? 'selected' : '')." value='".$uvalue->university_code."'>".$uvalue->name."</option>";

            // $html.="<option ".old('university_code') == $uvalue->university_code ? 'selected' : ''." value='".$uvalue->university_code."'>".$uvalue->name."</option>";
        }
        return $html;
    }


    public function schoolListbanner(Request $request)
    {
        $code = $request->code;
        $schlist= Helper::FetchCustomData('schools',['country_code'=>$request->countrycode,'is_delete'=>0,'status'=>1]); 
        $html='';
        $html='<option value="" selected disabled>Select School</option>';
        foreach ($schlist as $ukey => $uvalue) {

             $html.="<option ".($code==$uvalue->school_code ? 'selected' : '')." value='".$uvalue->school_code."'>".$uvalue->name."</option>";
            // $html.='<option value="'.$uvalue->school_code.'">'.$uvalue->name.' </option>';
        }
        return $html;
    }
}
