<?php

namespace App\Imports;

use App\ProfessorProfile;
use App\University;
use App\College;
use DB;
use App\Jobs\CreateProfessorUploadJob;
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


class ProfessorImport implements ToModel,WithValidation,WithHeadingRow
{
    private $rows = 0;
    /**
    * @param Collection $collection
    */
    use RemembersRowNumber;
    public function model(array $row)
    {
        $this->rows++;
        dispatch(new CreateProfessorUploadJob($row));

    }
    public function onFailure(Failure ...$failures)
    {
    }
    public function rules(): array
    {

        return [
            'professor_name' => 'required|string',
            'university_code' => 'required|string',
            'college_code' => 'required',
            'country' => 'required',
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
