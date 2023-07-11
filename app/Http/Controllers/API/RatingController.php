<?php

namespace App\Http\Controllers\API;

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
use App\Conversation;
use App\AbuseWords;
use App\Helpers\Helper;
use Illuminate\Support\Facades\Validator;

class RatingController extends Controller
{
    public function suggestionAdd(Request $request)
    {
       $validator=  Validator::make($request->all(),[
            'suggestion'=>'required|min:3|max:250',
            'teacher_professor_id'=>'required',
            'type'=>'required',
            'user_id'=>'required',
        ]);
        if($validator->fails()){
            $errors= Helper::firstErrorHandling($validator->errors()->all());

            return Helper::errorMessage($errors);
        }else{
            $data=[];
            $data['suggestion']=$request->suggestion;
            $data['teacher_professor_id']=$request->teacher_professor_id;
            $data['type']=$request->type;
            $data['user_id']=$request->user_id;
            Suggestion::create($data);
            $message= 'Your Suggestion is submitted, thank you!';
            return Helper::successMessage($message);
        }
    }
    public function teacherRate(Request $request)
    {
       $validator=  Validator::make($request->all(),[
        'id'    => 'required',
        'user_id' => 'required'
       ]);
        if($validator->fails()){
            $errors= Helper::firstErrorHandling($validator->errors()->all());
            return Helper::errorMessage($errors);
        }else{
            $id= $request->id;
            $user_id= $request->user_id;
            $teacherData= TeacherProfile::where('id',$id)->with('subject')->first();
            if(empty($teacherData)){
                $message= 'Teacher Profile not found';
                return Helper::errorMessage($message);
            }else{
                $checkTeacherRating= TeacherRating::where(['teacher_id'=>$id,'parent_id'=>0,'user_id'=>$user_id])->first();
                if($checkTeacherRating){
                    $message= __('You Rated This Teacher Already. Thank You.');
                    return Helper::errorMessage($message);
                }

                $data['teacherData']= $teacherData;
                $message= 'Successful';
                return Helper::successMessage($message,$data);
            }
        }
    }
    public function addTeacherRate(Request $request)
    {
        $validator=  Validator::make($request->all(),[
            'message'=>'nullable|max:250',
            'id'=>'required',
        ]);
        if($validator->fails()){
            $errors= Helper::firstErrorHandling($validator->errors()->all());
            return Helper::errorMessage($errors); 
        }else{
            $checkTeacherRating= TeacherProfile::where(['id'=>$request->id])->first();
            if(empty($checkTeacherRating)){
                $message= __('Teacher Not Found.');
                return Helper::errorMessage($message);
            }
            $checkTeacherRating= TeacherRating::where(['teacher_id'=>$request->id,'parent_id'=>0,'user_id'=>auth('api')->user()->id])->first();
            if($checkTeacherRating){
                $message= __('You Rated This Teacher Already. Thank You.');
                return Helper::errorMessage($message);
            }else{
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
                $data['user_id']= auth('api')->user()->id;
                TeacherRating::Create($data);
                $message= 'Your rating is submitted successfully, thank you!';
                return Helper::successMessage($message,$data);

            }
        }
    }
    public function AddTeacherLikeDislike(Request $request)
    {
        $validator=  Validator::make($request->all(),[
            'teacher_id'=>'required',
            'reply_id'=>'required',
            'user_id'=>'required',
            "type" => "required",

        ]);
        if($validator->fails()){
            $errors= Helper::firstErrorHandling($validator->errors()->all());
            return Helper::errorMessage($errors);
        }else{
            $likes=[];
            $likesData=$dislikesData='';
            $teacherId= $request->teacher_id;
            $replyId= $request->reply_id;
            $typeName= $request->type=='like' ? 'likes': 'dislikes' ;
            $typeNameMsg= $request->type=='like' ? 'liked': 'disliked' ;
            $notiftype= $request->type=='like' ? 1: 2 ;
            $RtypeName= $request->type=='like' ? 'dislikes': 'likes' ;
            $Rnotiftype= $request->type=='like' ? 2: 1 ;
            $id= $request->user_id;

            $replyData= TeacherProfile::find($teacherId);
            if(empty($replyData)){
                $message= 'This Teacher Id not found';
                return Helper::errorMessage($message);
            }

            $replyData= TeacherRating::find($replyId);
            if(empty($replyData)){
                $message= 'This Teacher Rating Id not found';
                return Helper::errorMessage($message);
            }

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
            $userData= User::find($request->user_id);
            if($userData->id != $replyData->user_id){
                
                

                Helper::Notification($userData->id,$replyData->user_id,$notiftype,$replyData->teacher_id,2,$Rnotiftype,$userData->systemNickname.' '.$typeNameMsg.' your comment',$replyId);
// push notification

                $data['message']= auth('api')->user()->systemNickname.' '.$typeNameMsg.' your comment';
                $data['title'] = 'Someone '.$typeNameMsg.' your comment';
                $data['key'] = 2;
                $data['uId'] = $replyData->user_id;
                $data['type']       = 'teacher';
                $data['id']       = $replyData->teacher_id;
                $newconversationCount=0;
                $conversationCount= $this->getConversationCount($replyData->user_id);
                $nCount= Notification::where(['receiver_id'=>$replyData->user_id,'is_read'=>0])->where('type','!=',5)->count();
                $newconversationCount= $nCount+$conversationCount; 
                $data['badgeCount']       = $newconversationCount;
            
                
                
                
                $this->sendSinglePushNotification($data);
            }
            TeacherRating::where('id',$replyId)->update([$typeName=>trim($likesData,','),$RtypeName=>trim($dislikesData,',')]);
            $data['ratingData']= TeacherRating::where('id',$replyId)->first();
            $message= $typeName.' successfully';
            return Helper::successMessage($message,$data);

        }
    }
    public function AddTeacherReport(Request $request)
    {
        $validator= Validator::make($request->all(),[
            'teacher_id' => 'required',
            'reply_id' => 'required',
            'user_id' => 'required',
        ]);
         if($validator->fails()){
            $errors= Helper::firstErrorHandling($validator->errors()->all());
            return Helper::errorMessage($errors);
            }else{
            $likes=[];
            $likesData=$dislikesData='';
            $teacherId= $request->teacher_id;
            $replyId= $request->reply_id;
            $typeName= 'report' ;
            $id= $request->user_id;

            $replyData= TeacherRating::find($replyId);
            $likes =explode(',', $replyData[$typeName]);
            if(in_array($id,$likes)){
                $message= "Unreport Successfully";
                unset($likes[array_search($id,$likes)]);
            }else{
                $message= "Report Successfully";

                array_push($likes, $id);
            }
            $likesData= implode(',', $likes);
            $userData= User::find($request->user_id);

            //    push notification to report functionality 
    
                // $data['message']= auth('api')->user()->systemNickname.'Report Your Message';
                // $data['title'] = 'Report Your Message';
                // $data['key'] = 2;
                // $data['uId'] = $replyData->user_id;
                // $data['type']       = 'teacher';
                // $data['id']       = $replyData->teacher_id;

                // $this->sendSinglePushNotification($data);
               //notification section

               Helper::Notification(auth('api')->user()->id,$replyData->user_id,5,$replyData->teacher_id,2,'',auth('api')->user()->systemNickname.' Report Your Message',$replyId);
            //notification section

            TeacherRating::where('id',$replyId)->update([$typeName=>trim($likesData,',')]);
            $data['TeacherRating']= TeacherRating::where('id',$replyId)->first();
            return Helper::successMessage($message,$data);
        }
    }
    public function addTeacherReview(Request $request )
    {
        $validator= Validator::make($request->all(),[
            'teacher_id' => 'required',
            'comment' => 'required|min:3|max:200',
            'parent_id' => 'required',
        ]);
         if($validator->fails()){
            $errors= Helper::firstErrorHandling($validator->errors()->all());
            return Helper::errorMessage($errors);
        }else{
            $teacherData= TeacherProfile::where('id',$request->teacher_id)->first();
            if(empty($teacherData)){
                $message= 'Teacher Not Found';
            return Helper::errorMessage($message);
            }
         
            $teacherRatingData= TeacherRating::with('users')->where('id',$request->parent_id)->first();
            if(empty($teacherRatingData)){
                $message= 'Teacher Profile Not Found';
            return Helper::errorMessage($message);
            }
            $result=[];
            $data=[];
           
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
            $data['teacher_id']= $request->teacher_id;
            $data['message']= $request->comment;
            $data['parent_id']= $request->parent_id;
            $data['is_abuse']= $isAbuse;
            $data['user_id']= auth('api')->user()->id;
            $data['selected_user_id']= ($request->selected_user_id ? $request->selected_user_id : 0);
            $output= TeacherRating::Create($data);
            //notification section
            $selected_user_id= !empty($request->selected_user_id) ? $request->selected_user_id : $request->parent_id;

            if(auth('api')->user()->id != $selected_user_id){
            //    push notification to report functionality 

            Notification::create(['sender_id'=>auth('api')->user()->id,'receiver_id'=>$selected_user_id,'type'=>4,'rating_pageId'=>$request->teacher_id,'rating_type'=>2,'is_read'=>0,'message'=>auth('api')->user()->systemNickname.' replied on your review','rating_msg_id'=>$output->id]);

            $data['message']= auth('api')->user()->systemNickname.' replied on your review';
            $data['title'] = 'Reply On Your Review';
            $data['key'] = 2;
            $data['uId'] = $selected_user_id;
            $data['type']       = 'teacher';
            $data['id']       = $request->teacher_id;

            $newconversationCount=0;
            $conversationCount= $this->getConversationCount($selected_user_id);
            $nCount= Notification::where(['receiver_id'=>$selected_user_id,'is_read'=>0])->where('type','!=',5)->count();
            $newconversationCount= $nCount+$conversationCount; 
            $data['badgeCount']       = $newconversationCount;

            $this->sendSinglePushNotification($data);



            }
        //notification section

        

            $teacherRatingData= TeacherRating::where(['id'=>$output->id])->with(['users','selectedUser'])->first();
            $teacherRatingData->parent_key =$request->parent_id;
            $teacherRatingData->parent_user_name = $teacherRatingData->selectedUser->systemNickname;
            $teacherRatingData->userData= User::where('id',$teacherRatingData->user_id)->first();
        
            if($request->selected_user_id){
                $message= "Reply Insert Successfully";
            }else{
                $message= "Review Insert Successfully";
            }
            return Helper::successMessage($message,$teacherRatingData);
        }
    }
    public function professorRate($id)
    {
        $professorData= ProfessorProfile::where('id',$id)->first();
        if(empty($professorData)){
            $message= 'Professor Not Found';
            return Helper::errorMessage($message);
        }
       $checkUserProfessorRating= ProfessorRating::where(['professor_id'=>$id,'parent_id'=>0,'user_id'=>auth('api')->user()->id])->first();
        if($checkUserProfessorRating){
            $message= __('You Rated This Professor Already. Thank You.');
            return Helper::errorMessage($message);
        }
       
        $data['professorData']= $professorData;
        $message= 'Successful';
        return Helper::successMessage($message,$data);
    }
     public function addProfessorRate(Request $request)
    {
        $validator=  Validator::make($request->all(),[
            'message'=>'nullable|max:250',
            'course_code'=>'required|min:3|max:12',
            'id'=>'required',
            'study_type'=>'required',
            'repeat'=>'required',
            'grade'=>'required',
            'textbook'=>'required',
            'attendance'=>'required',
            'rate_professor'=>'required',
            'easyness_range'=>'required',
        ]);
        if($validator->fails()){
            $errors= Helper::firstErrorHandling($validator->errors()->all());
            return Helper::errorMessage($errors);
        }else{
            $checkUserProfessorRating= ProfessorProfile::where(['id'=>$request->id])->first();
            if(empty($checkUserProfessorRating)){
                $message= 'This professor was not found';
                    return Helper::errorMessage($message);
            }
            $checkUserProfessorRating= ProfessorRating::where(['professor_id'=>$request->id,'parent_id'=>0,'user_id'=>auth('api')->user()->id])->first();
            if($checkUserProfessorRating){
                $message= 'This professor was Already Reviewed';
                    return Helper::errorMessage($message);
            }
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
            $data['professor_id']= $request->id;
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
            $data['user_id']= auth('api')->user()->id;
            ProfessorRating::Create($data);
           $message="Your rating is submitted successfully, thank you!";
           return Helper::successMessage($message,$data);
        }
    }
    public function AddProfessorLikeDislike(Request $request)
    {
        $validator=  Validator::make($request->all(),[
            'professor_id'=>'required',
            'reply_id'=>'required',
            'user_id'=>'required',
            "type" => "required",

        ]);
        if($validator->fails()){
            $errors= Helper::firstErrorHandling($validator->errors()->all());
            return Helper::errorMessage($errors);
        }else{

            $likes=[];
            $likesData=$dislikesData='';
            $professorId= $request->professor_id;
            $replyId= $request->reply_id;
            $type= $request->type;
            $typeName= $request->type=='like' ? 'likes': 'dislikes' ;
            $typeNameMsg= $request->type=='like' ? 'liked': 'disliked' ;
            $notiftype= $request->type=='like' ? 1: 2 ;
            $RtypeName= $request->type=='like' ? 'dislikes': 'likes' ;
            $Rnotiftype= $request->type=='like' ? 2: 1 ;
            $id= auth('api')->user()->id;

            $replyData= ProfessorProfile::find($professorId);
            if(empty($replyData)){
                $message= 'This professor id not found';
                return Helper::errorMessage($message);
            }

            $replyData= ProfessorRating::find($replyId);
            if(empty($replyData)){
                $message= 'This professor rating id not found';
                return Helper::errorMessage($message);

            }
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
            
            if(auth('api')->user()->id != $replyData->user_id)
            {
                Helper::Notification(auth('api')->user()->id,$replyData->user_id,$notiftype,$replyData->professor_id,1,$Rnotiftype,auth('api')->user()->systemNickname.' '.$typeNameMsg.' your comment',$replyId);

                // push notification
                $data['message']= auth('api')->user()->systemNickname.' '.$typeNameMsg.' your comment';
                $data['title'] = 'Someone '.$typeNameMsg.' your comment';
                $data['key'] = 2;
                $data['uId'] = $replyData->user_id;
                $data['type']       = 'professor';
                $data['id']       = $replyData->professor_id;

                $newconversationCount=0;
                $conversationCount= $this->getConversationCount($replyData->user_id);
                $nCount= Notification::where(['receiver_id'=>$replyData->user_id,'is_read'=>0])->where('type','!=',5)->count();
                $newconversationCount= $nCount+$conversationCount; 
                $data['badgeCount']       = $newconversationCount;

                $this->sendSinglePushNotification($data);

                //notification section

            }
                //notification section
            ProfessorRating::where('id',$replyId)->update([$typeName=>trim($likesData,','),$RtypeName=>trim($dislikesData,',')]);
            $data['ratingData']= ProfessorRating::where('id',$replyId)->first();


            $message= $typeName.' successfully';
            return Helper::successMessage($message,$data);

        }
    }
    public function AddProfessorReport(Request $request)
    {
     $validator= Validator::make($request->all(),[
            'professor_id' => 'required',
            'reply_id' => 'required',
            'user_id' => 'required',
        ]);
         if($validator->fails()){
            $errors= Helper::firstErrorHandling($validator->errors()->all());
            return Helper::errorMessage($errors);
        }else{
            $likes=[];
            $likesData=$dislikesData='';
            $professorId= $request->professor_id;
            $replyId= $request->reply_id;
            $typeName= 'report';
            $id= auth('api')->user()->id;

            $replyData= ProfessorRating::find($replyId);
            $likes =explode(',', $replyData[$typeName]);
            if(in_array($id,$likes)){
                $message= "Unreport Successfully";
                unset($likes[array_search($id,$likes)]);
            }else{
                $message= "Report Successfully";
                array_push($likes, $id);
            }
            $likesData= implode(',', $likes);

            //    push notification to report functionality 

            // $data['message']= auth('api')->user()->systemNickname.'Report Your Message';
            // $data['title'] = 'Report Your Message';
            // $data['key'] = 2;
            // $data['uId'] = $replyData->user_id;
            // $data['type']       = 'professor';
            // $data['id']       = $replyData->professor_id;
            // $this->sendSinglePushNotification($data);
            
                //notification section
                Helper::Notification(auth()->user()->id,$replyData->user_id,5,$replyData->professor_id,1,'',auth('api')->user()->systemNickname.' Report Your Message',$replyId);
            //notification section

            ProfessorRating::where('id',$replyId)->update([$typeName=>trim($likesData,',')]);
            $data['ProfessorRating']= ProfessorRating::where('id',$replyId)->first();
            return Helper::successMessage($message,$data);
        
        }
    }
    public function addProfessorReview(Request $request )
    {

        $validator= Validator::make($request->all(),[
            'professor_id' => 'required',
            'comment' => 'required|min:3|max:200',
            'parent_id' => 'required',
        ]);
        if($validator->fails()){
            $errors= Helper::firstErrorHandling($validator->errors()->all());
            return Helper::errorMessage($errors);
        }else{
            $professorData= ProfessorProfile::where('id',$request->professor_id)->first();
            if(empty($professorData)){
                $message= 'Professor Not Found';
            return Helper::errorMessage($message);
            }
            $professorRatingData= ProfessorRating::with('users')->where('id',$request->parent_id)->first();
            if(empty($professorRatingData)){
                $message= 'Professor id Not Found';
            return Helper::errorMessage($message);
            }

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
                $data['professor_id']= $request->professor_id;
                $data['message']= $request->comment;
                $data['parent_id']= $request->parent_id;
                $data['user_id']= auth('api')->user()->id;
                $data['is_abuse']= $isAbuse;
                $data['selected_user_id']= ($request->selected_user_id ? $request->selected_user_id : 0);
                $output= ProfessorRating::Create($data);
                 //notification section
                $selected_user_id= !empty($request->selected_user_id) ? $request->selected_user_id : $request->parent_id;
                if(auth()->user()->id != $selected_user_id){
                //    push notification to report functionality 

                Notification::create(['sender_id'=>auth('api')->user()->id,'receiver_id'=>$selected_user_id,'type'=>4,'rating_pageId'=>$request->professor_id,'rating_type'=>1,'is_read'=>0,'message'=>auth('api')->user()->systemNickname.' replied on your review','rating_msg_id'=>$output->id]);

                $data['message']= auth('api')->user()->systemNickname.' replied on your review';
                $data['title'] = 'Reply On Your Review';
                $data['key'] = 2;
                $data['uId'] = $selected_user_id;
                $data['type']       = 'professor';
                $data['id']       = $request->professor_id;
                
                $newconversationCount=0;
                $conversationCount= $this->getConversationCount($selected_user_id);
                $nCount= Notification::where(['receiver_id'=>$selected_user_id,'is_read'=>0])->where('type','!=',5)->count();
                $newconversationCount= $nCount+$conversationCount; 
                $data['badgeCount']       = $newconversationCount;
                $this->sendSinglePushNotification($data);

                
                }
            //notification section
                $newprofessorRatingData= ProfessorRating::where(['id'=>$output->id])->with(['users','selectedUser'])->first();
                $newprofessorRatingData['parent_key']= $request->parent_id;
                $newprofessorRatingData['parent_user_name']= $newprofessorRatingData->selectedUser->systemNickname;
                $newprofessorRatingData['userData']= User::where('id',$newprofessorRatingData->user_id)->first();
                
                 if($request->selected_user_id){
                    $message= "Reply Insert Successfully";
                }else{
                    $message= "Review Insert Successfully";
                }
                return Helper::successMessage($message,$newprofessorRatingData);
            }
        }
    }
    public function universityRate($id='')
    {
        $universityData= University::where('id',$id)->first();
        if(empty($universityData)){
            $message= 'University Not Found';
            return Helper::errorMessage($message);
        }
        $checkUniversityRating= UniversityRating::where(['university_id'=>$id,'parent_id'=>0,'user_id'=>auth('api')->user()->id])->first();
        if($checkUniversityRating){
            $message= __('You Rated This University Already. Thank You.');
            return Helper::errorMessage($message);
        }
        $data['universityData']= University::where('id',$id)->first();
        $message= 'Successful';
        return Helper::successMessage($message,$data);
    }
    public function addUniversityRate(Request $request)
    {
        $validator=  Validator::make($request->all(),[
            'message'=>'nullable|max:250',
            'id'=>'required',
            'professor_range'=>'required',
            'course_range'=>'required',
            'facility_range'=>'required',
        ]);
        if($validator->fails()){
            $errors= Helper::firstErrorHandling($validator->errors()->all());
            return Helper::errorMessage($errors);
        }else{
            $checkUserProfessorRating= University::where(['id'=>$request->id])->first();
            if(empty($checkUserProfessorRating)){
                $message= 'This University was Not Found';
                    return Helper::errorMessage($message);
            }
            $checkUserProfessorRating= UniversityRating::where(['university_id'=>$request->id,'parent_id'=>0,'user_id'=>auth('api')->user()->id])->first();
            if($checkUserProfessorRating){
                $message= 'This University was Already Reviewed';
                    return Helper::errorMessage($message);
            }

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
            $data['user_id']= auth('api')->user()->id;
            UniversityRating::Create($data);
            $message="Your rating is submitted successfully, thank you!";
            return Helper::successMessage($message,$data);
        }     
    }
    public function AddUniversityLikeDislike(Request $request)
    {
        $validator=  Validator::make($request->all(),[
            'university_id'=>'required',
            'reply_id'=>'required',
            'user_id'=>'required',
            "type" => "required",

        ]);
        if($validator->fails()){
            $errors= Helper::firstErrorHandling($validator->errors()->all());
            return Helper::errorMessage($errors);
        }else{
            $likes=[];
            $likesData=$dislikesData='';
            $universityId= $request->university_id;
            $replyId= $request->reply_id;
            $type= $request->type;
            $typeName= $request->type=='like' ? 'likes': 'dislikes' ;
            $typeNameMsg= $request->type=='like' ? 'liked': 'disliked' ;
            $notiftype= $request->type=='like' ? 1: 2 ;
            $RtypeName= $request->type=='like' ? 'dislikes': 'likes' ;
            $Rnotiftype= $request->type=='like' ? 2: 1 ;
            $id= auth('api')->user()->id;


            $replyData= University::find($universityId);
            if(empty($replyData)){
                $message= 'This University not found';
                return Helper::errorMessage($message);
            }
            $replyData= UniversityRating::find($replyId);
            if(empty($replyData)){
                $message= 'This University rating id not found';
                return Helper::errorMessage($message);
            }
            $likes =explode(',', $replyData[$typeName]);
            if(in_array($id,$likes)){
                unset($likes[array_search($id,$likes)]);
            }else{
                array_push($likes, $id);
            }
            $likesData= implode(',', $likes);

            $dislikes =explode(',', $replyData[$RtypeName]);

            if(auth('api')->user()->id != $replyData->user_id)
            {
                Helper::Notification(auth('api')->user()->id,$replyData->user_id,$notiftype,$replyData->university_id,3,$Rnotiftype,auth('api')->user()->systemNickname.' '.$typeNameMsg.' your comment',$replyId);

                $data['message']= auth('api')->user()->systemNickname.' '.$typeNameMsg.' your comment';
                $data['title'] = 'Someone '.$typeNameMsg.' your comment';
                $data['key'] = 2;
                $data['uId'] = $replyData->user_id;
                $data['type']       = 'university';
                $data['id']       = $replyData->university_id;
                                

                $newconversationCount=0;
                $conversationCount= $this->getConversationCount($replyData->user_id);
                $nCount= Notification::where(['receiver_id'=>$replyData->user_id,'is_read'=>0])->where('type','!=',5)->count();
                $newconversationCount= $nCount+$conversationCount; 
                $data['badgeCount']       = $newconversationCount;

                $this->sendSinglePushNotification($data);
                

                //notification section
                
            }
            if(in_array($id,$dislikes)){
                unset($dislikes[array_search($id,$dislikes)]);
            }
            $dislikesData= implode(',', $dislikes);
            UniversityRating::where('id',$replyId)->update([$typeName=>trim($likesData,','),$RtypeName=>trim($dislikesData,',')]);
            $data['ratingData']= UniversityRating::where('id',$replyId)->first();
            $message= $typeName.' successfully';
            return Helper::successMessage($message,$data);

        }  
    }
    public function AddUniversityReport(Request $request)
    {
         $validator= Validator::make($request->all(),[
            'university_id' => 'required',
            'reply_id' => 'required',
            'user_id' => 'required',
        ]);
         if($validator->fails()){
            $errors= Helper::firstErrorHandling($validator->errors()->all());
            return Helper::errorMessage($errors);
        }else{

            $likes=[];
            $likesData=$dislikesData='';
            $universityId= $request->university_id;
            $replyId= $request->reply_id;
            $typeName= 'report' ;
            $id= auth('api')->user()->id;

            $replyData= University::find($universityId);
            if(empty($replyData)){
                $message= 'This University not found';
                return Helper::errorMessage($message);
            }

            $replyData= UniversityRating::find($replyId);
            if(empty($replyData)){
                $message= 'This University Rating Id not found';
                return Helper::errorMessage($message);
            }
            $likes =explode(',', $replyData[$typeName]);
            if(in_array($id,$likes)){
                    $message= "Unreport Successfully";
                unset($likes[array_search($id,$likes)]);
            }else{
                    $message= "Report Successfully";
                array_push($likes, $id);
            }
            $likesData= implode(',', $likes);

            //    push notification to report functionality 

            // $data['message']= auth('api')->user()->systemNickname.'Report Your Message';
            // $data['title'] = 'Report Your Message';
            // $data['key'] = 2;
            // $data['uId'] = $replyData->user_id;
            // $data['type']       = 'university';
            // $data['id']       = $replyData->university_id;
            // $this->sendSinglePushNotification($data);
            
            //notification section
                Helper::Notification(auth('api')->user()->id,$replyData->user_id,5,$replyData->university_id,3,'',auth('api')->user()->systemNickname.' Report Your Message',$replyId);
            //notification section

            UniversityRating::where('id',$replyId)->update([$typeName=>trim($likesData,',')]);
            $data['universityRating']= UniversityRating::where('id',$replyId)->first();
            return Helper::successMessage($message,$data);


        }
    }
    public function addUniversityReview(Request $request )
    {

        $validator= Validator::make($request->all(),[
            'university_id' => 'required',
            'comment' => 'required|min:3|max:200',
            'parent_id' => 'required',
        ]);
         if($validator->fails()){
            $errors= Helper::firstErrorHandling($validator->errors()->all());
            return Helper::errorMessage($errors);
        }else{
            $universityData= University::where('id',$request->university_id)->first();
            if(empty($universityData)){
                $message= 'University Not Found';
            return Helper::errorMessage($message);
            }
         
            $universityRatingData= UniversityRating::with('users')->where('id',$request->parent_id)->first();
            if(empty($universityRatingData)){
                $message= 'University Profile Not Found';
            return Helper::errorMessage($message);
            }

        $result=[];
        $data=[];
        
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
            $data['university_id']= $request->university_id;
            $data['message']= $request->comment;
            $data['is_abuse']= $isAbuse;
            $data['parent_id']= $request->parent_id;
            $data['user_id']= auth('api')->user()->id;
            $data['selected_user_id']= ($request->selected_user_id ? $request->selected_user_id : 0);
            $output= UniversityRating::Create($data);
            //notification section
            $selected_user_id= !empty($request->selected_user_id) ? $request->selected_user_id : $request->parent_id;
            
            if(auth('api')->user()->id != $selected_user_id){
            //    push notification to report functionality 
            Notification::create(['sender_id'=>auth('api')->user()->id,'receiver_id'=>$selected_user_id,'type'=>4,'rating_pageId'=>$request->university_id,'rating_type'=>3,'is_read'=>0,'message'=>auth('api')->user()->systemNickname.' replied on your review','rating_msg_id'=>$output->id]);

            $data['message']= auth('api')->user()->systemNickname.' replied on your review';
            $data['title'] = 'Reply Your Message';
            $data['key'] = 2;
            $data['uId'] = $selected_user_id;
            $data['type']       = 'university';
            $data['id']       = $request->university_id;
            
            $newconversationCount=0;
            $conversationCount= $this->getConversationCount($selected_user_id);
            $nCount= Notification::where(['receiver_id'=>$selected_user_id,'is_read'=>0])->where('type','!=',5)->count();
            $newconversationCount= $nCount+$conversationCount; 
            $data['badgeCount']       = $newconversationCount;

            $this->sendSinglePushNotification($data);
   

            }
        //notification section

            $teacherRatingData= UniversityRating::where(['id'=>$output->id])->with(['users','selectedUser'])->first();
            $teacherRatingData->parent_key = $request->parent_id;
            $teacherRatingData->parent_user_name = $teacherRatingData->selectedUser->systemNickname;
            $teacherRatingData->userData= User::where('id',$teacherRatingData->user_id)->first();
            
           if($request->selected_user_id){
                $message= "Reply Insert Successfully";
            }else{
                $message= "Review Insert Successfully";
            }
            
            return Helper::successMessage($message,$teacherRatingData);
        }
    }
    public function sendTestNotification(Request $request)
    {

        $msg = array(
            'body'      => 'replied on your review',
            'title'     => 'replied on your review',
            'subtitle'  => 'Collegator',
            'key'       => 2,
            'type'       =>'notype',
            'id'       => 4,
            'vibrate'   => 1,
            'sound'     => 1,
            'largeIcon' => 'large_icon',
            'smallIcon' => 'small_icon'
        );
        $device_token = $request->deviceToken;

            Helper::pushNotification($msg,$device_token);


    }
    public function sendSinglePushNotification($request)
    {
        // $data['mesage']= 'New Rating';
        //         $data['title'] = 'New Rating';
        //         $data['key'] = 2;
        //         $data['uId'] = $request->id;

        //         $this->sendSinglePushNotification();


        $msg = array(
            'body'      => $request['message'],
            'title'     => $request['title'],
            'subtitle'  => 'Collegator',
            'key'       => $request['key'],
            'type'       => $request['type']??'notype',
            'id'       => $request['id'],
            'vibrate'   => 1,
            'sound'     => 1,
            'largeIcon' => 'large_icon',
            'smallIcon' => 'small_icon',
            'badge'=>$request['badgeCount']??0
        );
        $userdata =  User::where('id',$request['uId'])->first();
        // $userdata =  User::where('id',1)->first();
        // $device_token = "fEitKDpvRU42qcpyeW4uCS:APA91bFOu_hkbwi23kG-UJRwsp-Rw4F26u0_woAMEla_MYmEC_ZwROaZk6ZEdA4IzE_ksaHpCkjoP0qY_E7tiOD6zhN5wm8UsXx755iQnwM5Wjk-h1gBeIubqvsCGwixbU2c_Rr1rsPv";
        if(!empty($userdata)){
            $device_token = $userdata['device_token'];
            if(!empty($device_token)){
                Helper::pushNotification($msg,$device_token);
            }
        }

	}
    public function getConversationCount($userId)
    {
        $countNewMessage=0;
        $allconversation=[];

           $allconversation= Conversation::withCount('messages')->whereRaw('FIND_IN_SET("'.$userId.'",user_id)')->orderBy('messages_count','desc')->get();
           foreach ($allconversation as $ckey => $cvalue) {
               $usersId= explode(',', $cvalue['user_id']);
               if(count($usersId)>2){
               }else{
                   if($cvalue['messages_count']>0){
                       $countNewMessage+=1;
                   }
               }
           }
           return $countNewMessage;
    }
    
}
