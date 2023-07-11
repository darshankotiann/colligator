<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\ProfileCorrection;
use Illuminate\Http\Request;
use App\Helpers\Helper;
class ProfileCorrectionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $corrections= ProfileCorrection::all();
        return view('admin.corrections.list');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function teacherList()
    {
        $suggestions=  ProfileCorrection::with(['teacher','professor','university'])->with('user')->orderBy('updated_at','DESC')->get();  
        // dd($suggestions);
        // $suggestions=  ProfileCorrection::where('type',1)->with('teacher')->with('user')->get();  
        return view('admin.suggestion.teacherList',compact('suggestions'));
    }
    public function teacherView($id='')
    {
        $id= base64_decode($id);
        $suggestions=  ProfileCorrection::where('id',$id)->with('teacher')->with('user')->first();  
        return view('admin.suggestion.teacherView',compact('suggestions'));

    }
    public function professorList()
    {
        $suggestions=  ProfileCorrection::where('type',2)->with('professor')->with('user')->get();  
        return view('admin.suggestion.professorList',compact('suggestions'));
    }
    public function professorView($id='')
    {
        $id= base64_decode($id);
        $suggestions=  ProfileCorrection::where('id',$id)->with('professor')->with('user')->first();  
        return view('admin.suggestion.professorView',compact('suggestions'));

    }
    public function universityList()
    {
        $suggestions=  ProfileCorrection::where('type',3)->with('university')->with('user')->get();  
        return view('admin.suggestion.universityList',compact('suggestions'));
    }
    public function universityView($id='')
    {
        $id= base64_decode($id);
        $suggestions=  ProfileCorrection::where('id',$id)->with('university')->with('user')->first();  
        return view('admin.suggestion.universityView',compact('suggestions'));

    }
    public function teacherRangeSearch(Request $request)
    {
        // $permissions= Helper::PermissionGet('HighSchoolProfile');
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;
        $suggestions=  ProfileCorrection::with(['teacher','professor','university'])->with('user')->whereBetween('suggestions.created_at',[$startDate.' 00:00:00',$endDate.' 23:59:59'])->orderBy('updated_at','DESC')->get();  
        return view('admin.suggestion.teacherList',compact('suggestions','StartDates','EndDates'));
    }
    public function professorRangeSearch(Request $request)
    {
        // $permissions= Helper::PermissionGet('HighSchoolProfile');
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;
        $suggestions=  ProfileCorrection::where('type',2)->with('professor')->with('user')->whereBetween('suggestions.created_at',[$startDate.' 00:00:00',$endDate.' 23:59:59'])->latest('suggestions.id')->get();  
        return view('admin.suggestion.professorList',compact('suggestions','StartDates','EndDates'));
    }
    public function universityRangeSearch(Request $request)
    {
        // $permissions= Helper::PermissionGet('HighSchoolProfile');
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;
        $suggestions=  ProfileCorrection::where('type',3)->with('university')->with('user')->whereBetween('suggestions.created_at',[$startDate.' 00:00:00',$endDate.' 23:59:59'])->latest('suggestions.id')->get();  
        return view('admin.suggestion.universityList',compact('suggestions','StartDates','EndDates'));
    }
    public function profileCorrectionThanku(Request $request)
    {
        $id= base64_decode($request->id);
        $suggestions=  ProfileCorrection::where('id',$id)->with('user')->first(); 
        if(!empty($suggestions['user'])){  
            $data['content']=$request->message;
            $subject= 'Thank you For Your Suggestion';
            Helper::mailSend($data,$subject,$suggestions['user']['email']);
            ProfileCorrection::where('id',$id)->update(['is_approved'=>1]);
            toastr()->success('suggestion send successfully');
        }else{
            toastr()->error('Error in sending suggestion');

        } 
        return redirect()->back();  
    }
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
     * @param  \App\ProfileCorrection  $profileCorrection
     * @return \Illuminate\Http\Response
     */
    public function show(ProfileCorrection $profileCorrection)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\ProfileCorrection  $profileCorrection
     * @return \Illuminate\Http\Response
     */
    public function edit(ProfileCorrection $profileCorrection)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\ProfileCorrection  $profileCorrection
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ProfileCorrection $profileCorrection)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\ProfileCorrection  $profileCorrection
     * @return \Illuminate\Http\Response
     */
    public function destroy(ProfileCorrection $profileCorrection)
    {
        //
    }
}
