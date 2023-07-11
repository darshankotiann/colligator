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
                        <h4 class="card-title">Review</h4>
                        <div class="row card-title-desc">
                            <p class=" col-6 "> List Of all Teacher Review.</p>
                          
                            
                            <div class="form-group mb-0 col-6">
                                {{ Form::open(array('action' => 'Admin\ReviewController@teacherRangeSearch','method'=>'post','id'=>'rangeForm')) }}
                                @csrf
                                <div class="row">
                                <label class="col-3" style="padding-left:95px;">Range Filter:</label>
                                    <div class="input-daterange input-group col-6" data-provide="datepicker" data-date-format="dd M yyyy" data-date-autoclose="true">
                                        <input type="text" class="form-control startdate" value="{{isset($StartDates) ? $StartDates : '' }}" onchange="dateAjax()" placeholder="start date" name="start" />
                                        <input type="text" class="form-control enddate" value="{{isset($EndDates) ? $EndDates :''}}" onchange="dateAjax()" placeholder="end date" name="end" />
                                    </div>
                                     <a style="float: right;" class="col-2 btn btn-danger waves-effect waves-light mr-2" href="{{route('admin.teacherreview')}}">Reset  </a>
                                </div>
                                {{ Form::close() }}
                            </div>
                        </div>
                        <div class="maintable">
                            @include('admin.review.teacherReviewTable')
                        </div>
                    </div>
                </div>
            </div> <!-- end col -->
        </div> <!-- end row -->
    </div>
</div>
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Reporters List</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body reportersModal">
        
      </div>
    </div>
  </div>
</div>
<script>
        function showReporters($id,$type='teacherReview'){
        $.ajax({
            'type':'post',
            'url' : baseurl+'/admin/showReporters',
            'data':{
                'id':$id,
                'type':$type
            },
            success:function(res){
                console.log('res==',res);
                // arrayList = res.reports.split(',');
                // arrayListId = res.reportsId.split(',');
                // html='';
                //  arrayList.map((result,key)=>{
                    html='';
                    if(res !=''){

                    
                    var id = btoa(res.id);
                    html=`<a target="_blank" href="${baseurl}/admin/users/edit/${id}"> ${res.systemNickname}</a></br>`;
                    }
                    // });

                $('#exampleModalLong').modal('show');
                $('.reportersModal').html(html);
            }
        });
    }
    </script>
@endsection
