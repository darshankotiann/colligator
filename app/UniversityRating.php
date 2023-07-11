<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
class UniversityRating extends Model
{
    	protected  $fillable=['university_id','professor_range','course_range','facility_range','message','parent_id','is_delete','user_id','likes','dislikes','report','selected_user_id','is_abuse'];

    public function users()
    {
    	return UniversityRating::belongsTo(User::class,'user_id','id');
    }
    public function parent()
	{
	    return $this->belongsTo('App\UniversityRating','parent_id')->where(['parent_id'=>0,'is_delete'=>0])->orderBy('id','desc')->with('parent');
	}
    public function adminparent()
	{
	    return $this->belongsTo('App\UniversityRating','parent_id')->where(['parent_id'=>0])->orderBy('id','desc')->with('adminparent');
	}
    public function selectedUser()
	{
	    return $this->belongsTo(User::class,'selected_user_id','id')->withDefault([
			'systemNickname' => '',
		]);
	}

	public function children()
	{
	    return $this->hasMany('App\UniversityRating','parent_id')->where('is_delete',0)->orderBy('id','desc')->with('children');
	}
	public function adminchildren()
	{
	    return $this->hasMany('App\UniversityRating','parent_id')->orderBy('id','desc')->with('adminchildren');
	}
}
