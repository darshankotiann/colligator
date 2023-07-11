<?php

namespace App\Http\Controllers\Frontend;

use DB;
use Auth;
// use session;
use App\User;
use App\Banner;
use App\School;
use App\Country;
use App\AbuseWords;
use App\University;
use App\GlobalSetting;
use App\TeacherRating;
use App\Helpers\Helper;
use App\TeacherProfile;
use App\ProfessorRating;
use App\ProfessorProfile;
use App\UniversityRating;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Session;

class SearchController extends Controller
{
    private $htmlData;
    private $NewhtmlData;
    private $allUserData;
    private $countNum;
    private $globalData;
    private $bannerData;
    private $type;
    public function __construct(User $user, Request $request)
    {
        $this->type = session()->get('locale') ?? 'en';

        $ip = $_SERVER['REMOTE_ADDR'];
        $dataArray = json_decode(file_get_contents("http://www.geoplugin.net/json.gp?ip=" . $ip));
        // dd($dataArray);

        // $this->AddfindAndRate = $countryName= DB::table('countries')->select('name','id','iso2')->where('name',$request->country)->first();
        // dd($this->AddfindAndRate);

        // $this->bannerData= Banner::where('is_active',1)->with('country:name,id,iso2')->where('country_code','KW');

        // $this->bannerData= Banner::where('is_active',1)->with('country:name,id,iso2')->where('country_code',$dataArray->geoplugin_countryCode);

        $this->bannerData = Banner::where('is_active', 1)->with('country:name,id,iso2');

        // $ISO2=  $dataArray->geoplugin_countryCode
        $this->globalData = GlobalSetting::first();
        header('Cache-Control: no cache'); //no cache
        session_cache_limiter('private_no_expire'); // works
        //session_cache_limiter('public'); // works too
        $this->htmlData = [];
        $this->NewhtmlData = [];
        $this->allUserData = $user;
        $this->countNum = 0;
    }
    public function Country($name = '')
    {
        if ($name == 'university' && $this->globalData->university_rating == 0) {
            toastr()->error('Not Allowed to search');
            return redirect()->back();
        }
        if ($name == 'teacher' && $this->globalData->teacher_rating == 0) {
            toastr()->error('Not Allowed to search');
            return redirect()->back();
        }
        if ($name == 'professor' && $this->globalData->professor_rating == 0) {
            toastr()->error('Not Allowed to search');
            return redirect()->back();
        }
        Session()->put('searchtype', $name);
        $countries = DB::table('countries')->where('flag', 1)->get();
        $banners = $this->bannerData->where('type', 1)->first();
        $type = session()->get('locale') ?? 'en';
        return view('frontend.search.country', compact('countries', 'banners', 'type'));
    }
    public function SearchCountryData(Request $request)
    {
        $search = $request->get('country');
        $result = DB::table('countries')->where('name', 'LIKE', '%' . $search . '%')->where('flag', 1)->get();
        return response()->json($result);
    }
    public function SearchUniversitySchoolData(Request $request)
    {
        $searchtype = session::get('searchtype');
        if (empty($searchtype)) {
            return redirect()->route('frontend.home');
        }
        $search = $request->get('search');
        $countryId =  session()->get('countrycode');
        $countryName = DB::table('countries')->where('id', $countryId)->first();

        if ($searchtype == 'teacher') {
            $result = DB::table('schools')->where('name', 'LIKE', '%' . $search . '%')->where(['country_code' => $countryName->iso2, 'is_delete' => 0, 'status' => 1])->limit(5)->get();
        } else {
            $result = DB::table('universities')->where('name', 'LIKE', '%' . $search . '%')->where(['country_code' => $countryName->iso2, 'is_delete' => 0, 'status' => 1])->limit(5)->get();
        }
        $response = array();
        foreach ($result as $autocomplate) {
            $html = $autocomplate->name;
            $response[] = array("value" => $autocomplate->name, "label" => $html, "desc" => base64_encode($autocomplate->id));
        }
        echo json_encode($response);
    }
    public function SearchSchoolTeacherData(Request $request)
    {
        $search = $request->get('search');
        $schooldata = School::where('id', session::get('universityschoolid'))->first();
        $autocomplate = TeacherProfile::orderby('name', 'asc')->with('all_active_subject')->where('name', 'like', '%' . $search . '%')->where(['school_code' => $schooldata->school_code, 'is_delete' => 0, 'status' => 1])->limit(5)->get();
        $response = array();
        foreach ($autocomplate as $autocomplate) {
            $html = $autocomplate->subject->name;
            $id = $autocomplate->id;
            $response[] = array("value" => $autocomplate->name, "label" => $html, "desc" => base64_encode($id));
        }
        echo json_encode($response);
    }
    public function SearchUniversityProfessorData(Request $request)
    {
        $search = $request->get('search');
        $university_data = University::where('id', session::get('universityschoolid'))->first();
        $autocomplate = ProfessorProfile::orderby('name', 'asc')->with('all_active_college')->where('name', 'like', '%' . $search . '%')->where(['university_code' => $university_data->university_code, 'is_delete' => 0, 'status' => 1])->limit(5)->get();
        $response = array();
        foreach ($autocomplate as $autocomplate) {
            $html = $autocomplate->all_active_college->name ?? '';
            $id = $autocomplate->id;
            $response[] = array("value" => $autocomplate->name, "label" => $html, "desc" => base64_encode($id));
        }
        echo json_encode($response);
    }
    public function AddfindAndRate(Request $request)
    {

        $searchtype = session::get('searchtype');

        if ($searchtype == '') {
            return redirect()->route('frontend.home');
        } else {
            $request->validate(
                [
                    'country' => 'required',
                ],
                ['country.required' => 'Please select country']
            );
            $countryName = DB::table('countries')->select('name', 'id', 'iso2')->where('name', $request->country)->first();
            // $countryData = Country::where('iso2', 'KW')->first();

            // if ($countryData) {
            //    $this->bannerData = Banner::where('is_active', 1)->with('country:name,id,iso2')->where('country_code', $countryData);
            //    // dd($this->bannerData);
            // }
            if (empty($countryName)) {
                toastr()->error(__('Country not found'));
                return redirect()->back();
            }
            $request->session()->put('countrycode', $countryName->id);
            $request->session()->put('countryname', $countryName->name);
        }
        $type = session()->get('locale') ?? 'en';

        if ($searchtype == 'university') {
            // $banners= $this->bannerData->where('type',2)->first();
            $universities = DB::table('universities')->where(['country_code' => $countryName->iso2, 'is_delete' => 0, 'status' => 1])->get();
            $banners = DB::table('banners')->where(['country_code' => $countryName->iso2, 'status' => 1])->where('type', 2)->first();
            return view('frontend.search.searchuniversity-school', compact('countryName', 'universities', 'banners', 'type'));
        }
        if ($searchtype == 'teacher') {
            $banners = $this->bannerData->where('type', 5)->first();
            return redirect()->route('frontend.search_find_rate_professor_teacher', 'teacher');
        }
        if ($searchtype == 'professor') {
            $banners = $this->bannerData->where('type', 3)->first();
            return redirect()->route('frontend.search_find_rate_professor_teacher', 'professor');
        }
        return view('frontend.search.findAddBtn', compact('searchtype', 'banners', 'type'));
    }
    public function AddTeacherProfessor(Request $request)
    {
        $type = $request->type;
        $data = [];
        if (Auth::user()) {
            $data['status'] = 'success';
            $countryId =  session()->get('countrycode');
            if (empty($countryId)) {
                return redirect()->route('frontend.home');
            }
            $countryName = DB::table('countries')->where('id', $countryId)->first();
            if ($type == 'professor') {
                $universities = University::where(['country_code' => $countryName->iso2, 'is_delete' => 0, 'status' => 1])->get();
                $data['html'] = view('frontend.search.professorPopup', compact('countryName', 'universities'))->render();
            } else {
                $Schools = School::where(['country_code' => $countryName->iso2, 'is_delete' => 0, 'status' => 1])->get();
                $data['html'] = view('frontend.search.teacherPopup', compact('countryName', 'Schools'))->render();
            }
        } else {
            $data['status'] = 'error';
        }
        echo json_encode($data);
    }
    public function AddProfessor(Request $request)
    {
        print_r($request->all());
    }
    public function searchFindAndRateProfessorTeacher($type = '')
    {
        $searchtype = session::get('searchtype');

        $countryName = session()->get('countryname');

        if (empty($searchtype) || empty($countryName)) {
            return redirect()->route('frontend.home');
        }
        $countryId =  session()->get('countrycode');

        $countryData = DB::table('countries')->where('id', $countryId)->first();

        if ($searchtype == 'teacher') {
            // $banners= $this->bannerData->where('type',4)->first();

            $resultData = DB::table('schools')->where(['country_code' => $countryData->iso2, 'is_delete' => 0, 'status' => 1])->get();

            $banners = DB::table('banners')->where(['country_code' => $countryData->iso2, 'status' => 1])->where('type', 1)->first();
        } else {
            if ($searchtype == 'professor') {

                // $banners= $this->bannerData->where('type',2)->first();

                $banners = DB::table('banners')->where(['country_code' => $countryData->iso2, 'status' => 1])->where('type', 1)->first();
            } else {
                // $banners= $this->bannerData->where('type',2)->first();
                $banners = DB::table('banners')->where(['country_code' => $countryData->iso2, 'status' => 1])->first();
            }

            $resultData = DB::table('universities')->where(['country_code' => $countryData->iso2, 'is_delete' => 0, 'status' => 1])->get();
        }

        $type = session()->get('locale') ?? 'en';


        return view('frontend.search.find-rate-university-school', compact('countryName', 'searchtype', 'resultData', 'banners', 'type'));
    }
    public function findAndRateProfessorTeacherName(Request $request)
    {

        $type = session()->get('locale') ?? 'en';


        $searchtype = Session::get('searchtype');
        if (empty($searchtype)) {
            return redirect()->route('frontend.home');
        }
        $dbName = $searchtype == 'teacher' ? 'schools' : 'universities';
        $formName = $searchtype == 'teacher' ? 'School' : 'University';

        $request->validate([
            'ptname' => 'required',

        ], [
            'ptname.required' => 'This ' . $formName . ' name field is required',
        ]);
        $request->ptname = base64_decode($request->ptname);

        $tableResult = DB::table($dbName)->select('name', 'id')->where('id', $request->ptname)->first();
        // dd($tableResult);
        // $request->ptname= $request->ptname ?? session::get('universityschoolname');
        if (empty($tableResult)) {
            toastr()->error(__($formName . ' Not Found'));
            return redirect()->back();
        }
        $id = $request->ptname;
        session()->put('universityschoolid', $id);
        $countryName = session()->get('countryname');
        session()->put('universityschoolname', $tableResult->name);
        $universityschoolname = $tableResult->name;


        // $universityschoolcode = $tableResult->university_code;


        $countryId =  session()->get('countrycode');

        $countryData = DB::table('countries')->where('id', $countryId)->first();
        // dd($countryData);

        if ($searchtype == 'teacher') {
            // $banners= $this->bannerData->where('type',5)->first();
            $schools = School::where('id', $id)->with('all_active_subjects')->first();

            $banners = DB::table('banners')->where(['country_code' => $countryData->iso2, 'status' => 1])->where(['school_code' => $schools->school_code])->where('type', 5)->first();


            $teacherData = TeacherProfile::orderby('name', 'asc')->with('all_active_subject')->where(['school_code' => $schools->school_code, 'is_delete' => 0, 'status' => 1])->get();
            return view('frontend.search.find-rate-school-teacher', compact('countryName', 'universityschoolname', 'schools', 'teacherData', 'banners', 'type'));
        } else {
            // $banners= $this->bannerData->where('type',3)->select('country_code')->first();
            $universitybanner = University::where('id', $id)->with('all_active_college')->first();
            $banners = DB::table('banners')->where(['country_code' => $countryData->iso2, 'status' => 1])->where(['status' => 1])->where('type', 3)->first();

            $university = University::where('id', $id)->with('all_active_college')->first();
            $professorData = ProfessorProfile::orderby('name', 'asc')->with('all_active_college')->where(['is_delete' => 0, 'status' => 1])->get();
            return view('frontend.search.find-rate-university-professor', compact('countryName', 'universityschoolname', 'university', 'professorData', 'banners', 'type'));
        }
    }
    // else{
    //        $countryName= DB::table($dbName)->select('name','id')->where('name',session::get('universityschoolname'))->first();
    //        if(empty($countryName)){
    //      toastr()->error(__($formName.' Not Found'));
    //         return redirect()->back();
    //  }
    //  $universityschoolname = session::get('universityschoolname');
    //        $countryName= session()->get('countryname');

