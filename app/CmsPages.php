<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CmsPages extends Model
{
        protected $fillable = [
    	    'title_en', 'title_ar', 'content_en','content_ar',
	    ];
}
