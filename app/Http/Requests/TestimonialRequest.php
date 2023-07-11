<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class TestimonialRequest extends FormRequest
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
            'title_en'=>'required|max:250',
            'title_ar'=>'required|max:250',
            'description_en'=>'required',
            'description_ar'=>'required',
            'image'=>'nullable|mimes:jpeg,jpg,png|max:10000',
        ];
    }
}
