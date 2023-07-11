<?php

namespace App\Http\Controllers\Admin;

use App\School;
use App\SchoolView;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use View;
use App\Permissions;
use Auth;
use App\Http\Requests\SchoolRequest;
use App\Imports\SchoolImport;
use Maatwebsite\Excel\Facades\Excel;

class SchoolController extends Controller
{
    protected $schoolData;
    protected $countryCode;
    function __construct(School $school)
    {
        $this->countryCode= DB::table('countries')->select('name','iso2')->where('flag',1)->get();
        // $this->schoolData = $school->select('schools.*','countries.name as countryName')->join('countries','schools.country_code','countries.iso2')->where('schools.is_delete',0)->latest('schools.id')->paginate(10);

        $this->schoolData= SchoolView::where('is_delete',0)->orderBy('id', 'desc')->paginate(10);
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
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'School'])->first();
        }
        $schools= $this->schoolData;
        return view('admin.school.list',compact('schools','permissions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
            $Countries= $this->countryCode;
            return view('admin.school.add',compact('Countries'));

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(SchoolRequest $request)
    {
        $countData= School::lastSIId($request->country_code);
        $school= new School;
        $school->name= $request->name;
        $school->country_code= $request->country_code;
        $school->school_code= $request->country_code.'SCL'.sprintf("%02d", ($countData+2));
        $school->lang_code= $request->lang_code;
        $school->save();
        toastr()->success('School Created Successfully');
        return redirect()->route('admin.school.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\School  $school
     * @return \Illuminate\Http\Response
     */
    public function show(School $school)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\School  $school
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'School'])->first();
            if($permissions['edit']!=1){
                toastr()->error('You dont have permission to edit School');
                return redirect()->route('admin.school.index');
            }
        }
                
        $id= base64_decode($id);
        $school= School::where('id',$id)->first();
        $Countries= $this->countryCode;
        return View::make('admin.school.edit')->with(['school'=>$school,'Countries'=>$Countries]); 

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\School  $school
     * @return \Illuminate\Http\Response
     */
    public function update(SchoolRequest $request, $id)
    {
        $id= base64_decode($id);
        $data= School::find($id);
        if(!empty($data)){
            if($data->country_code != $request->country_code){
                $countData= School::lastSIId($request->country_code);
                $data->school_code= $request->country_code.'SCL'.sprintf("%02d", ($countData+1));
            }

            $data->country_code = $request->country_code;
            $data->name = $request->name;
            $data->lang_code= $request->lang_code;
            $data->school_code= $request->school_code;
            $data->save();
            toastr()->success('School Updated Successfully');
        }else{
            toastr()->error('School Id Not  Found');
        }
        return redirect()->route('admin.school.index');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\School  $school
     * @return \Illuminate\Http\Response
     */
   
    public function destroy($id)
    {
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'School'])->first();
            if($permissions['delete']!=1){
                toastr()->error('You dont have permission to delete school');
                return redirect()->route('admin.school.index');
            }
        }
        $id= base64_decode($id);

        $data= School::where('id',$id)->with('active_subjects')->with('active_banners')->first();
        
        if(empty($data)){
            toastr()->error('School Id Not Found');
        }else{
            if(count($data->active_subjects)>0){
            toastr()->error('Subjects are associated with it, so school cant be deleted');
            }
            if (count($data->active_banners) > 0) {
                toastr()->error('Banner are associated with it, so school cant be deleted');
            }else{

                $data->is_delete=1;
                $data->save();
                toastr()->success('School Delete Successfully');
            }
            return redirect()->route('admin.school.index');
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

           foreach ($newId as $val) {
                $newId[] = base64_decode($val);
            } 

             $data = School::whereIn('id', $newId)->with('active_banners')->first();
                if (count($data->active_banners) > 0) {
                 toastr()->error('Banner are associated with it, so school cant be deleted');
                 return 0;

            }

           // School::whereIn('id',$newId)->update(['is_delete'=>1]);
            else{
            DB::table('schools')->whereIn('id', $newId)->update(['is_delete' => 1]);
            toastr()->success('Successfully deleted');
        }
            
            echo 'success';
        }else{
            // echo 'error';

            toastr()->error('Please select at least one item');
        }
    }
    public function Status($id)
    {
        $id= base64_decode($id);
        $data= School::find($id);
        $newStatus= $data->status== 1 ? 0 : 1;
        $data->status=$newStatus;
        $data->save(); 
        if($newStatus==0){
                toastr()->error('School Deactivated Successfully');
        }else{
            toastr()->success('School Activated Successfully');
        }

        return redirect()->route('admin.school.index');
    }
    public function RangeSearch(Request $request)
    {
        $permissions=[];
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'School'])->first();
        }
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;
        $schools= School::where('is_delete',0)->whereBetween('created_at',[$startDate,$endDate])->latest()->get();
        return view('admin.school.list',compact('schools','permissions','StartDates','EndDates'));

    }
     public function import(Request $request)
    {
        $request->validate([
            'import_file' =>'required|mimes:xlsx',
        ]);
        try {
            $import = new SchoolImport;
            Excel::import($import, request()->file('import_file')->store('import_file'));
            $rowcount=  $import->getRowCount(); 

            \Session::put('school_count', $rowcount);
//        Excel::import(new TeacherImport, request()->file('import_file'));
       }
       catch (\Maatwebsite\Excel\Validators\ValidationException $e) {
          $failures = $e->failures();
            toastr()->error('Failed in Importing data, please insert data in same format and order ');
          return redirect()->route('admin.school.index');

       }
        // toastr()->success($rowcount.' Rows Imported Successfully');
       toastr()->success('uploading files in under processing please wait');
       
        return redirect()->route('admin.school.index');
    }



    public function countSchool(Request $request)
    {
         if ($request->ajax()) {           
            if($request->schoolCount1 <=0){
                \Session::forget('school_count');
            }
            return count(School::all());            
        }
    }
}
