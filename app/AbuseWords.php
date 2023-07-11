<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AbuseWords extends Model
{
    protected $table= "abuse_words";
    protected $fillable= ['word'];
}
