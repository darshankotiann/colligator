@extends('layouts.app')

@section('content')
<div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        @if(isset($failures))

                        <div class="alert alert-danger" role="alert">
                            <strong>Errors:</strong>

                            <ul>
                                @foreach ($failures as $failure)
                                @foreach ($failure->errors() as $error)
                                <li>{{ $error }}</li>
                                @endforeach
                                @endforeach
                            </ul>
                        </div>
                        @endif
                        <h4 class="card-title">Teacher</h4>
                        <div class="row card-title-desc">
                            <p class=" col-2 "> List Of all Teacher.</p>


                            <div class="form-group mb-0 col-10">
                                <!-- {{ Form::open(array('url' => route('admin.teacher_statics_filter'),'method'=>'post')) }} -->
                                {{ Form::open(array('method'=>'post')) }}
                                @csrf
                                <div class="row">
                                    <label class="col-3 float-right">
                                        <p style="float:right;">Filter:</p>
                                    </label>
                                    <select class="form-control col-3 mr-1" id="countrySelectBox1" name="country">
                                        <option value="" selected disabled> Select Country Type</option>
                                        @foreach($countries as $country)
                                        <option {{ isset($countryId) ? ($country->iso2 ==$countryId ? 'selected': ''):''}} value="{{$country->iso2}}">{{$country->name}}</option>
                                        @endforeach
                                    </select>
                                    <select class="form-control col-2 mr-1" id="optionsSelected1" name="options">
                                        <option value="" selected disabled> Select Filter Type</option>
                                        <option {{isset($order) ? ($order=='topRatedDesc' ? 'selected': ''):''}} value="topRatedDesc">Top Rated Desc</option>
                                        <option {{isset($order) ? ($order=='topRatedAsc' ? 'selected': ''):''}} value="topRatedAsc">Top Rated Asc</option>
                                        <option {{isset($order) ? ($order=='reviewAsc' ? 'selected': ''):''}} value="reviewAsc">Most review Asc</option>
                                        <option {{isset($order) ? ($order=='reviewDesc' ? 'selected': ''):''}} value="reviewDesc">Most review Desc</option>
                                    </select>
                                    <select class="form-control col-2 mr-1" id="limitSelected" name="limit">
                                        <option value="25" selected> Show 25 entries</option>
                                        <option {{isset($limit) ? ($limit=='50' ? 'selected': ''):''}} value="50">Show 50 entries</option>
                                        <option {{isset($limit) ? ($limit=='100' ? 'selected': ''):''}} value="100">Show 100 entries</option>
                                        <option {{isset($limit) ? ($limit=='150' ? 'selected': ''):''}} value="150">Show 150 entries</option>
                                        <option {{isset($limit) ? ($limit=='250' ? 'selected': ''):''}} value="250">Show 250 entries</option>
                                    </select>
                                    <a style="float: right;" class="col-1 btn btn-danger waves-effect waves-light " href="{{route('admin.teacher_statics')}}">Reset </a>
                                </div>
                                {{ Form::close() }}
                            </div>

                        </div>
                        <div class="maintable">
                            @include('admin.report.teacherstatTable')
                        </div>

                        <div class="col-sm-6 col-md-4 col-xl-3">

                            <!-- Modal -->
                            <div class="modal fade" id="staticBackdrop" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="staticBackdropLabel">Import Teacher</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        {{Form::open(array('route'=>'admin.teacher.import','method'=>'post','enctype'=>'multipart/form-data'))}}
                                        <div class="modal-body">
                                            <p>Please follow the given format to import file, else error may arise. For your reference use this sample file.<a href="{{asset('teacher/teacher.xlsx')}}" download> Download</a>
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

<script>
    $(document).ready(function() {
        $('#optionsSelected1').change(function() {
            var con = $('#countrySelectBox1').val();
            var filter = $('#optionsSelected1').val();
            var limit = $('#limitSelected').val();
            var url = "https://collegator.com/admin/report/teacher-statics-filter/" + con + "/" + filter + "/" + limit;
            window.location.replace(url);
        });
        $('#countrySelectBox1').change(function() {
            var filter = $('#optionsSelected1').val();
            var limit = $('#limitSelected').val();
            console.log(filter);
            if (filter != null) {
                var con = $('#countrySelectBox1').val();
                var url = "https://collegator.com/admin/report/teacher-statics-filter/" + con + "/" + filter + "/" + limit;
                window.location.replace(url);
            }
        });
        $('#limitSelected').change(function() {
            var con = $('#countrySelectBox1').val();
            var filter = $('#optionsSelected1').val();
            var limit = $('#limitSelected').val();
            if (con != null && filter != null) {
                var con = $('#countrySelectBox1').val();
                var url = "https://collegator.com/admin/report/teacher-statics-filter/" + con + "/" + filter + "/" + limit;
                window.location.replace(url);
            }else if (con == null && filter == null){
                var url = "https://collegator.com/admin/report/teacher-statics/" + limit;
                window.location.replace(url);
            }
        });
    });
</script>

@endsection