    //  if($searchtype=='teacher'){
    //     $schools= School::where('id',session::get('universityschoolid'))->with('all_active_subjects')->first();

    //      return view('frontend.search.find-rate-school-teacher',compact('countryName','universityschoolname','schools'));
    //  }else{
    //     $university= University::where('id',session::get('universityschoolid'))->with('all_active_college')->first();
    //         return view('frontend.search.find-rate-university-professor',compact('countryName','universityschoolname','university'));

    //  }
    // }

    public function ShowUniversityData(Request $request)
    {

        $request->validate([
            'ptname' => 'required',
        ], [
            'ptname.required' => 'This University name field is required',
        ]);
        if ($request->ptname) {
            session()->put('university_id', $request->ptname);
        }

        if ($request->ptname == '') {
            toastr()->error(__('University Not Found'));
            return redirect()->route('frontend.home');
        }
        $university = University::where('id', base64_decode($request->ptname))->with('all_active_college')->first();
        if (empty($university)) {
            toastr()->error(__('University Not Found'));
            return redirect()->back();
        }
        $countryId =  session()->get('countrycode');
        if (empty($countryId)) {
            return redirect()->route('frontend.home');
        }
        $countryName = DB::table('countries')->where('id', $countryId)->first();

        $teacherRatingData = UniversityRating::where(['university_id' => $university->id, 'is_delete' => 0])->with('users')->orderBy('id', 'desc')->get();
        if (!empty($teacherRatingData) && count($teacherRatingData) > 0) {
            return redirect()->route('frontend.universityProfile', base64_encode($university->id));
        } else {
            return view('frontend.rating.university-detail', compact('countryName', 'university'));
        }
    }
    public function AddUserUniversity(Request $request)
    {
        if ($request->image != "") {
            // dd($request->country_code);
            // $request->validate([
            //     'link' => 'required',
            //     'image' => 'required'
            // ]);

            $sessiondata = session::all();
            $countryName = DB::table('countries')->select('name', 'id', 'iso2')->where('name', $sessiondata['countryname'])->first();
            $universities = DB::table('universities')->where(['country_code' => $countryName->iso2, 'is_delete' => 0, 'status' => 1])->get();
            $banners = DB::table('banners')->where(['country_code' => $countryName->iso2, 'status' => 1])->where('type', 2)->first();
            // if (isset($request->type) && $request->type == 'add') {
            //     $sessiondata['universityschoolid'] = $request->school;
            // } else {
            // }

            $type = session()->get('locale') ?? 'en';
            $countryName = DB::table('countries')->select('name', 'id', 'iso2')->where('name', $sessiondata['countryname'])->first();
            $data = new Banner;

            $data->country_code = $request->country_code;
            $data->type = $request->type;
            $data->link = $request->link;
            $data->text_en = $request->text_en;
            $data->text_ar = $request->text_ar;
            if ($request->file('image')) {
                $logoimageName = time() . '.' . $request->image->extension();
                $request->image->move(public_path('banner'), $logoimageName);
                $data->image = $logoimageName;
            }

            // dd($data);
            $data->save();

            toastr()->success('Banner Added Successfully');
            // return view(
            //     'frontend.search.searchuniversity-school',
            //     compact('countryName', 'universities', 'banners', 'type')
            // );
            // return Redirect::back()->with('message', 'Operation Successful !');
            return redirect()->back()->with(compact('countryName', 'universities', 'banners', 'type'));
        }
    }

