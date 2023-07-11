@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <h4 class="card-title">Professors</h4>
                        <div class="row card-title-desc">
                            <p class=" col-2 "> List Of all Professors.</p>
                             <div class="form-group mb-0 col-10">
                                {{ Form::open(array('url' => route('admin.professor_statics_filter'),'method'=>'post')) }}
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
                                    <a style="float: right;" class="col-2 btn btn-danger waves-effect waves-light " href="{{route('admin.professor_statics')}}">Reset  </a>
                                </div>
                                {{ Form::close() }}
                            </div>
                        </div>
                        <div class="maintable">
                            @include('admin.report.professorstatTable')
                        </div>
                    </div>
                </div>
            </div> <!-- end col -->
        </div> <!-- end row -->
    </div>
</div>

@endsection
