<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\AbuseWords;
use App\Permissions;
use App\UniversityRating;
use App\ProfessorRating;
use App\TeacherRating;
use Illuminate\Http\Request;
use Auth;
use App\Helpers\Helper;
use App\Imports\AbuseWordImport;
use Validator;
use Excel;
use Route;

class AbuseWordsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $permissions= Helper::PermissionGet('AbuseWord');
        $abusewords= AbuseWords::orderBy('id','desc')->get();
        return view('admin.abuse.list',compact('abusewords','permissions'));
    }
    public function universityList()
    {
        $permissions= Helper::PermissionGet('AbuseWord');
        $abusewords= UniversityRating::with('users')->where('is_abuse',1)->get();
        $urlword="university";
        return view('admin.abuse.universityList',compact('abusewords','urlword','permissions'));
    }
    public function professorList()
    {
        $permissions= Helper::PermissionGet('AbuseWord');
        session()->forget('ajaxroute');

           // teacher =1, professor =2, university=3
           $teacherDatas= TeacherRating::with('users')->where('is_abuse',1)->where('is_delete',0)->orderBy('updated_at','DESC')->get()->toArray();
           $professorDatas= ProfessorRating::with('users')->where('is_abuse',1)->where('is_delete',0)->orderBy('updated_at','DESC')->get()->toArray();
           $universityDatas= UniversityRating::with('users')->where('is_abuse',1)->where('is_delete',0)->orderBy('updated_at','DESC')->get()->toArray();
           $newArray = array_merge_recursive($teacherDatas,$professorDatas,$universityDatas);
   
           // usort($allCommentTrack, function($a, $b) {
           //     return $a['updated_at'] <=> $b['updated_at'];
           // });
           $abusewords =collect($newArray)->sortBy('updated_at')->reverse()->toArray();

        // $abusewords= ProfessorRating::with('users')->where('is_abuse',1)->get();
        $urlword="professor";
        return view('admin.abuse.universityList',compact('abusewords','urlword','permissions'));
    }
    public function abuseTrackAjax(Request $request)
    {
        session()->put(['ajaxroute'=>Route::currentRouteName()]);
        
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;
        // teacher =1, professor =2, university=3
        $teacherDatas= TeacherRating::with('users')->where('is_abuse',1)->where('is_delete',0)->whereBetween('teacher_ratings.updated_at',[$startDate.' 00:00:00',$endDate.' 23:59:59'])->orderBy('updated_at','DESC')->get()->toArray();
        $professorDatas= ProfessorRating::with('users')->where('is_abuse',1)->where('is_delete',0)->whereBetween('professor_ratings.updated_at',[$startDate.' 00:00:00',$endDate.' 23:59:59'])->orderBy('updated_at','DESC')->get()->toArray();
        $universityDatas= UniversityRating::with('users')->where('is_abuse',1)->where('is_delete',0)->whereBetween('university_ratings.updated_at',[$startDate.' 00:00:00',$endDate.' 23:59:59'])->orderBy('updated_at','DESC')->get()->toArray();
        $newArray = array_merge_recursive($teacherDatas,$professorDatas,$universityDatas);
        // usort($allCommentTrack, function($a, $b) {
        //     return $a['updated_at'] <=> $b['updated_at'];
        // });
        $urlword="professor";

        $abusewords =collect($newArray)->sortBy('updated_at')->reverse()->toArray();

        return view('admin.abuse.universityList',compact('abusewords','StartDates','EndDates','urlword'));
    }

    public function teacherDestroy($id)
    {
        if(Helper::PermissionCheck('AbuseWord','delete')){
            $id=  base64_decode($id);
            TeacherRating::where('id',$id)->update(['is_delete'=>1]);
            return redirect()->route('admin.abuse-words.teacherlist');
        }
        else{
            toastr()->error('you dont have permission to Delete');
            return redirect()->back();
        }
    }
    public function universityDestroy($id)
    {
        if(Helper::PermissionCheck('AbuseWord','delete')){
            $id=  base64_decode($id);
        UniversityRating::where('id',$id)->update(['is_delete'=>1]);
        return redirect()->route('admin.abuse-words.universitylist');
        }else{
            toastr()->error('you dont have permission to Delete');
            return redirect()->back();
        }
    }
    public function professorDestroy($id,Request $request)
    {
        if(Helper::PermissionCheck('AbuseWord','delete'))
        {
            $id=  base64_decode($id);
            $type = $request->type;
            if($type == 1){
                $data= TeacherRating::where('id',$id)->first();
                if($data){
                   if(isset($data['parent_id']) && $data['parent_id']==0){
                        $data->message = '';
                        $data->save();
                        toastr()->success('Review Message Remove Successfully');
                        return redirect()->route('admin.abuse-words.professorlist');
                    }   
                $data->delete();
                }
            }
            if($type == 2){
                $data= ProfessorRating::where('id',$id)->first();
                if($data){
                    if(isset($data['parent_id']) && $data['parent_id']==0){
                        $data->message = '';
                        $data->save();
                        toastr()->success('Review Message Remove Successfully');
                        return redirect()->route('admin.abuse-words.professorlist');
                        }
                    $data->delete();
                }
            }
            if($type == 3){
                $data= UniversityRating::where('id',$id)->first();
                if($data){
                if(isset($data['parent_id']) &&  $data['parent_id']==0){
                    $data->message = '';
                    $data->save();
                    toastr()->success('Review Message Remove Successfully');
                    return redirect()->route('admin.abuse-words.professorlist');
                }
                $data->delete();
                }
            }
            toastr()->success('Comment Deleted Successfully');
            if(session()->has('ajaxroute')){
                if(session()->get('ajaxroute')=='admin.abuse_track_ajax'){
                    return redirect()->route('admin.abuse-words.professorlist');
                }else{
                    return redirect()->route('admin.abuse-words.professorlist');
                }
            }
            return redirect()->route('admin.abuse-words.professorlist');

        }
        else{
            toastr()->error('you dont have permission to Delete');
            return redirect()->back();
        }
    }
    public function teacherList()
    {
        $permissions= Helper::PermissionGet('AbuseWord');
        
        $abusewords= TeacherRating::with('users')->where('is_abuse',1)->get();
        $urlword="teacher";
        return view('admin.abuse.universityList',compact('abusewords','urlword','permissions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(Helper::PermissionCheck('AbuseWord','add')){

            return view('admin.abuse.add');
        }else{
            toastr()->error('you dont have permission to add Abuse Word');
            return redirect()->back();
        }
    }
    public function RangeSearch(Request $request)
    {
        $permissions= Helper::PermissionGet('AbuseWord');
        
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;

        $abusewords= AbuseWords::whereBetween('created_at',[$startDate,$endDate])->latest()->get();

        return view('admin.abuse.list',compact('abusewords','permissions','StartDates','EndDates'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $request->validate([
            'word' => 'required|unique:abuse_words,word|max:255'
        ]);
        AbuseWords::create($request->all());
        toastr()->success('word created sucessfully');
        return redirect()->route('admin.abuse-words.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\AbuseWords  $abuseWords
     * @return \Illuminate\Http\Response
     */
    public function show(AbuseWords $abuseWords)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\AbuseWords  $abuseWords
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if(Helper::PermissionCheck('AbuseWords','edit')){
        $id = base64_decode($id);
        $word= AbuseWords::findOrFail($id);
        return view('admin.abuse.edit',compact('word'));
        }else{
            toastr()->error('you dont have permission to edit AbuseWord');
            return redirect()->back();
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\AbuseWords  $abuseWords
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id )
    {
        $id= base64_decode($id);
        $request->validate([
            'word' => 'required|max:255|unique:abuse_words,word,'.$id
        ]);
        AbuseWords::where('id',$id)->update(['word'=> $request->word]);
        toastr()->success('word updated successfully');
        return redirect()->route('admin.abuse-words.index');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\AbuseWords  $abuseWords
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $permissions=[];
        if(Auth::guard('admin')->user()->role==2){
             $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'AbuseWord'])->first();
            if($permissions['delete']==1){
                $id= base64_decode($id);
                AbuseWords::where('id',$id)->delete();
            }
        }else{
         $id= base64_decode($id);
                AbuseWords::where('id',$id)->delete();
        }
        return redirect()->route('admin.abuse-words.index');
    }

    public function import(Request $request)
    {
        $validator = Validator::make(
        [
            'import_file'      => $request->import_file,
            'extension' => strtolower($request->import_file->getClientOriginalExtension()),
        ],
        [
            'import_file'          => 'required',
            'extension'      => 'required|in:xlsx',
        ]
        );
        try {
            $import = new AbuseWordImport;
            Excel::import($import, request()->file('import_file'));
            $rowcount=  $import->getRowCount(); 
       }
       catch (\Maatwebsite\Excel\Validators\ValidationException $e) {
          $failures = $e->failures();
            toastr()->error('Failed in Importing data, please insert data in same format and order ');
          return redirect()->route('admin.abuse-words.index');

       }
        toastr()->success($rowcount.' Rows Imported Successfully');
        return redirect()->route('admin.abuse-words.index');
    }
}
