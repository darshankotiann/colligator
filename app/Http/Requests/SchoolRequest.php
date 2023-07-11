<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Auth;
use App\Permissions;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class SchoolRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        $routeRequest=  \Request::route()->getName();
        $routeRequestPermission= $routeRequest=='admin.school.store' ? 'add' : 'edit';
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'School'])->first();
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
                Rule::unique('schools','name')->where(function ($query)  {
                     return $query
                        ->where('country_code',$this->country_code)
                        ->where('id','!=',base64_decode($this->school));
                }),
            ],
        // 'name'=>'required|string|min:3|max:50|unique:schools,name,'.base64_decode($this->school),
        'country_code'=>'required',
        'lang_code'=>'required',
        ];
    }
    public function messages()
    {
        return [
            'country_code.required' => 'Country is required',
            'lang_code.required' => 'Language Code is required',
        ];
    }
    
}
