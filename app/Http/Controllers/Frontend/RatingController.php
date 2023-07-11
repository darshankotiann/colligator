<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Suggestion;
use App\TeacherProfile;
use App\ProfessorProfile;
use App\University;
use App\User;
use App\TeacherRating;
use App\ProfessorRating;
use App\UniversityRating;
use App\Notification;
use App\AbuseWords;
use App\Helpers\Helper;
class RatingController extends Controller
{
    public function suggestionAdd(Request $request)
    {
    	$request->validate([
    		'suggestion'=>'required|min:3|max:250',
    		'teacher_professor_id'=>'required',
    		'type'=>'required',
    	]);
    	$data=[];
    	$data['suggestion']=$request->suggestion;
    	$data['teacher_professor_id']=base64_decode($request->teacher_professor_id);
        $data['type']=$request->type;
    	$data['user_id']=Auth()->user()->id;
    	Suggestion::create($data);
    	toastr()->success('Your Suggestion is submitted, thank you!');
    	return redirect()->back();
    }
    public function teacherRate($id='')
    {
        $checkUniversityRating= TeacherRating::where(['teacher_id'=>base64_decode($id),'parent_id'=>0,'user_id'=>auth()->user()->id])->first();
        if($checkUniversityRating){
            toastr()->error(__('You Rated This Teacher Already. Thank You.'));
            return redirect()->back();
        }

        $teacherData= TeacherProfile::where('id',base64_decode($id))->with('subject')->first();
        // if($teacherData->is_active==0){
        //     toastr()->error('Rating of this teacher is not allowed');
        //     return redirect()->back();
        // }
        return view('frontend.rating.rate-teacher',compact('teacherData'));
    }
    public function universityRate($id='')
    {
        $checkUniversityRating= UniversityRating::where(['university_id'=>base64_decode($id),'parent_id'=>0,'user_id'=>auth()->user()->id])->first();
        if($checkUniversityRating){
            toastr()->error(__('You Rated This University Already. Thank You.'));
            return redirect()->back();
        }
        $universityData= University::where('id',base64_decode($id))->first();
        // if($universityData->is_active==0){
        //     toastr()->error('Rating of this university is not allowed');
        //     return redirect()->back();
        // }
        return view('frontend.rating.rate-university',compact('universityData'));
    }
    public function professorRate($id='')
    {
	   $checkUserProfessorRating= ProfessorRating::where(['professor_id'=>base64_decode($id),'parent_id'=>0,'user_id'=>auth()->user()->id])->first();
        if($checkUserProfessorRating){
            toastr()->error(__('You Rated This Professor Already. Thank You.'));
            return redirect()->back();
        }
        $professorData= ProfessorProfile::where('id',base64_decode($id))->first();
    	// if($professorData->is_active==0){
     //        toastr()->error('Rating of this professor is not allowed');
     //        return redirect()->back();
     //    }
    	return view('frontend.rating.rate-professor',compact('professorData'));
    }
    public function addTeacherRate(Request $request)
    {
        $request->validate([
            'message'=>'nullable|max:250',
        ]);
        $words= AbuseWords::get();
        $isAbuse=0;
        foreach ($words as $key => $value) {
            if($isAbuse==1){
                break;
            }
            $word = strtolower($value->word);
            $mystring = strtolower($request->message);
             
            // Test if string contains the word 
            if(preg_match("/".$word."\b/", $mystring)){
                $isAbuse=1;
            }
        }

        $data['teacher_id']= $request->id;
        $data['schoolrange']= $request->schoolrange>0?$request->schoolrange:1;
        $data['easyrange']= $request->easyrange>0?$request->easyrange:1;
        $data['homerange']= $request->homerange>0?$request->homerange:1;
        $data['message']= $request->message;
        $data['parent_id']= 0;
        $data['is_abuse']= $isAbuse;
        $data['user_id']= Auth()->user()->id;
        TeacherRating::Create($data);
        toastr()->success('Rating Successfully Submitted');
        return redirect()->route('frontend.teacherProfile',base64_encode($request->id));
    }
    public function addProfessorRate(Request $request)
    {
        $checkUserProfessorRating= ProfessorRating::where(['professor_id'=>$request->professor_id,'parent_id'=>0,'user_id'=>auth()->user()->id])->first();
        if($checkUserProfessorRating){
            toastr()->error(__('This professor was Already Reviewed'));
            return redirect()->route('frontend.professorProfile',base64_encode($request->professor_id));
        }

        $request->validate([
            'message'=>'nullable|max:250',
            'course_code'=>'required|min:3|max:20',
        ]);
        $words= AbuseWords::get();
        $isAbuse=0;
        foreach ($words as $key => $value) {
            if($isAbuse==1){
                break;
            }
            $word = strtolower($value->word);
            $mystring = strtolower($request->message);
             
            // Test if string contains the word 
            if(preg_match("/".$word."\b/", $mystring)){
                $isAbuse=1;
            }
        }
        $data['professor_id']= $request->professor_id;
        $data['course_code']= $request->course_code;
        $data['study_type']= $request->study_type;
        $data['rate_professor']= $request->rate_professor>0?$request->rate_professor:1;
        $data['easyness_range']= $request->easyness_range>0?$request->easyness_range:1;
        $data['repeat']= $request->repeat;
        $data['grade']= $request->grade;
        $data['textbook']= $request->textbook;
        $data['attendance']= $request->attendance;
        $data['message']= $request->message;
        $data['parent_id']= 0;
        $data['is_abuse']= $isAbuse;
        $data['user_id']= Auth()->user()->id;
        ProfessorRating::Create($data);
        toastr()->success('Rating Successfully Submitted');
        return redirect()->route('frontend.professorProfile',base64_encode($request->professor_id));
    }
    public function addUniversityRate(Request $request)
    {
    	$request->validate([
    		'message'=>'nullable|max:250',
    	]);
        $words= AbuseWords::get();
        $isAbuse=0;
        foreach ($words as $key => $value) {
            if($isAbuse==1){
                break;
            }
            $word = strtolower($value->word);
            $mystring = strtolower($request->message);
             
            // Test if string contains the word 
            if(preg_match("/".$word."\b/", $mystring)){
                $isAbuse=1;
            }
        }
    	$data['university_id']= $request->id;
    	$data['professor_range']= $request->professor_range>0?$request->professor_range:1;
    	$data['course_range']= $request->course_range>0?$request->course_range:1;
    	$data['facility_range']= $request->facility_range>0?$request->facility_range:1;
    	$data['message']= $request->message;
    	$data['parent_id']= 0;
        $data['is_abuse']= $isAbuse;
    	$data['user_id']= Auth()->user()->id;
    	UniversityRating::Create($data);
    	toastr()->success('Rating Successfully Submitted');
    	return redirect()->route('frontend.universityProfile',base64_encode($request->id));
    }
    public function addTeacherReview(Request $request )
    {
        $result=[];
        $data=[];
        if(strlen($request->comment) > 200 || strlen($request->comment) < 3){
            $result['status']='error';
        }else{
            $words= AbuseWords::get();
            $isAbuse=0;
            foreach ($words as $key => $value) {
                if($isAbuse==1){
                    break;
                }
                $word = strtolower($value->word);
                $mystring = strtolower($request->comment);
                 
                // Test if string contains the word 
                if(preg_match("/".$word."\b/", $mystring)){
                    $isAbuse=1;
                }
            }
            $result['status']='success';
            $data['teacher_id']= base64_decode($request->teacherId);
            $data['message']= $request->comment;
            $data['parent_id']= base64_decode($request->id);
            $data['is_abuse']= $isAbuse;
            $data['user_id']= Auth()->user()->id;
            $data['selected_user_id']= ($request->uId ? base64_decode($request->uId) : 0);
            $output= TeacherRating::Create($data);
            //notification section
            $Uid= !empty($request->uId) ? base64_decode($request->uId) : base64_decode($request->id);

            if(auth()->user()->id != $Uid){

            Notification::create(['sender_id'=>auth()->user()->id,'receiver_id'=>$Uid,'type'=>4,'rating_pageId'=>base64_decode($request->teacherId),'rating_type'=>2,'is_read'=>0,'message'=>auth()->user()->systemNickname.' reply on your review','rating_msg_id'=>$output->id]);
            }
        //notification section

            $teacherRatingData= TeacherRating::where(['id'=>$output->id])->with(['users','selectedUser'])->first();
            $type='teacher';

            $words= AbuseWords::get()->toArray();
            foreach($words as $key=>$val)
                $abouseWords[]=$val['word'];

            $result['html']= view('frontend.rating.teacherCustomReview',compact('teacherRatingData','type','abouseWords'))->render();
        }
        echo json_encode($result);
    }
    public function addProfessorReview(Request $request )
    {
        $result=[];
        $data=[];
        if(strlen($request->comment) > 200 || strlen($request->comment) < 3){
            $result['status']='error';
        }else{
           
            $words= AbuseWords::get();
            $isAbuse=0;
            foreach ($words as $key => $value) {
                if($isAbuse==1){
                    break;
                }
                $word = strtolower($value->word);
                $mystring = strtolower($request->comment);
                 
                // Test if string contains the word 
                if(preg_match("/".$word."\b/", $mystring)){
                    $isAbuse=1;
                }
            }
            $result['status']='success';
            $data['professor_id']= base64_decode($request->professorId);
            $data['message']= $request->comment;
            $data['parent_id']= base64_decode($request->id);
            $data['user_id']= Auth()->user()->id;
            $data['is_abuse']= $isAbuse;
            $data['selected_user_id']= ($request->uId ? base64_decode($request->uId) : 0);
            $output= ProfessorRating::Create($data);
             //notification section
            $Uid= !empty($request->uId) ? base64_decode($request->uId) : base64_decode($request->id);
            if(auth()->user()->id != $Uid){

            Notification::create(['sender_id'=>auth()->user()->id,'receiver_id'=>$Uid,'type'=>4,'rating_pageId'=>base64_decode($request->professorId),'rating_type'=>1,'is_read'=>0,'message'=>auth()->user()->systemNickname.' reply on your review','rating_msg_id'=>$output->id]);
            }
        //notification section
            $teacherRatingData= ProfessorRating::where(['id'=>$output->id])->with(['users','selectedUser'])->first();
            $type='professor';
            
            $words= AbuseWords::get()->toArray();
            foreach($words as $key=>$val)
                $abouseWords[]=$val['word'];
            
            $result['html']= view('frontend.rating.teacherCustomReview',compact('teacherRatingData','type','abouseWords'))->render();
        }
        echo json_encode($result);
    }
    public function addUniversityReview(Request $request )
    {

    	$result=[];
    	$data=[];
    	if(strlen($request->comment) > 200 || strlen($request->comment) < 3){
    		$result['status']='error';
    	}else{
            $words= AbuseWords::get();
            $isAbuse=0;
            foreach ($words as $key => $value) {
                if($isAbuse==1){
                    break;
                }
                $word = strtolower($value->word);
                $mystring = strtolower($request->comment);
                 
                // Test if string contains the word 
                if(preg_match("/".$word."\b/", $mystring)){
                    $isAbuse=1;
                }
            }
		$result['status']='success';
			$data['university_id']= base64_decode($request->universityId);
	    	$data['message']= $request->comment;
            $data['is_abuse']= $isAbuse;
	    	$data['parent_id']= base64_decode($request->id);
	    	$data['user_id']= Auth()->user()->id;
	    	$data['selected_user_id']= ($request->uId ? base64_decode($request->uId) : 0);
	    	$output= UniversityRating::Create($data);
            //notification section
            $Uid= !empty($request->uId) ? base64_decode($request->uId) : base64_decode($request->id);
            
            if(auth()->user()->id != $Uid){

            Notification::create(['sender_id'=>auth()->user()->id,'receiver_id'=>$Uid,'type'=>4,'rating_pageId'=>base64_decode($request->universityId),'rating_type'=>3,'is_read'=>0,'message'=>auth()->user()->systemNickname.' reply on your review','rating_msg_id'=>$output->id]);
            }
        //notification section

            $teacherRatingData= UniversityRating::where(['id'=>$output->id])->with(['users','selectedUser'])->first();
            $type='university';

            $words= AbuseWords::get()->toArray();
            foreach($words as $key=>$val)
                $abouseWords[]=$val['word'];

            $result['html']= view('frontend.rating.teacherCustomReview',compact('teacherRatingData','type','abouseWords'))->render();
    	}
    	echo json_encode($result);
    }
    public function ChildUserName(Request $request)
    {
    	$id= base64_decode($request->id);
    	$user= User::find($id);
    	return $user;
    }
    public function AddTeacherLikeDislike(Request $request)
    {
        $likes=[];
        $likesData=$dislikesData='';
        $teacherId= base64_decode($request->teacherId);
        $replyId= base64_decode($request->replyId);
        $type= $request->type;
        $typeName= $request->type=='like' ? 'likes': 'dislikes' ;
        $typeMsg= $request->type=='like' ? 'liked': 'disliked' ;
        $notiftype= $request->type=='like' ? 1: 2 ;
        $RtypeName= $request->type=='like' ? 'dislikes': 'likes' ;
        $Rnotiftype= $request->type=='like' ? 2: 1 ;
        $id= Auth()->user()->id;

        $replyData= TeacherRating::find($replyId);
        $likes =explode(',', $replyData[$typeName]);
        if(in_array($id,$likes)){
            unset($likes[array_search($id,$likes)]);
        }else{
            array_push($likes, $id);
        }
        $likesData= implode(',', $likes);

        $dislikes =explode(',', $replyData[$RtypeName]);
        if(in_array($id,$dislikes)){
            unset($dislikes[array_search($id,$dislikes)]);
        }
        $dislikesData= implode(',', $dislikes);
        
        Helper::Notification(auth()->user()->id,$replyData->user_id,$notiftype,$replyData->teacher_id,2,$Rnotiftype,auth()->user()->systemNickname.' '.$typeMsg.' your comment',$replyId);

        TeacherRating::where('id',$replyId)->update([$typeName=>trim($likesData,','),$RtypeName=>trim($dislikesData,',')]);
    }
    public function AddProfessorLikeDislike(Request $request)
    {

        $likes=[];
        $likesData=$dislikesData='';
        $professorId= base64_decode($request->professorId);
        $replyId= base64_decode($request->replyId);
        $type= $request->type;
        $typeName= $request->type=='like' ? 'likes': 'dislikes' ;
        $typeMsg= $request->type=='like' ? 'liked': 'disliked' ;
        $notiftype= $request->type=='like' ? 1: 2 ;
        $RtypeName= $request->type=='like' ? 'dislikes': 'likes' ;
        $Rnotiftype= $request->type=='like' ? 2: 1 ;
        $id= Auth()->user()->id;

        $replyData= ProfessorRating::find($replyId);
        $likes =explode(',', $replyData[$typeName]);
        if(in_array($id,$likes)){
            unset($likes[array_search($id,$likes)]);
        }else{
            array_push($likes, $id);
        }
        $likesData= implode(',', $likes);

        $dislikes =explode(',', $replyData[$RtypeName]);
        if(in_array($id,$dislikes)){
            unset($dislikes[array_search($id,$dislikes)]);
        }
        $dislikesData= implode(',', $dislikes);
        
        //notification section
            Helper::Notification(auth()->user()->id,$replyData->user_id,$notiftype,$replyData->professor_id,1,$Rnotiftype,auth()->user()->systemNickname.' '.$typeMsg.' your comment',$replyId);
    
        // $notification= Notification::where(['sender_id'=>auth()->user()->id,'receiver_id'=>$replyData->user_id,'type'=>$notiftype,'rating_pageId'=>$replyData->professor_id,'rating_type'=>1])->first();
        // if(empty($notification)){
        //     Notification::where(['sender_id'=>auth()->user()->id,'receiver_id'=>$replyData->user_id,'type'=>$Rnotiftype,'rating_pageId'=>$replyData->professor_id,'rating_type'=>1])->delete();
        //     Notification::create(['sender_id'=>auth()->user()->id,'receiver_id'=>$replyData->user_id,'type'=>$notiftype,'rating_pageId'=>$replyData->professor_id,'rating_type'=>1,'is_read'=>0,'message'=>'User like your profile']);
        // }else{
        //     Notification::where(['sender_id'=>auth()->user()->id,'receiver_id'=>$replyData->user_id,'type'=>$notiftype,'rating_pageId'=>$replyData->professor_id,'rating_type'=>1])->orWhere(['sender_id'=>auth()->user()->id,'receiver_id'=>$replyData->user_id,'type'=>$Rnotiftype,'rating_pageId'=>$replyData->professor_id,'rating_type'=>1])->delete();
        // }
        //notification section
        ProfessorRating::where('id',$replyId)->update([$typeName=>trim($likesData,','),$RtypeName=>trim($dislikesData,',')]);
    }
    public function AddUniversityLikeDislike(Request $request)
    {
        $likes=[];
        $likesData=$dislikesData='';
        $universityId= base64_decode($request->universityId);
        $replyId= base64_decode($request->replyId);
        $type= $request->type;
        $typeMsg= $request->type=='like' ? 'liked': 'disliked' ;
        $typeName= $request->type=='like' ? 'likes': 'dislikes' ;
        $notiftype= $request->type=='like' ? 1: 2 ;
        $RtypeName= $request->type=='like' ? 'dislikes': 'likes' ;
        $Rnotiftype= $request->type=='like' ? 2: 1 ;
        $id= Auth()->user()->id;

        $replyData= UniversityRating::find($replyId);
        $likes =explode(',', $replyData[$typeName]);
        if(in_array($id,$likes)){
            unset($likes[array_search($id,$likes)]);
        }else{
            array_push($likes, $id);
        }
        $likesData= implode(',', $likes);

        $dislikes =explode(',', $replyData[$RtypeName]);
        //notification section
            Helper::Notification(auth()->user()->id,$replyData->user_id,$notiftype,$replyData->university_id,3,$Rnotiftype,auth()->user()->systemNickname.' '.$typeMsg.' your comment',$replyId);

        if(in_array($id,$dislikes)){
            unset($dislikes[array_search($id,$dislikes)]);
        }
        $dislikesData= implode(',', $dislikes);
        UniversityRating::where('id',$replyId)->update([$typeName=>trim($likesData,','),$RtypeName=>trim($dislikesData,',')]);
    }
    public function AddTeacherReport(Request $request)
    {
        $likes=[];
        $likesData=$dislikesData='';
        $teacherId= base64_decode($request->teacherId);
        $replyId= base64_decode($request->replyId);
        $typeName= 'report' ;
        $id= Auth()->user()->id;

        $replyData= TeacherRating::find($replyId);
        $likes =explode(',', $replyData[$typeName]);
        if(in_array($id,$likes)){
            unset($likes[array_search($id,$likes)]);
        }else{
            array_push($likes, $id);
        }
        $likesData= implode(',', $likes);
           //notification section
            Helper::Notification(auth()->user()->id,$replyData->user_id,5,$replyData->teacher_id,2,'',auth()->user()->systemNickname.' Report Your Message',$replyId);
        //notification section

        TeacherRating::where('id',$replyId)->update([$typeName=>trim($likesData,',')]);
    }
    public function AddProfessorReport(Request $request)
    {
        $likes=[];
        $likesData=$dislikesData='';
        $professorId= base64_decode($request->professorId);
        $replyId= base64_decode($request->replyId);
        $typeName= 'report' ;
        $id= Auth()->user()->id;

        $replyData= ProfessorRating::find($replyId);
        $likes =explode(',', $replyData[$typeName]);
        if(in_array($id,$likes)){
            unset($likes[array_search($id,$likes)]);
        }else{
            array_push($likes, $id);
        }
        $likesData= implode(',', $likes);
            //notification section
            Helper::Notification(auth()->user()->id,$replyData->user_id,5,$replyData->professor_id,1,'',auth()->user()->systemNickname.' Report Your Message',$replyId);
        //notification section

        ProfessorRating::where('id',$replyId)->update([$typeName=>trim($likesData,',')]);
    }
    public function AddUniversityReport(Request $request)
    {
        $likes=[];
        $likesData=$dislikesData='';
        $teacherId= base64_decode($request->teacherId);
        $replyId= base64_decode($request->replyId);
        $typeName= 'report' ;
        $id= Auth()->user()->id;

        $replyData= UniversityRating::find($replyId);
        $likes =explode(',', $replyData[$typeName]);
        if(in_array($id,$likes)){
            unset($likes[array_search($id,$likes)]);
        }else{
            array_push($likes, $id);
        }
        $likesData= implode(',', $likes);
        //notification section
            Helper::Notification(auth()->user()->id,$replyData->user_id,5,$replyData->university_id,3,'',auth()->user()->systemNickname.' Report Your Message',$replyId);
        //notification section

        UniversityRating::where('id',$replyId)->update([$typeName=>trim($likesData,',')]);
    }
}
