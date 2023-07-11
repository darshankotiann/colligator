<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use App\Country;
use DB;
use App\ProfessorProfile;
use App\TeacherProfile;
use App\University;
use App\Permissions;
use Auth;

class ReportStaticsController extends Controller
{
    public function userStatics($limit=25)
    {
        session()->put(['oldUrl'=>url()->current()]);
    	$countries= Country::where('flag',1)->get();

        $permissions=[];

        if(Auth::guard('admin')->user()->role==2){
             $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'ReportStatics'])->first();
        }

        $users= User::withCount(['ProfessorReview','ProfessorComment'])->orderBy('created_at','DESC')->paginate($limit);
		if(!empty($users)){
			foreach($users as $key => $user){
				$users[$key]->countryName = '';
                if(!empty($user->ip)){
					// $dataArray = json_decode(file_get_contents("http://www.geoplugin.net/json.gp?ip=".$user->ip));
				    // $users[$key]->countryName= $dataArray->geoplugin_countryName;
                }
			}
		}
		return view('admin.report.userlist',compact('users','permissions','countries','limit'));

    }
    public function professorStatics($limit=25)
    {
        session()->put(['oldUrl'=>url()->current()]);

        $permissions=[];

        if(Auth::guard('admin')->user()->role==2){
             $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'ReportStatics'])->first();
        }
    	$countries= Country::where('flag',1)->get();
    	$professor= ProfessorProfile::select('professor_profiles.*',DB::raw('(SELECT rate_professor FROM `professor_ratings`  WHERE professor_id = professor_profiles.id ORDER BY `rate_professor` DESC limit 1 ) as rateprofessor'),DB::raw('(SELECT name FROM `countries`  WHERE iso2 = professor_profiles.country) as countryName') )->withCount('ProfessorReviewMost')->where('is_delete',0)->orderBy('professor_review_most_count','DESC')->paginate($limit);


		return view('admin.report.professorstatlist',compact('professor','countries','permissions','limit'));

    }
    public function teacherStatics($limit=25)
    {
        session()->put(['oldUrl'=>url()->current()]);

        $permissions=[];

        if(Auth::guard('admin')->user()->role==2){
             $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'ReportStatics'])->first();
        }

    	$countries= Country::where('flag',1)->get();
    	$teachers= TeacherProfile::select('teacher_profiles.*',DB::raw('(SELECT schoolrange FROM `teacher_ratings`  WHERE teacher_id = teacher_profiles.id ORDER BY `schoolrange` DESC limit 1 ) as rateteacher'),DB::raw('(SELECT name FROM `countries`  WHERE iso2 = teacher_profiles.country) as countryName') )->withCount('TeacherReviewMost')->where('is_delete',0)->orderBy('teacher_review_most_count','DESC')->paginate($limit);
    	return view('admin.report.teacherstatlist',compact('teachers','countries','permissions','limit'));

    }
    public function universityStatics($limit=25)
    {
        session()->put(['oldUrl'=>url()->current()]);
        
        $permissions=[];

        if(Auth::guard('admin')->user()->role==2){
             $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'ReportStatics'])->first();
        }

    	$countries= Country::where('flag',1)->get();

    	$universities= University::select('universities.*',DB::raw('(SELECT facility_range FROM `university_ratings`  WHERE university_id = universities.id ORDER BY `facility_range` DESC limit 1 ) as rateuniversity'),'countries.name as countryName')->join('countries','universities.country_code','countries.iso2')->withCount('universityReviewMost')->where('is_delete',0)->orderBy('university_review_most_count','DESC')->paginate($limit);
    	return view('admin.report.universitystatlist',compact('universities','countries','permissions','limit'));

    }
    public function userStaticsOrder(Request $request, $countryName, $order, $limit=25)
    {
		$countries= Country::where('flag',1)->get();
		
    	// $order= $request->options;
    	// $countryName= $request->country;
		
		$users= User::withCount(['ProfessorReview'])->orderBy('created_at','DESC')->paginate($limit);
    	
		if($order=='reviewAsc'){
    		$users= User::withCount(['ProfessorReview'])->orderBy('professor_review_count','ASC')->paginate($limit);
    	}if($order=='reviewDesc'){
    		$users= User::withCount(['ProfessorReview'])->orderBy('professor_review_count','DESC')->paginate($limit);
    	}
    	if($order=='commentAsc'){
    		$users= User::withCount(['ProfessorComment'])->orderBy('professor_comment_count','ASC')->paginate($limit);
    	}if($order=='commentDesc'){
    		$users= User::withCount(['ProfessorComment'])->orderBy('professor_comment_count','DESC')->paginate($limit);
    	}
		if(!empty($countryName)){
			$newUser = [];
			foreach($users as $key => $user){
				$users[$key]->countryName = '';
                if(!empty($user->ip)){
					$dataArray = json_decode(file_get_contents("http://www.geoplugin.net/json.gp?ip=".$user->ip));
				    $users[$key]->countryName= $dataArray->geoplugin_countryName;
					if($dataArray->geoplugin_countryName == $countryName){
						$newUser[] = $users[$key]; 
					}
				}
			}
			$users = $newUser;
		}
    	return view('admin.report.userlist',compact('users','order','countries','countryName','limit'));
    }
    public function professorStaticsOrder(Request $request, $countryId, $order, $limit=25)
    {
    	$countries= Country::where('flag',1)->get();
    	// $order= $request->options;
    	// $countryId= $request->country;

    	if($order=='topRatedDesc'){
    		$professor= ProfessorProfile::select('professor_profiles.*',DB::raw('(SELECT AVG(rate_professor) FROM `professor_ratings`  WHERE professor_id = professor_profiles.id ORDER BY `rate_professor` DESC ) as rateprofessor') )
    		 ->where(function($professor) use ($countryId)  {
            if(!empty($countryId)) {
                $professor->where('country', $countryId);
            }
         })->withCount('ProfessorReviewMost')->where('is_delete',0)->orderBy('rateprofessor','DESC')->paginate($limit);
    	}if($order=='topRatedAsc'){
    		$professor=     	ProfessorProfile::select('professor_profiles.*',DB::raw('(SELECT AVG(rate_professor) FROM `professor_ratings`  WHERE professor_id = professor_profiles.id ORDER BY `rate_professor` DESC limit 1 ) as rateprofessor') )
    		 ->where(function($professor) use ($countryId)  {
            if(!empty($countryId)) {
                $professor->where('country', $countryId);
            }
         })->withCount('ProfessorReviewMost')->where('is_delete',0)->orderBy('rateprofessor','ASC')->paginate($limit);
    		 
    	}
    	if($order=='reviewAsc'){
			$professor= ProfessorProfile::select('professor_profiles.*',DB::raw('(SELECT AVG(rate_professor) FROM `professor_ratings`  WHERE professor_id = professor_profiles.id ORDER BY `rate_professor` DESC limit 1 ) as rateprofessor') )
    		 ->where(function($professor) use ($countryId)  {
            if(!empty($countryId)) {
                $professor->where('country', $countryId);
            }
         })->withCount('ProfessorReviewMost')->where('is_delete',0)->orderBy('professor_review_most_count','ASC')->paginate($limit);
    	}if($order=='reviewDesc'){
    		$professor= ProfessorProfile::select('professor_profiles.*',DB::raw('(SELECT AVG(rate_professor) FROM `professor_ratings`  WHERE professor_id = professor_profiles.id ORDER BY `rate_professor` DESC limit 1 ) as rateprofessor') )
    		 ->where(function($professor) use ($countryId)  {
            if(!empty($countryId)) {
                $professor->where('country', $countryId);
            }
         })->withCount('ProfessorReviewMost')->where('is_delete',0)->orderBy('professor_review_most_count','DESC')->paginate($limit);
    	}
    	return view('admin.report.professorstatlist',compact('professor','order','countries','countryId','limit'));
    }
    public function teacherStaticsOrder(Request $request, $countryId, $order, $limit=25)
    {
    	$countries= Country::where('flag',1)->get();
    	// $order= $request->options;
    	// $countryId= $request->country;
    	if($order=='topRatedDesc'){
    		$teachers=TeacherProfile::select('teacher_profiles.*',DB::raw('(SELECT AVG(schoolrange) FROM `teacher_ratings`  WHERE teacher_id = teacher_profiles.id ORDER BY `schoolrange` DESC limit 1 ) as rateteacher') )
    		 ->where(function($teachers) use ($countryId)  {
            if(!empty($countryId)) {
                $teachers->where('country', $countryId);
            }
         })
  		->withCount('TeacherReviewMost')->where('is_delete',0)->orderBy('rateteacher','DESC')->paginate($limit);
    	}if($order=='topRatedAsc'){
    		$teachers=TeacherProfile::select('teacher_profiles.*',DB::raw('(SELECT AVG(schoolrange) FROM `teacher_ratings`  WHERE teacher_id = teacher_profiles.id ORDER BY `schoolrange` DESC limit 1 ) as rateteacher') )
    		 ->where(function($teachers) use ($countryId)  {
            if(!empty($countryId)) {
                $teachers->where('country', $countryId);
            }
         })
  		->withCount('TeacherReviewMost')->where('is_delete',0)->orderBy('rateteacher','ASC')->paginate($limit);
    	}
    	if($order=='reviewAsc'){
    		$teachers=TeacherProfile::select('teacher_profiles.*',DB::raw('(SELECT AVG(schoolrange) FROM `teacher_ratings`  WHERE teacher_id = teacher_profiles.id ORDER BY `schoolrange` DESC limit 1 ) as rateteacher') )
    		 ->where(function($teachers) use ($countryId)  {
            if(!empty($countryId)) {
                $teachers->where('country', $countryId);
            }
         })
  		->withCount('TeacherReviewMost')->where('is_delete',0)->orderBy('teacher_review_most_count','ASC')->paginate($limit);
    	}if($order=='reviewDesc'){
    		$teachers=TeacherProfile::select('teacher_profiles.*',DB::raw('(SELECT AVG(schoolrange) FROM `teacher_ratings`  WHERE teacher_id = teacher_profiles.id ORDER BY `schoolrange` DESC limit 1 ) as rateteacher') )
    		 ->where(function($teachers) use ($countryId)  {
            if(!empty($countryId)) {
                $teachers->where('country', $countryId);
            }
         })
  		->withCount('TeacherReviewMost')->where('is_delete',0)->orderBy('teacher_review_most_count','DESC')->paginate($limit);
    	}
    	return view('admin.report.teacherstatlist',compact('teachers','order','countries','countryId','limit'));
    }
    public function universityStaticsOrder(Request $request, $countryId, $order, $limit=25)
    {
    	$countries= Country::where('flag',1)->get();
    	// $order= $request->options;
    	// $countryId= $request->country;
    	if($order=='topRatedDesc'){
    		$universities=	University::select('universities.*',DB::raw('(SELECT AVG(facility_range) FROM `university_ratings`  WHERE university_id = universities.id ORDER BY `facility_range` DESC limit 1 ) as rateuniversity'),'countries.name as countryName')->join('countries','universities.country_code','countries.iso2')
			->where(function($universities) use ($countryId)  {
	            if(!empty($countryId)) {
	                $universities->where('country_code', $countryId);
	            }
         	})->withCount('universityReviewMost')->where('is_delete',0)->orderBy('rateuniversity','DESC')->paginate($limit);
    	}
    	if($order=='topRatedAsc'){
    		$universities=	University::select('universities.*',DB::raw('(SELECT AVG(facility_range) FROM `university_ratings`  WHERE university_id = universities.id ORDER BY `facility_range` DESC limit 1 ) as rateuniversity'),'countries.name as countryName')->join('countries','universities.country_code','countries.iso2','left')->where(function($universities) use ($countryId)  {
            if(!empty($countryId)) {
                $universities->where('country_code', $countryId);
            }
         })->withCount('universityReviewMost')->where('is_delete',0)->orderBy('rateuniversity','ASC')->paginate($limit);
    	}
    	if($order=='reviewAsc'){
	    	$universities=	University::select('universities.*',DB::raw('(SELECT AVG(facility_range) FROM `university_ratings`  WHERE university_id = universities.id ORDER BY `facility_range` DESC limit 1 ) as rateuniversity'),'countries.name as countryName')->join('countries','universities.country_code','countries.iso2')
			->where(function($universities) use ($countryId)  {
	            if(!empty($countryId)) {
	                $universities->where('country_code', $countryId);
	            }
	        })->withCount('universityReviewMost')->where('is_delete',0)->orderBy('university_review_most_count','ASC')->paginate($limit);
    	}
    	if($order=='reviewDesc'){
	    	$universities=	University::select('universities.*',DB::raw('(SELECT AVG(facility_range) FROM `university_ratings`  WHERE university_id = universities.id ORDER BY `facility_range` DESC limit 1 ) as rateuniversity'),'countries.name as countryName')->join('countries','universities.country_code','countries.iso2')
			->where(function($universities) use ($countryId)  {
	            if(!empty($countryId)) {
	                $universities->where('country_code', $countryId);
	            }
	        })->withCount('universityReviewMost')->where('is_delete',0)->orderBy('university_review_most_count','DESC')->paginate($limit);
    	}
    	return view('admin.report.universitystatlist',compact('universities','order','countries','countryId'));
    }
}