    public function AddUserTeacher(Request $request)
    {
        $request->validate([
            'school' => 'required',
            'subject' => 'required',
            'name' => 'required|min:3|max:30'
        ]);
        $sessiondata = session::all();
        if (isset($request->type) && $request->type == 'add') {
            $sessiondata['universityschoolid'] = $request->school;
        } else {
        }
        $teacher = new TeacherProfile;
        $data = [];
        $subjectData = Helper::FetchCustomData('subjects', ['id' => $request->subject]);
        $countryData = Helper::FetchCustomData('countries', ['id' => $sessiondata['countrycode']]);
        $schoolData = Helper::FetchCustomData('schools', ['id' => $sessiondata['universityschoolid']]);
        $exitteacher = TeacherProfile::where(['name' => $request->name, 'school_code' => $schoolData[0]->school_code, 'country' => $countryData[0]->iso2, 'subject_code' => $subjectData[0]->subject_code])->first();
        if ($exitteacher) {
            toastr()->error(__('This teacher already exist'));
            return redirect()->back();
        }
        $countData = TeacherProfile::lastTId($subjectData[0]->subject_code);
        $data['name'] = $request->name;
        $data['school_code'] = $schoolData[0]->school_code;
        $data['country'] = $countryData[0]->iso2;
        $data['subject_code'] = $subjectData[0]->subject_code;
        $data['teacher_code'] = $subjectData[0]->subject_code . sprintf("%02d", ($countData + 1));
        $data['user_added'] = 1;
        $id = $teacher->create($data)->id;
        toastr()->success(__('Teacher Added Successfully'));
        return redirect()->route('frontend.teacherProfile', base64_encode($id));
    }
    public function AddUserProfessor(Request $request)
    {
        $request->validate([
            'university' => 'required',
            'college' => 'required',
            'name' => 'required|min:3|max:30'
        ]);
        $sessiondata = session::all();

        if (isset($request->type) && $request->type == 'add') {
            $sessiondata['universityschoolid'] = $request->university;
        } else {
        }
        $collegeData = Helper::FetchCustomData('colleges', ['id' => $request->college]);
        $countryData = Helper::FetchCustomData('countries', ['id' => $sessiondata['countrycode']]);
        $universityData = Helper::FetchCustomData('universities', ['id' => $sessiondata['universityschoolid']]);

        $oldData = ProfessorProfile::where(['university_code' => $universityData[0]->university_code, 'name' => $request->name, 'country' => $countryData[0]->iso2, 'college_code' => $collegeData[0]->college_code])->first();
        if (!empty($oldData)) {
            if ($oldData->is_delete == 1) {
                toastr()->error(__('Professor Profile Deleted By Admin'));
            }
            if ($oldData->status == 0) {
                toastr()->error(__('Professor Profile Deactivated By Admin'));
            }
            if ($oldData->is_delete == 0 && $oldData->status == 1) {
                toastr()->error(__('Professor Profile Already Exist'));
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

            $id = $professor->create($data)->id;

            toastr()->success(__('Professor Added Successfully'));
            return redirect()->route('frontend.professorProfile', base64_encode($id));
        }
        return redirect()->back();
    }
    public function showTeacherProfile(Request $request)
    {
        if ($request->method() == 'POST') {
            $request->validate([
                'tname' => 'required'
            ], [
                'tname.required'    => 'Teacher Name is required'
            ]);
            if ($request->id) {
                session()->put('teacher_id', $request->id);
            }
            //              $request->id = $request->id??session()->get('teacher_id');
            if ($request->id == '') {
                $teacherData = TeacherProfile::select('teacher_profiles.*', 'countries.name as countryName')->where('teacher_profiles.name', $request->tname)->join('countries', 'teacher_profiles.country', 'countries.iso2')->first();
                if (!empty($teacherData)) {
                    $request->id = base64_encode($teacherData['id']);
                }
            }
            if ($request->id == '') {
                if (Auth()->user()) {
                } else {
                    toastr()->error(__('Teacher Not Found'));
                }
                return redirect()->back()->with('teacher_professor_error', 'test');
            }
        } else {
            $request->id = session()->get('teacher_id');
        }
        if ($request->id == '') {
            toastr()->error(__('No Teacher Selected'));
            return redirect()->route('frontend.home');
        }
        $teacherData = TeacherProfile::select('teacher_profiles.*', 'countries.name as countryName')->where('teacher_profiles.id', base64_decode($request->id))->with(['all_active_school', 'all_active_subject'])->join('countries', 'teacher_profiles.country', 'countries.iso2')->first();
        if (empty($teacherData)) {
            toastr()->error(__('Teacher Not Found'));
            return redirect()->back();
        }
        $teacherRatingData = TeacherRating::where(['teacher_id' => $teacherData->id, 'is_delete' => 0])->with('users')->orderBy('id', 'desc')->get();
        if (!empty($teacherRatingData) && count($teacherRatingData) > 0) {
            return redirect()->route('frontend.teacherProfile', base64_encode($teacherData->id));
        } else {
            return view('frontend.rating.teacher-detail', compact('teacherData'));
        }
    }
    public function TeacherProfile($id)
    {
        if ($this->globalData->teacher_rating == 0) {
            toastr()->error('Not Allowed to search');
            return redirect()->back();
        }
        $id = base64_decode($id);
        $teacherData = TeacherProfile::select('teacher_profiles.*', 'countries.name as countryName')->where('teacher_profiles.id', $id)->with(['all_active_school', 'all_active_subject'])->join('countries', 'teacher_profiles.country', 'countries.iso2')->first();
        if (empty($teacherData)) {
            toastr()->error('teacher profile not found');
            return redirect()->route('frontend.home');
        } else {
            $teacherRatingData = TeacherRating::where(['teacher_id' => $id, 'parent_id' => 0, 'is_delete' => 0])->with(['children', 'users'])->orderBy('id', 'desc')->get();
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
                        $newArr['children'] = collect($this->callteacherFullData($tvalue['children']))->sortBy('id');
                    }


                    $newArray[$key]['replyMessage'] = $newArr;
                    $newArray[$key]['users'] = $teacherRatingData[$key]['users'];
                }
            }

