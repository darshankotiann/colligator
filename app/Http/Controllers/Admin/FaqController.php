<?php

namespace App\Http\Controllers\Admin;


use App\Http\Controllers\Controller;
use App\Faq;
use Illuminate\Http\Request;
use App\Http\Requests\FaqRequest;
use App\Helpers\Helper;
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
        $permissions= Helper::PermissionGet('Faqs');
        $faqs= Faq::get();
        return view('admin.faq.list',compact('faqs','permissions'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(Helper::PermissionCheck('Faqs','add')){
            return view('admin.faq.add');
        }else{
            toastr()->error('you dont have permission to add Faq');
            return redirect()->back();
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(FaqRequest $request)
    {
        $data= new Faq;
        $data->question_en = $request->question_en;
        $data->question_ar = $request->question_ar;
        $data->description_en = $_REQUEST['description_en'];
        $data->description_ar = $_REQUEST['description_ar'];
        $data->save();
        return redirect()->route('admin.faq.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Testimonial  $testimonial
     * @return \Illuminate\Http\Response
     */


    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Testimonial  $testimonial
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if(Helper::PermissionCheck('Faqs','edit')){

            $id=  base64_decode($id);
            $data= Faq::find($id);
            return view('admin.faq.edit',compact('data'));
        }else{
            toastr()->error('you dont have permission to edit Faq');
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
    public function update(FaqRequest $request,$id)
    {
        $id = base64_decode($id);
        $data= Faq::find($id);
        $data->question_en= $request->question_en;
        $data->question_ar= $request->question_ar;
        $data->description_en= $_REQUEST['description_en'];
        $data->description_ar= $_REQUEST['description_ar'];
        $data->save();
        toastr()->success('Faq updated Successfully');
        return redirect()->route('admin.faq.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Testimonial  $testimonial
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if(Helper::PermissionCheck('Faqs','delete')){

            $id= base64_decode($id);
            $data= Faq::find($id);
            if($data){
                Faq::where('id',$id)->delete();
                toastr()->success('Data Deleted Successfully');
            }else{
                toastr()->error('NO Data Found');
            }
            return redirect()->route('admin.faq.index');
        }else{
            toastr()->error('you dont have permission to delete Faq');
            return redirect()->back();

        }
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

        return redirect()->route('admin.faq.index');
    }
    public function RangeSearch(Request $request)
    {
        $permissions= Helper::PermissionGet('Faqs');
       
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;
        $faqs= Faq::whereBetween('created_at',[$startDate,$endDate])->latest()->get();
        return view('admin.faq.list',compact('faqs','permissions','StartDates','EndDates'));

    }
}
