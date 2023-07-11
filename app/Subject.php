<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\School;
class Subject extends Model
{
    protected $fillable=['name','subject_code','school_code'];

    public function school()
    {
    	return $this->belongsTo(School::class,'school_code','school_code');
    }
    public static function lastSCId($school_code)
    {
    	return Subject::where('is_delete', 0)->where('school_code',$school_code)->count();
    }
}
