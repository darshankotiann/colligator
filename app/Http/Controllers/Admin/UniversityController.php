<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\University;
use App\UniversityView;
use App\Permissions;
use Illuminate\Http\Request;
use DB;
use View;
use Auth;
use App\Imports\UniversityImport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Validation\Rule;
use Validator;
use DataTables;
use Response;
class UniversityController extends Controller
{
    protected $universityData;
    protected $countryCode;
    function __construct(University $university)
    {
        $this->countryCode= DB::table('countries')->select('name','iso2')->where('flag',1)->get();
        // $this->universityData = $university->select('university_view.*','countries.name as countryName')->with('college')->join('countries','university_view.country_code','countries.iso2')->where('university_view.is_delete',0)->latest('university_view.id')->get();

        // $this->universityData = UniversityView::where('is_delete',0)->latest('university_view.id')->paginate(10);
        $this->universityData = $university->select('universities.*', 'countries.name as countryName')->with('college')->join('countries', 'universities.country_code', 'countries.iso2')->where('universities.is_delete', 0)->latest('universities.id')->paginate(10);
       
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        session()->put(['oldUrl'=>url()->current()]);
        $permissions=[];
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'University'])->first();
        }
        $universities= $this->universityData;
       


        return view('admin.university.list',compact('universities','permissions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $Countries= $this->countryCode;
        return view('admin.university.add',compact('Countries'));
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
                Rule::unique('universities','name')->where(function ($query) use($request)  {
                     return $query
                        ->where('country_code',$request->country_code);
                }),
            ],
        // 'name'=>'required|string|min:3|max:50|unique:universities,name',
        'country_code'=>'required',
        'lang_code'=>'required',
       ]);
       $countData= University::lastUIId($request->country_code);
       $university= new University;
       $university->name= $request->name;
       $university->country_code= $request->country_code;
       $university->university_code= $request->country_code.sprintf("%02d", ($countData+1));
       $university->lang_code= $request->lang_code;
       $university->save();
       toastr()->success('University Created Successfully');
       return redirect()->route('admin.university.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\University  $university
     * @return \Illuminate\Http\Response
     */
    public function show(University $university)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\University  $university
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $backUrl= session()->get('oldUrl');

        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'University'])->first();
            if($permissions['edit']!=1){
                toastr()->error('You dont have permission to edit University');
                return redirect()->route('admin.university.index');
            }
        }
        
        $id= base64_decode($id);
        $university= University::where('id',$id)->first();
        
        $Countries= $this->countryCode;
        return View::make('admin.university.edit')->with(['university'=>$university,'Countries'=>$Countries,'backUrl'=>$backUrl]); 
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\University  $university
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        $id= base64_decode($id);
        $request->validate([
            'name'  => [
                'required','string','min:3','max:50', 
                Rule::unique('universities','name')->where(function ($query) use($request , $id)  {
                     return $query
                        ->where('country_code',$request->country_code)
                        ->where('id','!=',$id);
                }),
            ],
            // 'name'=>'required|min:3|max:50|unique:universities,name,'.$id,
            'country_code'=>'required',
            'lang_code'=>'required',
        ]);
        $data= University::find($id);
        if($data->country_code != $request->country_code){
            $countData= University::lastUIId($request->country_code);
            $data->university_code= $request->country_code.sprintf("%02d", ($countData+1));
        }

        $data->country_code = $request->country_code;
        $data->name = $request->name;
        $data->lang_code= $request->lang_code;
        $data->university_code= $request->university_code;
        $data->save();
        toastr()->success('University Updated Successfully');
        // return redirect()->route('admin.university.index');
        if(session()->get('oldUrl')){
            return redirect(session()->get('oldUrl'));
        } return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\University  $university
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'University'])->first();
            if($permissions['delete']!=1){
                toastr()->error('You dont have permission to delete university');
                return redirect()->route('admin.university.index');
            }
        }
        $id= base64_decode($id);
        $data= University::where('id',$id)->with('active_college')->first();
        if(empty($data)){
            toastr()->error('University Id Not Found');
        }
        else{
            if(count($data->active_college)>0){
            toastr()->error('Colleges are associated with it, so university cant be deleted');
            }
        if (count($data->active_banner) > 0) {
           toastr()->error('Banner are associated with it, so university cant be deleted');
        }else{

            $data->is_delete=1;
            $data->save();
            toastr()->success('University Delete Successfully');
            }
            // return redirect()->route('admin.university.index');
            if(session()->get('oldUrl')){
                return redirect(session()->get('oldUrl'));
            } return redirect()->back();
        }
    }
    public function deleteAll(Request $request)
    {
        $ids= trim($request->ids,',');
        if(!empty($ids)){
           $allIds=  explode(',',$ids);
           $newId=[];
           foreach ($allIds as $ikey => $ivalue) {
            $newId[]= $ivalue;
           }

            foreach ($newId as $val) {
                $newId[] = base64_decode($val);
            }


            $data = University::whereIn('id', $newId)->with('active_banner')->first();
                if (count($data->active_banner) > 0) {
                 toastr()->error('Banner are associated with it, so university cant be deleted');
                 return 0;

            }


           // University::whereIn('id',$newId)->update(['is_delete'=>1]);
            else{

             DB::table('universities')->whereIn('id', $newId)->update(['is_delete' => 1]);
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
        $data= University::find($id);
        $newStatus= $data->status== 1 ? 0 : 1;
        $data->status=$newStatus;
        $data->save(); 
        if($newStatus==0){
                toastr()->error('University Deactivated Successfully');
        }else{
            toastr()->success('University Activated Successfully');
        }

        // return redirect()->route('admin.university.index');
        if(session()->get('oldUrl')){
            return redirect(session()->get('oldUrl'));
        } return redirect()->back();
    }
    public function rateActive($id)
    {
        $id= base64_decode($id);
        $data= University::find($id);
        $newStatus= $data->is_active== 1 ? 0 : 1;
        $data->is_active=$newStatus;
        $data->save(); 
        if($newStatus==0){
            toastr()->error('University Rating Disabled Successfully');
        }else{
            toastr()->success('University Rating Active Successfully');
        }
        return redirect()->route('admin.university.index');
    }
    public function RangeSearch(Request $request)
    {
        $permissions=[];
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'University'])->first();
        }
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;
        $universities= University::where('is_delete',0)->whereBetween('created_at',[$startDate,$endDate])->latest()->get();
        return view('admin.university.list',compact('universities','permissions','StartDates','EndDates'));

    }
     public function import(Request $request)
    {
        // $request->validate([
        //     'import_file' =>'required|mimes:xlsx',
        // ]);
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
        if($validator->fails()){
            toastr()->error('File type not imported');
            return redirect()->back();
        }
        else{


        try {
            $import = new UniversityImport;
            Excel::import($import, request()->file('import_file')->store('import_file'));
            $rowcount=  $import->getRowCount(); 

            \Session::put('univercity_count', $rowcount);

//        Excel::import(new University, request()->file('import_file'));
             // $import = Excel::import(new UniversityImport, $request->file('import_file')->store('import_file'));
       }
       catch (\Maatwebsite\Excel\Validators\ValidationException $e) {
        // dd($e);
          $failures = $e->failures();
            toastr()->error('Failed in Importing data, please insert data in same format and order ');
          return redirect()->route('admin.university.index');

       }
        // toastr()->success('uploading files in under processing please wait'.' Rows Imported Successfully');
        toastr()->success('uploading files in under processing please wait');
        return redirect()->route('admin.university.index');



        }
    }


    public function countUniversity(Request $request)
    {
         if ($request->ajax()) {           
            if($request->univercityCount1 <=0){
                \Session::forget('univercity_count');
            }
            return count(University::all());            
        }
    }

    public function ajaxDataUniversity(Request $request)
    {

        $startDate= date('Y-m-d',strtotime($request->startDate));
        $endDate= date('Y-m-d',strtotime($request->endDate));
        if(!empty($request->startDate) && !empty($request->endDate))
        {
            $records= $this->universityData->whereBetween('created_at',[$startDate,$endDate])->take($request['start']+$request['length']);
        $totalRecords= count($this->universityData->whereBetween('created_at',[$startDate,$endDate]));
        }else{
        $totalRecords= count($this->universityData);
            $records= $this->universityData->take($request['start']+$request['length']);
        }
        $newRecords= array_values($records->toArray());
        $permissions=[];
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'University_view'])->first();
        }
        // echo "<pre>"; print_r($newRecords); die;
         $allrecords=  Datatables::of($newRecords)->setTotalRecords($totalRecords)->setFilteredRecords($totalRecords)
            ->addColumn('Actions', function($svalue) use ($permissions) {
                return view('admin.university.permissionData', compact('svalue','permissions'));
            })
            ->make(true);
             // $allrecords->original['recordsTotal'] = $totalRecords;
             // $allrecords->original['recordsFiltered'] = $totalRecords;
            // print_r($allrecords); die;
         return $allrecords;
        
    }
}
