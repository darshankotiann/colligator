@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <h4 class="card-title">Reported Stories</h4>
                        <div class="row card-title-desc">
                            <p class=" col-5 "> List Of all Reported Stories According to Users.</p>
                            <div class="form-group mb-0 col-7">
                                {{ Form::open(array('action' => 'Admin\ReportSpamController@storiesRangeSearch','method'=>'post')) }}
                                @csrf
                                <div class="row">
                                <label class="col-3">Range Filter</label>
                                    <div class="input-daterange input-group col-6" data-provide="datepicker" data-date-format="dd M, yyyy" data-date-autoclose="true">
                                        <input type="text" class="form-control startdate" value="{{isset($StartDates) ? $StartDates : '' }}" onchange="dateAjax()" placeholder="start date" name="start" />
                                        <input type="text" class="form-control enddate" value="{{isset($EndDates) ? $EndDates :''}}" onchange="dateAjax()" placeholder="end date" name="end" />
                                    </div>
                                     <a style="float: right;" class="col-2 btn btn-danger waves-effect waves-light mr-2" href="{{route('admin.report_spam.stories.list')}}">Reset  </a>
                                </div>
                                {{ Form::close() }}
                            </div>

                         {{--
                             <div class="form-group mb-0 col-7">
                                {{ Form::open(array('url' => route('admin.user_statics_filter'),'method'=>'post')) }}
                                @csrf
                                <div class="row">
                                <label class="col-3 float-right">Filter</label>
                                    <select class="form-control col-6 mr-2" id="optionsSelected" name="options">
                                        <option value="" selected disabled> Select Filter Type</option>
                                        <option {{isset($order) ? ($order=='reviewAsc' ? 'selected': ''):''}} value="reviewAsc">Review Asc</option>
                                        <option {{isset($order) ? ($order=='reviewDesc' ? 'selected': ''):''}} value="reviewDesc">Review Desc</option>
                                        <option {{isset($order) ? ($order=='commentAsc' ? 'selected': ''):''}} value="commentAsc">Comment Asc</option>
                                        <option {{isset($order) ? ($order=='commentDesc' ? 'selected': ''):''}} value="commentDesc">Comment Desc</option>
                                    </select>
                                    <a style="float: right;" class="col-2 btn btn-danger waves-effect waves-light " href="{{route('admin.user.list')}}">Reset  </a>
                                </div>
                                {{ Form::close() }}
                            </div>
                        --}}
                        </div>
                        <div class="maintable">
                            @include('admin.report.storiesTable')
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
    });
</script>
@endsection
