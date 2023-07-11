<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Country;

class Banner extends Model
{
    protected $fillable = ['type', 'country_id',  'school_code', 'country_code', 'image', 'text_ar', 'text_en', 'is_active', 'link'];

    public function country()
    {
        return $this->belongsTo('App\Country', 'country_code', 'iso2')->withDefault(
            ['name' => 'No Country']
        );
    }

    public function school()
    {
        return $this->belongsTo(School::class, 'school_code', 'school_code');
    }

    //  public  function university()
    // {
    //     return $this->belongsTo(University::class, 'university_code', 'university_code');
    // }

}
