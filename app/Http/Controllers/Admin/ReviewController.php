<?php

namespace App\Http\Controllers\Admin;

use App\Review;
use App\ProfessorRating;
use App\TeacherRating;
use App\UniversityRating;
use App\User;
use App\Helpers\Helper;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use Route;
class ReviewController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    protected $professors;
    protected $teachers;
    protected $universities;
    protected $allUserData;
    public function __construct()
    {
        $this->professors =  ProfessorRating::get();
        $this->teachers = TeacherRating::get();
        $this->universities= UniversityRating::get();
        $this->allUserData= User::get();
    }
    public function index()
    {

    }
    public function ProfessorReview()
    {
        $permissions= Helper::PermissionGet('Reviews');

        $allprofessorsReview= ProfessorRating::select('professor_ratings.*','professor_profiles.name as ptuName','professor_profiles.id as ptuId','professor_profiles.user_added','users.systemNickname as usersystemNickname','users.id as userId')->join('professor_profiles','professor_profiles.id', '=','professor_ratings.professor_id')->join('users','users.id', '=','professor_ratings.user_id')->where('professor_ratings.parent_id',0)->latest()->get();
        session()->put(['oldUrl'=>url()->current()]);

        return view('admin.review.professorlist',compact('allprofessorsReview','permissions'));


    }
    public function professorRangeSearch(Request $request)
    {
        // $permissions= Helper::PermissionGet('HighSchoolProfile');
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;
        $allprofessorsReview= ProfessorRating::select('professor_ratings.*','professor_profiles.name as ptuName','professor_profiles.id as ptuId','professor_profiles.user_added','users.systemNickname as usersystemNickname','users.id as userId')->join('professor_profiles','professor_profiles.id', '=','professor_ratings.professor_id')->join('users','users.id', '=','professor_ratings.user_id')->where('professor_ratings.parent_id',0)->whereBetween('professor_ratings.created_at',[$startDate.' 00:00:00',$endDate.' 23:59:59'])->latest('professor_ratings.id')->get();
        
        return view('admin.review.professorlist',compact('allprofessorsReview','StartDates','EndDates'));
    }

    public function ProfessorReviewEdit($id)
    {

        if(Helper::PermissionCheck('Reviews','edit')){

        $backUrl= route('admin.all_report_spam_track');
        $id= base64_decode($id);
        $professor= ProfessorRating::select('likes','dislikes','report')->where('id',$id)->first();
        $likes= !empty($professor['likes']) ? $professor['likes']: 0; 
        $dislikes= !empty($professor['dislikes']) ? $professor['dislikes']: 0; 
        $report= !empty($professor['report']) ?$professor['report']: 0; 
        $professorsReview= ProfessorRating::select('professor_ratings.*','professor_profiles.name as ptuName','users.systemNickname as usersystemNickname',DB::raw('(select group_concat(name) from users where id in ('.$likes.') )as likes, (select group_concat(name) from users where id in ('.$dislikes.') )as dislikes ,(select group_concat(name) from users where id in ('.$report.') )as reports'))->join('professor_profiles','professor_profiles.id', '=','professor_ratings.professor_id')->join('users','users.id', '=','professor_ratings.user_id')->where('professor_ratings.id',$id)->first();
        return view('admin.review.professorEdit',compact('professorsReview','backUrl'));
        }else{
            toastr()->error('you dont have permission to edit Reviews');
            return redirect()->back();
        }
    }
    public function professorReviewUpdate(Request $request)
    {
        $request->validate([
           'message'  => [
                'required','string','min:3','max:200' 
            ]]);
        $id= base64_decode($request->id);
        ProfessorRating::where('id',$id)->update(['message'=>$request->message]);
        toastr()->success('Review updated successfully');
        
        return redirect()->back();
    }
    public function ProfessorReviewView($id)
    {
  
        $id= base64_decode($id);
        $professor= ProfessorRating::select('likes','dislikes','report')->where('id',$id)->first();
        $likes= !empty($professor['likes']) ? $professor['likes']: 0; 
        $dislikes= !empty($professor['dislikes']) ? $professor['dislikes']: 0; 
        $report= !empty($professor['report']) ?$professor['report']: 0; 
        $professorsReview= ProfessorRating::select('professor_ratings.*','professor_profiles.name as ptuName','users.systemNickname as usersystemNickname',DB::raw('(select group_concat(systemNickname) from users where id in ('.$likes.') )as likes, (select group_concat(systemNickname) from users where id in ('.$dislikes.') )as dislikes ,(select group_concat(systemNickname) from users where id in ('.$report.') )as reports'))->join('professor_profiles','professor_profiles.id', '=','professor_ratings.professor_id')->join('users','users.id', '=','professor_ratings.user_id')->where('professor_ratings.id',$id)->first();

    //children data
        $professorRatingData= ProfessorRating::where(['id'=>$id])->with(['adminchildren','users'])->orderBy('id','desc')->get();
        $newArray=[];
        $rowcount=0;
        $easyness_range=$repeat=$rate_professor=0;
        if(count($professorRatingData)>0){
            foreach ($professorRatingData as $key => $tvalue) 
            {
                $easyness_range+=$tvalue->easyness_range;
                $repeat+=($tvalue->repeat==1 ?$tvalue->repeat:0) ;
                $rate_professor+=$tvalue->rate_professor;
                $rowcount+=1;
                $newArr=[];
                $newArr['id']=$tvalue->id;
                $newArr['professor_id']=$tvalue->professor_id;
                $newArr['course_code']=$tvalue->course_code;
                $newArr['study_type']=$tvalue->study_type;
                $newArr['easyness_range']=$tvalue->easyness_range;
                $newArr['repeat']=$tvalue->repeat;
                $newArr['rate_professor']=$tvalue->rate_professor;
                $newArr['textbook']=$tvalue->textbook;
                $newArr['attendance']=$tvalue->attendance;
                $newArr['grade']=$tvalue->grade;
                $newArr['message']=$tvalue->message;
                $newArr['parent_id']=$tvalue->parent_id;
                $newArr['is_delete']=$tvalue->is_delete;
                $newArr['user_id']=$tvalue->user_id;
                $newArr['likes']=$tvalue->likes;
                $newArr['report']=$tvalue->report;
                $newArr['dislikes']=$tvalue->dislikes;
                $newArr['created_at']=date('d-M-Y',strtotime($tvalue->created_at));
                $newArr['updated_at']=date('d-M-Y',strtotime($tvalue->updated_at));
                $newArr['children']=[];
                    $this->NewhtmlData[]=$newArr; 
                        $this->htmlData=[];

                    if(count($tvalue['adminchildren'])>0){
                        $this->countNum=0;
                        $newArr['children']=$this->callprofessorFullData($tvalue['adminchildren']);
                    }


                $newArray[$key]['replyMessage'] =$newArr;
                $newArray[$key]['users'] =$professorRatingData[$key]['users'];
            }
        }

        $professorRatingData =$newArray[0]['replyMessage']['children'];
        return view('admin.review.professorview',compact('professorsReview','professorRatingData'));
    }
    public function ProfessorReviewReportView($id)
    {
        $backUrl= route('admin.all_report_spam_track');

  
        $id= base64_decode($id);
        $professor= ProfessorRating::select('likes','dislikes','report')->where('id',$id)->first();
        $likes= !empty($professor['likes']) ? $professor['likes']: 0; 
        $dislikes= !empty($professor['dislikes']) ? $professor['dislikes']: 0; 
        $report= !empty($professor['report']) ?$professor['report']: 0; 
        $professorsReview= ProfessorRating::select('professor_ratings.*','professor_profiles.name as ptuName','users.systemNickname as usersystemNickname',DB::raw('(select group_concat(systemNickname) from users where id in ('.$likes.') )as likes, (select group_concat(systemNickname) from users where id in ('.$dislikes.') )as dislikes ,(select group_concat(systemNickname) from users where id in ('.$report.') )as reports,(select group_concat(id) from users where id in ('.$report.') )as reportsId'))->join('professor_profiles','professor_profiles.id', '=','professor_ratings.professor_id')->join('users','users.id', '=','professor_ratings.user_id')->where('professor_ratings.id',$id)->first();
        $title= 'View Reported Professor Review User';
        return view('admin.review.professorReportview',compact('professorsReview','backUrl','title'));
    }
    public function ProfessorReviewCommentView($id)
    {
        $backUrl= route('admin.all_report_spam_track');
  
        $id= base64_decode($id);
        $professor= ProfessorRating::select('likes','dislikes','report')->where('id',$id)->first();
        $likes= !empty($professor['likes']) ? $professor['likes']: 0; 
        $dislikes= !empty($professor['dislikes']) ? $professor['dislikes']: 0; 
        $report= !empty($professor['report']) ?$professor['report']: 0; 
        $professorsReview= ProfessorRating::select('professor_ratings.*','professor_profiles.name as ptuName','users.systemNickname as usersystemNickname',DB::raw('(select group_concat(systemNickname) from users where id in ('.$likes.') )as likes, (select group_concat(systemNickname) from users where id in ('.$dislikes.') )as dislikes ,(select group_concat(systemNickname) from users where id in ('.$report.') )as reports,(select group_concat(id) from users where id in ('.$report.') )as reportsId'))->join('professor_profiles','professor_profiles.id', '=','professor_ratings.professor_id')->join('users','users.id', '=','professor_ratings.user_id')->where('professor_ratings.id',$id)->first();
        $title= 'View Reported Professor Comment User';
        return view('admin.review.professorReportview',compact('professorsReview','backUrl','title'));
    }
    public function TeacherReportReviewView($id)
    {
        $backUrl= route('admin.all_report_spam_track');

        $id= base64_decode($id);
        $professor= TeacherRating::select('likes','dislikes','report')->where('id',$id)->first();
        $likes= !empty($professor['likes']) ? $professor['likes']: 0; 
        $dislikes= !empty($professor['dislikes']) ? $professor['dislikes']: 0; 
        $report= !empty($professor['report']) ?$professor['report']: 0; 

        $teacherReview= TeacherRating::select('teacher_ratings.*','teacher_profiles.name as ptuName','users.systemNickname as usersystemNickname',DB::raw('(select group_concat(systemNickname) from users where id in ('.$likes.') )as likes, (select group_concat(systemNickname) from users where id in ('.$dislikes.') )as dislikes ,(select group_concat(systemNickname) from users where id in ('.$report.') )as reports,(select group_concat(id) from users where id in ('.$report.') )as reportsId'))->join('teacher_profiles','teacher_profiles.id', '=','teacher_ratings.teacher_id')->join('users','users.id', '=','teacher_ratings.user_id')->where('teacher_ratings.id',$id)->first();
        $title= 'View Reported Teacher Review User';
        return view('admin.review.teacherReportView',compact('teacherReview','backUrl','title'));
    }
    public function TeacherReviewCommentView($id)
    {
        $backUrl= route('admin.all_report_spam_track');

        $id= base64_decode($id);
        $professor= TeacherRating::select('likes','dislikes','report')->where('id',$id)->first();
        $likes= !empty($professor['likes']) ? $professor['likes']: 0; 
        $dislikes= !empty($professor['dislikes']) ? $professor['dislikes']: 0; 
        $report= !empty($professor['report']) ?$professor['report']: 0; 

        $teacherReview= TeacherRating::select('teacher_ratings.*','teacher_profiles.name as ptuName','users.systemNickname as usersystemNickname',DB::raw('(select group_concat(systemNickname) from users where id in ('.$likes.') )as likes, (select group_concat(systemNickname) from users where id in ('.$dislikes.') )as dislikes ,(select group_concat(systemNickname) from users where id in ('.$report.') )as reports,(select group_concat(id) from users where id in ('.$report.') )as reportsId'))->join('teacher_profiles','teacher_profiles.id', '=','teacher_ratings.teacher_id')->join('users','users.id', '=','teacher_ratings.user_id')->where('teacher_ratings.id',$id)->first();
        $title= 'View Reported Teacher Comment User';
        return view('admin.review.teacherReportView',compact('teacherReview','backUrl','title'));
    }
    public function universityReportReviewView($id)
    {
        $backUrl= route('admin.all_report_spam_track');

        $id= base64_decode($id);
        $professor= UniversityRating::select('likes','dislikes','report')->where('id',$id)->first();
        $likes= !empty($professor['likes']) ? $professor['likes']: 0; 
        $dislikes= !empty($professor['dislikes']) ? $professor['dislikes']: 0; 
        $report= !empty($professor['report']) ?$professor['report']: 0; 

        $universityReview= UniversityRating::select('university_ratings.*','universities.name as ptuName','users.systemNickname as usersystemNickname',DB::raw('(select group_concat(name) from users where id in ('.$likes.') )as likes, (select group_concat(name) from users where id in ('.$dislikes.') )as dislikes ,(select group_concat(systemNickname) from users where id in ('.$report.') )as reports,(select group_concat(id) from users where id in ('.$report.') )as reportsId'))->join('universities','universities.id', '=','university_ratings.university_id')->join('users','users.id', '=','university_ratings.user_id')->where('university_ratings.id',$id)->first();
        $title= 'View Reported University Review User';
     
        return view('admin.review.universityReportView',compact('universityReview','backUrl','title'));
    }
    public function universityReviewCommentView($id)
    {
        $backUrl= route('admin.all_report_spam_track');
        $id= base64_decode($id);
        $professor= UniversityRating::select('likes','dislikes','report')->where('id',$id)->first();
        $likes= !empty($professor['likes']) ? $professor['likes']: 0; 
        $dislikes= !empty($professor['dislikes']) ? $professor['dislikes']: 0; 
        $report= !empty($professor['report']) ?$professor['report']: 0; 

        $universityReview= UniversityRating::select('university_ratings.*','universities.name as ptuName','users.systemNickname as usersystemNickname',DB::raw('(select group_concat(name) from users where id in ('.$likes.') )as likes, (select group_concat(name) from users where id in ('.$dislikes.') )as dislikes ,(select group_concat(systemNickname) from users where id in ('.$report.') )as reports,(select group_concat(id) from users where id in ('.$report.') )as reportsId'))->join('universities','universities.id', '=','university_ratings.university_id')->join('users','users.id', '=','university_ratings.user_id')->where('university_ratings.id',$id)->first();
        $title= 'View Reported University Comment User';
     
        return view('admin.review.universityReportView',compact('universityReview','backUrl','title'));
    }
    public function callprofessorFullData($data)
    {
        $newArr=[];
        foreach ($data as $tkey => $value) {
            $newArr['parent_user_name']='';
            if($value->selected_user_id){
                $user_data=$this->allUserData->where('id',$value->selected_user_id)->first();
                $newArr['parent_user_name']=$user_data->systemNickname;
            }
            $newArr['id']=$value->id;
            $newArr['professor_id']=$value->professor_id;
            $newArr['course_code']=$value->course_code;
            $newArr['study_type']=$value->study_type;
            $newArr['easyness_range']=$value->easyness_range;
            $newArr['repeat']=$value->repeat;
            $newArr['rate_professor']=$value->rate_professor;
            $newArr['textbook']=$value->textbook;
            $newArr['attendance']=$value->attendance;
            $newArr['grade']=$value->grade;
            $newArr['message']=$value->message;
            $newArr['parent_id']=$value->parent_id;
            $newArr['is_delete']=$value->is_delete;
            $newArr['user_id']=$value->user_id;
            $newArr['likes']=$value->likes;
            $newArr['report']=$value->report;
            $newArr['dislikes']=$value->dislikes;
            $newArr['created_at']=date('d-M-Y',strtotime($value->created_at));
            $newArr['updated_at']=date('d-M-Y',strtotime($value->updated_at));
            $newArr['report']=$value->report;
            $newArr['userData']=$this->allUserData->where('id',$value->user_id)->first();
            $this->htmlData[$this->countNum]=$newArr; 
            $this->countNum+=1;
            if(count($value['adminchildren'])>0){
                $this->callprofessorFullData($value['adminchildren']);
            }
        }
        return $this->htmlData;
    }
    public function updatereviewFullData($type,$data,$isDelete)
    {
        foreach ($data as $tkey => $value) {
            $type::where('id',$value->id)->update(['is_delete'=>$isDelete]);
            if(count($value['adminchildren'])>0){
                $this->updatereviewFullData($type,$value['adminchildren'],$isDelete);
            }
        }
        return true;
    }
    public function teacherReview()
    {
        $permissions= Helper::PermissionGet('Reviews');

        session()->put(['oldUrl'=>url()->current()]);

        $allteachersReview= TeacherRating::select('teacher_ratings.*','teacher_profiles.name as ptuName','teacher_profiles.id as ptuId','teacher_profiles.user_added','users.systemNickname as usersystemNickname','users.id as userId')->join('teacher_profiles','teacher_profiles.id', '=','teacher_ratings.teacher_id')->join('users','users.id', '=','teacher_ratings.user_id')->where('parent_id',0)->latest()->get();
        return view('admin.review.teacherlist',compact('allteachersReview','permissions'));
    
    }

    public function teacherRangeSearch(Request $request)
    {
        // $permissions= Helper::PermissionGet('HighSchoolProfile');
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;
          $allteachersReview= TeacherRating::select('teacher_ratings.*','teacher_profiles.name as ptuName','teacher_profiles.id as ptuId','teacher_profiles.user_added','users.systemNickname as usersystemNickname','users.id as userId')->join('teacher_profiles','teacher_profiles.id', '=','teacher_ratings.teacher_id')->join('users','users.id', '=','teacher_ratings.user_id')->where('parent_id',0)->whereBetween('teacher_ratings.created_at',[$startDate.' 00:00:00',$endDate.' 23:59:59'])->latest('teacher_ratings.id')->get();
        return view('admin.review.teacherlist',compact('allteachersReview','StartDates','EndDates'));
    }
   

    public function teacherReviewEdit($id)
    {
        if(Helper::PermissionCheck('Reviews','edit')){

        $id= base64_decode($id);
        $backUrl= route('admin.all_report_spam_track');

        $professor= TeacherRating::select('likes','dislikes','report')->where('id',$id)->first();
        $likes= !empty($professor['likes']) ? $professor['likes']: 0; 
        $dislikes= !empty($professor['dislikes']) ? $professor['dislikes']: 0; 
        $report= !empty($professor['report']) ?$professor['report']: 0; 

        $teacherReview= TeacherRating::select('teacher_ratings.*','teacher_profiles.name as ptuName','users.systemNickname as usersystemNickname',DB::raw('(select group_concat(name) from users where id in ('.$likes.') )as likes, (select group_concat(name) from users where id in ('.$dislikes.') )as dislikes ,(select group_concat(name) from users where id in ('.$report.') )as reports'))->join('teacher_profiles','teacher_profiles.id', '=','teacher_ratings.teacher_id')->join('users','users.id', '=','teacher_ratings.user_id')->where('teacher_ratings.id',$id)->first();

        return view('admin.review.teacherEdit',compact('teacherReview','backUrl'));
    }else{
        toastr()->error('you dont have permission to edit Teacher Review');
        return redirect()->back();
    }
    
    }
    public function teacherReviewUpdate(Request $request)
    {
        $request->validate([
           'message'  => [
                'required','string','min:3','max:200' 
            ]]);
        $id= base64_decode($request->id);
        TeacherRating::where('id',$id)->update(['message'=>$request->message]);
        toastr()->success('Review updated successfully');
        return redirect()->back();
    }

    public function teacherReviewView($id)
    {
        $id= base64_decode($id);
        $professor= TeacherRating::select('likes','dislikes','report')->where('id',$id)->first();
        $likes= !empty($professor['likes']) ? $professor['likes']: 0; 
        $dislikes= !empty($professor['dislikes']) ? $professor['dislikes']: 0; 
        $report= !empty($professor['report']) ?$professor['report']: 0; 

        $teacherReview= TeacherRating::select('teacher_ratings.*','teacher_profiles.name as ptuName','users.systemNickname as usersystemNickname',DB::raw('(select group_concat(systemNickname) from users where id in ('.$likes.') )as likes, (select group_concat(systemNickname) from users where id in ('.$dislikes.') )as dislikes ,(select group_concat(systemNickname) from users where id in ('.$report.') )as reports'))->join('teacher_profiles','teacher_profiles.id', '=','teacher_ratings.teacher_id')->join('users','users.id', '=','teacher_ratings.user_id')->where('teacher_ratings.id',$id)->first();

        $tvalue= TeacherRating::where(['id'=>$id])->with(['adminchildren','users'])->orderBy('id','desc')->first();
        $newArray=[];
        $rowcount=0;
        $schoolrange=$easyrange=$homerange=0;
        if(!empty($tvalue)) {
            $schoolrange+=$tvalue->schoolrange;
            $easyrange+=$tvalue->easyrange;
            $homerange+=$tvalue->homerange;
            $rowcount+=1;
        $newArr=[];
            $newArr['id']=$tvalue->id;
            $newArr['teacher_id']=$tvalue->teacher_id;
            $newArr['schoolrange']=$tvalue->schoolrange;
            $newArr['easyrange']=$tvalue->easyrange;
            $newArr['homerange']=$tvalue->homerange;
            $newArr['message']=$tvalue->message;
            $newArr['parent_id']=$tvalue->parent_id;
            $newArr['is_delete']=$tvalue->is_delete;
            $newArr['user_id']=$tvalue->user_id;
            $newArr['likes']=$tvalue->likes;
            $newArr['report']=$tvalue->report;
            $newArr['dislikes']=$tvalue->dislikes;
            $newArr['created_at']=date('d-M-Y',strtotime($tvalue->created_at));
            $newArr['updated_at']=date('d-M-Y',strtotime($tvalue->updated_at));
            $newArr['children']=[];
                $this->NewhtmlData[]=$newArr; 
                    $this->htmlData=[];

                if(count($tvalue['adminchildren'])>0){
                    $this->countNum=0;
                    $newArr['children']=$this->callteacherFullData($tvalue['adminchildren']);
                }


        $newArray['replyMessage'] =$newArr;
        $newArray['users'] =$tvalue['users'];
        }

        $teacherRatingData =$newArray['replyMessage']['children'];
        return view('admin.review.teacherview',compact('teacherReview','teacherRatingData'));
    }

    public function callteacherFullData($data)
    {
        $newArr=[];
        foreach ($data as $tkey => $value) {
            $newArr['parent_user_name']='';
            if($value->selected_user_id){
                $user_data=$this->allUserData->where('id',$value->selected_user_id)->first();
                $newArr['parent_user_name']=$user_data->systemNickname;
            }
            $newArr['id']=$value->id;
            $newArr['teacher_id']=$value->teacher_id;
            $newArr['schoolrange']=$value->schoolrange;
            $newArr['easyrange']=$value->easyrange;
            $newArr['homerange']=$value->homerange;
            $newArr['message']=$value->message;
            $newArr['parent_id']=$value->parent_id;
            $newArr['is_delete']=$value->is_delete;
            $newArr['user_id']=$value->user_id;
            $newArr['likes']=$value->likes;
            $newArr['report']=$value->report;
            $newArr['dislikes']=$value->dislikes;
            $newArr['created_at']=date('d-M-Y',strtotime($value->created_at));
            $newArr['updated_at']=date('d-M-Y',strtotime($value->updated_at));
            $newArr['report']=$value->report;
            $newArr['userData']=$this->allUserData->where('id',$value->user_id)->first();
            $this->htmlData[$this->countNum]=$newArr; 
            $this->countNum+=1;
            if(count($value['adminchildren'])>0){
                $this->callteacherFullData($value['adminchildren']);
            }
        }
        return $this->htmlData;
    }
    public function universityReview()
    {
        $permissions= Helper::PermissionGet('Reviews');

        session()->put(['oldUrl'=>url()->current()]);

        $universitiesReview= UniversityRating::select('university_ratings.*','universities.name as ptuName','users.id as userId','users.systemNickname as usersystemNickname')->join('universities','universities.id', '=','university_ratings.university_id')->join('users','users.id', '=','university_ratings.user_id')->where('parent_id',0)->latest()->get();
        return view('admin.review.universitylist',compact('universitiesReview','permissions'));
    
    }
    public function universityRangeSearch(Request $request)
    {
        // $permissions= Helper::PermissionGet('HighSchoolProfile');
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;
          $universitiesReview= UniversityRating::select('university_ratings.*','universities.name as ptuName','users.id as userId','users.systemNickname as usersystemNickname')->join('universities','universities.id', '=','university_ratings.university_id')->join('users','users.id', '=','university_ratings.user_id')->where('parent_id',0)->whereBetween('university_ratings.created_at',[$startDate.' 00:00:00',$endDate.' 23:59:59'])->latest('university_ratings.id')->get();
        return view('admin.review.universitylist',compact('universitiesReview','StartDates','EndDates'));
    }
    public function universityReviewEdit($id)
    {
        if(Helper::PermissionCheck('Reviews','edit')){

        $id= base64_decode($id);
        $backUrl= route('admin.all_report_spam_track');
        $professor= UniversityRating::select('likes','dislikes','report')->where('id',$id)->first();
        $likes= !empty($professor['likes']) ? $professor['likes']: 0; 
        $dislikes= !empty($professor['dislikes']) ? $professor['dislikes']: 0; 
        $report= !empty($professor['report']) ?$professor['report']: 0; 

        $universityReview= UniversityRating::select('university_ratings.*','universities.name as ptuName','users.systemNickname as usersystemNickname',DB::raw('(select group_concat(systemNickname) from users where id in ('.$likes.') )as likes, (select group_concat(systemNickname) from users where id in ('.$dislikes.') )as dislikes ,(select group_concat(systemNickname) from users where id in ('.$report.') )as reports'))->join('universities','universities.id', '=','university_ratings.university_id')->join('users','users.id', '=','university_ratings.user_id')->where('university_ratings.id',$id)->first();
        return view('admin.review.universityEdit',compact('universityReview','backUrl'));
    }else{
        toastr()->error('you dont have permission to edit University Review');
        return redirect()->back();
    }
    }
    public function universityReviewUpdate(Request $request)
    {
        $request->validate([
           'message'  => [
                'required','string','min:3','max:200' 
            ]]);
        $id= base64_decode($request->id);
        UniversityRating::where('id',$id)->update(['message'=>$request->message]);
        toastr()->success('review updated successfully');
          return redirect()->back();
    }
    public function universityReviewView($id)
    {
        $id= base64_decode($id);
        $professor= UniversityRating::select('likes','dislikes','report')->where('id',$id)->first();
        $likes= !empty($professor['likes']) ? $professor['likes']: 0; 
        $dislikes= !empty($professor['dislikes']) ? $professor['dislikes']: 0; 
        $report= !empty($professor['report']) ?$professor['report']: 0; 

        $universityReview= UniversityRating::select('university_ratings.*','universities.name as ptuName','users.systemNickname as usersystemNickname',DB::raw('(select group_concat(systemNickname) from users where id in ('.$likes.') )as likes, (select group_concat(systemNickname) from users where id in ('.$dislikes.') )as dislikes ,(select group_concat(systemNickname) from users where id in ('.$report.') )as reports'))->join('universities','universities.id', '=','university_ratings.university_id')->join('users','users.id', '=','university_ratings.user_id')->where('university_ratings.id',$id)->first();
     
            $tvalue= UniversityRating::where(['id'=>$id])->with(['adminchildren','users'])->orderBy('id','desc')->first();

        $newArray=[];
        $rowcount=0;
        $professor_range=$course_range=$facility_range=0;
        if(!empty($tvalue)) {
            $professor_range+=$tvalue->professor_range;
            $course_range+=$tvalue->course_range;
            $facility_range+=$tvalue->facility_range;
            $rowcount+=1;
            $newArr=[];
            $newArr['id']=$tvalue->id;
            $newArr['university_id']=$tvalue->university_id;
            $newArr['professor_range']=$tvalue->professor_range;
            $newArr['course_range']=$tvalue->course_range;
            $newArr['facility_range']=$tvalue->facility_range;
            $newArr['message']=$tvalue->message;
            $newArr['parent_id']=$tvalue->parent_id;
            $newArr['is_delete']=$tvalue->is_delete;
            $newArr['user_id']=$tvalue->user_id;
            $newArr['likes']=$tvalue->likes;
            $newArr['report']=$tvalue->report;
            $newArr['dislikes']=$tvalue->dislikes;
            $newArr['created_at']=date('d-M-Y',strtotime($tvalue->created_at));
            $newArr['updated_at']=date('d-M-Y',strtotime($tvalue->updated_at));
            $newArr['children']=[];
                $this->NewhtmlData[]=$newArr; 
                    $this->htmlData=[];

                if(count($tvalue['adminchildren'])>0){
                    $this->countNum=0;
                    $newArr['children']=$this->calluniversityFullData($tvalue['adminchildren']);
                }


        $newArray['replyMessage'] =$newArr;
        $newArray['users'] =$tvalue['users'];
        }
        $universityRatingData =$newArray['replyMessage']['children'];
        return view('admin.review.universityView',compact('universityReview','universityRatingData'));
    }
     
    public function calluniversityFullData($data)
    {
        $newArr=[];
        foreach ($data as $tkey => $value) {
            $newArr['parent_user_name']='';
            if($value->selected_user_id){
                $user_data=$this->allUserData->where('id',$value->selected_user_id)->first();
                $newArr['parent_user_name']=$user_data->systemNickname;
            }
            $newArr['id']=$value->id;
            $newArr['university_id']=$value->university_id;
            $newArr['professor_range']=$value->professor_range;
            $newArr['course_range']=$value->course_range;
            $newArr['facility_range']=$value->facility_range;
            $newArr['message']=$value->message;
            $newArr['parent_id']=$value->parent_id;
            $newArr['is_delete']=$value->is_delete;
            $newArr['user_id']=$value->user_id;
            $newArr['likes']=$value->likes;
            $newArr['report']=$value->report;
            $newArr['dislikes']=$value->dislikes;
            $newArr['created_at']=date('d-M-Y',strtotime($value->created_at));
            $newArr['updated_at']=date('d-M-Y',strtotime($value->updated_at));
            $newArr['report']=$value->report;
            $newArr['userData']=$this->allUserData->where('id',$value->user_id)->first();
            $this->htmlData[$this->countNum]=$newArr; 
            $this->countNum+=1;
            if(count($value['adminchildren'])>0){
                $this->calluniversityFullData($value['adminchildren']);
            }
        }
        return $this->htmlData;
    }
    public function ProfessorReviewDelete($id)
    {
        if(Helper::PermissionCheck('Reviews','delete')){

            $id= base64_decode($id);
            $professorRatingData= ProfessorRating::where(['id'=>$id])->with(['adminchildren','users'])->orderBy('id','desc')->first();
            if(!empty($professorRatingData)){
                    $isDelete= $professorRatingData->is_delete==1 ? 0 : 1;
                    $isDeleteAction= $isDelete==1 ? 'Deactive' : 'Active';
                    ProfessorRating::where('id',$professorRatingData->id)->update(['is_delete'=>$isDelete]);
                    if(count($professorRatingData['adminchildren'])>0){
                        $this->updatereviewFullData('App\ProfessorRating',$professorRatingData['adminchildren'],$isDelete);
                }
            }
            toastr()->success($isDeleteAction.' Successfully');
              


            return redirect()->route('admin.all_report_spam_track');
        }else{
            toastr()->error('you dont have permission to delete Professor Review');
            return redirect()->back();
        }
    }
    public function TeacherReviewDelete($id)
    {
        if(Helper::PermissionCheck('Reviews','delete')){

           $id= base64_decode($id);
            $teacherRatingData= TeacherRating::where(['id'=>$id])->with(['adminchildren','users'])->orderBy('id','desc')->first();
            if(!empty($teacherRatingData)){
                $isDelete= $teacherRatingData->is_delete==1 ? 0 : 1;
                    $isDeleteAction= $isDelete==1 ? 'Deactive' : 'Active';
                TeacherRating::where('id',$id)->update(['is_delete'=>$isDelete]);
                if(count($teacherRatingData['adminchildren'])>0){
                    $this->updatereviewFullData('App\TeacherRating',$teacherRatingData['adminchildren'],$isDelete);
                }
            }
            toastr()->success($isDeleteAction.' Successfully');
             
            return redirect()->route('admin.all_report_spam_track');
        }else{
            toastr()->error('you dont have permission to delete Teacher Review');
            return redirect()->back();
        }
    }
    public function UniversityReviewDelete($id)
    {
        if(Helper::PermissionCheck('Reviews','delete')){

        $id= base64_decode($id);
        $universityRatingData= UniversityRating::where(['id'=>$id])->with(['adminchildren','users'])->orderBy('id','desc')->first();
        if(!empty($universityRatingData)){
            $isDelete= $universityRatingData->is_delete==1 ? 0 : 1;
            $isDeleteAction= $isDelete==1 ? 'Deactive' : 'Active';
            UniversityRating::where('id',$universityRatingData->id)->update(['is_delete'=>$isDelete]);
            if(count($universityRatingData['adminchildren'])>0){
                $this->updatereviewFullData('App\UniversityRating',$universityRatingData['adminchildren'],$isDelete);
            }
        }
        toastr()->success($isDeleteAction.' Successfully');
        
        return redirect()->route('admin.all_report_spam_track');
        }else{
            toastr()->error('you dont have permission to delete University Review');
            return redirect()->back();
        }
    }

    public function commentsTrack()
    {
        session()->forget('ajaxroute');

        // teacher =1, professor =2, university=3
        $teacherDatas= TeacherRating::with('users')->where('message','!=','')->where('message','!=',null)->where('is_delete',0)->orderBy('updated_at','DESC')->get()->toArray();
        $professorDatas= ProfessorRating::with('users')->where('message','!=','')->where('message','!=',null)->where('is_delete',0)->orderBy('updated_at','DESC')->get()->toArray();
        $universityDatas= UniversityRating::with('users')->where('message','!=','')->where('message','!=',null)->where('is_delete',0)->orderBy('updated_at','DESC')->get()->toArray();
        $newArray = array_merge_recursive($teacherDatas,$professorDatas,$universityDatas);

        // usort($allCommentTrack, function($a, $b) {
        //     return $a['updated_at'] <=> $b['updated_at'];
        // });
        $allCommentTrack =collect($newArray)->sortBy('updated_at')->reverse()->toArray();

        return view('admin.review.allTrackComment',compact('allCommentTrack'));
    }
    public function commentsTrackAjax(Request $request)
    {
        session()->put(['ajaxroute'=>Route::currentRouteName()]);
        
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;
        // teacher =1, professor =2, university=3
        $teacherDatas= TeacherRating::with('users')->where('message','!=','')->where('message','!=',null)->where('is_delete',0)->whereBetween('teacher_ratings.updated_at',[$startDate.' 00:00:00',$endDate.' 23:59:59'])->orderBy('updated_at','DESC')->get()->toArray();
        $professorDatas= ProfessorRating::with('users')->where('message','!=','')->where('message','!=',null)->where('is_delete',0)->whereBetween('professor_ratings.updated_at',[$startDate.' 00:00:00',$endDate.' 23:59:59'])->orderBy('updated_at','DESC')->get()->toArray();
        $universityDatas= UniversityRating::with('users')->where('message','!=','')->where('message','!=',null)->where('is_delete',0)->whereBetween('university_ratings.updated_at',[$startDate.' 00:00:00',$endDate.' 23:59:59'])->orderBy('updated_at','DESC')->get()->toArray();
        $newArray = array_merge_recursive($teacherDatas,$professorDatas,$universityDatas);
        // usort($allCommentTrack, function($a, $b) {
        //     return $a['updated_at'] <=> $b['updated_at'];
        // });
        $allCommentTrack =collect($newArray)->sortBy('updated_at')->reverse()->toArray();

        return view('admin.review.allTrackComment',compact('allCommentTrack','StartDates','EndDates'));
    }
    public function commentTrackEdit($id,$type)
    {
        $id= base64_decode($id);

        if($type == 1){
            $data= TeacherRating::with('users')->where('id',$id)->first();
        }
        if($type == 2){
            $data= ProfessorRating::with('users')->where('id',$id)->first();
        }
        if($type == 3){
            $data= UniversityRating::with('users')->where('id',$id)->first();
        }
        return view('admin.review.allTrackCommentEdit',compact('data','type'));

    }
    public function commentTrackView($id,$type)
    {
        $id= base64_decode($id);
        if($type == 1){
            $data= TeacherRating::with('users')->where('id',$id)->first();
        }
        if($type == 2){
            $data= ProfessorRating::with('users')->where('id',$id)->first();
        }
        if($type == 3){
            $data= UniversityRating::with('users')->where('id',$id)->first();
        }
        return view('admin.review.allTrackCommentView',compact('data','type'));
        
    }
    public function commentTrackDelete($id,$type)
    {
        $id= base64_decode($id);

        if($type == 1){
            $data= TeacherRating::where('id',$id)->first();
            if($data){
                if(isset($data['parent_id']) && $data['parent_id']==0){
                    $data->message = '';
                    $data->save();
                    toastr()->success('Review Message Remove Successfully');
                    if(session()->has('ajaxroute')){
                        if(session()->get('ajaxroute')=='admin.comments_track_ajax'){
                            return redirect()->route('admin.comments_track');
                        }else{
                            return redirect()->route('admin.all_report_spam_track');
                        }
                    }
                    return redirect()->back();
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
                    if(session()->has('ajaxroute')){
                        if(session()->get('ajaxroute')=='admin.comments_track_ajax'){
                            return redirect()->route('admin.comments_track');
                        }else{
                            return redirect()->route('admin.all_report_spam_track');
                        }
                    }
                    return redirect()->back();
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
                if(session()->has('ajaxroute')){
                    if(session()->get('ajaxroute')=='admin.comments_track_ajax'){
                        return redirect()->route('admin.comments_track');
                    }else{
                        return redirect()->route('admin.all_report_spam_track');
                    }
                }
                return redirect()->back();
            }
            $data->delete();
            }
        }
        toastr()->success('Comment Deleted Successfully');
        if(session()->has('ajaxroute')){
            if(session()->get('ajaxroute')=='admin.comments_track_ajax'){
                return redirect()->route('admin.comments_track');
            }else{
                return redirect()->route('admin.all_report_spam_track');
            }
        }
        return redirect()->back();
    }
    public function commentTrackUpdate(Request $request)
    {
        $request->validate([
        'message'=>'required'
        ]);
        $id= base64_decode($request->id);
        $type= $request->type;
        if($type == 1){
            $data= TeacherRating::where('id',$id)->update(['message'=>$request->message]);
        }
        if($type == 2){
            $data= ProfessorRating::where('id',$id)->update(['message'=>$request->message]);
        }
        if($type == 3){
            $data= UniversityRating::where('id',$id)->update(['message'=>$request->message]);
        }
        toastr()->success('Comment Update Successfully');
        return redirect()->back();
    }
}
