<?php

namespace App\Http\Controllers\Admin;

use App\Story;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use View;
use App\Permissions;
use App\User;
use Auth;
use App\Helpers\Helper;

class StoryController extends Controller
{
    protected $storyData;
    protected $users;
    protected $countryCode;
    function __construct(Story $story)
    {
        $this->storyData = $story->with('users')->get();
        $this->users = User::get();
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
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Stories'])->first();
        }
        $story= $this->storyData;
        return view('admin.story.list',compact('story','permissions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    // public function create()
    // {
    //         $Countries= $this->countryCode;
    //         return view('admin.school.add',compact('Countries'));

    // }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    // public function store(SchoolRequest $request)
    // {
    //     $countData= School::lastSIId($request->country_code);
    //     $school= new School;
    //     $school->name= $request->name;
    //     $school->country_code= $request->country_code;
    //     $school->school_code= $request->country_code.'SCL'.sprintf("%02d", ($countData+1));
    //     $school->lang_code= $request->lang_code;
    //     $school->save();
    //     toastr()->success('School Created Successfully');
    //     return redirect()->route('admin.school.index');
    // }

    /**
     * Display the specified resource.
     *
     * @param  \App\School  $school
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $id= base64_decode($id);
        $story= Story::with('users')->findOrFail($id);
        $userTimeDetails= json_decode($story->user_time_detail,true);
        $newUser=[];
        if(count($userTimeDetails)>0){
            foreach ($userTimeDetails as $ukey => $uvalue) {
                $user= $this->users->find($ukey);
                $newUser[$user['systemNickname']?$user['systemNickname']:'NoNickname'.$ukey] =$uvalue; 
            }
        }
        return view('admin.story.view',compact('story','newUser'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\School  $school
     * @return \Illuminate\Http\Response
     */
    // public function edit($id)
    // {
    //     if(Auth::guard('admin')->user()->role==2){
    //         $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'School'])->first();
    //         if($permissions['edit']!=1){
    //             toastr()->error('You dont have permission to edit School');
    //             return redirect()->route('admin.school.index');
    //         }
    //     }
                
    //     $id= base64_decode($id);
    //     $school= School::where('id',$id)->first();
    //     $Countries= $this->countryCode;
    //     return View::make('admin.school.edit')->with(['school'=>$school,'Countries'=>$Countries]); 

    // }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\School  $school
     * @return \Illuminate\Http\Response
     */
    // public function update(SchoolRequest $request, $id)
    // {
    //     $id= base64_decode($id);
    //     $data= School::find($id);
    //     if(!empty($data)){
    //         if($data->country_code != $request->country_code){
    //             $countData= School::lastSIId($request->country_code);
    //             $data->school_code= $request->country_code.'SCL'.sprintf("%02d", ($countData+1));
    //         }

    //         $data->country_code = $request->country_code;
    //         $data->name = $request->name;
    //         $data->lang_code= $request->lang_code;
    //         $data->save();
    //         toastr()->success('School Updated Successfully');
    //     }else{
    //         toastr()->error('School Id Not  Found');
    //     }
    //     return redirect()->route('admin.school.index');

    // }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\School  $school
     * @return \Illuminate\Http\Response
     */
   
    public function destroy($id)
    {

        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Stories'])->first();
            if($permissions['delete']!=1){
                toastr()->error('You dont have permission to delete Story');
                return redirect()->route('admin.story.list');
            }
        }
        $id= base64_decode($id);

        $data= Story::where('id',$id)->first();
        if(empty($data)){
            toastr()->error('Story Not Found');
        }else{
                $data->is_delete=1;
                $data->save();
                toastr()->success('Story Delete Successfully');
            }
            return redirect()->route('admin.story.list');
            return redirect()->back();
    }
    public function deleteAll(Request $request)
    {
        if(Helper::PermissionCheck('Stories','delete')){
            $ids= trim($request->ids,',');
            if(!empty($ids)){
               $allIds=  explode(',',$ids);
               $newId=[];
               foreach ($allIds as $ikey => $ivalue) {
                $newId[]= base64_decode($ivalue);
               }
               print_r($newId); die;
               Story::whereIn('id',$newId)->update(['is_delete'=>1]);
               echo 'success';
            }else{
                echo 'error';
            }
        }else{
                echo 'deleteError';
        }
    }
    // public function Status($id)
    // {
    //     $id= base64_decode($id);
    //     $data= School::find($id);
    //     $newStatus= $data->status== 1 ? 0 : 1;
    //     $data->status=$newStatus;
    //     $data->save(); 
    //     if($newStatus==0){
    //             toastr()->error('School Deactivated Successfully');
    //     }else{
    //         toastr()->success('School Activated Successfully');
    //     }

    //     return redirect()->route('admin.school.index');
    // }
    public function RangeSearch(Request $request)
    {
        $permissions=[];
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Stories'])->first();
        }
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;
        $story= Story::with('users')->whereBetween('created_at',[$startDate,$endDate])->latest()->get();
        return view('admin.story.list',compact('story','permissions','StartDates','EndDates'));

    }

}
