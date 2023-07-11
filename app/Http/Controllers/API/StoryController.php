<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use App\Story;
class StoryController extends Controller
{
    public function index()
    {

        $users= DB::table("users")->whereRaw("find_in_set('".auth()->user()->id."',followers)")->pluck('id');
        $stories= Story::whereIn('user_id',$users)->get();
        return $stories;
    }
}
