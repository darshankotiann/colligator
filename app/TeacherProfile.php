<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TeacherProfile extends Model
{
	protected $table= 'teacher_profiles';
	protected $fillable = ['name','country','school_code','subject_code','profile','teacher_code','lang_code','user_added','is_active']; 
    public  function school()
    {
        return $this->belongsTo(School::class,'school_code','school_code');
    }
    public  function all_active_school()
    {
        return $this->school()->where(['is_delete'=>0 , 'status'=>1]);
    }
    public  function subject()
    {
        return $this->belongsTo(Subject::class,'subject_code','subject_code');
    }
    public  function all_active_subject()
    {
    	return $this->subject()->where(['is_delete'=>0 , 'status'=>1]);
    }
    public static function lastTId($subjectId)
    {
        return TeacherProfile::where('subject_code',$subjectId)->count();
    }
    public static function lastTData($subjectId)
    {
		return TeacherProfile::where('subject_code',$subjectId)->orderBy('teacher_code','desc')->limit(1);
    }
    public function TeacherReviewMost()
    {
        return TeacherProfile::hasMany(TeacherRating::class,'teacher_id','id')->where('teacher_ratings.parent_id',0);
    }
}
