<?php

namespace App\Imports;

use App\ProfessorProfile;
use App\University;
use App\College;
use DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithValidation;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\RemembersRowNumber;
use Maatwebsite\Excel\Concerns\WithChunkReading;
use Maatwebsite\Excel\Concerns\SkipsOnFailure;
use Illuminate\Contracts\Queue\ShouldQueue;
use Maatwebsite\Excel\Concerns\WithBatchInserts;


class ProfessorImport implements ToModel,WithValidation,WithChunkReading,WithHeadingRow,ShouldQueue,WithBatchInserts
{
    private $rows = 0;
    /**
    * @param Collection $collection
    */
    use RemembersRowNumber;
    public function model(array $row)
    {
        $country= DB::table('countries')->where('iso2',trim($row['3']))->first();
        if($country){
            $university= University::where(['university_code'=>trim($row['1']),'country_code'=>trim($row['3'])])->first();
            if($university){
                $college= College::where(['college_code'=>trim($row['2']),'university_code'=> trim($row['1'])])->first();
                if($college){
                    $countData= ProfessorProfile::lastPId(trim($row['2']));
                    $professor_code=trim($row['2']).sprintf("%02d", ($countData+1));
                     ++$this->rows;
                    //  return new ProfessorProfile([
                    //    'name'     => trim($row['0']),
                    //    'university_code'    => trim($row['1']), 
                    //    'college_code'    => trim($row['2']), 
                    //    'country'    => trim($row['3']), 
                    //    'professor_code'    => $professor_code, 
                    // ]);
                    return new ProfessorProfile([
                        'name'     => 'deepan',
                        'university_code'    => 'uco1', 
                        'college_code'    => 'col01', 
                        'country'    => 'coo1', 
                        'professor_code'    => 'pc01', 
                     ]);
                }
            }
        }
    }
    public function onFailure(Failure ...$failures)
    {
    }
    public function rules(): array
    {

        return [
            0 => 'required|string',
            1 => 'required|string',
            2 => 'required',
            3 => 'required',
        ];
    }
    // public function batchSize(): int
    // {
    //     return 1000;
    // }
     public function startRow(): int
    {
        return 2;
    }
     public function chunkSize(): int
    {
        return 400;
    }
     public function getRowCount(): int
    {
        return $this->rows;
    }
}
