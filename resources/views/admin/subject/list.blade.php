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

                        <h4 class="card-title">Subject  <span id="total-record"></span></h4>
                        <div class="row card-title-desc">
                            <p class=" col-2 "> List Of all Subject.</p>
                            <div class="form-group mb-0 col-6">
                                {{ Form::open(array('action' => 'Admin\SubjectController@RangeSearch','method'=>'post','id'=>'rangeForm')) }}
                                @csrf
                                <div class="row">
                                <label class="col-3 float-right"><p style="float:right;">Range Filter:</p></label>
                                    <div class="input-daterange input-group col-6" data-provide="datepicker" data-date-format="dd M yyyy" data-date-autoclose="true">
                                        <input type="text" class="form-control startdate" value="{{isset($StartDates) ? $StartDates : '' }}" onchange="dateAjax()" placeholder="start date" name="start" />
                                        <input type="text" class="form-control enddate" value="{{isset($EndDates) ? $EndDates :''}}" onchange="dateAjax()" placeholder="end date" name="end" />
                                    </div>
                                    <a style="float: right;" class="col-2 btn btn-danger waves-effect waves-light mr-2" href="{{route('admin.subject.index')}}">Reset   </a>
                                </div>
                                {{ Form::close() }}
                            </div>
                            <div class="col-2">
                            <button type="button" class="btn btn-primary waves-effect waves-light w-100" data-toggle="modal" data-target="#staticBackdrop">Import Subject</button>
                                 @error('import_file')
                                <p class="error form-errors mb-0">{{ $message }}</p>
                                @enderror    
                            </div>
                            <?php
                            if(Auth::guard('admin')->user()->role==2){

                                if(!empty($permissions) && $permissions['add']==1){ ?>  
                                    <a style="float: right;" class="col-2 btn btn-primary waves-effect waves-light h-100" href="{{route('admin.subject.create')}}">Add Subject  <i class="ri-arrow-right-line align-middle ml-2"></i> </a>
                                <?php }
                            }else
                            { ?>
                                <a style="float: right;" class="col-2 btn btn-primary waves-effect waves-light h-100" href="{{route('admin.subject.create')}}">Add Subject  <i class="ri-arrow-right-line align-middle ml-2"></i> </a>
                            <?php }
                             ?>

                        </div>
                        <div class="maintable">
                            @include('admin.subject.subjectTable')
                        </div>
                        <div class="col-sm-6 col-md-4 col-xl-3">
                            
                            <!-- Modal -->
                            <div class="modal fade" id="staticBackdrop" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="staticBackdropLabel">Import Subject</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                            {{Form::open(array('route'=>'admin.subject.import','method'=>'post','enctype'=>'multipart/form-data', 'id' => 'subjectImportForm'))}}
                                        <div class="modal-body">
                                            <p>Please follow the given format to import file, else error may arise. For your reference use this sample file.<a href="{{asset('subject/subject.xlsx')}}" download> Download</a>
                                            <input type="file" name="import_file" class="form-control" required>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-light waves-effect" data-dismiss="modal">Close</button>
                                            <button type="submit" class="btn btn-primary waves-effect waves-light" id="subjectupload">Upload</button>
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
    <input type="hidden" name="subject_count" value="{{ Session::get('subject_count') }}">


   <script type="text/javascript">
        var subjectCount = $('[name="subject_count"]').val();
        var subjectCount1 = subjectCount;
        $(function() {
            
            if (subjectCount1 == '' || subjectCount1 == 0) {
                return false
            }

            var timerId = 0;
            var ctr = 0;
            var max = 20;

            timerId = setInterval(function() {


                $.ajax({
                    type: "POST",
                    url: "subject/queue",
                    data: {
                        "subjectCount1": subjectCount1
                    },
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },

                    success: function(data) {
                        if (data == 0) {
                            clearInterval(timerId);
                        }
                        if (subjectCount1 == 0) {
                            $('[name="subject_count"]').val('')
                            location.reload()
                        } else {
                            var dd = $('[name="subject_count"]').val(subjectCount - data);
                            location.reload()
                        }

                        $('#total-record').text(data)

                        $('#blips > .progress-bar').attr("style", "width:" + ((100 * data) /
                            subjectCount).toFixed(2) + "%");

                        subjectCount1 = dd.val()

                        console.log(subjectCount1, subjectCount, data)
        
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
        $("#subjectImportForm").submit(function() {
                $("#subjectupload").attr("disabled", true);

        });
    });
</script>
@endsection
