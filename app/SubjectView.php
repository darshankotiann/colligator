<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\School;

class SubjectView extends Model
{
    protected $table = 'subject_view';
    protected $fillable = ['name', 'subject_code', 'school_code', 'lang_code', 'status', 'is_delete'];

    public function school()
    {
        return $this->belongsTo(School::class, 'school_code', 'school_code');
    }
    public static function lastSCId($school_code)
    {
        return Subject::where('school_code', $school_code)->count();
    }
}