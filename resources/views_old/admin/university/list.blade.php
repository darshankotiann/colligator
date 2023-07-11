@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <h4 class="card-title">University</h4>
                        <div class="row card-title-desc">
                            <p class=" col-2 "> List Of all University.</p>
                            <div class="form-group mb-0 col-6">
                                {{ Form::open(array('action' => 'Admin\UniversityController@RangeSearch','method'=>'post')) }}
                                @csrf
                                <div class="row">
                                    <label class="col-2">Range Filter</label>
                                        <div class="input-daterange input-group col-5" data-provide="datepicker" data-date-format="dd M yyyy" data-date-autoclose="true">
                                            <input type="text" class="form-control startdate" value="{{isset($StartDates) ? $StartDates : '' }}" onchange="dateAjax()" placeholder="start date" name="start" />
                                            <input type="text" class="form-control enddate" value="{{isset($EndDates) ? $EndDates :''}}" onchange="dateAjax()" placeholder="end date" name="end" />
                                        </div>
                                    <button type="submit" class="btn btn-info mr-2 col-2">Submit</button>
                                    <a style="float: right;" class="col-2 btn btn-danger waves-effect waves-light " href="{{route('admin.university.index')}}">Reset </a>
                                </div>
                                {{ Form::close() }}
                                
                            </div>
                            <div class="col-2">
                            <button type="button" class="btn btn-primary waves-effect waves-light float-right" data-toggle="modal" data-target="#staticBackdrop">Import University</button>
                                 @error('import_file')
                                <p class="error form-errors mb-0">{{ $message }}</p>
                                @enderror
                            </div>
                            <?php
                            if(Auth::guard('admin')->user()->role==2){

                                if(!empty($permissions) && $permissions['add']==1){ ?>  
                                    <a style="float: right;" class="col-2 btn btn-primary waves-effect waves-light h-100" href="{{route('admin.university.create')}}">Add University  <i class="ri-arrow-right-line align-middle ml-2"></i> </a>
                                <?php }
                            }else
                            { ?>
                                <a style="float: right;" class="col-2 btn btn-primary waves-effect waves-light h-100" href="{{route('admin.university.create')}}">Add University  <i class="ri-arrow-right-line align-middle ml-2"></i> </a>
                            <?php }
                             ?>

                        </div>
                        <div class="maintable">
                            @include('admin.university.universityTable')
                        </div>
                         <div class="col-sm-6 col-md-4 col-xl-3">
                            
                            <!-- Modal -->
                            <div class="modal fade" id="staticBackdrop" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="staticBackdropLabel">Import University</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                            {{Form::open(array('route'=>'admin.university.import','method'=>'post','enctype'=>'multipart/form-data'))}}
                                        <div class="modal-body">
                                            <p>Please follow the given format to import file, else error may arise. For your reference use this sample file.<a href="{{asset('university/university.xlsx')}}" download> Download</a>
                                            <input type="file" name="import_file" class="form-control" required>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-light waves-effect" data-dismiss="modal">Close</button>
                                            <button type="submit" class="btn btn-primary waves-effect waves-light">Upload</button>
                                        </div>
                                            {{Form::close()}}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- end col -->
        </div> <!-- end row -->
    </div>
</div>
@endsection
