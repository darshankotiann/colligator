<?php

namespace App\Http\Controllers\Admin;

use App\CmsPages;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use App\Helpers\Helper;
use File;
class CmsPagesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $permissions= Helper::PermissionGet('Cms');
        $cmslist= CmsPages::get();
        return view('admin.cms.list',compact('cmslist','permissions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\CmsPages  $cmsPages
     * @return \Illuminate\Http\Response
     */
    public function show(CmsPages $cmsPages)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\CmsPages  $cmsPages
     * @return \Illuminate\Http\Response
     */
    public function edit(CmsPages $cmsPages,$id)
    {
        if(Helper::PermissionCheck('Cms','edit')){
            $id= base64_decode($id);
            $data= CmsPages::find($id);
            return view('admin.cms.edit',compact('data'));
        }else{
            toastr()->error('you dont have permission to edit Cms');
            return redirect()->back();
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\CmsPages  $cmsPages
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, CmsPages $cmsPages)
    {

        $id= base64_decode($request->id);
        $cmspage= CmsPages::find($id);
        $cmspage->title_en=$request->title_en;
        $cmspage->title_ar=$request->title_ar;
        $cmspage->content_en = $_REQUEST['content_en'];
        $cmspage->content_ar = $_REQUEST['content_ar'];
        // $cmspage->content_en=$request->content_en;
        // $cmspage->content_ar=$request->content_ar;
        $cmspage->save();
        toastr()->success('Cms Update Successfully');
        return redirect()->route('admin.cms.list');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\CmsPages  $cmsPages
     * @return \Illuminate\Http\Response
     */
    public function destroy(CmsPages $cmsPages)
    {
        //
    }
    public function aboutUs(Request $request)
    {
        $aboutUs= DB::table('about_us')->find(1);
        if($request->isMethod('post')){
            if(Helper::PermissionCheck('Cms','edit')){

            $request->validate([
            'slider_title_en' =>'required|max:255',
            'slider_title_ar' =>'required|max:255',
            'slider_description_en' =>'required',
            'slider_description_ar' =>'required',
            'heading_en' =>'required|max:255',
            'heading_ar' =>'required|max:255',
            'title_en' =>'required|max:255',
            'title_ar' =>'required|max:255',
            'description_en' =>'required',
            'description_ar' =>'required',
            'slider_image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'desc_image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            ]);
            $slider_image = $aboutUs->slider_image;
            $desc_image= $aboutUs->desc_image;
            if($request->file('slider_image')){
                if(File::exists(public_path('images/'.$aboutUs->slider_image))){
                    File::delete(public_path('images/'.$aboutUs->slider_image));
                }
                $sliderImageName = time().'slider.'.$request->slider_image->extension();  
                $request->slider_image->move(public_path('images'), $sliderImageName);
                $slider_image = $sliderImageName;
            }
            if($request->file('desc_image')){
                if(File::exists(public_path('images/'.$aboutUs->desc_image))){
                    File::delete(public_path('images/'.$aboutUs->desc_image));
                }
                $descImageName = time().'desc.'.$request->desc_image->extension();  
                $request->desc_image->move(public_path('images'), $descImageName);
                $desc_image = $descImageName;
            }
            $slider_title_en= $request->slider_title_en;
            $slider_title_ar= $request->slider_title_ar;
            $slider_description_en= $_REQUEST['slider_description_en'];
            $slider_description_ar= $_REQUEST['slider_description_ar'];
            $heading_en= $_REQUEST['heading_en'];
            $heading_ar= $_REQUEST['heading_ar'];
            $title_en= $_REQUEST['title_en'];
            $title_ar= $_REQUEST['title_ar'];
            $description_en= $_REQUEST['description_en'];
            $description_ar= $_REQUEST['description_ar'];
            DB::table('about_us')->where('id',1)->update(['slider_title_en'=>$slider_title_en,'slider_title_ar'=>$slider_title_ar,'slider_description_en'=>$slider_description_en,'slider_description_ar'=>$slider_description_ar,'heading_en'=>$heading_en,'heading_ar'=>$heading_ar,'title_en'=>$title_en,'title_ar'=>$title_ar,'description_en'=>$description_en,'description_ar'=>$description_ar,'desc_image'=>$desc_image,'slider_image'=>$slider_image]);
            toastr()->success('About Us updated Successfully');
            return redirect()->route('admin.cms.edit_aboutUs');
        }else{
            toastr()->error('you dont have permission to edit AboutUs');
            return redirect()->route('admin.cms.edit_aboutUs');
        }}

        return view('admin.cms.aboutUs',compact('aboutUs'));
         
    }
    public function contactUs(Request $request)
    {
        $contactUs= DB::table('contact_us')->first();
        if($request->isMethod('post')){
            if(Helper::PermissionCheck('Cms','edit')){
            $request->validate([
            'slider_title_en' =>'required|max:255',
            'slider_title_ar' =>'required|max:255',
            'slider_description_en' =>'required',
            'slider_description_ar' =>'required',
            'slider_image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            ]);
            $slider_image = $contactUs->slider_image;
            if($request->file('slider_image')){
                if(File::exists(public_path('images/'.$contactUs->slider_image))){
                    File::delete(public_path('images/'.$contactUs->slider_image));
                }
                $logoimageName = time().'.'.$request->slider_image->extension();  
                $request->slider_image->move(public_path('images'), $logoimageName);
                $slider_image = $logoimageName;
            }
            $slider_title_en= $request->slider_title_en;
            $slider_title_ar= $request->slider_title_ar;
            $slider_description_en= $_REQUEST['slider_description_en'];
            $slider_description_ar= $_REQUEST['slider_description_ar'];
            DB::table('contact_us')->where('id',1)->update(['slider_title_en'=>$slider_title_en,'slider_title_ar'=>$slider_title_ar,'slider_description_en'=>$slider_description_en,'slider_description_ar'=>$slider_description_ar,'slider_image'=>$slider_image]);
            toastr()->success('Contact Us updated Successfully');
            return redirect()->route('admin.cms.edit_contactUs');
        }else{
            toastr()->error('you dont have permission to edit Contact Us');
            return redirect()->route('admin.cms.edit_contactUs');
        }}

        return view('admin.cms.contactUs',compact('contactUs'));
    }
    public function customerContactList()
    {
        $customerContactList= DB::table('customer_contact')->get();
        return view('admin.cms.customerContactList',compact('customerContactList'));

    }
    public function customerContactDelete($id)
    {
        $id= base64_decode($id);
        DB::table('customer_contact')->where('id',$id)->delete();
        toastr()->success('Delete Successfully');
        return redirect()->route('admin.customer_contact');
    }
}
