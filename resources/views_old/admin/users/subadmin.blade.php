@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <h4 class="card-title">Sub Admins</h4>
                        <div class="row card-title-desc">
                            <p class=" col-5 "> List Of all Subadmins.</p>
                            <div class="form-group mb-0 col-5">
                                {{ Form::open(array('action' => 'Admin\SubAdminController@RangeSearch','method'=>'post','id'=>'rangeForm')) }}
                                @csrf
                                <div class="row">
                                <label class="col-3">Range Filter</label>
                                    <div class="input-daterange input-group col-6" data-provide="datepicker" data-date-format="dd M yyyy" data-date-autoclose="true">
                                        <input type="text" class="form-control startdate" value="{{isset($StartDates) ? $StartDates : '' }}" onchange="dateAjax()" placeholder="start date" name="start" />
                                        <input type="text" class="form-control enddate" value="{{isset($EndDates) ? $EndDates :''}}" onchange="dateAjax()" placeholder="end date" name="end" />
                                    </div>
                                    <a style="float: right;" class="col-2 btn btn-danger waves-effect waves-light mr-2" href="{{route('admin.subadmin.list')}}">Reset  </a>
                                </div>
                                {{ Form::close() }}
                            </div>
                            <?php
                            if(Auth::guard('admin')->user()->role==2){

                                if(!empty($permissions) && $permissions['add']==1){ ?>  

                                <a style="float: right;" class="col-2 btn btn-primary waves-effect waves-light" href="{{route('admin.subadmin.add')}}">Add Sub Admin  <i class="ri-arrow-right-line align-middle ml-2"></i> </a>
                                <?php }
                            }else
                            { ?>
                                <a style="float: right;" class="col-2 btn btn-primary waves-effect waves-light" href="{{route('admin.subadmin.add')}}">Add Sub Admin  <i class="ri-arrow-right-line align-middle ml-2"></i> </a>
                            <?php }
                             ?>
                        </div>
                        <div class="maintable">
                            @include('admin.users.subadminTable')
                        </div>
                    </div>
                </div>
            </div> <!-- end col -->
        </div> <!-- end row -->
    </div>
</div>
<script>
    
</script>
@endsection