<?php

namespace App\Http\Controllers\Admin;

use App\EmailTemplate;
use App\Helpers\Helper;
use App\Http\Controllers\Controller;
use App\Permissions;
use App\User;
use Auth;
use Config;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class SubUserController extends Controller {
	private $page;
	function __construct() {
		$this->page = Config::get('app.paginate');
	}
	public function index(Request $request) {
		session()->put(['oldUrl' => url()->current()]);
		$permissions = [];
		if (Auth::guard('admin')->user()->role == 2) {
			$permissions = Permissions::where(['subadmin_id' => Auth::guard('admin')->user()->id, 'modal_name' => 'Users'])->first();
		}
		$users = User::where('is_delete', 0)->latest()->get();
		if ($request->ajax()) {
			$startDate = date('Y-m-d', strtotime($request->startdate));
			$endDate = date('Y-m-d', strtotime($request->enddate));
			$users = User::where('is_delete', 0)->whereBetween('created_at', [$startDate, $endDate])->latest()->get();
			return view('admin.users.userTable', compact('users'));
		}
		return view('admin.users.user_list', compact('users', 'permissions'));
	}
	public function Add() {
		if (Auth::guard('admin')->user()->role == 2) {
			$permissions = Permissions::where(['subadmin_id' => Auth::guard('admin')->user()->id, 'modal_name' => 'Users'])->first();
			if ($permissions['add'] != 1) {
				toastr()->error('You dont have permission to add User');
				return redirect()->route('admin.user.list');
			}
		}
		return view('admin.users.user_add');
	}
	public function Store(Request $request) {

		$request->validate([
			'name' => 'nullable|min:3|max:55',
			'email' => 'required|unique:users,email',
			'gender' => 'required',
			'age' => 'required|numeric',
			'university' => 'nullable|min:3',
			'password' => 'required|min:8|regex:/^.*(?=.{8,})(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!$#%@]).*$/',
		], [
			'password.regex' => 'Password must contain at least 1 Smallcase, 1 Uppercase, 1 Number and 1 Special character',
		]);
//        Mail::to($user)->send(new SendCustomMail($user));
		$mailContent = EmailTemplate::GetEmailTemplate('register-user');
		$content['content'] = str_replace(array('{email}', '{password}', '{url}'), array($request['email'], $request['password'], url('/admin')), $mailContent->content);
		$Useremail = $request['email'];
		//send mail using helper function
		Helper::mailSend($content, $mailContent->subject, $Useremail);
		$systemNickname = $this->randomChar($request->gender);

		$user = new User;
		$user->name = $request->name ?? '';
		$user->email = $request->email;
		$user->gender = $request->gender;
		$user->age = $request->age;
		$user->systemNickname = $systemNickname;
		$user->university = $request->university ?? '';
		$user->profile = 'colleicon.png';
		$user->color = $request->gender == 1 ? '1' : '2';
		$user->password = Hash::make($request->password);
		$user->save();

		toastr()->success('User Created Successfully');
		return redirect()->route('admin.user.list');
	}
	public function Edit($id) {
		$backUrl = session()->get('oldUrl');
		if (Auth::guard('admin')->user()->role == 2) {
			$permissions = Permissions::where(['subadmin_id' => Auth::guard('admin')->user()->id, 'modal_name' => 'Users'])->first();
			if ($permissions['edit'] != 1) {
				toastr()->error('You dont have permission to edit User');
				return redirect()->route('admin.user.list');
			}
		}
		$id = base64_decode($id);
		$data = User::find($id);
		if (empty($data)) {
			toastr()->error('User Id Not Found');
		} else {
			return view('admin.users.user_edit', compact('data', 'backUrl'));
		}
		return redirect()->route('admin.user.list');
	}
	public function Update(Request $request) {
		$id = base64_decode($request->id);

		$request->validate([
			'name' => 'nullable|min:3|max:55',
			'email' => 'required|unique:users,email,' . $id,
			'trusted' => 'required',
			'colorpicker' => 'required',
			'age' => 'required|numeric',
			'nickname' => 'nullable|min:3|max:20|unique:users,nickname,' . $id,
			'systemNickname' => 'nullable|min:3|max:20|unique:users,systemNickname,' . $id,
			'university' => 'nullable|min:3|max:55',
			'profile' => 'nullable|mimes:jpeg,jpg,png|max:2000',

		]);

		$data = User::find($id);

		$profile = $data->profile;
		if ($request->file('profile')) {
			$profileimageName = time() . '.' . $request->profile->extension();
			$request->profile->move(public_path('profile'), $profileimageName);
			$profile = $profileimageName;
		}
		if (empty($data)) {
			toastr()->error('User Id Not Found');
		} else {
			if ($data->nickname != $request->nickname) {
				$mailContent = EmailTemplate::GetEmailTemplate('nickname-update');
				$content['content'] = str_replace(array('{user}', '{nickname}'), array($request['name'], $request['nickname']), $mailContent->content);
				$Useremail = $request['email'];
				//send mail using helper function
				Helper::mailSend($content, $mailContent->subject, $Useremail);
			}
			$gender = $data->gender;
			$systemNickname = $data->systemNickname;
			if ($data->gender != $request->gender) {
				$gender = $request->gender;
				$systemNickname = Helper::randomChar($request->gender);
			}
			$data->name = $request->name ?? '';
			$data->email = $request->email;
			$data->colorpicker = $request->colorpicker;
			$data->profile = $profile;
			$data->gender = $gender;
			$data->age = $request->age;
			// $data->systemNickname = $systemNickname;
			$data->systemNickname = $request->systemNickname;
			$data->university = $request->university ?? '';
			$data->color = $request->color;
			$data->trusted = $request->trusted;
			$data->nickname = $request->nickname ?? '';
			$data->save();

			toastr()->success('User Updated Successfully');
		}
		if (session()->get('oldUrl')) {
			return redirect(session()->get('oldUrl'));
		}
		return redirect()->route('admin.user.list');

	}
	public function status($id) {
		$id = base64_decode($id);
		$data = User::find($id);
		if (empty($data)) {
			toastr()->error('User Id Not Found');
		} else {
			$newStatus = $data->status == 0 ? 1 : 0;
			$data->status = $newStatus;
			$data->save();

			if ($newStatus == 0) {
				$mailContent = EmailTemplate::GetEmailTemplate('account-deactivated');
				toastr()->error('User Deactivated Successfully');
			} else {
				$mailContent = EmailTemplate::GetEmailTemplate('account-activated');
				toastr()->success('User Activated Successfully');
			}
			$content['content'] = str_replace(array('{name}'), array($data->name), $mailContent->content);
			$Useremail = $data->email;
			//send mail using helper function
			Helper::mailSend($content, $mailContent->subject, $Useremail);
		}
		if (session()->get('oldUrl')) {
			return redirect(session()->get('oldUrl'));
		}
		return redirect()->route('admin.user.list');

	}
	public function Delete($id) {
		if (Auth::guard('admin')->user()->role == 2) {
			$permissions = Permissions::where(['subadmin_id' => Auth::guard('admin')->user()->id, 'modal_name' => 'Users'])->first();
			if ($permissions['delete'] != 1) {
				toastr()->error('You dont have permission to delete User');
				return redirect()->route('admin.user.list');
			}
		}
		$id = base64_decode($id);
		$data = User::find($id);
		if (empty($data)) {
			toastr()->error('User Id Not Found');
		} else {
			$mailContent = EmailTemplate::GetEmailTemplate('account-deleted');
			$content['content'] = str_replace(array('{name}', '{email}'), array($data->name, $data->email), $mailContent->content);
			$Useremail = $data->email;
			//send mail using helper function
			Helper::mailSend($content, $mailContent->subject, $Useremail);
			$data->is_delete = 1;
			$data->save();
			toastr()->error('User Deleted Successfully');
		}
		if (session()->get('oldUrl')) {
			return redirect(session()->get('oldUrl'));
		}
		return redirect()->route('admin.user.list');

	}
	public function RangeSearch(Request $request) {
		$permissions = [];
		if (Auth::guard('admin')->user()->role == 2) {
			$permissions = Permissions::where(['subadmin_id' => Auth::guard('admin')->user()->id, 'modal_name' => 'Users'])->first();
		}
		$startDate = date('Y-m-d', strtotime($request->start));
		$endDate = date('Y-m-d', strtotime($request->end));
		$StartDates = $request->start;
		$EndDates = $request->end;
		$users = User::where('is_delete', 0)->whereBetween('created_at', [$startDate, $endDate])->latest()->get();
		return view('admin.users.user_list', compact('users', 'permissions', 'StartDates', 'EndDates'));

	}
	public function randomChar($gender = '') {
		$length = 6;
		$str_result = 'abcdefghijklmnopqrstuvwxyz';
		$num_result = '0123456789';
		$char = substr(str_shuffle($str_result), 0, 4);
		$char .= substr(str_shuffle($num_result), 0, 2);
		$charnum = str_shuffle($char);
		$gtype = $gender == 1 ? 'Collegito-' : 'Collegita-';
		return $gtype . $charnum;
	}
}
