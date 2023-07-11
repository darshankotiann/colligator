<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use App\University;
use App\School;
use App\User;
use App\ProfessorProfile;
use App\Country;
use App\Banner;
use App\TeacherProfile;
use App\TeacherRating;
use App\UniversityRating;
use App\ProfessorRating;
use App\GlobalSetting;
use Session;
use Auth;
use App\Helpers\Helper;
use Illuminate\Support\Facades\Validator;

class SearchController extends Controller
{
    private $htmlData;
    private $NewhtmlData;
    private $allUserData;
    private $countNum;
    private $globalData;
    private $bannerData;
    private $type;
    public function __construct(User $user)
    {
        $this->type = session()->get('locale') ?? 'en';

        // $ip= $_SERVER['REMOTE_ADDR']; 
        // $dataArray = json_decode(file_get_contents("http://www.geoplugin.net/json.gp?ip=".$ip));
        // $this->bannerData= Country::where('iso2','IN')->with('banners')->first();
        // $dataArray->geoplugin_countryCode
        $this->globalData = GlobalSetting::first();

        header('Cache-Control: no cache'); //no cache
        session_cache_limiter('private_no_expire'); // works
        //session_cache_limiter('public'); // works too
        $this->htmlData = [];
        $this->NewhtmlData = [];
        $this->allUserData = $user;
        $this->countNum = 0;
    }
    public function Country($name = '', $countryCode)
    {
        if ($name == 'university' && $this->globalData->university_rating == 0) {
            $message = 'Not Allowed to search';
            return Helper::errorMessage($message);
        }
        if ($name == 'teacher' && $this->globalData->teacher_rating == 0) {
            $message = 'Not Allowed to search';
            return Helper::errorMessage($message);
        }
        if ($name == 'professor' && $this->globalData->professor_rating == 0) {
            $message = 'Not Allowed to search';
            return Helper::errorMessage($message);
        }
        $message = 'All Country Data';
        $data['countries'] = DB::table('countries')->where('flag', 1)->get();
        $newbannerData = Country::where('iso2', $countryCode)->with('banners')->first();

        $data['banners'] = $newbannerData;
        return Helper::successMessage($message, $data);
    }
    public function searchFindAndRateProfessorTeacher(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'country_id' => 'required',
            'searchtype' => 'required',
        ]);
        if ($validator->fails()) {
            $errors = Helper::firstErrorHandling($validator->errors()->all());
            return Helper::errorMessage($errors);
        } else {
            $data['countryId'] =  $request->country_id;
            $data['searchtype'] =  $request->searchtype;

            $countryId =  $request->country_id;
            $searchtype =  $request->searchtype;

            $countryData = DB::table('countries')->where('id', $countryId)->first();
            $data['countryName'] = $countryData->name;
            if ($searchtype == 'school') {
                $data['resultData'] = DB::table('schools')->where(['country_code' => $countryData->iso2, 'is_delete' => 0, 'status' => 1])->get();
            } else {
                $data['resultData'] = DB::table('universities')->where(['country_code' => $countryData->iso2, 'is_delete' => 0, 'status' => 1])->get();
            }
            $countryCode = $request->country_code;
            $newbannerData = Country::where('iso2', $countryCode)->with('banners')->first();

            $data['banners'] = $newbannerData;
            $data['searchtype'] = $searchtype;
            $message   = 'Search Successfull';

            return Helper::successMessage($message, $data);
        }
    }
    public function findAndRateProfessorTeacherName(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'searchtype' => 'required',
            'id' => 'required',
        ]);
        if ($validate->fails()) {
            $errors = Helper::firstErrorHandling($validate->errors()->all());
            return Helper::errorMessage($errors);
        } else {
            $countryCode = $request->country_code;
            $newbannerData = Country::where('iso2', $countryCode)->with('banners')->first();

            $data['banners'] = $newbannerData;
            $searchtype = $request->searchtype;

            $dbName = $searchtype == 'teacher' ? 'schools' : 'universities';
            $formName = $searchtype == 'teacher' ? 'School' : 'University';

            $id = $request->id;
            $tableResult = DB::table($dbName)->select('name', 'id')->where('id', $id)->first();
            if (empty($tableResult)) {
                $error = $formName . ' Not Found';
                return Helper::errorMessage($error);
            }
            $data['universityschoolname'] = $tableResult->name;
            if ($searchtype == 'teacher') {
                $schools = School::where('id', $id)->with('all_active_subjects')->first();
                $data['teacherData'] = TeacherProfile::orderby('name', 'asc')->with('all_active_subject')->where(['school_code' => $schools->school_code, 'is_delete' => 0, 'status' => 1])->get();
                $data['schools'] = $schools;

                $message = 'Teacher Data Successfully retrived';
                return Helper::successMessage($message, $data);
            } else {
                $data['university'] = University::where('id', $id)->with('all_active_college')->first();
                $data['professorData'] = ProfessorProfile::orderby('name', 'asc')->with('all_active_college')->where(['university_code' => $data['university']->university_code, 'is_delete' => 0, 'status' => 1])->get();
                $message = 'University Data Successfully retrived';
                return Helper::successMessage($message, $data);
            }
        }
    }
    public function showTeacherProfile($id)
    {
        if ($this->globalData->teacher_rating == 0) {
            $error = ' Not Allow to Search';
            return Helper::errorMessage($error);
        }
        $teacherData = TeacherProfile::select('teacher_profiles.*', 'countries.name as countryName')->where('teacher_profiles.id', $id)->with(['all_active_school', 'all_active_subject'])->join('countries', 'teacher_profiles.country', 'countries.iso2')->first();
        if (empty($teacherData)) {
            $error = ' Teacher Profile not found';
            return Helper::errorMessage($error);
        } else {
            $teacherRatingData = TeacherRating::where(['teacher_id' => $id, 'parent_id' => 0, 'is_delete' => 0])->with(['children' => function ($data) {
                return $data->with('selectedUser');
            }, 'users'])->orderBy('id', 'desc')->get();
            $newArray = [];
            $rowcount = 0;
            $schoolrange = $easyrange = $homerange = 0;
            if (count($teacherRatingData) > 0) {
                foreach ($teacherRatingData as $key => $tvalue) {
                    $schoolrange += $tvalue->schoolrange;
                    $easyrange += $tvalue->easyrange;
                    $homerange += $tvalue->homerange;
                    $rowcount += 1;
                    $newArr = [];
                    $newArr['id'] = $tvalue->id;
                    $newArr['teacher_id'] = $tvalue->teacher_id;
                    $newArr['schoolrange'] = $tvalue->schoolrange;
                    $newArr['easyrange'] = $tvalue->easyrange;
                    $newArr['homerange'] = $tvalue->homerange;
                    $newArr['message'] = $tvalue->message;
                    $newArr['parent_id'] = $tvalue->parent_id;
                    $newArr['is_delete'] = $tvalue->is_delete;
                    $newArr['user_id'] = $tvalue->user_id;
                    $newArr['likes'] = $tvalue->likes;
                    $newArr['report'] = $tvalue->report;
                    $newArr['dislikes'] = $tvalue->dislikes;
                    $newArr['created_at'] = date('d-M-Y', strtotime($tvalue->created_at));
                    $newArr['updated_at'] = date('d-M-Y', strtotime($tvalue->updated_at));
                    $newArr['children'] = [];
                    $this->NewhtmlData[] = $newArr;
                    $this->htmlData = [];

                    if (count($tvalue['children']) > 0) {
                        $this->countNum = 0;
                        $x = $this->callteacherFullData($tvalue['children'], $tvalue->id);
                        usort($x, function ($v1, $v2) {
                            return strcmp($v1['id'], $v2['id']);
                        });
                        // $newArr['children']=$this->callprofessorFullData($tvalue['children'],$tvalue->id);
                        $newArr['children'] = $x;
                    }


                    $newArray[$key]['replyMessage'] = $newArr;
                    $newArray[$key]['users'] = $teacherRatingData[$key]['users'];
                }
            }
            $message = 'Teacher Data reterived successfully';
            $teacherRatingData = $newArray;
            $data['teacherData'] = $teacherData;
            $data['teacherRatingData'] = $teacherRatingData;
            $data['schoolrange'] = $schoolrange;
            $data['easyrange'] = $easyrange;
            $data['homerange'] = $homerange;
            $data['rowcount'] = $rowcount;
            $data['url'] = url()->current();
            $data['weburl'] = url('/share?type=teacher&id=' . $id);
            return Helper::successMessage($message, $data);
        }
    }
    public function callteacherFullData($data, $pid)
    {
        $newArr = [];
        foreach ($data as $tkey => $value) {
            $newArr['parent_user_name'] = '';
            if ($value->selected_user_id) {
                $user_data = $this->allUserData->where('id', $value->selected_user_id)->first();
                $newArr['parent_user_name'] = $user_data->systemNickname;
            }
            $newArr['id'] = $value->id;
            $newArr['parent_key'] = $pid;
            $newArr['teacher_id'] = $value->teacher_id;
            $newArr['schoolrange'] = $value->schoolrange;
            $newArr['easyrange'] = $value->easyrange;
            $newArr['homerange'] = $value->homerange;
            $newArr['message'] = $value->message;
            $newArr['parent_id'] = $value->parent_id;
            $newArr['is_delete'] = $value->is_delete;
            $newArr['user_id'] = $value->user_id;
            $newArr['likes'] = $value->likes;
            $newArr['report'] = $value->report;
            $newArr['dislikes'] = $value->dislikes;
            $newArr['created_at'] = date('d-M-Y', strtotime($value->created_at));
            $newArr['updated_at'] = date('d-M-Y', strtotime($value->updated_at));
            $newArr['report'] = $value->report;
            $newArr['userData'] = $this->allUserData->where('id', $value->user_id)->first();
            $newArr['selected_user'] = $value->selectedUser;

            $this->htmlData[$this->countNum] = $newArr;
            $this->countNum += 1;
            if (count($value['children']) > 0) {
                $this->callteacherFullData($value['children'], $pid);
            }
        }
        return $this->htmlData;
    }
    public function AddTeacherProfessor(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'country_id' => 'required',
            'type' => 'required',
            'id' => 'required',
        ]);
        if ($validate->fails()) {
            $errors = Helper::firstErrorHandling($validate->errors()->all());
            return Helper::errorMessage($errors);
        } else {
            $type = $request->type;
            $id = $request->id;
            $data = [];
            if (auth()->user()) {
                $data['countryName'] = DB::table('countries')->where('id', $request->country_id)->first();
                if ($type == 'professor') {
                    $data['university'] = University::where('id', $id)->with('all_active_college')->first();
                } else {
                    $data['school'] = School::where('id', $id)->with('all_active_subjects')->first();
                }
                $message = 'Data reterived successfully';
                return Helper::successMessage($message, $data);
            } else {
                $message = 'Login Required';
                return Helper::errorMessage($message);
            }
        }
    }
    // UniversityProfile
    public function showUniversityProfile($id)
    {
        if ($this->globalData->university_rating == 0) {
            $error = ' Not Allow to Search';
            return Helper::errorMessage($error);
        }

        $university = University::where('id', $id)->with('all_active_college')->first();
        if (empty($university)) {
            $error = ' University Profile not found';
            return Helper::errorMessage($error);
        } else {

            $universityRatingData = UniversityRating::where(['university_id' => $id, 'parent_id' => 0, 'is_delete' => 0])->with([
                'children' => function ($data) {
                    return $data->with('selectedUser');
                }, 'users'
            ])->orderBy('id', 'desc')->get();
            $newArray = [];
            $rowcount = 0;
            $professor_range = $course_range = $facility_range = 0;
            if (count($universityRatingData) > 0) {
                foreach ($universityRatingData as $key => $tvalue) {
                    $professor_range += $tvalue->professor_range;
                    $course_range += $tvalue->course_range;
                    $facility_range += $tvalue->facility_range;
                    $rowcount += 1;
                    $newArr = [];
                    $newArr['id'] = $tvalue->id;
                    $newArr['university_id'] = $tvalue->university_id;
                    $newArr['professor_range'] = $tvalue->professor_range;
                    $newArr['course_range'] = $tvalue->course_range;
                    $newArr['facility_range'] = $tvalue->facility_range;
                    $newArr['message'] = $tvalue->message;
                    $newArr['parent_id'] = $tvalue->parent_id;
                    $newArr['is_delete'] = $tvalue->is_delete;
                    $newArr['user_id'] = $tvalue->user_id;
                    $newArr['likes'] = $tvalue->likes;
                    $newArr['report'] = $tvalue->report;
                    $newArr['dislikes'] = $tvalue->dislikes;
                    $newArr['created_at'] = date('d-M-Y', strtotime($tvalue->created_at));
                    $newArr['updated_at'] = date('d-M-Y', strtotime($tvalue->updated_at));
                    $newArr['children'] = [];
                    $this->NewhtmlData[] = $newArr;
                    $this->htmlData = [];

                    if (count($tvalue['children']) > 0) {
                        $this->countNum = 0;
                        $x = $this->calluniversityFullData($tvalue['children'], $tvalue->id);
                        usort($x, function ($v1, $v2) {
                            return strcmp($v1['id'], $v2['id']);
                        });
                        // $newArr['children']=$this->callprofessorFullData($tvalue['children'],$tvalue->id);
                        $newArr['children'] = $x;
                    }


                    $newArray[$key]['replyMessage'] = $newArr;
                    $newArray[$key]['users'] = $universityRatingData[$key]['users'];
                }
            }
            $universityRatingData = $newArray;

            $countryName = DB::table('countries')->where('iso2', $university['country_code'])->first();
            $data['university'] = $university;
            $data['universityRatingData'] = $universityRatingData;
            $data['professor_range'] = $professor_range;
            $data['course_range'] = $course_range;
            $data['countryName'] = $countryName;
            $data['facility_range'] = $facility_range;
            $data['rowcount'] = $rowcount;
            $data['url'] = url()->current();
            $data['weburl'] = url('/share?type=university&id=' . $id);
            $message = 'University Data reterived successfully';

            return Helper::successMessage($message, $data);
        }
    }

    public function calluniversityFullData($data, $pid)
    {
        $newArr = [];
        foreach ($data as $tkey => $value) {
            $newArr['parent_user_name'] = '';
            if ($value->selected_user_id) {
                $user_data = $this->allUserData->where('id', $value->selected_user_id)->first();
                $newArr['parent_user_name'] = $user_data->systemNickname;
            }
            $newArr['id'] = $value->id;
            $newArr['parent_key'] = $pid;
            $newArr['university_id'] = $value->university_id;
            $newArr['professor_range'] = $value->professor_range;
            $newArr['course_range'] = $value->course_range;
            $newArr['facility_range'] = $value->facility_range;
            $newArr['message'] = $value->message;
            $newArr['parent_id'] = $value->parent_id;
            $newArr['is_delete'] = $value->is_delete;
            $newArr['user_id'] = $value->user_id;
            $newArr['likes'] = $value->likes;
            $newArr['report'] = $value->report;
            $newArr['dislikes'] = $value->dislikes;
            $newArr['created_at'] = date('d-M-Y', strtotime($value->created_at));
            $newArr['updated_at'] = date('d-M-Y', strtotime($value->updated_at));
            $newArr['report'] = $value->report;
            $newArr['userData'] = $this->allUserData->where('id', $value->user_id)->first();
            $newArr['selected_user'] = $value->selectedUser;

            $this->htmlData[$this->countNum] = $newArr;
            $this->countNum += 1;
            if (count($value['children']) > 0) {
                $this->calluniversityFullData($value['children'], $pid);
            }
        }
        return $this->htmlData;
    }
    public function showProfessorProfile($id)
    {
        if ($this->globalData->professor_rating == 0) {
            $error = ' Not Allow to Search';
            return Helper::errorMessage($error);
        }
        $professorData = ProfessorProfile::select('professor_profiles.*', 'countries.name as countryName')->where('professor_profiles.id', $id)->with(['all_active_college', 'all_active_university'])->join('countries', 'professor_profiles.country', 'countries.iso2')->first();
        if (empty($professorData)) {
            $error = ' Professor Profile not found';
            return Helper::errorMessage($error);
        } else {
            $professorRatingData = ProfessorRating::where(['professor_id' => $id, 'parent_id' => 0, 'is_delete' => 0])->with(['children' => function ($data) {
                return $data->with('selectedUser');
            }, 'users'])->orderBy('id', 'desc')->get();
            $newArray = [];
            $rowcount = 0;
            $easyness_range = $repeat = $rate_professor = 0;
            if (!empty($professorRatingData[0])) {
                foreach ($professorRatingData as $key => $tvalue) {
                    $easyness_range += $tvalue->easyness_range;
                    $repeat += ($tvalue->repeat == 1 ? $tvalue->repeat : 0);
                    $rate_professor += $tvalue->rate_professor;
                    $rowcount += 1;
                    $newArr = [];
                    $newArr['id'] = $tvalue->id;
                    $newArr['professor_id'] = $tvalue->professor_id;
                    $newArr['course_code'] = $tvalue->course_code;
                    $newArr['study_type'] = $tvalue->study_type;
                    $newArr['easyness_range'] = $tvalue->easyness_range;
                    $newArr['repeat'] = $tvalue->repeat;
                    $newArr['rate_professor'] = $tvalue->rate_professor;
                    $newArr['textbook'] = $tvalue->textbook;
                    $newArr['attendance'] = $tvalue->attendance;
                    $newArr['grade'] = $tvalue->grade;
                    $newArr['message'] = $tvalue->message;
                    $newArr['parent_id'] = $tvalue->parent_id;
                    $newArr['is_delete'] = $tvalue->is_delete;
                    $newArr['user_id'] = $tvalue->user_id;
                    $newArr['likes'] = $tvalue->likes;
                    $newArr['report'] = $tvalue->report;
                    $newArr['dislikes'] = $tvalue->dislikes;
                    $newArr['created_at'] = date('d-M-Y', strtotime($tvalue->created_at));
                    $newArr['updated_at'] = date('d-M-Y', strtotime($tvalue->updated_at));
                    $newArr['children'] = [];
                    $this->NewhtmlData[] = $newArr;
                    $this->htmlData = [];

                    if (count($tvalue['children']) > 0) {
                        $this->countNum = 0;
                        $x = $this->callprofessorFullData($tvalue['children'], $tvalue->id);
                        usort($x, function ($v1, $v2) {
                            return strcmp($v1['id'], $v2['id']);
                        });
                        // $newArr['children']=$this->callprofessorFullData($tvalue['children'],$tvalue->id);
                        $newArr['children'] = $x;
                    }
                    $newArray[$key]['replyMessage'] = $newArr;
                    $newArray[$key]['users'] = $professorRatingData[$key]['users'];
                }
            }
            $professorRatingData = $newArray;
            $data['professorData'] = $professorData;
            $data['professorRatingData'] = $professorRatingData;
            $data['easyness_range'] = $easyness_range;
            $data['repeat'] = $repeat;
            $data['rate_professor'] = $rate_professor;
            $data['rowcount'] = $rowcount;
            $data['url'] = url()->current();
            $data['weburl'] = url('/share?type=professor&id=' . $id);
            $message = 'Professor Data reterived successfully';
            return Helper::successMessage($message, $data);
        }
    }
    public function callprofessorFullData($data, $pid)
    {
        $newArr = [];
        foreach ($data as $tkey => $value) {
            $newArr['parent_user_name'] = '';
            if ($value->selected_user_id) {
                $user_data = $this->allUserData->where('id', $value->selected_user_id)->first();
                $newArr['parent_user_name'] = $user_data->systemNickname;
            }
            $newArr['id'] = $value->id;
            $newArr['parent_key'] = $pid;
            $newArr['professor_id'] = $value->professor_id;
            $newArr['course_code'] = $value->course_code;
            $newArr['study_type'] = $value->study_type;
            $newArr['easyness_range'] = $value->easyness_range;
            $newArr['repeat'] = $value->repeat;
            $newArr['rate_professor'] = $value->rate_professor;
            $newArr['textbook'] = $value->textbook;
            $newArr['attendance'] = $value->attendance;
            $newArr['grade'] = $value->grade;
            $newArr['message'] = $value->message;
            $newArr['parent_id'] = $value->parent_id;
            $newArr['is_delete'] = $value->is_delete;
            $newArr['user_id'] = $value->user_id;
            $newArr['likes'] = $value->likes;
            $newArr['report'] = $value->report;
            $newArr['dislikes'] = $value->dislikes;
            $newArr['created_at'] = date('d-M-Y', strtotime($value->created_at));
            $newArr['updated_at'] = date('d-M-Y', strtotime($value->updated_at));
            $newArr['report'] = $value->report;
            $newArr['userData'] = $this->allUserData->where('id', $value->user_id)->first();
            $newArr['selected_user'] = $value->selectedUser;

            $this->htmlData[$this->countNum] = $newArr;
            $this->countNum += 1;
            if (count($value['children']) > 0) {
                $this->callprofessorFullData($value['children'], $pid);
            }
        }
        return $this->htmlData;
    }

    public function AddUserTeacher(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'country_id' => 'required',
            'school_id' => 'required',
            'subject_id' => 'required',
            'name' => 'required|min:3|max:60|regex:/^[\pL\s\-]+$/u'
        ]);
        if ($validate->fails()) {
            $errors = Helper::firstErrorHandling($validate->errors()->all());
            return Helper::errorMessage($errors);
        } else {
            $teacher = new TeacherProfile;
            $data = [];
            $subjectData = Helper::FetchCustomData('subjects', ['id' => $request->subject_id]);
            $countryData = Helper::FetchCustomData('countries', ['id' => $request->country_id]);
            $schoolData = Helper::FetchCustomData('schools', ['id' => $request->school_id]);
            $exitteacher = TeacherProfile::where(['name' => $request->name, 'school_code' => $schoolData[0]->school_code, 'country' => $countryData[0]->iso2, 'subject_code' => $subjectData[0]->subject_code])->first();
            if ($exitteacher) {
                $message = 'This teacher already exist';
                return Helper::errorMessage($message);
            }
            $countData = TeacherProfile::lastTId($subjectData[0]->subject_code);
            $data['name'] = $request->name;
            $data['school_code'] = $schoolData[0]->school_code;
            $data['country'] = $countryData[0]->iso2;
            $data['subject_code'] = $subjectData[0]->subject_code;
            $data['teacher_code'] = $subjectData[0]->subject_code . sprintf("%02d", ($countData + 1));
            $data['user_added'] = 1;
            $id = $teacher->create($data)->id;
            $message = 'Teacher Added Successfully';
            $data['id'] = $id;
            return Helper::successMessage($message, $data);
        }
    }
    public function AddUserProfessor(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'university_id' => 'required',
            'college_id' => 'required',
            'country_id' => 'required',
            'name' => 'required|min:3|max:60|regex:/^[\pL\s\-]+$/u'
        ]);
        if ($validate->fails()) {
            $errors = Helper::firstErrorHandling($validate->errors()->all());
            return Helper::errorMessage($errors);
        } else {
            $collegeData = Helper::FetchCustomData('colleges', ['id' => $request->college_id]);
            $countryData = Helper::FetchCustomData('countries', ['id' => $request->country_id]);
            $universityData = Helper::FetchCustomData('universities', ['id' => $request->university_id]);

            $oldData = ProfessorProfile::where(['university_code' => $universityData[0]->university_code, 'name' => $request->name, 'country' => $countryData[0]->iso2, 'college_code' => $collegeData[0]->college_code])->first();
            if (!empty($oldData)) {
                if ($oldData->is_delete == 1) {
                    $message = 'Professor Profile Deleted By Admin';
                    return Helper::errorMessage($message);
                }
                if ($oldData->status == 0) {
                    $message = 'Professor Profile Deactivated By Admin';
                    return Helper::errorMessage($message);
                }
                if ($oldData->is_delete == 0 && $oldData->status == 1) {
                    $message = 'Professor Profile Already Exist';
                    return Helper::errorMessage($message);
                }
            } else {
                $professor = new ProfessorProfile;
                $data = [];
                $countData = ProfessorProfile::lastPId($collegeData[0]->college_code);
                $data['name'] = $request->name;
                $data['university_code'] = $universityData[0]->university_code;
                $data['country'] = $countryData[0]->iso2;
                $data['college_code'] = $collegeData[0]->college_code;
                $data['professor_code'] = $collegeData[0]->college_code . sprintf("%02d", ($countData + 1));
                $data['user_added'] = 1;
                $data['status'] = 1;

                $id = $professor->create($data)->id;
                $message = 'Professor Added Successfully';
                $data['id'] = $id;
                return Helper::successMessage($message, $data);
            }
        }
    }
}
