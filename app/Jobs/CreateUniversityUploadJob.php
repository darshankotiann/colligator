<?php

namespace App\Jobs;

use App\ProfessorProfile;
use App\University;
use App\College;
use DB;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class CreateUniversityUploadJob implements ShouldQueue
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
		$countData= University::lastUIId(trim($row['country_code']));
        $result= University::where(['country_code'=>trim($row['country_code']),'name'=>trim($row['university_name'])])->first();
		    if(empty($result))
            {
                $university_code=trim($row['country_code']).sprintf("%02d", ($countData+1));
                $university = new University;
                $university['name']     = trim($row['university_name']);
                $university['university_code']    = $university_code;
                $university['country_code']    = trim($row['country_code']);
                $university['lang_code']    = (strtoupper(trim($row['language_code']))=='AR' ? 2 : 1);
                $university->save();
            }
		}
    }
}
