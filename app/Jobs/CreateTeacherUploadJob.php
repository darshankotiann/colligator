<?php

namespace App\Jobs;

use App\TeacherProfile;
use App\School;
use App\Subject;
use DB;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class CreateTeacherUploadJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    protected $data;
    public function __construct($data)
    {
        $this->data = $data;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $row = $this->data;
        $country= DB::table('countries')->where('iso2',trim($row['country_code']))->first();
        if($country){
            $school= School::where(['school_code'=>trim($row['high_school_code']),'country_code'=>trim($row['country_code'])])->first();
            if($school){
                $subject= Subject::where(['subject_code'=>trim($row['subject_code']),'school_code'=> trim($row['high_school_code'])])->first();
                if($subject){
                    $countData= TeacherProfile::lastTId(trim($row['subject_code']));
                    $teacherCode=trim($row['subject_code']).sprintf("%02d", ($countData+1));
                    $TeacherProfile = new TeacherProfile;
                    $TeacherProfile['name']     = trim($row['teacher_name']);
                    $TeacherProfile['school_code']    = trim($row['high_school_code']); 
                    $TeacherProfile['subject_code']    = trim($row['subject_code']); 
                    $TeacherProfile['country']    = trim($row['country_code']);
                    $TeacherProfile['teacher_code']    = $teacherCode; 
                    $TeacherProfile->save();                    
                }
            }
        }
    }
}
