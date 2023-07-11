<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProfessorProfile extends Model
{
    protected $fillable = [
        'name', 'profile', 'university_code', 'college_code', 'professor_code', 'country', 'status', 'is_delete', 'user_added', 'is_active',
    ];
    // protected $attributes = [
    //    'name' => 'deepanshu',
    //    'profile' => 'deepanshu',
    //    'university_code' => 'deepanshu',
    //    'college_code' => 'deepanshu',
    //    'professor_code' => 'deepanshu',
    //    'country' => 'deepanshu',
    //    'status' => 'deepanshu',
    //    'is_delete' => 'deepanshu',
    //    'user_added' => 'deepanshu',
    //    'is_active' => 'deepanshu',
    // ];
    public static function lastPId($collegeId)
    {
        return ProfessorProfile::where('college_code', $collegeId)->count();
    }
    public static function lastPData($collegeId)
    {
        return ProfessorProfile::where('college_code', $collegeId)->orderBy('professor_code', 'desc')->limit(1);
    }
    public function College()
    {
        return $this->belongsTo(College::class, 'college_code', 'college_code');
    }
    public function all_active_college()
    {
        return $this->College()->where(['colleges.is_delete' => 0, 'colleges.status' => 1]);
    }
    public function University()
    {
        return $this->belongsTo(University::class, 'university_code', 'university_code');
    }
    public function all_active_university()
    {
        return $this->University()->where(['universities.is_delete' => 0, 'universities.status' => 1]);
    }
    public function ProfessorReviewMost()
    {
        return ProfessorProfile::hasMany(ProfessorRating::class, 'professor_id', 'id')->where('professor_ratings.parent_id', 0);
    }
    public function ProfessorReviewTop()
    {
        return ProfessorProfile::hasMany(ProfessorRating::class, 'professor_id', 'id')->orderBy('rate_professor', 'DESC')->where('professor_ratings.parent_id', 0);
    }
}
