<?php

namespace App\Http\Controllers\Admin;

use App\Subject;
use App\SubjectView;
use App\School;
use App\Permissions;
use App\Helpers\Helper;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use View;
use Auth;
use App\Http\Requests\SubjectRequest;
use App\Imports\SubjectImport;
use Maatwebsite\Excel\Facades\Excel;

class SubjectController extends Controller
{

    protected $schools;
    function __construct(School $school)
    {
        $this->schools= $school::where(['is_delete'=>0,'status'=>1])->get();
        $this->subjects= Subject::where('is_delete',0)->with('school')->orderBy('created_at', 'desc')->get();

        $this->subjects= SubjectView::where('is_delete',0)->orderBy('id', 'desc')->paginate(10);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $permissions=[];
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Subject'])->first();
        }
        // $subjects= $this->subjects;
        $subjects= SubjectView::where('is_delete',0)->orderBy('created_at', 'desc')->paginate(10);
        // dd($subjects);
        return view('admin.subject.list',compact('subjects','permissions'));
  
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $Schools= $this->schools;
        $countries= Helper::Country();

        return view('admin.subject.add',compact('Schools','countries'));

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(SubjectRequest $request)
    {
        $countData= Subject::lastSCId($request->school_code);
        $subjects= new Subject;
        $subjects->name= $request->name;
        $subjects->school_code= $request->school_code;
        $subjects->subject_code= $request->school_code.sprintf("%02d", ($countData+2));
        $subjects->lang_code= $request->lang_code;
        $subjects->save();
        toastr()->success('Subject Created Successfully');
        return redirect()->route('admin.subject.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Subject  $subject
     * @return \Illuminate\Http\Response
     */
    public function show(Subject $subject)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Subject  $subject
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if(Helper::PermissionCheck('Subject','edit')){
            $subject= Subject::with('school')->find(base64_decode($id));
            $countryName= DB::table('countries')->select('name')->where('iso2',$subject['school']['country_code'])->first();
            $schools= $this->schools;
            return view('admin.subject.edit',compact('subject','schools','countryName'));  
        }else{
            toastr()->error('you dont have permission to edit Subject');
            return redirect()->route('admin.subject.index');
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Subject  $subject
     * @return \Illuminate\Http\Response
     */
    public function update(SubjectRequest $request,$id)
    {
        $id= base64_decode($id);
        $data= Subject::find($id);
        $data->name= $request->name;
        $data->subject_code= $request->subject_code;
        $data->save();
        toastr()->success('Subject Updated Successfully');
        return redirect()->route('admin.subject.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Subject  $subject
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if(Helper::PermissionCheck('Subject','delete')){
            $id= base64_decode($id);
            $data= Subject::find($id);
            if(empty($data)){
                toastr()->error('Subject Id Not Found');
            }else{
                $data->is_delete=1;
                $data->save();
                toastr()->success('Subject Delete Successfully');
                return redirect()->route('admin.subject.index');
            }
        }else{
            toastr()->error('you dont have permission to Delete Subject');
            return redirect()->route('admin.subject.index');
        }
    }
    public function deleteAll(Request $request)
    {
        $ids= trim($request->ids,',');
        if(!empty($ids)){
           $allIds=  explode(',',$ids);
           $newId=[];
           foreach ($allIds as $ikey => $ivalue) {
            $newId[]= base64_decode($ivalue);
           }
           Subject::whereIn('id',$newId)->update(['is_delete'=>1]);
            
            echo 'success';
        }else{
            echo 'error';
        }
    }
    public function schoolLang(Request $request)
    {
        $data= School::select('lang_code')->where('school_code',$request->school)->first();
        echo $data['lang_code'];
    }
     public function RangeSearch(Request $request)
    {
        $permissions=[];
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Subject'])->first();
        }
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;

        $subjects= Subject::where('is_delete',0)->whereBetween('created_at',[$startDate,$endDate])->with('school')->latest()->get();
        return view('admin.subject.list',compact('subjects','permissions','StartDates','EndDates'));

    }
    public function status($id)
    {
        $id= base64_decode($id);
        $data= Subject::find($id);
        if(empty($data)){
            toastr()->error('Subject Id Not Found');
        }else{
            $newStatus= $data->status==0 ? 1 : 0;
            $data->status  = $newStatus;
            $data->save();
                
            if($newStatus==0){
                toastr()->error('Subject Deactivated Successfully');
            }else{
                toastr()->success('Subject Activated Successfully');
            }
        }
        return redirect()->route('admin.subject.index');
   
    }
     public function import(Request $request)
    {
        $request->validate([
            'import_file' =>'required|mimes:xlsx',
        ]);
        try {
            $import = new SubjectImport;
            Excel::import($import, request()->file('import_file')->store('import_file'));
            $rowcount=  $import->getRowCount(); 

            \Session::put('subject_count', $rowcount);
//        Excel::import(new TeacherImport, request()->file('import_file'));
       }
       catch (\Maatwebsite\Excel\Validators\ValidationException $e) {
          $failures = $e->failures();
            toastr()->error('Failed in Importing data, please insert data in same format and order ');
          return redirect()->route('admin.subject.index');
       }
        // toastr()->success($rowcount.' Rows Imported Successfully');
       toastr()->success('uploading files in under processing please wait');
      
        return redirect()->route('admin.subject.index');
    }


    public function countSubject(Request $request)
    {
         if ($request->ajax()) {           
            if($request->subjectCount1 <=0){
                \Session::forget('subject_count');
            }
            return count(Subject::all());            
        }
    }
}
