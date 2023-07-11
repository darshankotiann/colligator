<?php

namespace App\Http\Controllers\Admin;

use App\ReportSpam;
use App\ProfessorRating;
use App\TeacherRating;
use App\UniversityRating;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Helpers\Helper;
use DB;
use Route;

class ReportSpamController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public $users;
    function __construct(User $user)
    {
        $this->users= $user->get();
    }

    public function universityList()
    {
        session()->put(['oldUrl'=>url()->current()]);

        $olduniversitiesReview= UniversityRating::select('university_ratings.*','universities.name as ptuName','users.id as userId','users.systemNickname as usersystemNickname')->join('universities','universities.id', '=','university_ratings.university_id')->join('users','users.id', '=','university_ratings.user_id')->where('parent_id',0)->whereRaw("(report != ' ' or report != null)")->get();
        $universitiesReview=[];
        foreach($olduniversitiesReview as $okey=> $review){
            $reportedIds = explode(',',$review->report);
            foreach($reportedIds as $ids){
                $universitiesReview[]=array_merge($review->toArray(), ['report' => $ids]);
            }
        }
        $report= 'report';
        return view('admin.report.universitylist',compact('universitiesReview','report'));
        
    }
    public function universityRangeList(Request $request)
    {
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;

        $universitiesReview= UniversityRating::select('university_ratings.*','universities.name as ptuName','users.id as userId','users.systemNickname as usersystemNickname')->join('universities','universities.id', '=','university_ratings.university_id')->join('users','users.id', '=','university_ratings.user_id')->where('parent_id',0)->whereRaw("(report != ' ' or report != null)")->whereBetween('university_ratings.created_at',[$startDate.' 00:00:00',$endDate.' 23:59:59'])->get();
        $report= 'report';
        return view('admin.report.universitylist',compact('universitiesReview','report','StartDates','EndDates'));
        
    }
    public function professorList()
    {
        session()->put(['oldUrl'=>url()->current()]);
        $alloldprofessorsReview= ProfessorRating::select('professor_ratings.*','professor_profiles.name as ptuName','professor_profiles.id as ptuId','professor_profiles.user_added','users.systemNickname as usersystemNickname','users.id as userId')->join('professor_profiles','professor_profiles.id', '=','professor_ratings.professor_id')->join('users','users.id', '=','professor_ratings.user_id')->where(['professor_ratings.parent_id'=>0])->whereRaw("(report != ' ' or report != null)")->get();
        $allprofessorsReview=[];
        foreach($alloldprofessorsReview as $okey=> $review){
            $reportedIds = explode(',',$review->report);
            foreach($reportedIds as $ids){
                $allprofessorsReview[]=array_merge($review->toArray(), ['report' => $ids]);
            }
        }
        $report= 'report';
        return view('admin.report.professorList',compact('allprofessorsReview','report'));

    }
    public function professorRangeList(Request $request)
    {
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;

        $allprofessorsReview= ProfessorRating::select('professor_ratings.*','professor_profiles.name as ptuName','professor_profiles.id as ptuId','professor_profiles.user_added','users.systemNickname as usersystemNickname','users.id as userId')->join('professor_profiles','professor_profiles.id', '=','professor_ratings.professor_id')->join('users','users.id', '=','professor_ratings.user_id')->where(['professor_ratings.parent_id'=>0])->whereRaw("(report != ' ' or report != null)")->whereBetween('professor_ratings.created_at',[$startDate.' 00:00:00',$endDate.' 23:59:59'])->get();

        $report= 'report';
        return view('admin.report.professorList',compact('allprofessorsReview','report','StartDates','EndDates'));

    }
    public function teacherList()
    {
        session()->put(['oldUrl'=>url()->current()]);
        $alloldteachersReview= TeacherRating::select('teacher_ratings.*','teacher_profiles.name as ptuName','teacher_profiles.id as ptuId','teacher_profiles.user_added','users.systemNickname as usersystemNickname','users.id as userId')->join('teacher_profiles','teacher_profiles.id', '=','teacher_ratings.teacher_id')->join('users','users.id', '=','teacher_ratings.user_id')->where('parent_id',0)->whereRaw("(report != ' ' or report != null)")->get();
        $allteachersReview=[];
        foreach($alloldteachersReview as $okey=> $review){
            $reportedIds = explode(',',$review->report);
            foreach($reportedIds as $ids){
                $allteachersReview[]=array_merge($review->toArray(), ['report' => $ids]);
            }
        }
        $report= 'report';
        return view('admin.report.teacherlist',compact('allteachersReview','report'));
    }
    public function teacherRangeList(Request $request)
    {
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;

        $allteachersReview= TeacherRating::select('teacher_ratings.*','teacher_profiles.name as ptuName','teacher_profiles.id as ptuId','teacher_profiles.user_added','users.systemNickname as usersystemNickname','users.id as userId')->join('teacher_profiles','teacher_profiles.id', '=','teacher_ratings.teacher_id')->join('users','users.id', '=','teacher_ratings.user_id')->where('parent_id',0)->whereRaw("(report != ' ' or report != null)")->whereBetween('teacher_ratings.created_at',[$startDate.' 00:00:00',$endDate.' 23:59:59'])->get();
        $report= 'report';
        return view('admin.report.teacherlist',compact('allteachersReview','report','StartDates','EndDates'));
    }
    public function universityCommentList()
    {
        session()->put(['oldUrl'=>url()->current()]);

        $alloldReview= UniversityRating::select('university_ratings.*','universities.name as ptuName','universities.id as ptuId','users.id as userId','users.systemNickname as usersystemNickname')->join('universities','universities.id', '=','university_ratings.university_id')->join('users','users.id', '=','university_ratings.user_id')->where('parent_id','!=',0)->whereRaw("(report != ' ' or report != null)")->get();
        $allReview=[];
        foreach($alloldReview as $okey=> $review){
            $reportedIds = explode(',',$review->report);
            foreach($reportedIds as $ids){
                $allReview[]=array_merge($review->toArray(), ['report' => $ids]);
            }
        }

        $type= 'universityReview';
        $ajax= 'universityCommentAjax';
        $backurl= 'universityCommentList';
        return view('admin.report.commentlist',compact('allReview','type','ajax','backurl'));
    }
    public function professorCommentList()
    {
        session()->put(['oldUrl'=>url()->current()]);
        $alloldReview= ProfessorRating::select('professor_ratings.*','professor_profiles.name as ptuName','professor_profiles.id as ptuId','professor_profiles.user_added','users.systemNickname as usersystemNickname','users.id as userId')->join('professor_profiles','professor_profiles.id', '=','professor_ratings.professor_id')->join('users','users.id', '=','professor_ratings.user_id')->where('parent_id','!=',0)->whereRaw("(report != ' ' or report != null)")->get();
        $allReview=[];
        foreach($alloldReview as $okey=> $review){
            $reportedIds = explode(',',$review->report);
            foreach($reportedIds as $ids){
                $allReview[]=array_merge($review->toArray(), ['report' => $ids]);
            }
        }
        $type= 'professorReview';
        $ajax= 'professorCommentAjax';
        $backurl= 'professorCommentList';
        return view('admin.report.commentlist',compact('allReview','type','ajax','backurl'));

    }
    public function teacherCommentList()
    {
        session()->put(['oldUrl'=>url()->current()]);

        $alloldReview= TeacherRating::select('teacher_ratings.*','teacher_profiles.name as ptuName','teacher_profiles.id as ptuId','teacher_profiles.user_added','users.systemNickname as usersystemNickname','users.id as userId')->join('teacher_profiles','teacher_profiles.id', '=','teacher_ratings.teacher_id')->join('users','users.id', '=','teacher_ratings.user_id')->where('parent_id','!=',0)->whereRaw("(report != ' ' or report != null)")->get();
        $allReview = [];
        foreach($alloldReview as $okey=> $review){
            $reportedIds = explode(',',$review->report);

            foreach($reportedIds as $ids){
                // dd($ids);   
                // $newreview=null;
                // $newreview = $review;
                // $newreview->report_id= $ids;

                // $allReview[]=$newreview;
                $allReview[]=array_merge($review->toArray(), ['report' => $ids]);

            }
        }
        $type= 'teacherReview';
        $ajax= 'teacherCommentAjax';
        $backurl= 'teacherCommentList';
        return view('admin.report.commentlist',compact('allReview','type','ajax','backurl'));
    }
    public function storyList()
    {
        $stories= DB::table('story_reports')->select('story_reports.*','auser.systemNickname as reportedBy','auser.id as reportedById','stories.user_id','stories.id as storyId','stories.photo_video_type','buser.systemNickname as uploadedBy','buser.id as uploadedById')->join('users as auser','auser.id', 'story_reports.user_id')->join('stories','stories.id', 'story_reports.story_id')->join('users as buser','buser.id','stories.user_id')->get(); 
        return view('admin.report.storyList',compact('stories'));
    }
    public function storiesRangeSearch(Request $request)
    {
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;

        $stories= DB::table('story_reports')->select('story_reports.*','auser.systemNickname as reportedBy','auser.id as reportedById','stories.user_id','stories.id as storyId','stories.photo_video_type','buser.systemNickname as uploadedBy','buser.id as uploadedById')->join('users as auser','auser.id', 'story_reports.user_id')->join('stories','stories.id', 'story_reports.story_id')->join('users as buser','buser.id','stories.user_id')->whereBetween('story_reports.created_at',[$startDate.' 00:00:00',$endDate.' 23:59:59'])->latest('story_reports.id')->get();
        return view('admin.report.storyList',compact('stories','StartDates','EndDates'));
    }
    public function storyDestroy($id)
    {
        $id = base64_decode($id);
        DB::table('story_reports')->where('id',$id)->update(['is_delete'=>1]);
        toastr()->success('Story reported deleted sucessfully');
        return redirect()->route('admin.report_spam.stories.list');
    }
    public function storyView($id)
    {
        $id = base64_decode($id);
        $stories= DB::table('story_reports')->select('story_reports.*','auser.systemNickname as reportedBy','stories.user_id','stories.photo_video_type','stories.photo_video','buser.systemNickname as uploadedBy')->join('users as auser','auser.id', 'story_reports.user_id')->join('stories','stories.id', 'story_reports.story_id')->join('users as buser','buser.id','stories.user_id')->where('story_reports.id',$id)->first();
        return view('admin.report.storyView',compact('stories'));
    }
    public function universityCommentAjax(Request $request)
    {
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;

        $allReview= UniversityRating::select('university_ratings.*','universities.name as ptuName','universities.id as ptuId','users.id as userId','users.systemNickname as usersystemNickname')->join('universities','universities.id', '=','university_ratings.university_id')->join('users','users.id', '=','university_ratings.user_id')->where('parent_id','!=',0)->whereRaw("(report != ' ' or report != null)")->whereBetween('university_ratings.created_at',[$startDate.' 00:00:00',$endDate.' 23:59:59'])->latest('university_ratings.id')->get();

        $type= 'universityReview';
        $ajax= 'universityCommentAjax';
        $backurl= 'universityCommentList';

        return view('admin.report.commentlist',compact('allReview','type','ajax','StartDates','EndDates','backurl'));
    }
    public function professorCommentAjax(Request $request)
    {
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;

        $allReview= ProfessorRating::select('professor_ratings.*','professor_profiles.name as ptuName','professor_profiles.id as ptuId','professor_profiles.user_added','users.systemNickname as usersystemNickname','users.id as userId')->join('professor_profiles','professor_profiles.id', '=','professor_ratings.professor_id')->join('users','users.id', '=','professor_ratings.user_id')->where('parent_id','!=',0)->whereRaw("(report != ' ' or report != null)")->whereBetween('professor_ratings.created_at',[$startDate.' 00:00:00',$endDate.' 23:59:59'])->latest('professor_ratings.id')->get();

        $type= 'professorReview';
        $ajax= 'professorCommentAjax';
        $backurl= 'professorCommentList';
        return view('admin.report.commentlist',compact('allReview','type','ajax','StartDates','EndDates','backurl'));
    }
    public function teacherCommentAjax(Request $request)
    {
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;

        $allReview=TeacherRating::select('teacher_ratings.*','teacher_profiles.id as ptuId','teacher_profiles.user_added','users.systemNickname as usersystemNickname','users.id as userId','teacher_profiles.name as ptuName')->join('teacher_profiles','teacher_profiles.id', '=','teacher_ratings.teacher_id')->join('users','users.id', '=','teacher_ratings.user_id')->where('parent_id','!=',0)->whereRaw("(report != ' ' or report != null)")->whereBetween('teacher_ratings.created_at',[$startDate.' 00:00:00',$endDate.' 23:59:59'])->latest('teacher_ratings.id')->get();

        $backurl= 'teacherCommentList';
        $type= 'teacherReview';
        $ajax= 'teacherCommentAjax';
        return view('admin.report.commentlist',compact('allReview','type','ajax','StartDates','EndDates','backurl'));
    }
    public function storyReportThanku(Request $request)
    {
        $id= base64_decode($request->id);
        $suggestions=  DB::table('story_reports')->select('story_reports.*','users.email')->join('users','users.id','story_reports.user_id')->where('story_reports.id',$id)->first(); 
        if(!empty($suggestions)){  
            $data['content']=$request->message;
            $subject= 'Thank you For Your Suggestion';
            Helper::mailSend($data,$subject,$suggestions->email);
            DB::table('story_reports')->where('id',$id)->update(['is_reported'=>1]);
            toastr()->success('suggestion send successfully');
        }else{
            toastr()->error('Error in sending suggestion');

        } 
        return redirect()->back();  
    }
    public function userReportList()
    {
        $universities= UniversityRating::select('university_ratings.user_id','users.systemNickname')->join('users','users.id','university_ratings.user_id')->whereRaw(" report !=' ' or report != 'null'")->groupBy('university_ratings.user_id')->orderBy('university_ratings.user_id' ,'desc')->get();
        $teachers= TeacherRating::select('teacher_ratings.user_id','users.systemNickname')->join('users','users.id','teacher_ratings.user_id')->whereRaw(" report !=' ' or report != 'null'")->groupBy('user_id')->orderBy('user_id' ,'desc')->get();
        $professors= ProfessorRating::select('professor_ratings.user_id','users.systemNickname')->join('users','users.id','professor_ratings.user_id')->whereRaw(" report !=' ' or report != 'null'")->groupBy('user_id')->orderBy('user_id' ,'desc')->get();
        $stories= DB::table('story_reports')->select('story_reports.story_id','stories.user_id','users.systemNickname')->join('stories','stories.id','story_reports.story_id')->join('users','users.id','stories.user_id')->groupBy('stories.user_id')->orderBy('stories.user_id' ,'desc')->get();


        $allArrays=[];
        if(!empty($universities)){
            foreach ($universities as $ukey => $uvalue) {
                $allArrays['user_id'][]=$uvalue['user_id'];
                $allArrays['systemNickname'][]=$uvalue['systemNickname'];
            }
        }
        if(!empty($teachers)){
            foreach ($teachers as $ukey => $uvalue) {
                $allArrays['user_id'][]=$uvalue['user_id'];
                $allArrays['systemNickname'][]=$uvalue['systemNickname'];
            }
        }
        if(!empty($professors)){
            foreach ($professors as $ukey => $uvalue) {
                $allArrays['user_id'][]=$uvalue['user_id'];
                $allArrays['systemNickname'][]=$uvalue['systemNickname'];
            }       
        }
        if(!empty($stories)){
            foreach ($stories as $ukey => $uvalue) {
                $allArrays['user_id'][]=$uvalue->user_id;
                $allArrays['systemNickname'][]=$uvalue->systemNickname;
            }
        }
        $uniqueArr= array_unique($allArrays['user_id']);
        $userLists=[];
        if(!empty($uniqueArr)){
            foreach ($uniqueArr as $key => $value) {
                $userLists[$key]['user_id']= $value;
                $userLists[$key]['systemNickname']= $allArrays['systemNickname'][$key];
            }
        }
        return view('admin.report.userReportList',compact('userLists'));
    }
    public function userReportView($id)
    {
        $id= base64_decode($id);
        $universities= UniversityRating::select('university_ratings.*','users.systemNickname')->join('users','users.id','university_ratings.user_id')->whereRaw(" (report !=' ' or report != 'null')")->where('user_id',$id)->get();

        $teachers= TeacherRating::select('teacher_ratings.*','users.systemNickname')->join('users','users.id','teacher_ratings.user_id')->whereRaw(" (report !=' ' or report != 'null')")->where('teacher_ratings.user_id',$id)->get();

        $professors= ProfessorRating::select('professor_ratings.*','users.systemNickname')->join('users','users.id','professor_ratings.user_id')->whereRaw(" (report !=' ' or report != 'null')")->where('user_id',$id)->get();

        $stories= DB::table('story_reports')->select('story_reports.story_id','story_reports.reason','story_reports.user_id as reportedUser','stories.user_id','users.systemNickname')->join('stories','stories.id','story_reports.story_id')->join('users','users.id','story_reports.user_id')->where('stories.user_id',$id)->get();

    $allArrays=[];

        if(!empty($universities)){
            foreach ($universities as $ukey => $uvalue) {
                $reports= !empty($uvalue['report']) ?$uvalue['report']: 0; 
                $groupConcat= DB::select("select group_concat(systemNickname) as nickName from users where id in (".$reports.")");
                $allArrays['user_name'][]=$groupConcat[0]->nickName;
                $allArrays['comment'][]=$uvalue['message'];
                $allArrays['user_id'][]=$uvalue['user_id'];
            }
        }
        if(!empty($teachers)){
            foreach ($teachers as $ukey => $uvalue) {
                $reports= !empty($uvalue['report']) ?$uvalue['report']: 0; 
                $groupConcat= DB::select("select group_concat(systemNickname) as nickName from users where id in (".$reports.")");
                $allArrays['user_name'][]=$groupConcat[0]->nickName;
                $allArrays['comment'][]=$uvalue['message'];
                $allArrays['user_id'][]=$uvalue['user_id'];
            }
        }
        if(!empty($professors)){
            foreach ($professors as $ukey => $uvalue) {
                $reports= !empty($uvalue['report']) ?$uvalue['report']: 0; 
                $groupConcat= DB::select("select group_concat(systemNickname) as nickName from users where id in (".$reports.")");
                $allArrays['user_name'][]=$groupConcat[0]->nickName;
                $allArrays['comment'][]=$uvalue['message'];
                $allArrays['user_id'][]=$uvalue['user_id'];
            }       
        }
        if(!empty($stories)){
            foreach ($stories as $ukey => $uvalue) {
                $allArrays['user_name'][]=$uvalue->systemNickname;
                $allArrays['comment'][]=$uvalue->reason;
                $allArrays['user_id'][]=$uvalue->user_id;
            }
        }
        $uniqueArr= $allArrays['user_id'];
        $userLists=[];
        if(!empty($uniqueArr)){
            foreach ($allArrays['user_id'] as $key => $value) {
                $userLists[$key]['user_id']= $value;
                $userLists[$key]['systemNickname']= $allArrays['user_name'][$key];
                $userLists[$key]['comment']= $allArrays['comment'][$key];
            }
        }
        return view('admin.report.userReporterList',compact('userLists'));
    }
    public function oldAjaxReportersList(Request $request)
    {

        $id= $request->id;
        if($request->type == 'teacherReview'){
            $teacher= TeacherRating::select('likes','dislikes','report')->where('id',$id)->first();
            $report= !empty($teacher['report']) ?$teacher['report']: 0; 
            $reporters= TeacherRating::select(DB::raw('(select group_concat(systemNickname) from users where id in ('.$report.') )as reports,(select group_concat(id) from users where id in ('.$report.') )as reportsId'))->join('teacher_profiles','teacher_profiles.id', '=','teacher_ratings.teacher_id')->join('users','users.id', '=','teacher_ratings.user_id')->where('teacher_ratings.id',$id)->first();
        }
        if($request->type == 'professorReview'){
            $professor= ProfessorRating::select('likes','dislikes','report')->where('id',$id)->first();
        $report= !empty($professor['report']) ?$professor['report']: 0; 
        $reporters= ProfessorRating::select(DB::raw('(select group_concat(systemNickname) from users where id in ('.$report.') )as reports,(select group_concat(id) from users where id in ('.$report.') )as reportsId'))->join('professor_profiles','professor_profiles.id', '=','professor_ratings.professor_id')->join('users','users.id', '=','professor_ratings.user_id')->where('professor_ratings.id',$id)->first();
        } 

        if($request->type == 'universityReview'){
            $professor= UniversityRating::select('likes','dislikes','report')->where('id',$id)->first();
            $report= !empty($professor['report']) ?$professor['report']: 0; 
    
            $reporters= UniversityRating::select(DB::raw('(select group_concat(systemNickname) from users where id in ('.$report.') )as reports,(select group_concat(id) from users where id in ('.$report.') )as reportsId'))->join('universities','universities.id', '=','university_ratings.university_id')->join('users','users.id', '=','university_ratings.user_id')->where('university_ratings.id',$id)->first();
        } 
        return $reporters;
    }
    public function AjaxReportersList(Request $request)
    {

        $id= $request->id;
        $user= User::where('id',$id)->first();
        return $user;
    }

    public function allReportSpamTrack()
    {
        session()->forget('ajaxroute');
        $alloldprofessorsReview= ProfessorRating::select('professor_ratings.*','professor_profiles.name as ptuName','professor_profiles.id as ptuId','professor_profiles.user_added','users.systemNickname as usersystemNickname','users.id as userId')->join('professor_profiles','professor_profiles.id', '=','professor_ratings.professor_id')->join('users','users.id', '=','professor_ratings.user_id')->where('message','!=','')->where('message','!=',null)->whereRaw("(report != ' ' or report != null)")->orderBy('updated_at','DESC')->get();
        $allprofessorsReview=[];
        foreach($alloldprofessorsReview as $okey=> $review){
            $reportedIds = explode(',',$review->report);
            foreach($reportedIds as $ids){
                $allprofessorsReview[]=array_merge($review->toArray(), ['report' => $ids]);
            }
        }

        $alloldteachersReview= TeacherRating::select('teacher_ratings.*','teacher_profiles.name as ptuName','teacher_profiles.id as ptuId','teacher_profiles.user_added','users.systemNickname as usersystemNickname','users.id as userId')->join('teacher_profiles','teacher_profiles.id', '=','teacher_ratings.teacher_id')->join('users','users.id', '=','teacher_ratings.user_id')->where('message','!=','')->where('message','!=',null)->whereRaw("(report != ' ' or report != null)")->orderBy('updated_at','DESC')->get();
        $allteachersReview=[];
        foreach($alloldteachersReview as $okey=> $review){
            $reportedIds = explode(',',$review->report);
            foreach($reportedIds as $ids){
                $allteachersReview[]=array_merge($review->toArray(), ['report' => $ids]);
            }
        }

        $olduniversitiesReview= UniversityRating::select('university_ratings.*','universities.name as ptuName','users.id as userId','users.systemNickname as usersystemNickname')->join('universities','universities.id', '=','university_ratings.university_id')->join('users','users.id', '=','university_ratings.user_id')->where('message','!=','')->where('message','!=',null)->whereRaw("(report != ' ' or report != null)")->orderBy('updated_at','DESC')->get();
        $universitiesReview=[];
        foreach($olduniversitiesReview as $okey=> $review){
            $reportedIds = explode(',',$review->report);
            foreach($reportedIds as $ids){
                $universitiesReview[]=array_merge($review->toArray(), ['report' => $ids]);
            }
        }

        $newArray = array_merge_recursive($allprofessorsReview,$allteachersReview,$universitiesReview);
        // usort($allCommentTrack, function($a, $b) {
        //     return $a['created_at'] <=> $b['created_at'];
        // });
        $allCommentTrack =collect($newArray)->sortBy('updated_at')->reverse()->toArray();


        return view('admin.report.allReportSpam',compact('allCommentTrack'));
    }
    public function allReportSpamCommentAjax(Request $request)
    {
        session()->put(['ajaxroute'=>Route::currentRouteName()]);
        $startDate= date('Y-m-d',strtotime($request->start));
        $endDate= date('Y-m-d',strtotime($request->end));
        $StartDates= $request->start;
        $EndDates= $request->end;

        $alloldprofessorsReview= ProfessorRating::select('professor_ratings.*','professor_profiles.name as ptuName','professor_profiles.id as ptuId','professor_profiles.user_added','users.systemNickname as usersystemNickname','users.id as userId')->join('professor_profiles','professor_profiles.id', '=','professor_ratings.professor_id')->join('users','users.id', '=','professor_ratings.user_id')->where('message','!=','')->where('message','!=',null)->whereRaw("(report != ' ' or report != null)")->whereBetween('professor_ratings.updated_at',[$startDate.' 00:00:00',$endDate.' 23:59:59'])->orderBy('updated_at','DESC')->get();
        $allprofessorsReview=[];
        foreach($alloldprofessorsReview as $okey=> $review){
            $reportedIds = explode(',',$review->report);
            foreach($reportedIds as $ids){
                $allprofessorsReview[]=array_merge($review->toArray(), ['report' => $ids]);
            }
        }

        $alloldteachersReview= TeacherRating::select('teacher_ratings.*','teacher_profiles.name as ptuName','teacher_profiles.id as ptuId','teacher_profiles.user_added','users.systemNickname as usersystemNickname','users.id as userId')->join('teacher_profiles','teacher_profiles.id', '=','teacher_ratings.teacher_id')->join('users','users.id', '=','teacher_ratings.user_id')->where('message','!=','')->where('message','!=',null)->whereRaw("(report != ' ' or report != null)")->whereBetween('teacher_ratings.updated_at',[$startDate.' 00:00:00',$endDate.' 23:59:59'])->orderBy('updated_at','DESC')->get();
        $allteachersReview=[];
        foreach($alloldteachersReview as $okey=> $review){
            $reportedIds = explode(',',$review->report);
            foreach($reportedIds as $ids){
                $allteachersReview[]=array_merge($review->toArray(), ['report' => $ids]);
            }
        }

        $olduniversitiesReview= UniversityRating::select('university_ratings.*','universities.name as ptuName','users.id as userId','users.systemNickname as usersystemNickname')->join('universities','universities.id', '=','university_ratings.university_id')->join('users','users.id', '=','university_ratings.user_id')->where('message','!=','')->where('message','!=',null)->whereRaw("(report != ' ' or report != null)")->whereBetween('university_ratings.updated_at',[$startDate.' 00:00:00',$endDate.' 23:59:59'])->orderBy('updated_at','DESC')->get();
        $universitiesReview=[];
        foreach($olduniversitiesReview as $okey=> $review){
            $reportedIds = explode(',',$review->report);
            foreach($reportedIds as $ids){
                $universitiesReview[]=array_merge($review->toArray(), ['report' => $ids]);
            }
        }

        $newArray = array_merge_recursive($allprofessorsReview,$allteachersReview,$universitiesReview);
        // usort($allCommentTrack, function($a, $b) {
        //     return $a['updated_at'] <=> $b['updated_at'];
        // });
        $allCommentTrack =collect($newArray)->sortBy('updated_at')->reverse()->toArray();

        return view('admin.report.allReportSpam',compact('allCommentTrack','StartDates','EndDates'));

        
    }
}
