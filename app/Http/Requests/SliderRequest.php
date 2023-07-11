<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SliderRequest extends FormRequest
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
           switch($this->method())
        {
            case 'POST':
            {
                 return [
                    'country'=>'required',
                    'link'=>'nullable|url',
                    // 'title_en'=>'required|max:250',
                    // 'title_ar'=>'required|max:250',
                    'description_en'=>'nullable',
                    'description_ar'=>'nullable',
                    'image'=>'required|mimes:jpeg,jpg,png|max:10000',
                ];
            }
            case 'PATCH':
            {
                return [
                    'country'=>'required',
                    'link'=>'nullable|url',
                    'title_en'=>'required|max:250',
                    'title_ar'=>'required|max:250',
                    'description_en'=>'nullable',
                    'description_ar'=>'nullable',
                    'image'=>'nullable|mimes:jpeg,jpg,png|max:10000'
                ];
            }
            default:break;
        }
    }
}
