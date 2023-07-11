<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;
class TeacherRating extends Model
{
	protected  $fillable=['teacher_id','schoolrange','easyrange','homerange','message','parent_id','is_delete','user_id','likes','dislikes','report','selected_user_id','is_abuse'];
    
    public function users()
    {
    	return TeacherRating::belongsTo(User::class,'user_id','id');
    }
    public function parent()
	{
	    return $this->belongsTo('App\TeacherRating','parent_id','id')->where(['is_delete'=>0])->orderBy('id','desc')->with('parent');
	}
    public function adminparent()
	{
	    return $this->belongsTo('App\TeacherRating','parent_id')->where(['parent_id'=>0])->orderBy('id','desc')->with('adminparent');
	}
    public function selectedUser()
	{
	    return $this->belongsTo(User::class,'selected_user_id','id')->withDefault([
			'systemNickname' => '',
		]);
	}

	public function children()
	{
	    return $this->hasMany('App\TeacherRating','parent_id')->where('is_delete',0)->orderBy('id','desc')->with('children');
	}
	public function adminchildren()
	{
	    return $this->hasMany('App\TeacherRating','parent_id')->orderBy('id','desc')->with('adminchildren');
	}
}
