<?php

namespace App\Http\Controllers\Admin;

use App\TeacherProfile;
use App\School;
use App\Subject;
use App\Permissions;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
use App\Helpers\Helper;
use App\Http\Requests\TeacherRequest;
use App\Imports\TeacherImport;
use Maatwebsite\Excel\Facades\Excel;
use File;

class TeacherProfileController extends Controller
{
    protected $teacherData;

    function __construct(TeacherProfile $teacherProfile)
    {
        $this->teacherData = $teacherProfile;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        session()->put(['oldUrl' => url()->current()]);

        $permissions = Helper::PermissionGet('HighSchoolProfile');
        $teachers = $this->teacherData::select('teacher_profiles.*', 'countries.name as countryName')->with(['school', 'subject'])->join('countries', 'teacher_profiles.country', 'countries.iso2')->where(['teacher_profiles.is_delete' => 0, 'teacher_profiles.user_added' => 0])->latest('teacher_profiles.id')->get();
        return view('admin.teacher.list', compact('teachers', 'permissions'));
    }
    public function userteacher()
    {
        session()->put(['oldUrl' => url()->current()]);

        $permissions = Helper::PermissionGet('HighSchoolProfile');
        $teachers = $this->teacherData::select('teacher_profiles.*', 'countries.name as countryName')->with(['school', 'subject'])->join('countries', 'teacher_profiles.country', 'countries.iso2')->where(['teacher_profiles.is_delete' => 0, 'teacher_profiles.user_added' => 1])->latest('teacher_profiles.id')->get();
        return view('admin.teacher.userlist', compact('teachers', 'permissions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if (Helper::PermissionCheck('TeacherProfile', 'add')) {
            $countries = Helper::Country();
            return view('admin.teacher.add', compact('countries'));
        } else {
            toastr()->error('you dont have permission to Add Teacher');
            return redirect()->route('admin.teacher.index');
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(TeacherRequest $request)
    {
        $teacher = new TeacherProfile;
        $data = [];
        $lastData = TeacherProfile::lastTData($request->subject_code)->get();
        if ($lastData && count($lastData) > 0) {
            $newstring = str_replace($lastData[0]->subject_code, "", $lastData[0]->teacher_code);
            $countData = (int)$newstring;
        } else {
            $countData = 0;
        }
        $profile = '';
        if ($request->file('profile')) {
            $profileimageName = time() . '.' . $request->profile->extension();
            $request->profile->move(public_path('teacher'), $profileimageName);
            $profile = $profileimageName;
        }
        $data['name'] = $request->name;
        $data['profile'] = $profile;
        $data['school_code'] = $request->school_code;
        $data['country'] = $request->country;
        $data['lang_code'] = $request->lang;
        $data['subject_code'] = $request->subject_code;
        $data['teacher_code'] = $request->subject_code . sprintf("%02d", ($countData + 1));
        $teacher->create($data);
        toastr()->success('Teacher added successfully');

        return redirect()->route('admin.teacher.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\TeacherProfile  $teacherProfile
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\TeacherProfile  $teacherProfile
     * @return \Illuminate\Http\Response
     */
    public function useredit($id)
    {
        if (Helper::PermissionCheck('TeacherProfile', 'edit')) {
            $countries = Helper::Country();
            $teacherData = $this->teacherData::where('id', base64_decode($id))->with(['school', 'subject'])->first();
            $schools = School::where('country_code', $teacherData->country)->get();
            $subjects = Subject::where('school_code', $teacherData->school_code)->get();
            $unilang = Helper::FetchCustomData('schools', ['school_code' => $teacherData->school_code]);
            return view('admin.teacher.useredit', compact('countries', 'teacherData', 'subjects', 'schools', 'unilang'));
        } else {
            toastr()->error('you dont have permission to Edit Teacher');
            return redirect()->route('admin.userteacher');
        }
    }
    public function edit($id)
    {
        $backUrl = session()->get('oldUrl');
        if (Helper::PermissionCheck('TeacherProfile', 'edit')) {
            $countries = Helper::Country();
            $teacherData = $this->teacherData::where('id', base64_decode($id))->with(['school', 'subject'])->first();
            $schools = School::where('country_code', $teacherData->country)->get();
            $subjects = Subject::where('school_code', $teacherData->school_code)->get();
            $unilang = Helper::FetchCustomData('schools', ['school_code' => $teacherData->school_code]);
            return view('admin.teacher.edit', compact('countries', 'teacherData', 'subjects', 'schools', 'unilang', 'backUrl'));
        } else {
            toastr()->error('you dont have permission to Edit Teacher');
            return redirect()->route('admin.teacher.index');
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\TeacherProfile  $teacherProfile
     * @return \Illuminate\Http\Response
     */
    public function update(TeacherRequest $request, $id)
    {
        $id = base64_decode($id);
        $data = TeacherProfile::find($id);
        if (!empty($data)) {
            $profile = $data->profile;
            if ($request->file('profile')) {
                $profileimageName = time() . '.' . $request->profile->extension();
                $request->profile->move(public_path('teacher'), $profileimageName);
                $profile = $profileimageName;
            }
            if ($data->subject_code != $request->subject_code) {
                $lastData = TeacherProfile::lastTData($request->subject_code)->get();
                if ($lastData && count($lastData) > 0) {
                    $newstring = str_replace($lastData[0]->subject_code, "", $lastData[0]->teacher_code);
                    $countData = (int)$newstring;
                } else {
                    $countData = 0;
                }
                $data->teacher_code = $request->subject_code . sprintf("%02d", ($countData + 1));
            }
            $data->subject_code = $request->subject_code;
            $data->school_code = $request->school_code;
            $data->country = $request->country;
            $data->name = $request->name;
            $data->lang_code = $request->lang;
            $data->profile = $profile;
            $data->save();
            toastr()->success('Teacher Profile Updated Successfully');
        } else {
            toastr()->error('Teacher Profile Id Not  Found');
        }
        if (session()->get('oldUrl')) {
            return redirect(session()->get('oldUrl'));
        }
        return redirect()->route('admin.teacher.index');
    }

    public function userupdate(TeacherRequest $request, $id)
    {
        $id = base64_decode($id);
        $data = TeacherProfile::find($id);
        if (!empty($data)) {
            $profile = $data->profile;
            if ($request->file('profile')) {
                $profileimageName = time() . '.' . $request->profile->extension();
                $request->profile->move(public_path('teacher'), $profileimageName);
                $profile = $profileimageName;
            }
            if ($data->subject_code != $request->subject_code) {
                $lastData = TeacherProfile::lastTData($request->subject_code)->get();
                if ($lastData && count($lastData) > 0) {
                    $newstring = str_replace($lastData[0]->subject_code, "", $lastData[0]->teacher_code);
                    $countData = (int)$newstring;
                } else {
                    $countData = 0;
                }
                $data->teacher_code = $request->subject_code . sprintf("%02d", ($countData + 1));
            }
            $data->subject_code = $request->subject_code;
            $data->school_code = $request->school_code;
            $data->country = $request->country;
            $data->name = $request->name;
            $data->lang_code = $request->lang;
            $data->profile = $profile;
            $data->save();
            toastr()->success('Teacher Profile Updated Successfully');
        } else {
            toastr()->error('Teacher Profile Id Not  Found');
        }
        return redirect()->route('admin.userteacher');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\TeacherProfile  $teacherProfile
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if (Helper::PermissionCheck('TeacherProfile', 'delete')) {
            $data = TeacherProfile::where('id', base64_decode($id))->update(['is_delete' => 1]);
            if ($data) {
                toastr()->success('Teacher profile deleted Successfully');
            }
        } else {
            toastr()->error('You dont have permission to delete teacher profile');
        }
        if (session()->get('oldUrl')) {
            return redirect(session()->get('oldUrl'));
        }
        return redirect()->back();
    }
    public function deleteAll(Request $request)
    {
        $ids = trim($request->ids, ',');
        if (!empty($ids)) {
            $allIds =  explode(',', $ids);
            $newId = [];
            foreach ($allIds as $ikey => $ivalue) {
                $newId[] = base64_decode($ivalue);
            }
            TeacherProfile::whereIn('id', $newId)->update(['is_delete' => 1]);

            echo 'success';
        } else {
            echo 'error';
        }
    }

    public function Status($id)
    {
        $teacher = TeacherProfile::find(base64_decode($id));
        $newstatus = $teacher->status == 1 ? 0 : 1;
        $teacher->status = $newstatus;
        if ($newstatus == 0) {
            toastr()->error('Teacher Deactivated Successfully');
        } else {
            toastr()->success('Teacher Activated Successfully');
        }
        $teacher->save();
        if (session()->get('oldUrl')) {
            return redirect(session()->get('oldUrl'));
        }
        return redirect()->back();
    }
    public function rateActive($id)
    {
        $teacher = TeacherProfile::find(base64_decode($id));
        $newstatus = $teacher->is_active == 1 ? 0 : 1;
        $teacher->is_active = $newstatus;
        if ($newstatus == 0) {
            toastr()->error('Teacher Deactivated Successfully');
        } else {
            toastr()->success('Teacher Activated Successfully');
        }
        $teacher->save();
        if (session()->get('oldUrl')) {
            return redirect(session()->get('oldUrl'));
        }
        return redirect()->back();
    }
    public function RangeSearch(Request $request)
    {
        $permissions = Helper::PermissionGet('HighSchoolProfile');
        $startDate = date('Y-m-d', strtotime($request->start));
        $endDate = date('Y-m-d', strtotime($request->end));
        $StartDates = $request->start;
        $EndDates = $request->end;
        $teachers = $this->teacherData::select('teacher_profiles.*', 'countries.name as countryName')->with(['school', 'subject'])->join('countries', 'teacher_profiles.country', 'countries.iso2')->where('teacher_profiles.is_delete', 0)->whereBetween('teacher_profiles.created_at', [$startDate . ' 00:00:00', $endDate . ' 23:59:59'])->latest('teacher_profiles.id')->latest('teacher_profiles.id')->get();
        return view('admin.teacher.list', compact('teachers', 'permissions', 'StartDates', 'EndDates'));
    }
    public function import(Request $request)
    {
        $request->validate([
            'import_file' => 'required|mimes:xlsx',
        ]);
        try {
            $import = new TeacherImport;
            Excel::import($import, request()->file('import_file')->store('import_file'));
            $rowcount =  $import->getRowCount();
            //        Excel::import(new TeacherImport, request()->file('import_file'));
        } catch (\Maatwebsite\Excel\Validators\ValidationException $e) {
            $failures = $e->failures();
            toastr()->error('Failed in Importing data, please insert data in same format and order ');
            return redirect()->route('admin.teacher.index');
        }
        toastr()->success($rowcount . ' Rows Imported Successfully');

        return redirect()->route('admin.teacher.index');
    }
    public function schoolList(Request $request)
    {
        $schlist = Helper::FetchCustomData('schools', ['country_code' => $request->countrycode, 'is_delete' => 0, 'status' => 1]);
        $html = '';
        $html = '<option value="" selected disabled>Select School</option>';
        foreach ($schlist as $ukey => $uvalue) {
            $html .= '<option value="' . $uvalue->school_code . '">' . $uvalue->name . ' </option>';
        }
        return $html;
    }
    public function subjectList(Request $request)
    {
        $langsub = Helper::FetchCustomData('schools', ['school_code' => $request->schoolcode]);
        $sublist = Helper::FetchCustomData('subjects', ['school_code' => $request->schoolcode, 'is_delete' => 0, 'status' => 1]);
        $data = [];

        $html = '';

        $html = '<option value="" selected disabled>Select Subject</option>';
        foreach ($sublist as $ukey => $uvalue) {

            $html .= '<option value="' . $uvalue->subject_code . '">' . $uvalue->name . ' </option>';
        }
        $data['html'] = $html;
        $data['langType'] = $langsub[0]->lang_code;
        return $data;
    }
    public function userRangeSearch(Request $request)
    {
        $permissions = [];
        if (Auth::guard('admin')->user()->role == 2) {
            $permissions = Permissions::where(['subadmin_id' => Auth::guard('admin')->user()->id, 'modal_name' => 'TeacherProfile'])->first();
        }
        $startDate = date('Y-m-d', strtotime($request->start));
        $endDate = date('Y-m-d', strtotime($request->end));
        $StartDates = $request->start;
        $EndDates = $request->end;
        $teachers = $this->teacherData::select('teacher_profiles.*', 'countries.name as countryName')->with(['school', 'subject'])->join('countries', 'teacher_profiles.country', 'countries.iso2')->where(['teacher_profiles.is_delete' => 0])->whereBetween('teacher_profiles.created_at', [$startDate . ' 00:00:00', $endDate . ' 23:59:59'])->where('user_added', 1)->latest('teacher_profiles.id')->get();
        return view('admin.teacher.userlist', compact('teachers', 'permissions', 'StartDates', 'EndDates'));
    }
    public function changeProfileVisibility(Request $request)
    {
        $newId = base64_decode($request->id);
        $status = 1;

        if ($request->status == 'true') {
            $status = 0;
        }
        TeacherProfile::where('id', $newId)->update(['show_profile' => $status]);
        return 'success';
    }




    public function teacherAjax(Request $request)
    {
        $draw = $request->get('draw');
        $rowperpage = $request->get("length"); // Rows display per page
        $start = $request->get("start");
        $columnIndex_arr = $request->get('order');
        $columnName_arr = $request->get('columns');
        $order_arr = $request->get('order');
        $search_arr = $request->get('search');

        $columnIndex = $columnIndex_arr[0]['column']; // Column index
        $columnName = $columnName_arr[$columnIndex]['data']; // Column name
        $columnSortOrder = $order_arr[0]['dir']; // asc or desc
        $searchValue = $search_arr['value']; // Search value
        $slug =  Request()->segment(2) == 'user-teacher' ? 'user-teacher' : 'teacher';

        $slug = url()->previous();
        $userTeacher = 0;
        if (strpos($slug, "user-teacher")) {
            $userTeacher = 1;
        }
        $permissions=[];

        // Total records
        $totalRecords = TeacherProfile::select('count(*) as allcount')->where(['teacher_profiles.is_delete' => 0, 'teacher_profiles.user_added' => $userTeacher])->count();
        $totalRecordswithFilter = TeacherProfile::select('count(*) as allcount')->where(['teacher_profiles.is_delete' => 0, 'teacher_profiles.user_added' => $userTeacher])->where('name', 'like', '%' . $searchValue . '%')->count();
        $teachers = $this->teacherData::select('teacher_profiles.*', 'countries.name as countryName')
            ->with(['school', 'subject'])
            ->join('countries', 'teacher_profiles.country', 'countries.iso2')
            // ->where('name', 'like', '%' . $searchValue . '%')
            ->where(['teacher_profiles.is_delete' => 0, 'teacher_profiles.user_added' => $userTeacher])
            // ->where('is_delete', 1)
            ->skip($start)
            ->take($rowperpage)
            ->get();

        $data_arr = array();
        // return $records;
        foreach ($teachers as $record) {
            $id = base64_encode($record->id);
            $name = $record->name;
            $teacherCode = $record->teacher_code;
            $schoolName = $record->school['name'] ?? "";
            $subjectName = $record->subject->name ?? "";
            $country = $record->countryName;
            $createdAt = $record->created_at->toDateTimeString();
            // $createdAt =  date('Y-m-d', strtotime($record->created_at)),
            $status = "<div class='badge font-size-12 " . ($record['status'] == 0 ? 'badge-soft-danger' : 'badge-soft-success') . "'>" . ($record['status'] == 0 ? 'Deactive' : 'Active') . "</div>";


            // $profileToggle = '<div class="toggle-event" type=checkbox data-id=' . base64_encode($record['id']) . ', data-status=' . $record['show_profile'] == 0 ? 'checked' : '' . '" data-toggle="toggle data-on=Show Profile" data-off=Hide Profile data-onstyle=success data-offstyle=danger></div>';

            if (Auth::guard('admin')->user()->role == 2) {
                $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'ProfessorProfile'])->first();

                if (!empty($permissions) && $permissions['edit'] == 1) {
                    $action = '<a href="' . url('admin/teacher' .  '/' . base64_encode($record->id) . '/' . 'edit') . '" class="mr-3 text-primary"  data-toggle="tooltip" data-placement="top" title=""
                    data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>';
                }
            } else {
                $action = '<a href="' . url('admin/teacher' .  '/' . base64_encode($record->id) . '/' . 'edit') . '" class="mr-3 text-primary"  data-toggle="tooltip" data-placement="top" title=""
                    data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>';
            }

            $action2 = '<a href="' . url('admin/teacher/status' .  '/' . base64_encode($record->id)) . '" class="mr-3 text-primary" onclick="return confirm("Are you sure?")"  data-toggle="tooltip" data-placement="top" title=""
                    data-original-title="<?= $record[status] == 1 ? Deactivate : Activate ?>"><i
                class="mdi mdi-account-lock font-size-18"></i></a>';

            if (Auth::guard('admin')->user()->role == 2) {
                $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'ProfessorProfile'])->first();

                if (!empty($permissions) && $permissions['delete'] == 1) {

        
                    $route = route('admin.teacher.destroy', base64_encode($record['id']));

                    $action3 = "<form action='" . $route . "' method='POST' id='deleteForm'>
                <input type='hidden' name='_token' value='" . csrf_token() . "'>
                <input type='hidden' name='_method' value='DELETE'> <i onclick='confirm(" . ' Are You Sure You want to delete
                it' . ") ?

                $(this).closest('#deleteForm').submit() : '' class=" . ' mdi mdi-trash-can font-size-18 text-danger' . "></i>
                <button type='submit' onclick='return confirm(' Are You Sure You want to delete
            it ?');' style='border: 0; background: none;' <i class='mdi mdi-trash-can font-size-18 text-danger'></i>
                </button></form>";
                }
            } else {
                $route = route(
                    'admin.teacher.destroy',

                    base64_encode($record['id'])
                );
                $action3 = "<form action='" . $route . "' method='POST' id='deleteForm'>
                <input type='hidden' name='_token' value='" . csrf_token() . "'>
                <input type='hidden' name='_method' value='DELETE'> <i onclick='confirm(" . ' Are You Sure You want to delete
                it' . ") ?

                $(this).closest('#deleteForm').submit() : '' class=" . ' mdi mdi-trash-can font-size-18 text-danger' . "></i>
                <button type='submit' onclick='return confirm(' Are You Sure You want to delete
            it ?');' style='border: 0; background: none;' <i class='mdi mdi-trash-can font-size-18 text-danger'></i>
                </button></form>";
            }

            $data_arr[] = array(
                "id" => $id,
                "username" => $name,
                "teachercode" => $teacherCode,
                "schoolName" => $schoolName,
                "subjectName" => $subjectName,
                "subjectName" => $subjectName,
                "country" => $country,
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
