<?php

namespace App\Http\Controllers\Admin;

use App\HighSchool;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
use App\Helpers\Helper;
use App\Http\Requests\StoreProfessorRequest;
use App\Imports\ProfessorImport;
use Maatwebsite\Excel\Facades\Excel;
use File;
 
class HighSchoolController extends Controller
{
    protected $highSchoolData;
    
    function __construct(HighSchool $highSchool){
        $this->highSchoolData = $highSchool;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $permissions= Helper::PermissionGet('HighSchool');
        $highSchool= $this->highSchoolData::select('high_schools.*','countries.name as countryName')->with(['school','subject'])->join('countries','high_schools.country','countries.iso2')->where('high_schools.is_delete',0)->latest('high_schools.id')->get();
            return view('admin.highschool.list',compact('highSchool','permissions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\HighSchool  $highSchool
     * @return \Illuminate\Http\Response
     */
    public function show(HighSchool $highSchool)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\HighSchool  $highSchool
     * @return \Illuminate\Http\Response
     */
    public function edit(HighSchool $highSchool)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\HighSchool  $highSchool
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, HighSchool $highSchool)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\HighSchool  $highSchool
     * @return \Illuminate\Http\Response
     */
    public function destroy(HighSchool $highSchool)
    {
        //
    }
}
