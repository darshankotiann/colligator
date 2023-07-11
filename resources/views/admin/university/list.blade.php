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


                        <h4 class="card-title">University <span id="total-record"></span></h4>
                        <div class="row card-title-desc">
                            <p class=" col-2 "> List Of all University.</p>
                            <div class="form-group mb-0 col-6">
                                {{ Form::open(array('action' => 'Admin\UniversityController@RangeSearch','method'=>'post')) }}
                                @csrf
                                <div class="row">
                                    <label class="col-2 float-right"><p style="float:right;">Range Filter:</p></label>
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
                                            {{Form::open(array('route'=>'admin.university.import','method'=>'post','enctype'=>'multipart/form-data', 'id' => 'unversityImportForm'))}}
                                        <div class="modal-body">
                                            <p>Please follow the given format to import file, else error may arise. For your reference use this sample file.<a href="{{asset('university/university.xlsx')}}" download> Download</a>
                                            <input type="file" name="import_file" class="form-control" required>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-light waves-effect" data-dismiss="modal">Close</button>
                                            <button type="submit" class="btn btn-primary waves-effect waves-light" id="universityupload">Upload</button>
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
    <input type="hidden" name="univercity_count" value="{{ Session::get('univercity_count') }}">

   <script type="text/javascript">
        var univercityCount = $('[name="univercity_count"]').val();
        var univercityCount1 = univercityCount;
        $(function() {
            console.log(univercityCount1, 'univercityCount1')
            if (univercityCount1 == '' || univercityCount1 == 0) {
                return false
            }

            var timerId = 0;
           

            timerId = setInterval(function() {


                $.ajax({
                    type: "POST",
                    url: "university/queue",
                    data: {
                        "univercityCount1": univercityCount1
                    },
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },

                    success: function(data) {
                        if (data == 0) {
                            clearInterval(timerId);
                        }
                        if (univercityCount1 == 0) {
                            $('[name="univercity_count"]').val('')
                            location.reload()
                        } else {
                            var dd = $('[name="univercity_count"]').val(univercityCount - data);
                            
                        }
                        

                        $('#total-record').text(data)

                        $('#blips > .progress-bar').attr("style", "width:" + ((100 * data) /
                            univercityCount).toFixed(2) + "%");

                        univercityCount1 = dd.val()

                        console.log(univercityCount1, univercityCount, data)        
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
            $("#unversityImportForm").submit(function() {
                $("#universityupload").attr("disabled", true);

            });
        });
</script>


@endsection
