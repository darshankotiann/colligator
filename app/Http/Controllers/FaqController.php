<?php

namespace App\Http\Controllers\Admin;


use App\Http\Controllers\Controller;
use App\Faq;
use Illuminate\Http\Request;
use App\Http\Requests\TestimonialRequest;
use Auth;
use File;
class FaqController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $testimonials= Faq::get();
        return view('admin.testimonials.list',compact('testimonials'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.testimonials.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(TestimonialRequest $request)
    {
        $data= new Faq;
        $data->title_en = $request->title_en;
        $data->title_ar = $request->title_ar;
        $data->description_en = $request->description_en;
        $data->description_ar = $request->description_ar;
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
    public function show(Faq $testimonial,$id)
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
        $id=  base64_decode($id);
        $data= Faq::find($id);
        return view('admin.testimonials.edit',compact('data'));
        
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
        $data= Faq::find($id);
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
        $data->description_en= $request->description_en;
        $data->description_ar= $request->description_ar;
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
    public function destroy(Faq $testimonial)
    {
        //
    }

    public function Status($id)
    {
        $id= base64_decode($id);
        $data= Faq::find($id);
        $newStatus= $data->status== 1 ? 0 : 1;
        $data->status=$newStatus;
        $data->save(); 
        if($newStatus==0){
                toastr()->error('Faq Deactivated Successfully');
        }else{
            toastr()->success('Faq Activated Successfully');
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
        $testimonials= Faq::where('is_delete',0)->whereBetween('created_at',[$startDate,$endDate])->latest()->get();
        return view('admin.testimonials.list',compact('testimonials','permissions','StartDates','EndDates'));

    }
}
