<?php

namespace App\Http\Controllers\Admin;

use App\College;
use App\University;
use App\CollegeView;
use App\Permissions;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use View;
use Auth;
use App\Imports\CollegeImport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Validation\Rule;
use App\Helpers\Helper;


class CollegeController extends Controller
{
    protected $university;
    function __construct()
    {
        $this->university= University::where(['is_delete'=>0,'status'=>1])->get();
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
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'College'])->first();
        }
        // $colleges= College::where('is_delete',0)->with('university')->latest()->get();

         $colleges= CollegeView::where('is_delete',0)->latest()->paginate(10);
        return view('admin.college.list',compact('colleges','permissions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $universities= $this->university;
        $countries= Helper::Country();

        return view('admin.college.add',compact('universities','countries'));
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
                'name'  => [
                'required','string','min:3','max:50',
                Rule::unique('colleges','name')->where(function ($query) use($request)  {
                     return $query
                        ->where('university_code',$request->university_code);
                  })
            ],
            // 'name'=>'required|min:3|unique:colleges,name',
            'university_code'=>'required',
        ]);
        $last_id= College::lastCIId($request->university_code);
        $college= new College;
        $college->name = $request->name;
        $college->university_code = $request->university_code;
        $college->college_code = $request->university_code.sprintf("%02d", ($last_id+1));
        $college->save();
        toastr()->success('College Created Successfully');
        return redirect()->route('admin.college.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\College  $college
     * @return \Illuminate\Http\Response
     */
    public function show(College $college)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\College  $college
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $college= College::with('university')->find(base64_decode($id));
        $countryName= DB::table('countries')->select('name')->where('iso2',$college['university']['country_code'])->first();
        $universities= $this->university;
        return view('admin.college.edit',compact('college','universities','countryName'));        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\College  $college
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        $id= base64_decode($id);
        $request->validate([
              'name'  => [
                'required','string','min:3','max:50', 
                Rule::unique('colleges','name')->where(function ($query) use($request , $id)  {
                     return $query
                        ->where('university_code',$request->university_code)
                        ->where('id','!=',$id);
                }),
            ],
            // 'name'=>'required|min:3|unique:colleges,name,'.$id
        ]);
        $data= College::find($id);
        $data->name= $request->name;
        $data->college_code = $request->college_code;
        $data->save();
        toastr()->success('College Updated Successfully');
        return redirect()->route('admin.college.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\College  $college
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'College'])->first();
            if($permissions['delete']!=1){
                toastr()->error('You dont have permission to delete college');
                return redirect()->route('admin.college.index');
            }
        }
        $id= base64_decode($id);
        $data= College::find($id);
        if(empty($data)){
            toastr()->error('College Id Not Found');
        }else{
            $data->is_delete=1;
            $data->save();
            toastr()->success('College Delete Successfully');
            return redirect()->route('admin.college.index');
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
           College::whereIn('id',$newId)->update(['is_delete'=>1]);
            
            echo 'success';
        }else{
            echo 'error';
        }
    }
    public function UniversityLang(Request $request)
    {
        $data= University::select('lang_code')->where('university_code',$request->university)->first();
        echo $data['lang_code'];
    }
     public function RangeSearch(Request $request)
    {
        $permissions=[];
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'College'])->first();
        }
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;

        $colleges= College::where('is_delete',0)->whereBetween('created_at',[$startDate,$endDate])->with('university')->latest()->get();
        return view('admin.college.list',compact('colleges','permissions','StartDates','EndDates'));

    }
    public function status($id)
    {
        $id= base64_decode($id);
        $data= College::find($id);
        if(empty($data)){
            toastr()->error('College Id Not Found');
        }else{
            $newStatus= $data->status==0 ? 1 : 0;
            $data->status  = $newStatus;
            $data->save();
                
            if($newStatus==0){
                toastr()->error('College Deactivated Successfully');
            }else{
                toastr()->success('College Activated Successfully');
            }
        }
        return redirect()->route('admin.college.index');
   
    }
     public function import(Request $request)
    {
        $request->validate([
            'import_file' =>'required|mimes:xlsx',
        ]);
        try {
            $import = new CollegeImport;
            Excel::import($import, request()->file('import_file')->store('import_file'));
            $rowcount=  $import->getRowCount(); 

            \Session::put('college_count', $rowcount);
       }
       catch (\Maatwebsite\Excel\Validators\ValidationException $e) {
          $failures = $e->failures();
            toastr()->error('Failed in Importing data, please insert data in same format and order ');
          return redirect()->route('admin.college.index');

       }


           // toastr()->success($rowcount.' Rows Imported Successfully');
       toastr()->success('uploading files in under processing please wait');
            

           return redirect()->route('admin.college.index');

        


    }



    public function countCollege(Request $request)
    {
         if ($request->ajax()) {           
            if($request->collegeCount1 <=0){
                \Session::forget('college_count');
            }
            return count(College::all());            
        }
    }

}
