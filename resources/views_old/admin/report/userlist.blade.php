@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <h4 class="card-title">Users</h4>
                        <div class="row card-title-desc">
                            <p class=" col-4 "> List Of all Users.</p>
                             <div class="form-group mb-0 col-8">
                                {{ Form::open(array('url' => route('admin.user_statics_filter'),'method'=>'post')) }}
                                @csrf
                                <div class="row">
                                <label class="col-2 float-right">Filter</label>
                                <select class="form-control col-3 mr-2 " id="countrySelected"  name="country">
                                        <option value="" selected disabled> Select Country </option>
                                        @foreach($countries as $country)
                                        <option {{isset($countryName) ? ($countryName==$country->name ? 'selected': ''):''}} value="{{$country->name}}">{{$country->name}}</option>
                                        @endforeach
                                    </select>
                                <select class="form-control col-3 mr-2 " id="optionsSelected" name="options">
                                        <option value="" selected disabled> Select Filter Type</option>
                                        <option {{isset($order) ? ($order=='reviewAsc' ? 'selected': ''):''}} value="reviewAsc">Review Asc</option>
                                        <option {{isset($order) ? ($order=='reviewDesc' ? 'selected': ''):''}} value="reviewDesc">Review Desc</option>
                                        <option {{isset($order) ? ($order=='commentAsc' ? 'selected': ''):''}} value="commentAsc">Comment Asc</option>
                                        <option {{isset($order) ? ($order=='commentDesc' ? 'selected': ''):''}} value="commentDesc">Comment Desc</option>
                                    </select>
                                    <a style="float: right;" class="col-2 btn btn-danger waves-effect waves-light " href="{{route('admin.user_statics')}}">Reset  </a>
                                </div>
                                {{ Form::close() }}
                            </div>
                        </div>
                        <div class="maintable">
                            @include('admin.report.userTable')
                        </div>
                    </div>
                </div>
            </div> <!-- end col -->
        </div> <!-- end row -->
    </div>
</div>
<script>
    $(document).ready(function(){
        $('#optionsSelected').change(
            function(){
                 $(this).closest('form').trigger('submit');
            });
            $('#countrySelected').change(
            function(){
                 $(this).closest('form').trigger('submit');
            });
            
    });
</script>
@endsection
