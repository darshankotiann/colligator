<?php

namespace App\Imports;
use App\TeacherProfile;
use App\School;
use App\Subject;
use DB;
use App\Jobs\CreateSchoolUploadJob;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithValidation;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\RemembersRowNumber;
use Maatwebsite\Excel\Concerns\WithChunkReading;
use Maatwebsite\Excel\Concerns\SkipsOnFailure;

class SchoolImport implements ToModel,WithValidation,WithHeadingRow
{
   private $rows = 0;

    /**
    * @param Collection $collection
    */
    use RemembersRowNumber;
    public function model(array $row)
    {
        $this->rows++;
        dispatch(new CreateSchoolUploadJob($row));
   
    }
    public function onFailure(Failure ...$failures)
    {
        // Handle the failures how you'd like.
    }
    public function rules(): array
    {

        return [
            'high_school_name' => 'required|string',
            'country_code' => 'required|string',
            'language' => 'required',
        ];
    }
    public function chunkSize(): int
    {
        return 1000;
    }
     public function startRow(): int 
    {
         return 2;
    }

    public function batchSize(): int
    {
        return 1000;
    }
     public function getRowCount(): int
    {
        return $this->rows;
    }
}

