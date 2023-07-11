<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CollegeView extends Model
{
    protected $table = 'college_view';
    public $incrementing = false;
    protected $fillable = ['name', 'university_code', 'college_code', 'status', 'is_delete'];

    public  function university()
    {
        return $this->belongsTo(University::class, 'university_code', 'university_code');
    }
    public  function professor()
    {
        return $this->hasMany(ProfessorProfile::class, 'college_code', 'college_code');
    }
    public static function lastCIId($universityCode)
    {
        return College::where('is_delete', 0)->where('university_code', $universityCode)->count();
    }
}