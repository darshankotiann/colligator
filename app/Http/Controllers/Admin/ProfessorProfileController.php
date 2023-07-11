<?php

namespace App\Http\Controllers\Admin;

use App\ProfessorProfile;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Config;
use App\Permissions;
use Auth;
use App\Helpers\Helper;
use App\Http\Requests\StoreProfessorRequest;
use App\Imports\ProfessorImport;
use Maatwebsite\Excel\Facades\Excel;
use File;

class ProfessorProfileController extends Controller
{
    protected $professorData;
    private $page;

    function __construct(ProfessorProfile $professorProfile){
        $this->page=  Config::get('app.paginate');
        $this->professorData = $professorProfile;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        session()->put(['oldUrl'=>url()->current()]);
        $permissions=[];
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'ProfessorProfile'])->first();
        }
            $professor= $this->professorData::select('professor_profiles.*','countries.name as countryName')->with(['college','university'])->join('countries','professor_profiles.country','countries.iso2')->where(['professor_profiles.is_delete'=>0,'professor_profiles.user_added'=>0])->latest('professor_profiles.id')->get();
            return view('admin.professor.list',compact('professor','permissions'));
            
    }
    public function userprofessor(Request $request)
    {
        session()->put(['oldUrl'=>url()->current()]);
        $permissions=[];
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'ProfessorProfile'])->first();
        }
            $professor= $this->professorData::select('professor_profiles.*','countries.name as countryName')->with(['college','university'])->join('countries','professor_profiles.country','countries.iso2')->where(['professor_profiles.is_delete'=>0,'professor_profiles.user_added'=>1])->latest('professor_profiles.id')->get();

            return view('admin.professor.userlist',compact('professor','permissions'));
            
    }
 
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'ProfessorProfile'])->first();
            if($permissions['add']!=1){
                toastr()->error('You dont have permission to add Professor');
                return redirect()->route('admin.professor.list');
            }
        }
        $countries= Helper::Country();
        return view('admin.professor.add',compact('countries'));
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreProfessorRequest $request)
    {
        $professor= new ProfessorProfile;
        $data=[];
        $lastData= ProfessorProfile::lastPData($request->college_code)->get();
        if($lastData && count($lastData)>0){
        $newstring= str_replace($lastData[0]->college_code, "",$lastData[0]->professor_code); 
        $countData = (int)$newstring;
        }else{
            $countData = 0;
        }
        $profile='';
        if($request->file('profile')){
            $profileimageName = time().'.'.$request->profile->extension();  
            $imagebase64 = base64_encode(file_get_contents($request->file('profile')));
            $request->profile->move(public_path('professor'), $profileimageName);
            $profile = $profileimageName;
        }
        $data['name']=$request->name;
        $data['profile']=$profile ;
        $data['university_code']=$request->university_code;
        $data['country']=$request->country;
        $data['college_code']=$request->college_code;
        $data['professor_code']=$request->college_code.sprintf("%02d", ($countData+1));
        $professor->create($data);
        toastr()->success('Professor added successfully');
        return redirect()->route('admin.professor.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\ProfessorProfile  $professorProfile
     * @return \Illuminate\Http\Response
     */
    public function show(ProfessorProfile $professorProfile)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\ProfessorProfile  $professorProfile
     * @return \Illuminate\Http\Response
     */
    public function edit(ProfessorProfile $professorProfile,$id)
    {
        $backUrl= session()->get('oldUrl');
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'ProfessorProfile'])->first();
            if($permissions['edit']!=1){
                toastr()->error('You dont have permission to edit Professor');
                return redirect()->route('admin.professor.list');
            }
        }
        $id= base64_decode($id);
        $professor= ProfessorProfile::find($id);
        $countries= Helper::Country();
        $universities= Helper::FetchCustomData('universities',['country_code'=>$professor->country,'is_delete'=>0,'status'=>1]);
        $unilang= Helper::FetchCustomData('universities',['university_code'=>$professor->university_code]);

        $colleges= Helper::FetchCustomData('colleges',['university_code'=>$professor->university_code,'is_delete'=>0,'status'=>1]);

        return view('admin.professor.edit',compact('professor','countries','universities','colleges','unilang','backUrl'));
    }
    public function useredit(ProfessorProfile $professorProfile,$id)
    {
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'ProfessorProfile'])->first();
            if($permissions['edit']!=1){
                toastr()->error('You dont have permission to edit Professor');
                return redirect()->route('admin.professor.list');
            }
        }
        $id= base64_decode($id);
        $professor= ProfessorProfile::find($id);
        $countries= Helper::Country();
        $universities= Helper::FetchCustomData('universities',['country_code'=>$professor->country,'is_delete'=>0,'status'=>1]);
        $unilang= Helper::FetchCustomData('universities',['university_code'=>$professor->university_code]);

        $colleges= Helper::FetchCustomData('colleges',['university_code'=>$professor->university_code,'is_delete'=>0,'status'=>1]);
        return view('admin.professor.useredit',compact('professor','countries','universities','colleges','unilang'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\ProfessorProfile  $professorProfile
     * @return \Illuminate\Http\Response
     */
    public function update(StoreProfessorRequest $request, ProfessorProfile $professorProfile,$id)
    {
        $professorData= ProfessorProfile::find(base64_decode($id));
        $profile= $professorData->profile;
        if($request->file('profile')){
            if(File::exists(public_path('professor/'.$profile))){
                File::delete(public_path('professor/'.$profile));
            }
            $profileimageName = time().'.'.$request->profile->extension();  
            $imagebase64 = base64_encode(file_get_contents($request->file('profile')));
            $request->profile->move(public_path('professor'), $profileimageName);
            $profile = $profileimageName;
        }
        if($professorData->college_code != $request->college_code){
            $lastData= ProfessorProfile::lastPData($request->college_code)->get();
            if($lastData && count($lastData)>0){
            $newstring= str_replace($lastData[0]->college_code, "",$lastData[0]->professor_code); 
            $countData = (int)$newstring;
            }else{
                $countData = 0;
            }
           $professorData->professor_code=$request->college_code.sprintf("%02d", ($countData+1));
        }
        $professorData->name=$request->name;
        $professorData->profile=$profile;
        $professorData->university_code=$request->university_code;
        $professorData->college_code=$request->college_code;
        $professorData->country=$request->country;
        $professorData->save();

        toastr()->success('Professor Updated Successfully');
         if(session()->get('oldUrl')){
            return redirect(session()->get('oldUrl'));
        }
        return redirect()->route('admin.professor.index');

    }
    public function userupdate(StoreProfessorRequest $request,$id)
    {
        $professorData= ProfessorProfile::find(base64_decode($id));
        $profile= $professorData->profile;
        if($request->file('profile')){
            if(File::exists(public_path('professor/'.$profile))){
                File::delete(public_path('professor/'.$profile));
            }
            $profileimageName = time().'.'.$request->profile->extension();  
            $imagebase64 = base64_encode(file_get_contents($request->file('profile')));
            $request->profile->move(public_path('professor'), $profileimageName);
            $profile = $profileimageName;
        }
        if($professorData->college_code != $request->college_code){
            $lastData= ProfessorProfile::lastPData($request->college_code)->get();
            if($lastData && count($lastData)>0){
            $newstring= str_replace($lastData[0]->college_code, "",$lastData[0]->professor_code); 
            $countData = (int)$newstring;
            }else{
                $countData = 0;
            }
           $professorData->professor_code=$request->college_code.sprintf("%02d", ($countData+1));
        }
        $professorData->name=$request->name;
        $professorData->profile=$profile;
        $professorData->university_code=$request->university_code;
        $professorData->college_code=$request->college_code;
        $professorData->country=$request->country;
        $professorData->save();
        toastr()->success('Professor Updated Successfully');
        return redirect()->route('admin.userprofessor');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\ProfessorProfile  $professorProfile
     * @return \Illuminate\Http\Response
     */
    public function destroy(ProfessorProfile $professorProfile,$id)
    {
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'ProfessorProfile'])->first();
            if($permissions['add']!=1){
                toastr()->error('You dont have permission to delete Professor');
                return redirect()->route('admin.professor.list');
            }
        }
            ProfessorProfile::where('id',base64_decode($id))->update(['is_delete'=>1]);

        toastr()->success('Professor deleted successfully');
         if(session()->get('oldUrl')){
            return redirect(session()->get('oldUrl'));
        }
        return redirect()->back();        
        // return redirect()->route('admin.professor.index');        
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
           ProfessorProfile::whereIn('id',$newId)->update(['is_delete'=>1]);
            
            echo 'success';
        }else{
            echo 'error';
        }
    }
    public function rateActive($id)
    {
        $professor= ProfessorProfile::find(base64_decode($id));
        $newstatus= $professor->is_active==1 ? 0 : 1;
        $professor->is_active=$newstatus;
        if($newstatus==0){
            toastr()->error('Professor Rating Disabled Successfully');
        }else{
            toastr()->success('Professor Rating Active Successfully');
        }
        $professor->save();
         if(session()->get('oldUrl')){
            return redirect(session()->get('oldUrl'));
        }return redirect()->back();        
        // return redirect()->route('admin.professor.index');        
    }
    public function Status($id)
    {
        $professor= ProfessorProfile::find(base64_decode($id));
        $newstatus= $professor->status==1 ? 0 : 1;
        $professor->status = $newstatus;
        if($newstatus==0){
            toastr()->error('Professor Deactivated Successfully');
        }else{
            toastr()->success('Professor Activated Successfully');
        }
        $professor->save();
         if(session()->get('oldUrl')){
            return redirect(session()->get('oldUrl'));
        }return redirect()->back();        
        // return redirect()->route('admin.professor.index');        
    }
    public function RangeSearch(Request $request)
    {
        $permissions=[];
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'ProfessorProfile'])->first();
        }
            $startDate= date('Y-m-d',strtotime($request->start));
            $endDate= date('Y-m-d',strtotime($request->end));
            $StartDates= $request->start;
            $EndDates= $request->end;
            $professor= $this->professorData::select('professor_profiles.*','countries.name as countryName')->with(['college','university'])->join('countries','professor_profiles.country','countries.iso2')->where('professor_profiles.is_delete',0)->whereBetween('professor_profiles.created_at',[$startDate.' 00:00:00',$endDate.' 23:59:59'])->where('user_added',0)->latest('professor_profiles.id')->get();
            return view('admin.professor.list',compact('professor','permissions','StartDates','EndDates'));
    }
    public function userRangeSearch(Request $request)
    {
        $permissions=[];
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'ProfessorProfile'])->first();
        }
            $startDate= date('Y-m-d',strtotime($request->start));
            $endDate= date('Y-m-d',strtotime($request->end));
            $StartDates= $request->start;
            $EndDates= $request->end;
            $professor= $this->professorData::select('professor_profiles.*','countries.name as countryName')->with(['college','university'])->join('countries','professor_profiles.country','countries.iso2')->where('professor_profiles.is_delete',0)->whereBetween('professor_profiles.created_at',[$startDate.' 00:00:00',$endDate.' 23:59:59'])->where('user_added',1)->latest('professor_profiles.id')->get();
            return view('admin.professor.userlist',compact('professor','permissions','StartDates','EndDates'));
    }

    public function import(Request $request)
    {
        $request->validate([
            'import_file' =>'required|mimes:xlsx',
        ]);
        try {
            $import = new ProfessorImport;
            Excel::import($import, request()->file('import_file')->store('import_file'));
            $rowcount=  $import->getRowCount(); 
            // dd($rowcount);
//        Excel::import(new ProfessorImport, request()->file('import_file'));
       }
       catch (\Maatwebsite\Excel\Validators\ValidationException $e) {
              $failures = $e->failures();
                toastr()->error('Failed in Importing data, please insert data in same format and order ');
          return redirect()->route('admin.professor.index');
         }
       
        toastr()->success($rowcount.' Rows Imported Successfully');
        
         return redirect()->route('admin.professor.index');
    }
    public function universityList(Request $request)
    {
        $unilist= Helper::FetchCustomData('universities',['country_code'=>$request->countrycode,'is_delete'=>0,'status'=>1]); 
        $html='';
        $html='<option value="" selected disabled>Select University</option>';
        foreach ($unilist as $ukey => $uvalue) {
            $html.='<option value="'.$uvalue->university_code.'">'.$uvalue->name.' </option>';
        }
        return $html;
    }
    public function collegeList(Request $request)
    {
        $unidata= Helper::FetchCustomData('universities',['university_code'=>$request->universitycode]);
        $unilist= Helper::FetchCustomData('colleges',['university_code'=>$request->universitycode,'is_delete'=>0,'status'=>1]); 

        $data['lang']= $unidata[0]->lang_code;
        $html='';
        $html='<option value="" selected disabled>Select College</option>';
        foreach ($unilist as $ukey => $uvalue) {
            $html.='<option value="'.$uvalue->college_code.'">'.$uvalue->name.' </option>';
        }
        $data['html']= $html;
        return $data;
    }
    public function changeProfileVisibility(Request $request)
    {
        $newId = base64_decode($request->id);
        $status=1;

         if($request->status=='true'){
            $status = 0;
        }
        ProfessorProfile::where('id',$newId)->update(['show_profile'=>$status]);
        return 'success';
    }



       public function ProfessorAjax(Request $request)
    {
        $draw = $request->get('draw');
        $start = $request->get("start");
        $rowperpage = $request->get("length"); // Rows display per page

        $columnIndex_arr = $request->get('order');
        $columnName_arr = $request->get('columns');
        $order_arr = $request->get('order');
        $search_arr = $request->get('search');

        $columnIndex = $columnIndex_arr[0]['column']; // Column index
        $columnName = $columnName_arr[$columnIndex]['data']; // Column name
        $columnSortOrder = $order_arr[0]['dir']; // asc or desc
        $searchValue = $search_arr['value']; // Search value

        $slug =  Request()->segment(2) == 'user-professor' ? 'user-professor' : 'professor';

        $slug = url()->previous();
        $userProfessor = 0;
        if (strpos($slug, "user-professor")) {
            $userProfessor = 1;
        }
        $permissions=[];

        // Total records
        $totalRecords = ProfessorProfile::select('count(*) as allcount')->where(['professor_profiles.is_delete' => 0, 'professor_profiles.user_added' => $userProfessor])->count();
        $totalRecordswithFilter = ProfessorProfile::select('count(*) as allcount')->where(['professor_profiles.is_delete' => 0, 'professor_profiles.user_added' => $userProfessor])->where('name', 'like', '%' . $searchValue . '%')->count();

        $professor = $this->professorData::select('professor_profiles.*', 'countries.name as countryName')
            ->with(['college', 'university'])
            ->join('countries', 'professor_profiles.country', 'countries.iso2')
            // ->where('name', 'like', '%' . $searchValue . '%')
            ->where(['professor_profiles.is_delete' => 0, 'professor_profiles.user_added' => $userProfessor])
            // ->where('is_delete', 1)
            ->skip($start)
            ->take($rowperpage)
            ->get();

        $data_arr = array();
        // return $records;
        foreach ($professor as $record) {
            $id = base64_encode($record->id);
            $name = $record->name;
            $countryName = $record->countryName;
            $universityName = $record->university->name ?? "";
            $collegeName = $record->college->name ?? "";
            $createdAt = $record->created_at->toDateTimeString();
            // $createdAt =  date('Y-m-d', strtotime($record->created_at)),
            $status = "<div class='badge font-size-12 " . ($record['status'] == 0 ? 'badge-soft-danger' : 'badge-soft-success') . "'>" . ($record['status'] == 0 ? 'Deactive' : 'Active') . "</div>";


            // $profileToggle = '<div class="toggle-event" type=checkbox data-id=' . base64_encode($record['id']) . ', data-status=' . $record['show_profile'] == 0 ? 'checked' : '' . '" data-toggle="toggle data-on=Show Profile" data-off=Hide Profile data-onstyle=success data-offstyle=danger></div>';


            if (Auth::guard('admin')->user()->role == 2) {
                $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'ProfessorProfile'])->first();
                if (!empty($permissions) && $permissions['edit'] == 1) {
                    $action = '<a href="' . url('admin/professor' .  '/' . base64_encode($record->id) . '/' . 'edit') . '" class="mr-3 text-primary"  data-toggle="tooltip" data-placement="top" title=""
                    data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>';
                }
            } else {
                $action = '<a href="' . url('admin/professor' .  '/' . base64_encode($record->id) . '/' . 'edit') . '" class="mr-3 text-primary"  data-toggle="tooltip" data-placement="top" title=""
                    data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>';
            }




            $action2 = '<a href="' . url('admin/professor/status' .  '/' . base64_encode($record->id)) . '"
            class="<?= $record[status] == 1 ? text-danger : text-success ?> mr-3"
            onclick="return confirm(Are You Sure You want to <?= $record[status] == 1 ? Deactivate  : Activate ?>' . 'this
            user)"
            data-toggle=tooltip" data-placement="top" title=""
            data-original-title="<?= $record[status] == 1 ? Deactivate : Activate ?>""><i
            class="mdi mdi-account-lock font-size-18"></i></a>';



        if (Auth::guard('admin')->user()->role == 2) {
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'ProfessorProfile'])->first();
        if (!empty($permissions) && $permissions['delete'] == 1) {

        $action3 = '<a href="' . url('admin/professor/destroy' .  '/' . base64_encode($record->id)) . '"
            class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i
                class="mdi mdi-trash-can font-size-18 text-danger"></i></a>';

        $route = route('admin.professor.destroy', base64_encode($record['id']));

        $action3 = "<form action='" . $route . "' method='POST' id='deleteForm'>
        <input type='hidden' name='_token' value='" . csrf_token() . "'>
        <input type='hidden' name='_method' value='DELETE'> <i onclick='confirm(" . ' Are You Sure You want to delete
            it' . ") ?

        $(this).closest('#deleteForm').submit() : '' class=" . ' mdi mdi-trash-can font-size-18 text-danger' . "></i>
        <button type='submit' onclick='return confirm(' Are You Sure You want to delete
            it ?');' style='border: 0; background: none;' <i class='mdi mdi-trash-can font-size-18 text-danger'></i>
        </button>
        </form>" ; } } else { $route=route( 'admin.professor.destroy' ,

        base64_encode($record['id']) ); $action3="<form action='" . $route . "' method='POST' id='deleteForm'>
        <input type='hidden' name='_token' value='" . csrf_token() . "'>
        <input type='hidden' name='_method' value='DELETE'> <i onclick='confirm(" . ' Are You Sure You want to delete
            it' . ") ?

        $(this).closest('#deleteForm').submit() : '' class=" . ' mdi mdi-trash-can font-size-18 text-danger' . "></i>
        <button type='submit' onclick='return confirm(' Are You Sure You want to delete
            it ?');' style='border: 0; background: none;' <i class='mdi mdi-trash-can font-size-18 text-danger'></i>
    </button></form>" ; }

     $data_arr[]=array( "id"=> $id,
        "username" => $name,
        "country" => $countryName,
        "university" => $universityName,
        "college" => $collegeName,
        "created_at" => $createdAt,
        "status" => $status,
        // "profiletoggle" => $profileToggle,
        "action" => $action . $action2 . $action3,
        );
        }

        $response = array(
        "draw" => intval($draw),
        "iTotalRecords" => $totalRecords,
        "iTotalDisplayRecords" => $totalRecordswithFilter,
        "aaData" => $data_arr
        );

        echo json_encode($response);
        exit;
        }
}
