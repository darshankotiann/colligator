@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="container">
                    <hr>
                    <div class="progress" id="blips">
                        <div class="progress-bar" role="progressbar">
                            <span class="sr-only"></span>
                        </div>
                    </div>
                    {{-- <button class="btn btn-default">Stop</button> --}}
            </div>
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <h4 class="card-title">College <span id="total-record"></span></h4>
                        <div class="row card-title-desc">
                            <p class=" col-2 "> List Of all College.</p>
                            
                            <div class="form-group mb-0 col-6">
                                {{ Form::open(array('action' => 'Admin\CollegeController@RangeSearch','method'=>'post','id'=>'rangeForm')) }}
                                @csrf
                                <div class="row">
                                <label class="col-3 float-right"><p style="float:right;">Range Filter:</p></label>
                                    <div class="input-daterange input-group col-6" data-provide="datepicker" data-date-format="dd M yyyy" data-date-autoclose="true">
                                        <input type="text" class="form-control startdate" value="{{isset($StartDates) ? $StartDates : '' }}" onchange="dateAjax()" placeholder="start date" name="start" />
                                        <input type="text" class="form-control enddate" value="{{isset($EndDates) ? $EndDates :''}}" onchange="dateAjax()" placeholder="end date" name="end" />
                                    </div>
                                        <a style="float: right;" class="col-2 btn btn-danger waves-effect waves-light mr-2" href="{{route('admin.college.index')}}">Reset   </a>
                                </div>
                                {{ Form::close() }}
                            </div>
                            <div class="col-md-2">
                                <button type="button" class="btn btn-primary waves-effect waves-light w-100 mr-1 float-right" data-toggle="modal" data-target="#staticBackdrop">Import College</button>
                                @error('import_file')
                                    <p class="error form-errors mb-0">{{ $message }}</p>
                                @enderror
                            </div>

                            <?php
                            if(Auth::guard('admin')->user()->role==2){

                                if(!empty($permissions) && $permissions['add']==1){ ?>  
                                    <a style="float: right;" class="col-2 btn btn-primary waves-effect waves-light h-100" href="{{route('admin.college.create')}}">Add College  <i class="ri-arrow-right-line align-middle ml-2"></i> </a>
                                <?php }
                            }else
                            { ?>
                                <a style="float: right;" class="col-2 btn btn-primary waves-effect waves-light h-100" href="{{route('admin.college.create')}}">Add College  <i class="ri-arrow-right-line align-middle ml-2"></i> </a>
                            <?php }
                             ?>

                        </div>
                        <div class="maintable">
                            @include('admin.college.collegeTable')
                        </div>

                         <div class="col-sm-6 col-md-4 col-xl-3">
                            
                            <!-- Modal -->
                            <div class="modal fade" id="staticBackdrop" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="staticBackdropLabel">Import College</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                            {{Form::open(array('route'=>'admin.college.import','method'=>'post','enctype'=>'multipart/form-data', 'id' => 'collegeImportForm'))}}
                                        <div class="modal-body">
                                            <p>Please follow the given format to import file, else error may arise. For your reference use this sample file.<a href="{{asset('college/college.xlsx')}}" download> Download</a>
                                            <input type="file" name="import_file" class="form-control" required>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-light waves-effect" data-dismiss="modal">Close</button>
                                            <button type="submit" class="btn btn-primary waves-effect waves-light" id="collegeupload">Upload</button>
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

    <input type="hidden" name="token-csrf" value="{{ csrf_token() }}">
    <input type="hidden" name="college_count" value="{{ Session::get('college_count') }}">


   <script type="text/javascript">
        var collegeCount = $('[name="college_count"]').val();
        var collegeCount1 = collegeCount;
        $(function() {
            
            if (collegeCount1 == '' || collegeCount1 == 0) {
                return false
            }

            var timerId = 0;
            var ctr = 0;
            var max = 20;

            timerId = setInterval(function() {


                $.ajax({
                    type: "POST",
                    url: "college/queue",
                    data: {
                        "collegeCount1": collegeCount1
                    },
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },

                    success: function(data) {
                        if (data == 0) {
                            clearInterval(timerId);
                        }
                        if (collegeCount1 == 0) {
                            $('[name="college_count"]').val('')
                            location.reload()
                        } else {
                            var dd = $('[name="college_count"]').val(collegeCount - data);
                            location.reload()
                        }

                        $('#total-record').text(data)

                        $('#blips > .progress-bar').attr("style", "width:" + ((100 * data) /
                            collegeCount).toFixed(2) + "%");

                        collegeCount1 = dd.val()

                        console.log(collegeCount1, collegeCount, data)

        
                    }
                });


            }, 10000);


            $('.btn-default').click(function() {
                clearInterval(timerId);
            });


        });
    </script>

<script>
    $(document).ready(function() {
        $("#collegeImportForm").submit(function() {
                $("#collegeupload").attr("disabled", true);

        });
    });
</script>
@endsection
