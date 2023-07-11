@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <h4 class="card-title"> List</h4>
                        <div class="row card-title-desc">
                            <p class=" col-3 "> List Of all Abuse review/comment.</p>
                             <div class="form-group mb-0 col-9">
                                {{ Form::open(array('action' => 'Admin\AbuseWordsController@abuseTrackAjax','method'=>'post','id'=>'rangeForm')) }}
                                @csrf
                                <div class="row">
                                <label class="col-3">Range Filter</label>
                                    <div class="input-daterange input-group col-6" data-provide="datepicker" data-date-format="dd M yyyy" data-date-autoclose="true">
                                        <input type="text" class="form-control startdate" value="{{isset($StartDates) ? $StartDates : '' }}" onchange="dateAjax()" placeholder="start date" name="start" />
                                        <input type="text" class="form-control enddate" value="{{isset($EndDates) ? $EndDates :''}}" onchange="dateAjax()" placeholder="end date" name="end" />
                                    </div>
                                        <a style="float: right;" class="col-2 btn btn-danger waves-effect waves-light mr-2" href="{{route('admin.abuse-words.professorlist')}}">Reset   </a>
                                </div>
                                {{ Form::close() }}
                            </div>
                        </div>
                        <div class="maintable">
                            @include('admin.abuse.abusecommentTable')
                        </div>
                    </div>
                </div>
            </div> <!-- end col -->
        </div> <!-- end row -->
    </div>
</div>
<script>
    setInterval(function() {
                  window.location.reload();
                console.log('aa gya');
                }, 60000); 
    </script>
@endsection
