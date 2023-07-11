@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                         <div class="row">
                            
                            <div class="col-md-11">
                                
                        <h4 class="card-title">{{$title}}</h4>
                        <p class="card-title-desc">View the below details</p>
                            </div>
                            <div class="col-md-1">
                            @if($backUrl)
                                <a href="{{url($backUrl)}}" class="btn btn-primary subbtn mt-2 text-right rounded" type="submit">Back</a>
                            @else
                                <a href="{{route('admin.universityreview')}}" class="btn btn-primary subbtn mt-2 text-right rounded" type="submit">Back</a>
                            @endif
                            </div>
                        </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="university">University Name</label>
                                        <input type="text" readonly name="" class="form-control" disabled value="{{$universityReview['ptuName']}}">
                                    </div>
                                </div>
                                
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Message</label>
                                        <textarea class="form-control" disabled>{{$universityReview['message']}}</textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Report Spam By User</label>
                                        @php 
                                        $reportedIds = explode(',',$universityReview['reportsId']);
                                        $reportedData = explode(',',$universityReview['reports']);
                                        @endphp
                                        @foreach($reportedIds as $key => $rId)
                                            <p><a href="{{route('admin.user.edit',base64_encode($rId))}}">{{$reportedData[$key]}}</a></p>
                                        @endforeach
    
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">User System Nickname</label>
                                        <p><a href="{{route('admin.user.edit',base64_encode($universityReview['user_id']))}}">{{$universityReview['usersystemNickname']}}</a></p>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
                <!-- end card -->
            </div> <!-- end col -->

            
        </div> <!-- end row -->
    </div>
</div>

@endsection