            $teacherRatingData = $newArray;

            $words = AbuseWords::get()->toArray();
            foreach ($words as $key => $val)
                $abouseWords[] = $val['word'];

            return view('frontend.rating.teacher-detail', compact('teacherData', 'teacherRatingData', 'schoolrange', 'easyrange', 'homerange', 'rowcount', 'abouseWords'));
        }
    }
    public function callteacherFullData($data)
    {
        $newArr = [];
        foreach ($data as $tkey => $value) {
            $newArr['parent_user_name'] = '';
            $newArr['genderColor'] = '';
            if ($value->selected_user_id) {
                $user_data = $this->allUserData->where('id', $value->selected_user_id)->first();
                $newArr['parent_user_name'] = $user_data->systemNickname;
                $newArr['genderColor'] = $user_data->gender;
            }
            $newArr['id'] = $value->id;
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
            $this->htmlData[$this->countNum] = $newArr;
            $this->countNum += 1;
            if (count($value['children']) > 0) {
                $this->callteacherFullData($value['children']);
            }
        }
        return $this->htmlData;
    }
    // UniversityProfile
    public function UniversityProfile($id)
    {
        if ($this->globalData->university_rating == 0) {
            toastr()->error('Not Allowed to search');
            return redirect()->back();
        }

        $id = base64_decode($id);
        $universityRatingData = UniversityRating::where(['university_id' => $id, 'parent_id' => 0, 'is_delete' => 0])->with(['children', 'users'])->orderBy('id', 'desc')->get();

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
                    $newArr['children'] = collect($this->calluniversityFullData($tvalue['children']))->sortBy('id');
                }


                $newArray[$key]['replyMessage'] = $newArr;
                $newArray[$key]['users'] = $universityRatingData[$key]['users'];
            }
        }
        $universityRatingData = $newArray;
        $university = University::where('id', $id)->with('all_active_college')->first();

        $countryName = DB::table('countries')->where('iso2', $university['country_code'])->first();

        $words = AbuseWords::get()->toArray();
        foreach ($words as $key => $val)
            $abouseWords[] = $val['word'];
        return view('frontend.rating.university-detail', compact('university', 'universityRatingData', 'professor_range', 'course_range', 'countryName', 'facility_range', 'rowcount', 'abouseWords'));
    }
    public function calluniversityFullData($data)
    {
        $newArr = [];
        foreach ($data as $tkey => $value) {
            $newArr['parent_user_name'] = '';
            $newArr['genderColor'] = '';
            if ($value->selected_user_id) {
                $user_data = $this->allUserData->where('id', $value->selected_user_id)->first();
                $newArr['parent_user_name'] = $user_data->systemNickname;
                if (!empty($user_data->systemNickname)) {
                    $newArr['genderColor'] = $user_data->gender == 1 ? '1' : '2';
                }
            }
            $newArr['id'] = $value->id;
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
            $this->htmlData[$this->countNum] = $newArr;
            $this->countNum += 1;
            if (count($value['children']) > 0) {
                $this->calluniversityFullData($value['children']);
            }
        }
        return $this->htmlData;
    }
    public function ProfessorProfile($id)
    {
        if ($this->globalData->professor_rating == 0) {
            toastr()->error('Not Allowed to search');
            return redirect()->back();
        }

        $id = base64_decode($id);
        $professorRatingData = ProfessorRating::where(['professor_id' => $id, 'parent_id' => 0, 'is_delete' => 0])->with(['children', 'users'])->orderBy('id', 'desc')->get();
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
                    $newArr['children'] = collect($this->callprofessorFullData($tvalue['children']))->sortBy('id');
                }

                $newArray[$key]['replyMessage'] = $newArr;
                $newArray[$key]['users'] = $professorRatingData[$key]['users'];
            }
        }
        // $sorted = $newArray->filter(function($model) {
        //     return $model->children->orderBy('id','desc');
        // });
        // dd($sorted);
        // echo "<pre>"; print_r($newArray); die;

        $words = AbuseWords::get()->toArray();
        foreach ($words as $key => $val)
            $abouseWords[] = $val['word'];

        $professorRatingData = $newArray;
        $professorData = ProfessorProfile::select('professor_profiles.*', 'countries.name as countryName')->where('professor_profiles.id', $id)->with(['all_active_college', 'all_active_university'])->join('countries', 'professor_profiles.country', 'countries.iso2')->first();
        if (empty($professorData)) {
            toastr()->error('professor not found');
            return redirect()->back();
        }
        // echo "<pre>"; print_r($abouseWords); die;
        return view('frontend.rating.professor-detail', compact('professorData', 'professorRatingData', 'easyness_range', 'repeat', 'rate_professor', 'rowcount', 'abouseWords'));
    }
    public function callprofessorFullData($data)
    {
        $newArr = [];
        foreach ($data as $tkey => $value) {
            $newArr['parent_user_name'] = '';
            $newArr['genderColor'] = '';
            if ($value->selected_user_id) {
                $user_data = $this->allUserData->where('id', $value->selected_user_id)->first();
                $newArr['parent_user_name'] = $user_data->systemNickname;
                if (!empty($user_data->systemNickname)) {
                    $newArr['genderColor'] = $user_data->gender == 1 ? 'blueColor' : 'redColor';
                }
            }
            $newArr['id'] = $value->id;
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
            $this->htmlData[$this->countNum] = $newArr;
            $this->countNum += 1;
            if (count($value['children']) > 0) {
                $this->callprofessorFullData($value['children']);
            }
        }
        return $this->htmlData;
    }

    public function showProfessorProfile(Request $request)
    {
        if ($request->method() == 'POST') {
            $request->validate([
                'tname' => 'required'
            ], [
                'tname.required'    => 'Professor Name is required'
            ]);
            if ($request->id) {
                session()->put('professor_id', $request->id);
            }
            if ($request->id == '') {
                $professorData = ProfessorProfile::select('*')->where('professor_profiles.name', $request->tname)->first();
                if (!empty($professorData)) {
                    $request->id = base64_encode($professorData['id']);
                }
            }
            if ($request->id == '') {
                if (Auth()->user()) {
                } else {
                    toastr()->error(__('No Professor Found'));
                }
                return redirect()->back()->with('teacher_professor_error', 'test');
            }
        } else {
            $request->id = session()->get('professor_id');
        }

        if ($request->id == '') {
            toastr()->error(__('No Professor Selected'));
            return redirect()->route('frontend.home');
        }
        $professorData = ProfessorProfile::select('professor_profiles.*', 'countries.name as countryName')->where('professor_profiles.id', base64_decode($request->id))->with(['all_active_college', 'all_active_university'])->join('countries', 'professor_profiles.country', 'countries.iso2')->first();
        if (empty($professorData)) {
            toastr()->error(__('No Professor Found'));
            return redirect()->back();
        }
        $professorRatingData = ProfessorRating::where(['professor_id' => $professorData->id, 'is_delete' => 0])->with('users')->orderBy('id', 'desc')->get();
        if (!empty($professorRatingData) && count($professorRatingData) > 0) {
            return redirect()->route('frontend.professorProfile', base64_encode($professorData->id));
        } else {
            return view('frontend.rating.professor-detail', compact('professorData'));
        }
    }
    public function searchTeacherSubject(Request $request)
    {

        $html = '';
        if ($request->id) {
            $schoolData = Helper::FetchCustomData('schools', ['id' => $request->id]);
            $data['lang_type'] = $schoolData[0]->lang_code;
            $subjectData = Helper::FetchCustomData('subjects', ['school_code' => $schoolData[0]->school_code, 'is_delete' => 0, 'status' => 1]);
            $html .= '<option selected="" value="" disabled="">Select School</option>';

            foreach ($subjectData as $key => $value) {
                $html .= '<option value="' . $value->id . '">' . $value->name . '</option>';
            }
            $data['status'] = 'Success';
            $data['html'] = $html;
        } else {
            $data['status'] = 'Error';
            $data['html'] = $html;
        }
        echo json_encode($data);
    }
    public function searchUniversityCollege(Request $request)
    {

        $html = '';
        if ($request->id) {
            $universityData = Helper::FetchCustomData('universities', ['id' => $request->id]);
            $data['lang_type'] = $universityData[0]->lang_code;
            $collegeData = Helper::FetchCustomData('colleges', ['university_code' => $universityData[0]->university_code, 'is_delete' => 0, 'status' => 1]);
            $html .= '<option selected="" value="" disabled="">Select College</option>';

            foreach ($collegeData as $key => $value) {
                $html .= '<option value="' . $value->id . '">' . $value->name . '</option>';
            }
            $data['status'] = 'Success';
            $data['html'] = $html;
        } else {
            $data['status'] = 'Error';
            $data['html'] = $html;
        }
        echo json_encode($data);
    }
}
