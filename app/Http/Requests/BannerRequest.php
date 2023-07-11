<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class BannerRequest extends FormRequest
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
        $countryCode = $this->country_code;
        $selectedType = $this->type;
        $selectedId = $this->university_code;
        $schoolCode = $this->school_code;
        // dd($schoolCode);
        $selectedBanner= $this->banner;
        
        switch($this->method()){
            case 'POST':{
                return [
                'country_code' => 'required',
                 
                  'type'=>['required', Rule::unique('banners')->where(function ($query) use($selectedId,$schoolCode,$selectedType,$countryCode) {
                    return $query->where('type', $selectedType)->where('country_code', $countryCode)->where('university_code', $selectedId)->where('school_code', $schoolCode);

                    }),
                ],  

                'text_en' => 'nullable|min:3|max:255',
                'link' => 'nullable|url',
                'text_ar' => 'nullable|min:3|max:255',
                'image' => 'required|mimes:jpeg,jpg,png,mp4|max:10240',
                "university_code" => "required_if:type,==,3|unique:banners,university_code,",
                "school_code" => "required_if:type,==,5|unique:banners,school_code,",
                ];

            
            }
            case 'PATCH':{
                return [
                'country_code' => 'required',
                'type'=>['required', Rule::unique('banners')->where(function ($query) use($selectedId,$schoolCode,$selectedType,$countryCode,$selectedBanner) {
                    return $query->where('type', $selectedType)->where('country_code', $countryCode)->where('university_code', $selectedId)->where('school_code', $schoolCode)->where('id','!=', base64_decode($selectedBanner));

                    }),
                ],  
  
                // 'type'=>['required', Rule::unique('banners')->where(function ($query) use($selectedId,$school_code) {
                //     return $query->where('university_code', $selectedId)->where('school_code', $school_code);

                //     }),

                'text_en' => 'nullable|min:3|max:255',
                'link' => 'nullable|url',
                'text_ar' => 'nullable|min:3|max:255',
                'image' => 'mimes:jpeg,jpg,png,mp4|max:10240',
                "university_code" => "required_if:type,==,3|unique:banners,university_code,".base64_decode($selectedBanner),
                "school_code" => "required_if:type,==,5|unique:banners,school_code,".base64_decode($selectedBanner),
                ];
                
            }
        }

    }

        public function messages() {
            return [
            'university_code.required_if' => 'Please Make University First',
            'school_code.required_if' => 'Please Make School First',

        ];
    }
}
