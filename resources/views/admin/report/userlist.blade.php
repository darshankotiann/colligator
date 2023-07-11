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
                            <p class=" col-2 "> List Of all Users.</p>
                             <div class="form-group mb-0 col-10">
                                <!-- {{ Form::open(array('url' => route('admin.user_statics_filter'),'method'=>'post')) }} -->
                                {{ Form::open(array('method'=>'post')) }}
                                @csrf
                                <div class="row">
                                <label class="col-3 float-right"><p style="float:right;">Filter:</p></label>
                                <select class="form-control col-3 mr-1 " id="countrySelected1"  name="country">
                                        <option value="" selected disabled> Select Country </option>
                                        @foreach($countries as $country)
                                        <option {{isset($countryName) ? ($countryName==$country->name ? 'selected': ''):''}} value="{{$country->name}}">{{$country->name}}</option>
                                        @endforeach
                                    </select>
                                <select class="form-control col-2 mr-1 " id="optionsSelected1" name="options">
                                        <option value="" selected disabled> Select Filter Type</option>
                                        <option {{isset($order) ? ($order=='reviewAsc' ? 'selected': ''):''}} value="reviewAsc">Review Asc</option>
                                        <option {{isset($order) ? ($order=='reviewDesc' ? 'selected': ''):''}} value="reviewDesc">Review Desc</option>
                                        <option {{isset($order) ? ($order=='commentAsc' ? 'selected': ''):''}} value="commentAsc">Comment Asc</option>
                                        <option {{isset($order) ? ($order=='commentDesc' ? 'selected': ''):''}} value="commentDesc">Comment Desc</option>
                                    </select>
                                    <select class="form-control col-2 mr-1" id="limitSelected" name="limit">
                                        <option value="25" selected> Show 25 entries</option>
                                        <option {{isset($limit) ? ($limit=='50' ? 'selected': ''):''}} value="50">Show 50 entries</option>
                                        <option {{isset($limit) ? ($limit=='100' ? 'selected': ''):''}} value="100">Show 100 entries</option>
                                        <option {{isset($limit) ? ($limit=='150' ? 'selected': ''):''}} value="150">Show 150 entries</option>
                                        <option {{isset($limit) ? ($limit=='250' ? 'selected': ''):''}} value="250">Show 250 entries</option>
                                    </select>
                                    <a style="float: right;" class="col-1 btn btn-danger waves-effect waves-light " href="{{route('admin.user_statics')}}">Reset  </a>
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
    // $(document).ready(function(){
    //     $('#optionsSelected').change(
    //         function(){
    //              $(this).closest('form').trigger('submit');
    //         });
    //         $('#countrySelected').change(
    //         function(){
    //              $(this).closest('form').trigger('submit');
    //         });
            
    // });

    $(document).ready(function() {
        $('#optionsSelected1').change(function() {
            var con = $('#countrySelected1').val();
            var filter = $('#optionsSelected1').val();
            var limit = $('#limitSelected').val();
            var url = "https://collegator.com/admin/report/user-statics-filter/" + con + "/" + filter + "/" + limit;
            window.location.replace(url);
        });
        $('#countrySelected1').change(function() {
            var filter = $('#optionsSelected1').val();
            var limit = $('#limitSelected').val();
            console.log(filter);
            if (filter != null) {
                var con = $('#countrySelected1').val();
                var url = "https://collegator.com/admin/report/user-statics-filter/" + con + "/" + filter + "/" + limit;
                window.location.replace(url);
            }
        });
        $('#limitSelected').change(function() {
            var con = $('#countrySelected1').val();
            var filter = $('#optionsSelected1').val();
            var limit = $('#limitSelected').val();
            if (con != null && filter != null) {
                var con = $('#countrySelectBox1').val();
                var url = "https://collegator.com/admin/report/user-statics-filter/" + con + "/" + filter + "/" + limit;
                window.location.replace(url);
            }else if (con == null && filter == null){
                var url = "https://collegator.com/admin/report/user-statics/" + limit;
                window.location.replace(url);
            }
        });
    });
</script>
@endsection
