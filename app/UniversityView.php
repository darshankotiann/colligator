<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UniversityView extends Model
{

    protected $table = 'university_view';


    protected $fillable = ['name', 'university_code', 'country_code', 'lang_code', 'status', 'is_delete', 'is_active'];

    public function college()
    {
        return $this->hasMany(College::class, 'university_code', 'university_code');
    }

    public function active_college()
    {
        return $this->college()->where('colleges.is_delete', '=', 0);
    }
    public function all_active_college()
    {
        return $this->college()->where(['colleges.is_delete' => 0, 'colleges.status' => 1]);
    }
    public static function lastUIId($countryCode)
    {
        return University::where('is_delete', 0)->where('country_code', $countryCode)->count();
    }
    public function universityReviewMost()
    {
        return University::hasMany(UniversityRating::class, 'university_id', 'id')->where('university_ratings.parent_id', 0);
    }
}