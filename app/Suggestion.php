<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Suggestion extends Model
{
    protected $fillable=['suggestion','teacher_professor_id','type','is_approved','is_delete','user_id'];
}
