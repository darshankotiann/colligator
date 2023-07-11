<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use App\University;
use App\School;
use App\User;
use App\ProfessorProfile;
use App\TeacherProfile;
use App\TeacherRating;
use App\UniversityRating;
use App\ProfessorRating;
use Session;
use Auth;
use App\Helpers\Helper;
class SearchController extends Controller
{
    private $htmlData;  
    private $NewhtmlData;  
    private $allUserData;  
    private $countNum;  
    public function __construct(User $user){
        header('Cache-Control: no cache'); //no cache
        session_cache_limiter('private_no_expire'); // works
        //session_cache_limiter('public'); // works too
        $this->htmlData = [];
        $this->NewhtmlData = [];
        $this->allUserData = $user;
        $this->countNum = 0;

    }
    public function Country($name='')
    {
    	Session()->put('searchtype',$name);
        $countries= DB::table('countries')->get();

    	return view('frontend.search.country',compact('countries'));
    }
    public function SearchCountryData(Request $request)
    {
        $search = $request->get('country');
     	$result= DB::table('countries')->where('name', 'LIKE', '%'. $search. '%')->get();
        return response()->json($result);
    }
    public function SearchUniversitySchoolData(Request $request)
    {
    	$searchtype= session::get('searchtype');
        $search = $request->get('search');
        $countryId=  session()->get('countrycode');
    	$countryName= DB::table('countries')->where('id',$countryId)->first();
    		
        if($searchtype=='teacher'){
	     	$result= DB::table('schools')->where('name', 'LIKE', '%'. $search. '%')->where(['country_code'=>$countryName->iso2,'is_delete'=>0 , 'status'=>1])->limit(5)->get();
        }else{
	     	$result= DB::table('universities')->where('name', 'LIKE', '%'. $search. '%')->where(['country_code'=>$countryName->iso2,'is_delete'=>0 , 'status'=>1])->limit(5)->get();
        }
        $response = array();
      	foreach($result as $autocomplate){
      		$html=$autocomplate->name;
        	$response[] = array("value"=>$autocomplate->name,"label"=>$html,"desc"=>base64_encode($autocomplate->id));
      	}
   		 echo json_encode($response);
    }
    public function SearchSchoolTeacherData(Request $request)
    {
        $search = $request->get('search');
        $schooldata= School::where('id',session::get('universityschoolid'))->first();
   		$autocomplate = TeacherProfile::orderby('name','asc')->with('all_active_subject')->where('name', 'like', '%' .$search . '%')->where(['school_code'=>$schooldata->school_code,'is_delete'=>0 , 'status'=>1])->limit(5)->get();
   		$response = array();
      	foreach($autocomplate as $autocomplate){
      		$html=$autocomplate->subject->name;
      		$id=$autocomplate->id;
        	$response[] = array("value"=>$autocomplate->name,"label"=>$html,"desc"=>base64_encode($id));
      	}
   		 echo json_encode($response);
    }
    public function SearchUniversityProfessorData(Request $request)
    {
        $search = $request->get('search');
        $university_data= University::where('id',session::get('universityschoolid'))->first();
   		$autocomplate = ProfessorProfile::orderby('name','asc')->with('all_active_college')->where('name', 'like', '%' .$search . '%')->where(['university_code'=>$university_data->university_code,'is_delete'=>0 , 'status'=>1])->limit(5)->get();
   		$response = array();
      	foreach($autocomplate as $autocomplate){
      		$html=$autocomplate->all_active_college->name?? '';
      		$id=$autocomplate->id;
        	$response[] = array("value"=>$autocomplate->name,"label"=>$html,"desc"=>base64_encode($id));
      	}
   		 echo json_encode($response);
    }
    public function AddfindAndRate(Request $request)
    {
    	$searchtype= session::get('searchtype');
    	if($searchtype==''){
    		return redirect()->route('frontend.home');
    	}else{
	    	$request->validate([
	    		'country' => 'required',
	    	],
	    	['country.required'=>'Please select country']
	    );
	    	$countryName= DB::table('countries')->select('name','id')->where('name',$request->country)->first();
	    	if(empty($countryName)){
	    		toastr()->error(__('Country not found'));
	    		return redirect()->back();
	    	}
	    	$request->session()->put('countrycode',$countryName->id);
	    	$request->session()->put('countryname',$countryName->name);
	    }
    	if($searchtype=='university'){
    		return view('frontend.search.searchuniversity-school',compact('countryName'));
    	}
    	return view('frontend.search.findAddBtn',compact('searchtype'));
    	
    }
    public function AddTeacherProfessor(Request $request)
    {
    	$type= $request->type;
    	$data=[];
    	if(Auth::user()){
    		$data['status']='success';
    		$countryId=  session()->get('countrycode');
    		$countryName= DB::table('countries')->where('id',$countryId)->first();
    		if($type=='professor'){
    			$universities= University::where(['country_code'=>$countryName->iso2,'is_delete'=>0 , 'status'=>1])->get();
    			$data['html']= view('frontend.search.professorPopup',compact('countryName','universities'))->render();
    		}else{
    			$Schools= School::where(['country_code'=>$countryName->iso2,'is_delete'=>0 , 'status'=>1])->get();
    			$data['html']= view('frontend.search.teacherPopup',compact('countryName','Schools'))->render();
    		}
    	}else{
    		$data['status']='error';

    	}
    	echo json_encode($data);
    }
    public function AddProfessor(Request $request)
    {
    	print_r($request->all());
    }
    public function searchFindAndRateProfessorTeacher($type='')
    {
    		$searchtype= session::get('searchtype');
	    	$countryName= session()->get('countryname');
	    	if(empty($searchtype) || empty($countryName)){
	    		return redirect()->route('frontend.home');
	    	}
    		return view('frontend.search.find-rate-university-school',compact('countryName','searchtype'));
    }
    public function findAndRateProfessorTeacherName(Request $request)
    {

		$searchtype= session::get('searchtype');
		if(empty($searchtype)){
			return redirect()->route('frontend.home');
		}
    	$dbName= $searchtype == 'teacher' ? 'schools' : 'universities';
    	$formName= $searchtype == 'teacher' ? 'School' : 'University';
    	if($request->method()=='POST'){
    		
	    	$request->validate([
	    		'ptname' =>'required',
	    		
	    	],[
	    	'ptname.required' => 'This '.$formName.' name field is required',	
	    	]);
	    	$request->ptname= $request->ptname ?? session::get('universityschoolname');
	    	$countryName= DB::table($dbName)->select('name','id')->where('name',$request->ptname)->first();
			if(empty($countryName)){
				toastr()->error(__($formName.' Not Found'));
	    		return redirect()->back();
			}
			if($request->id){
				$id= base64_decode($request->id);
		    	session()->put('universityschoolid',$id);
			}else{
				$id= session()->get('universityschoolid');
			}
            if(empty($id)){
                return redirect()->back();
            }
	    	$countryName= session()->get('countryname');
	    	session()->put('universityschoolname',$request->ptname);
	    	$universityschoolname = $request->ptname;
			if($searchtype=='teacher'){
	    	$schools= School::where('id',$id)->with('all_active_subjects')->first();
           
				return view('frontend.search.find-rate-school-teacher',compact('countryName','universityschoolname','schools'));
			}else{
	    	$university= University::where('id',$id)->with('all_active_college')->first();
				return view('frontend.search.find-rate-university-professor',compact('countryName','universityschoolname','university'));
				
			}
    	}
			else{
	    		$countryName= DB::table($dbName)->select('name','id')->where('name',session::get('universityschoolname'))->first();
	    		if(empty($countryName)){
					toastr()->error(__($formName.' Not Found'));
		    		return redirect()->back();
				}
				$universityschoolname = session::get('universityschoolname');
	    		$countryName= session()->get('countryname');

				if($searchtype=='teacher'){
		    	$schools= School::where('id',session::get('universityschoolid'))->with('all_active_subjects')->first();

					return view('frontend.search.find-rate-school-teacher',compact('countryName','universityschoolname','schools'));
				}else{
		    	$university= University::where('id',session::get('universityschoolid'))->with('all_active_college')->first();
		    		return view('frontend.search.find-rate-university-professor',compact('countryName','universityschoolname','university'));
					
				}
			}
    }
    public function ShowUniversityData(Request $request)
    {
    	if($request->method()=='POST'){
	    	$request->validate([
	    		'ptname' =>'required',
	    	],[
	    	'ptname.required' => 'This University name field is required',	
	    	]);
            if($request->id){
                session()->put('university_id',$request->id);
            }
            if($request->id==''){
                toastr()->error(__('University Not Found'));
                return redirect()->back();
            }
        }
        else{
            $request->id = session()->get('university_id');
        }
        if($request->id==''){
            toastr()->error(__('No University Selected'));
            return redirect()->route('frontend.home');
        }
		$university= University::where('name',$request->ptname)->with('all_active_college')->first();
		if(empty($university)){
			toastr()->error(__('University Not Found'));
			return redirect()->back();
		}
	    	$countryId=  session()->get('countrycode');
		
		$countryName= DB::table('countries')->where('id',$countryId)->first();
		$university= University::where('id',base64_decode($request->id))->with('all_active_college')->first();

        $teacherRatingData= UniversityRating::where('university_id',$university->id)->with('users')->orderBy('id','desc')->get();
        if(!empty($teacherRatingData) && count($teacherRatingData)>0){
            return redirect()->route('frontend.universityProfile',base64_encode($university->id));
        }else{
    		return view('frontend.rating.university-detail',compact('countryName','university'));
        }

    }
    public function AddUserTeacher(Request $request)
    {
    	$request->validate([
    		'school' => 'required',
    		'subject' => 'required',
    		'name' => 'required|min:3|max:30'
    	]);
    	$sessiondata= session::all();
    	if(isset($request->type) && $request->type=='add'){
	    	$sessiondata['universityschoolid']= $request->school;
    	}else{
    		
    	}
		$teacher= new TeacherProfile;
        $data=[];
    	$subjectData= Helper::FetchCustomData('subjects',['id'=>$request->subject]);
    	$countryData= Helper::FetchCustomData('countries',['id'=>$sessiondata['countrycode']]);
    	$schoolData= Helper::FetchCustomData('schools',['id'=>$sessiondata['universityschoolid']]);
    	$exitteacher= TeacherProfile::where(['name'=>$request->name,'school_code'=>$schoolData[0]->school_code,'country'=>$countryData[0]->iso2,'subject_code'=>$subjectData[0]->subject_code])->first();
        if($exitteacher){
        	toastr()->error(__('This teacher already exist'));
        	return redirect()->back();
        }
        $countData= TeacherProfile::lastTId($subjectData[0]->subject_code);
    	$data['name']=$request->name;
        $data['school_code']=$schoolData[0]->school_code;
        $data['country']=$countryData[0]->iso2;
        $data['subject_code']=$subjectData[0]->subject_code;
        $data['teacher_code']=$subjectData[0]->subject_code.sprintf("%02d", ($countData+1));
        $data['user_added']=1;
        $id= $teacher->create($data)->id;
        toastr()->success(__('Teacher Added Successfully'));
    	return redirect()->route('frontend.teacherProfile',base64_encode($id));
    }
    public function AddUserProfessor(Request $request)
    {
    	$request->validate([
    		'university' => 'required',
    		'college' => 'required',
    		'name' => 'required|min:3|max:30'
    	]);
    	$sessiondata= session::all();

    	if(isset($request->type) && $request->type=='add'){
	    	$sessiondata['universityschoolid']= $request->university;
    	}else{
    		
    	}
		$professor= new ProfessorProfile;
        $data=[];
    	$collegeData= Helper::FetchCustomData('colleges',['id'=>$request->college]);
    	$countryData= Helper::FetchCustomData('countries',['id'=>$sessiondata['countrycode']]);
    	$universityData= Helper::FetchCustomData('universities',['id'=>$sessiondata['universityschoolid']]);
        $countData= ProfessorProfile::lastPId($collegeData[0]->college_code);
    	$data['name']=$request->name;
        $data['university_code']=$universityData[0]->university_code;
        $data['country']=$countryData[0]->iso2;
        $data['college_code']=$collegeData[0]->college_code;
        $data['professor_code']=$collegeData[0]->college_code.sprintf("%02d", ($countData+1));
        $data['user_added']=1;

        $id= $professor->create($data)->id;

        toastr()->success(__('Professor Added Successfully'));
    	return redirect()->route('frontend.professorProfile',base64_encode($id));
    }
    public function showTeacherProfile(Request $request)
    {
    	if($request->method()=='POST'){
	    	$request->validate([
		    		'tname' => 'required'
		    ],[
		    	'tname.required'	=> 'Teacher Name is required'
		    ]);
		    if($request->id){
		    	session()->put('teacher_id',$request->id);
		    }
//				$request->id = $request->id??session()->get('teacher_id');
            if($request->id==''){
                if(Auth()->user()){
                }else{
                    toastr()->error(__('Teacher Not Found'));
                }
                return redirect()->back()->with('teacher_professor_error','test');
            }
        }
		else{
			$request->id = session()->get('teacher_id');
		}
		if($request->id==''){
			toastr()->error(__('No Teacher Selected'));
			return redirect()->route('frontend.home');
		}
    	$teacherData= TeacherProfile::select('teacher_profiles.*','countries.name as countryName')->where('teacher_profiles.id',base64_decode($request->id))->with(['all_active_school','all_active_subject'])->join('countries','teacher_profiles.country','countries.iso2')->first();
    	if(empty($teacherData)){
    		toastr()->error(__('Teacher Not Found'));
    		return redirect()->back();
    	}
        $teacherRatingData= TeacherRating::where('teacher_id',$teacherData->id)->with('users')->orderBy('id','desc')->get();
        if(!empty($teacherRatingData) && count($teacherRatingData)>0){
            return redirect()->route('frontend.teacherProfile',base64_encode($teacherData->id));
        }else{
            return view('frontend.rating.teacher-detail',compact('teacherData'));
        }
    }
    public function TeacherProfile($id)
    {
        $id= base64_decode($id);
        $teacherRatingData= TeacherRating::where(['teacher_id'=>$id,'parent_id'=>0])->with(['children','users'])->orderBy('id','desc')->get();
        $newArray=[];
        $rowcount=0;
        $schoolrange=$easyrange=$homerange=0;
        if(count($teacherRatingData)>0){
        foreach ($teacherRatingData as $key => $tvalue) 
        {
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

                if(count($tvalue['children'])>0){
                    $this->countNum=0;
                    $newArr['children']=$this->callteacherFullData($tvalue['children']);
                }


        $newArray[$key]['replyMessage'] =$newArr;
        $newArray[$key]['users'] =$teacherRatingData[$key]['users'];
        }}

        $teacherRatingData =$newArray;
        $teacherData= TeacherProfile::select('teacher_profiles.*','countries.name as countryName')->where('teacher_profiles.id',$id)->with(['all_active_school','all_active_subject'])->join('countries','teacher_profiles.country','countries.iso2')->first();
        return view('frontend.rating.teacher-detail',compact('teacherData','teacherRatingData','schoolrange','easyrange','homerange','rowcount'));
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
            if(count($value['children'])>0){
                $this->callteacherFullData($value['children']);
            }
        }
        return $this->htmlData;
    }
    // UniversityProfile
    public function UniversityProfile($id)
    {

    	$id= base64_decode($id);
        $universityRatingData= UniversityRating::where(['university_id'=>$id,'parent_id'=>0])->with(['children','users'])->orderBy('id','desc')->get();

        $newArray=[];
        $rowcount=0;
        $professor_range=$course_range=$facility_range=0;
        if(count($universityRatingData)>0){
        foreach ($universityRatingData as $key => $tvalue) 
        {
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

                if(count($tvalue['children'])>0){
                    $this->countNum=0;
                    $newArr['children']=$this->calluniversityFullData($tvalue['children']);
                }


        $newArray[$key]['replyMessage'] =$newArr;
        $newArray[$key]['users'] =$universityRatingData[$key]['users'];
        }}
        $universityRatingData =$newArray;
        $university= University::where('id',$id)->with('all_active_college')->first();
        
        $countryName= DB::table('countries')->where('iso2',$university['country_code'])->first();
        
    	return view('frontend.rating.university-detail',compact('university','universityRatingData','professor_range','course_range','countryName','facility_range','rowcount'));
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
            if(count($value['children'])>0){
                $this->calluniversityFullData($value['children']);
            }
        }
        return $this->htmlData;
    }
    public function ProfessorProfile($id)
    {

    	$id= base64_decode($id);
        $professorRatingData= ProfessorRating::where(['professor_id'=>$id,'parent_id'=>0])->with(['children','users'])->orderBy('id','desc')->get();
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

                if(count($tvalue['children'])>0){
                    $this->countNum=0;
                    $newArr['children']=$this->callprofessorFullData($tvalue['children']);
                }


        $newArray[$key]['replyMessage'] =$newArr;
        $newArray[$key]['users'] =$professorRatingData[$key]['users'];
        }}

        $professorRatingData =$newArray;
        $professorData= ProfessorProfile::select('professor_profiles.*','countries.name as countryName')->where('professor_profiles.id',$id)->with(['all_active_college','all_active_university'])->join('countries','professor_profiles.country','countries.iso2')->first();
        return view('frontend.rating.professor-detail',compact('professorData','professorRatingData','easyness_range','repeat','rate_professor','rowcount'));
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
            if(count($value['children'])>0){
                $this->callprofessorFullData($value['children']);
            }
        }
        return $this->htmlData;
    }

    public function showProfessorProfile(Request $request)
    {
    	if($request->method()=='POST'){
	    	$request->validate([
		    		'tname' => 'required'
		    ],[
		    	'tname.required'	=> 'Professor Name is required'
		    ]);
            if($request->id){
                session()->put('professor_id',$request->id);
            }
//              $request->id = $request->id??session()->get('teacher_id');
            if($request->id==''){
                if(Auth()->user()){
                }else{
                toastr()->error(__('No Professor Found'));
                }
                return redirect()->back()->with('teacher_professor_error','test');
            }
		}
		else{
			$request->id = session()->get('professor_id');
		}
            if($request->id==''){
                toastr()->error(__('No Professor Selected'));
                return redirect()->route('frontend.home');
            }
    	$professorData= ProfessorProfile::select('professor_profiles.*','countries.name as countryName')->where('professor_profiles.id',base64_decode($request->id))->with(['all_active_college','all_active_university'])->join('countries','professor_profiles.country','countries.iso2')->first();
    	if(empty($professorData)){
    		toastr()->error(__('No Professor Found'));
    		return redirect()->back();
    	}
        $professorRatingData= ProfessorRating::where('professor_id',$professorData->id)->with('users')->orderBy('id','desc')->get();
        if(!empty($professorRatingData) && count($professorRatingData)>0){
            return redirect()->route('frontend.professorProfile',base64_encode($professorData->id));
        }else{
            return view('frontend.rating.professor-detail',compact('professorData'));
        }
    }
    public function searchTeacherSubject(Request $request)
    {

    	$html='';
    	if($request->id){
    	$schoolData= Helper::FetchCustomData('schools',['id'=>$request->id]);
    	$data['lang_type'] = $schoolData[0]->lang_code;
    	$subjectData= Helper::FetchCustomData('subjects',['school_code'=>$schoolData[0]->school_code,'is_delete'=>0 , 'status'=>1]);
        $html.='<option selected="" value="" disabled="">Select School</option>';

    	foreach ($subjectData as $key => $value) {
    		$html.='<option value="'.$value->id.'">'.$value->name.'</option>';
    	}
    		$data['status']= 'Success';
    		$data['html']= $html;

    	}else{
    		$data['status']= 'Error';
    		$data['html']= $html;
    	}
    	echo json_encode($data);
    }
    public function searchUniversityCollege(Request $request)
    {

    	$html='';
    	if($request->id){
    	$universityData= Helper::FetchCustomData('universities',['id'=>$request->id]);
    	$data['lang_type'] = $universityData[0]->lang_code;
    	$collegeData= Helper::FetchCustomData('colleges',['university_code'=>$universityData[0]->university_code,'is_delete'=>0 , 'status'=>1]);
        $html.='<option selected="" value="" disabled="">Select College</option>';

    	foreach ($collegeData as $key => $value) {
    		$html.='<option value="'.$value->id.'">'.$value->name.'</option>';
    	}
    		$data['status']= 'Success';
    		$data['html']= $html;

    	}else{
    		$data['status']= 'Error';
    		$data['html']= $html;
    	}
    	echo json_encode($data);
    }
}
