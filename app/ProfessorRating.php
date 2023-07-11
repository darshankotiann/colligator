<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProfessorRating extends Model
{
    protected  $fillable=['professor_id','course_code','study_type','rate_professor','easyness_range','repeat','textbook','attendance','grade','message','parent_id','is_delete','user_id','likes','dislikes','report','selected_user_id','is_abuse'];

    public function users()
    {
    	return ProfessorRating::belongsTo(User::class,'user_id','id');
    }
	public function userdata()
    {
    	return ProfessorRating::belongsTo(User::class,'user_id','id');
    }
    public function parent()
	{
	    return $this->belongsTo('App\ProfessorRating','parent_id')->where(['parent_id'=>0,'is_delete'=>0])->orderBy('id','desc')->with('parent');
	}
    public function adminparent()
	{
	    return $this->belongsTo('App\ProfessorRating','parent_id')->where(['parent_id'=>0])->orderBy('id','desc')->with('adminparent');
	}
    public function selectedUser()
	{
	    return $this->belongsTo(User::class,'selected_user_id','id')->withDefault([
			'systemNickname' => '',
		]);
	}

	public function children()
	{
	    return $this->hasMany('App\ProfessorRating','parent_id')->where('is_delete',0)->orderBy('id','desc')->with('children');
	}
	public function adminchildren()
	{
	    return $this->hasMany('App\ProfessorRating','parent_id')->orderBy('id','desc')->with('adminchildren');
	}
}
