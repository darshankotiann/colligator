<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Auth;
use App\Permissions;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
class SubjectRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        $routeRequest=  \Request::route()->getName();
        $routeRequestPermission= $routeRequest=='admin.subject.store' ? 'add' : 'edit';
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Subject'])->first();
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
            'name'  => [
                'required', 
                Rule::unique('subjects','name')->where(function ($query)  {
                     return $query
                        ->where('school_code',$this->school_code)
                        ->where('id','!=',base64_decode($this->subject));
                }),
            ],
            'school_code'=>'required',
            'lang_code'=>'required',
        ];
    }
}
