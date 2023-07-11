<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Auth;
class TeacherRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        $routeRequest=  \Request::route()->getName();
        $routeRequestPermission= $routeRequest=='admin.teacher.store' ? 'add' : 'edit';
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Teacher'])->first();
            if(empty($permissions) || (isset($permissions) && $permissions[$routeRequestPermission]!=1)) {
                return false;
            }
            else{
                return true;
            }
        }
        else{
            return true;
        }
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name'=>'required|string|min:3|max:50',
            'country'=>'required',
            'school_code'=>'required',
            'subject_code'=>'required',
            'profile' =>'nullable|mimes:jpeg,jpg,png|max:10000',

        ];
    }
}
