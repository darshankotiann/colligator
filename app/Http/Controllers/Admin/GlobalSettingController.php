<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\GlobalSetting;
use Illuminate\Http\Request;
use File;
class GlobalSettingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $setting= GlobalSetting::first()->toArray();
        return view('admin.setting.gsetting',compact('setting'));
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
     * @param  \App\GlobalSetting  $globalSetting
     * @return \Illuminate\Http\Response
     */
    public function show(GlobalSetting $globalSetting)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\GlobalSetting  $globalSetting
     * @return \Illuminate\Http\Response
     */
    public function edit(GlobalSetting $globalSetting)
    {
        $setting= GlobalSetting::first()->toArray();
        return view('admin.setting.gsetting_edit',compact('setting'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\GlobalSetting  $globalSetting
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $request->validate([
            'name' =>'required|min:3|max:55',
            'email' =>'email|required',
            'phone_no' =>'required',
            'address' =>'required',
            'footer' =>'required',
            'logo' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'favicon' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
   
        $globalSetting= GlobalSetting::find(1);
        $globalSetting->name = $request->name;
        $globalSetting->email = $request->email;
        $globalSetting->phone_no = $request->fullphone_no;
        $globalSetting->address = $request->address;
        $globalSetting->footer = $request->footer;
        $globalSetting->latitude = $request->latitude;
        $globalSetting->longtitude = $request->longtitude;
        $globalSetting->google_analytic_script = $request->google_analytic_script;
        $globalSetting->facebook = $request->facebook;
        $globalSetting->twitter = $request->twitter;
        $globalSetting->linkedin = $request->linkedin;
        $globalSetting->youtube = $request->youtube;
        $globalSetting->instagram = $request->instagram;
        $globalSetting->play_store = $request->play_store;
        $globalSetting->app_store = $request->app_store;
        $globalSetting->university_rating = ($request->university_rating==1 ? 1 : 0);
        $globalSetting->teacher_rating = ($request->teacher_rating==1 ? 1 : 0);
        $globalSetting->professor_rating = ($request->professor_rating==1 ? 1 : 0);
        $globalSetting->slider_view = ($request->slider_view==1 ? 1 : 0);
        $globalSetting->about_us_view = ($request->about_us_view==1 ? 1 : 0);
        $globalSetting->news_view = ($request->news_view==1 ? 1 : 0);
        $globalSetting->private_message = ($request->private_message==1 ? 1 : 0);
        $globalSetting->show_language = ($request->show_language==1 ? 1 : 0);
        
        $globalSetting->find_rate_teacher = ($request->find_rate_teacher==1 ? 1 : 0);
        $globalSetting->find_rate_university = ($request->find_rate_university==1 ? 1 : 0);
        $globalSetting->university_school = ($request->university_school==1 ? 1 : 0);
        $globalSetting->country_banner = ($request->country_banner==1 ? 1 : 0);
        if($request->file('logo')){
            if(File::exists(public_path('setting/'.$globalSetting->logo))){
                File::delete(public_path('setting/'.$globalSetting->logo));
            }
            $logoimageName = time().'logo.'.$request->logo->extension();  

            $imagebase64 = base64_encode(file_get_contents($request->file('logo')));
            $request->logo->move(public_path('setting'), $logoimageName);
            $globalSetting->logo = $logoimageName;
           $globalSetting->logo_base64 = $imagebase64;
        }
        if($request->file('favicon')){
            if(File::exists(public_path('setting/'.$globalSetting->favicon))){
                File::delete(public_path('setting/'.$globalSetting->favicon));
            }
            $faviconimageName = time().'favicon.'.$request->favicon->extension();  

            $imagebase64 = base64_encode(file_get_contents($request->file('favicon')));
            $request->favicon->move(public_path('setting'), $faviconimageName);
            $globalSetting->favicon = $faviconimageName;
           }
        $globalSetting->save();
        toastr()->success('Setting Updated Successfully');
        return redirect()->route('admin.global_setting.edit');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\GlobalSetting  $globalSetting
     * @return \Illuminate\Http\Response
     */
    public function destroy(GlobalSetting $globalSetting)
    {
        //
    }
    public function BackupData()
    {
        $host = 'localhost';
        $user = 'collegator_usr';
        $pass = 'IfRDrUQHlimCv';
        $dbname = 'collegator_db';
        $tables = '*';
        
               $link = mysqli_connect($host,$user,$pass, $dbname);
        
            // Check connection
            if (mysqli_connect_errno())
            {
                echo "Failed to connect to MySQL: " . mysqli_connect_error();
                exit;
            }
        
            mysqli_query($link, "SET NAMES 'utf8'");
        
            //get all of the tables
            if($tables == '*')
            {
                $tables = array();
                $result = mysqli_query($link, 'SHOW TABLES');
                while($row = mysqli_fetch_row($result))
                {
                    $tables[] = $row[0];
                }
            }
            else
            {
                $tables = is_array($tables) ? $tables : explode(',',$tables);
            }
        
            $return = '';
            //cycle through
            foreach($tables as $table)
            {
                $result = mysqli_query($link, 'SELECT * FROM '.$table);
                $num_fields = mysqli_num_fields($result);
                $num_rows = mysqli_num_rows($result);
        
                $return.= 'DROP TABLE IF EXISTS '.$table.';';
                $row2 = mysqli_fetch_row(mysqli_query($link, 'SHOW CREATE TABLE '.$table));
                $return.= "\n\n".$row2[1].";\n\n";
                $counter = 1;
        
                //Over tables
                for ($i = 0; $i < $num_fields; $i++) 
                {   //Over rows
                    while($row = mysqli_fetch_row($result))
                    {   
                        if($counter == 1){
                            $return.= 'INSERT INTO '.$table.' VALUES(';
                        } else{
                            $return.= '(';
                        }
        
                        //Over fields
                        for($j=0; $j<$num_fields; $j++) 
                        {
                            $row[$j] = addslashes($row[$j]);
                            $row[$j] = str_replace("\n","\\n",$row[$j]);
                            if (isset($row[$j])) { $return.= '"'.$row[$j].'"' ; } else { $return.= '""'; }
                            if ($j<($num_fields-1)) { $return.= ','; }
                        }
        
                        if($num_rows == $counter){
                            $return.= ");\n";
                        } else{
                            $return.= "),\n";
                        }
                        ++$counter;
                    }
                }
                $return.="\n\n\n";
            }
            // $handle = fopen('db-backup.sql','w+');
            // fwrite($handle,$return);
            // fclose($handle);
            //add below code to download it as a sql file
            Header('Content-type: application/octet-stream');
            Header('Content-Disposition: attachment; filename=db-backup.sql');
            echo $return;
    }
}
