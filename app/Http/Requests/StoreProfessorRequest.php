<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreProfessorRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' =>'required|min:3|max:55',
            'university_code' =>'required',
            'college_code' =>'required',
            'profile' =>'nullable|mimes:jpeg,jpg,png|max:10000',
            'country' =>'required',
        ];
    }
}
