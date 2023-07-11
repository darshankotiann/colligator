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
                        <h4 class="card-title">Universities</h4>
                        <div class="row card-title-desc">
                            <p class=" col-2 "> List Of all Universities.</p>
                            
                            
                           <div class="form-group mb-0 col-10">
                                {{ Form::open(array('url' => route('admin.university_statics_filter'),'method'=>'post')) }}
                                @csrf
                                <div class="row">
                                <label class="col-3 float-right">Filter</label>
                                    <select class="form-control col-3 mr-1" id="countrySelectBox" name="country">
                                        <option value="" selected disabled> Select Country Type</option>
                                        @foreach($countries as $country)
                                            <option {{ isset($countryId) ? ($country->iso2 ==$countryId ? 'selected': ''):''}} value="{{$country->iso2}}">{{$country->name}}</option>
                                        @endforeach
                                    </select>
                                    <select class="form-control col-3 mr-1" id="optionsSelected" name="options">
                                        <option value="" selected disabled> Select Filter Type</option>
                                        <option {{isset($order) ? ($order=='topRatedDesc' ? 'selected': ''):''}} value="topRatedDesc">Top Rated Desc</option>
                                        <option {{isset($order) ? ($order=='topRatedAsc' ? 'selected': ''):''}} value="topRatedAsc">Top Rated Asc</option>
                                        <option {{isset($order) ? ($order=='reviewAsc' ? 'selected': ''):''}} value="reviewAsc">Most review Asc</option>
                                        <option {{isset($order) ? ($order=='reviewDesc' ? 'selected': ''):''}} value="reviewDesc">Most review Desc</option>
                                    </select>
                                    <a style="float: right;" class="col-2 btn btn-danger waves-effect waves-light " href="{{route('admin.university_statics')}}">Reset  </a>
                                </div>
                                {{ Form::close() }}
                            </div>
                           
                        </div>
                        <div class="maintable">
                            @include('admin.report.universitystatTable')
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
@endsection
