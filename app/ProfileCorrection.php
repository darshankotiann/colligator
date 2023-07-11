<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProfileCorrection extends Model
{
    protected $table= 'suggestions';
    protected $fillable = ['suggestion','teacher_professor_id','type','is_approved','is_delete']; 

    public  function teacher()
    {
    	return $this->belongsTo("App\TeacherProfile","teacher_professor_id","id");
    }
    public  function professor()
    {
    	return $this->belongsTo("App\ProfessorProfile","teacher_professor_id","id");
    }
    public  function university()
    {
    	return $this->belongsTo("App\University","teacher_professor_id","id");
    }
    public  function user()
    {
    	return $this->belongsTo("App\User","user_id","id");
    }
}
