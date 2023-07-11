<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\CmsPages;
use App;
use DB;
class CMSController extends Controller
{

    public function View($slug='')
    {
    	$content= CmsPages::where('slug',$slug)->first();
    	$type= session()->get('locale')?? 'en';
    	return view('frontend.cms',compact('content','type'));
    }
    
}
