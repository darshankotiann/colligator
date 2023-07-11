<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Rules\MatchOldPassword;
use Auth;
use File;
use App\Admin;
use App\User;
use App\ProfessorProfile;
use App\ProfessorRating;
use App\TeacherRating;
use App\UniversityRating;
use App\TeacherProfile;
use App\University;
use Hash;
use DB;
use Carbon\Carbon;
class HomeController extends Controller
{
     public function index(){
        $ProfessorProfileCount= ProfessorProfile::where('is_delete',0)->count();
        // $userProfessorProfileCount= ProfessorProfile::where('user_added',1)->count();
        $TeacherProfileCount= TeacherProfile::where('is_delete',0)->count();
        $UniversityCount= University::where('is_delete',0)->count();
        $UserCount=User::count();
        $currentMonth= User::whereMonth('created_at', date('m'))
        ->whereYear('created_at', date('Y'))
        ->count();
        $adminCount=Admin::where('role',2)->count();
        $professorCount=ProfessorRating::where('parent_id',0)->count();
        $teacherCount=TeacherRating::where('parent_id',0)->count();
        $universityCount=UniversityRating::where('parent_id',0)->count();
        $currentMonthAdmin= Admin::where('role',2)->whereMonth('created_at', date('m'))
        ->whereYear('created_at', date('Y'))
        ->count();
        $UserResult=User::get()->groupBy(function($d) {
            return Carbon::parse($d->created_at)->format('m');
        });
        $SubadminResult=Admin::where('role',2)->get()->groupBy(function($d) {
            return Carbon::parse($d->created_at)->format('m');
        });

        $userData=['00'=>0,'01'=>0,'02'=>0,'03'=>0,'04'=>0,'05'=>0,'06'=>0,'07'=>0,'08'=>0,'09'=>0,'10'=>0,'11'=>0];
        $adminData=['00'=>0,'01'=>0,'02'=>0,'03'=>0,'04'=>0,'05'=>0,'06'=>0,'07'=>0,'08'=>0,'09'=>0,'10'=>0,'11'=>0];
        foreach ($UserResult as $ukey => $uvalue) {
            $userData[$ukey] = count($uvalue);
        }
        foreach ($SubadminResult as $skey => $svalue) {
            $adminData[$skey] = count($svalue);
        }

        $userData= json_encode(array_values($userData));
        $adminData= json_encode(array_values($adminData));
        return view('admin.home',compact('ProfessorProfileCount','TeacherProfileCount','UniversityCount','userData','UserCount','currentMonth','adminData','adminCount','currentMonthAdmin','professorCount','teacherCount','universityCount'));
    }
    public function profileUpdate(Request $request)
    {
    	$admin= Auth::guard('admin')->user();
        $validated = $request->validate([
            'name' => 'string',
            'image' => 'mimes:jpeg,png,jpg|max:1014',
        ]);
		if ($request->hasFile('image')) {
            if ($request->file('image')->isValid()) {
                // delete previos file from folder
                if(File::exists(public_path('profile/'.$admin->image))){
					File::delete(public_path('profile/'.$admin->image));
				}
                $extension = $request->image->extension();
                $imageName = time().'.'.$request->image->extension();  
            	$request->image->move(public_path('profile'), $imageName);
            	$image= $imageName;
        	}else{
                toastr()->error('image type error');
                return back();
            }
        }else{
            	$image= $admin->image;
            }
        $loginUser = Admin::find($admin->id);

		$loginUser->name = $request['name'];
		$loginUser->image = $image;

		$loginUser->save();
        toastr()->success('Admin profile updated successfully');
        return redirect()->route('admin.profile');
    }
    public function passwordUpdate(Request $request)
    {
    	$request->validate([
    	'oldpassword'	=>['required',new MatchOldPassword],
    	'newpassword' =>'required|min:8|regex:/^.*(?=.{8,})(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!$#%@]).*$/',
        'confirm_password' => ['same:newpassword'],
        ],
        [
           'password.regex'=>'Password must contain at least 1 Smallcase, 1 Uppercase, 1 Number and 1 Special character',
        ]
    	);
        Admin::find(auth()->guard('admin')->user()->id)->update(['password'=> Hash::make($request->newpassword)]);
        toastr()->success('Password Updated Successfully');
        return redirect()->route('admin.change_password');
    }

}
