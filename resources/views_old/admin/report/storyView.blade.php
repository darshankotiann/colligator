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
                                <h4 class="card-title">View Story</h4>
                                <p class="card-title-desc">View the below details</p>
                            </div>
                            <div class="col-md-1">
                                <a href="{{route('admin.report_spam.stories.list')}}" class="btn btn-primary subbtn mt-2 text-right rounded" type="submit">Back</a>
                                
                            </div>
                        </div>
                        
                            <div class="row">
                               <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Uploaded By</label>
                                        <input type="text" class="form-control" name="" disabled value="{{$stories->uploadedBy}}">
                                    </div>
                                </div>
                               <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Reported By</label>
                                        <input type="text" name="" class="form-control" value="{{$stories->reportedBy}}">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Photo/Video Type</label>
                                        <input type="text" class="form-control" name="" disabled value="{{$stories->photo_video_type==1 ? 'Photo' : 'Video'}}">
                                    </div>
                                </div>
                               <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Reason</label>
                                        <textarea class="form-control">{{$stories->reason}}</textarea>
                                      </div>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">{{$stories->photo_video_type==1 ? 'Photo' : 'Video'}}</label>
                                        @if($stories->photo_video_type==1)
                                        <img  src="{{asset('stories/'.$stories->photo_video)}}" width="100" >
                                        @else
                                            <video width="320" height="240" controls>
                                              <source src="{{asset('stories/'.$stories->photo_video)}}" type="video/mp4">
                                             </video>
                                        @endif
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