<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class University extends Model
{

    protected $fillable=['name','university_code','country_code','lang_code','status','is_delete','is_active'];

      public function country()
    {
        return $this->belongsTo('App\Country','country_code','iso2')->withDefault(
            ['name'=>'No Country']
        );
    }

    public function college()
    {
    	return $this->hasMany(College::class,'university_code','university_code');
    }

    public function banner()
    {
        return $this->hasMany(Banner::class, 'university_code', 'university_code');
    }

    public function active_college() {
        return $this->college()->where('colleges.is_delete','=', 0);
    }

    public function active_banner()
    
    {
        return $this->banner()->where('banners.is_active', '=', 1);
    }

    public function all_active_college() {
        return $this->college()->where(['colleges.is_delete'=> 0,'colleges.status' =>1]);
    }
    public static function lastUIId($countryCode)
    {
		return University::where('is_delete', 0)->where('country_code',$countryCode)->count();
    }
    public function universityReviewMost()
    {
        return University::hasMany(UniversityRating::class,'university_id','id')->where('university_ratings.parent_id',0);
    }
}
