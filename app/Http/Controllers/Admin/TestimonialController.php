<?php

namespace App\Http\Controllers\Admin;


use App\Http\Controllers\Controller;
use App\Testimonial;
use Illuminate\Http\Request;
use App\Http\Requests\TestimonialRequest;
use App\Permissions;
use Auth;
use File;
use App\Helpers\Helper;
class TestimonialController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $permissions=[];

        if(Auth::guard('admin')->user()->role==2){
             $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Testimonial'])->first();
        }

        $testimonials= Testimonial::where('is_delete',0)->get();
        return view('admin.testimonials.list',compact('testimonials','permissions'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(Helper::PermissionCheck('Testimonial','add')){
            return view('admin.testimonials.add');
        }else{
            toastr()->error('you dont have permission to add Testimonial');
            return redirect()->back();
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(TestimonialRequest $request)
    {
        $data= new Testimonial;
        $data->title_en = $request->title_en;
        $data->title_ar = $request->title_ar;
        $data->description_en = $_REQUEST['description_en'];
        $data->description_ar = $_REQUEST['description_ar'];
        $data->date_created = date('d-F-Y');
        $data->image = '';
        if($request->file('image')){
            $logoimageName = time().'.'.$request->image->extension();  
            $request->image->move(public_path('testimonial'), $logoimageName);
            $data->image = $logoimageName;
            }
        $data->save();
        return redirect()->route('admin.testimonial.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Testimonial  $testimonial
     * @return \Illuminate\Http\Response
     */
    public function show(Testimonial $testimonial,$id)
    {
        $id=  base64_decode($id);
        $data= $testimonial::find($id);
        print_r($data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Testimonial  $testimonial
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if(Helper::PermissionCheck('Testimonial','edit')){
            $id=  base64_decode($id);
            $data= Testimonial::find($id);
            return view('admin.testimonials.edit',compact('data'));
        }else{
            toastr()->error('you dont have permission to edit Testimonial');
            return redirect()->back();
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Testimonial  $testimonial
     * @return \Illuminate\Http\Response
     */
    public function update(TestimonialRequest $request,$id)
    {
        $id = base64_decode($id);
        $data= Testimonial::find($id);
        $image =$data->image; 
        if($request->file('image')){
                if(File::exists(public_path('testimonial/'.$data->image))){
                    File::delete(public_path('testimonial/'.$data->image));
                }
                $logoimageName = time().'.'.$request->image->extension();  
                $request->image->move(public_path('testimonial'), $logoimageName);
                $image = $logoimageName;
            }
        $data->title_en= $request->title_en;
        $data->title_ar= $request->title_ar;
        $data->description_en= $_REQUEST['description_en'];
        $data->description_ar= $_REQUEST['description_ar'];
        $data->image= $image;
        $data->save();
        toastr()->success('testimonial updated Successfully');
        return redirect()->route('admin.testimonial.index');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Testimonial  $testimonial
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
       if(Helper::PermissionCheck('Testimonial','delete')){
            $id= base64_decode($id);
            $data= Testimonial::find($id);
            if(empty($data)){
                toastr()->error('Testimonial Id Not Found');
            }else{
                $data->is_delete=1;
                $data->save();
                toastr()->success('Testimonial Delete Successfully');
                return redirect()->route('admin.testimonial.index');
            }
        }else{
            toastr()->error('you dont have permission to Delete Testimonial');
            return redirect()->route('admin.testimonial.index');
        }
    }

    public function Status($id)
    {
        $id= base64_decode($id);
        $data= Testimonial::find($id);
        $newStatus= $data->status== 1 ? 0 : 1;
        $data->status=$newStatus;
        $data->save(); 
        if($newStatus==0){
                toastr()->error('Testimonial Deactivated Successfully');
        }else{
            toastr()->success('Testimonial Activated Successfully');
        }

        return redirect()->route('admin.testimonial.index');
    }
    public function RangeSearch(Request $request)
    {
        $permissions=[];
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'testimonial'])->first();
        }
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;
        $testimonials= Testimonial::where('is_delete',0)->whereBetween('created_at',[$startDate,$endDate])->latest()->get();
        return view('admin.testimonials.list',compact('testimonials','permissions','StartDates','EndDates'));

    }
}
