<?php

namespace App\Imports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use DB;
use App\AbuseWords;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithValidation;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\RemembersRowNumber;
use Maatwebsite\Excel\Concerns\WithChunkReading;
use Maatwebsite\Excel\Concerns\SkipsOnFailure;
use Maatwebsite\Excel\Concerns\WithStartRow;
class AbuseWordImport implements ToModel,WithValidation,WithChunkReading,WithStartRow
{
   private $rows = 0;
    /**
    * @param Collection $collection
    */
    use RemembersRowNumber;
    public function model(array $row)
    {
	    $abuseword= AbuseWords::where(['word'=>trim($row['0'])])->first();
	    if(empty($abuseword)){
                 ++$this->rows;
                 return new AbuseWords([
                   'word'     => trim($row['0']),
                ]);
	    }
	}
    public function onFailure(Failure ...$failures)
    {
    }
    public function rules(): array
    {

        return [
            0 => 'required|string',
        ];
    }
    //  public function headingRow(): int
    // {
    //     return 1;
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
