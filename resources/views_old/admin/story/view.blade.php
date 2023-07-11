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
                                <a href="{{route('admin.story.list')}}" class="btn btn-primary subbtn mt-2 text-right rounded" type="submit">Back</a>
                                
                            </div>
                        </div>
                            <div class="row">
                               <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">System Nickname</label>
                                        <input type="text" class="form-control" name="" disabled value="{{$story['users']->systemNickname}}">
                                    </div>
                                </div>
                               <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Photo/Video Type</label>
                                        <input type="text" name="" class="form-control" disabled value="{{$story->photo_video_type==1 ? 'Photo' : 'Video'}}">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Privacy</label>
                                        <input type="text" class="form-control" name="" disabled value="{{$story->privacy==1 ? 'Followers' : 'All'}}">
                                    </div>
                                </div>
                               <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Created Time</label>
                                        <input type="text" name="" class="form-control" disabled value="{{$story->created_time}}">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Total User Views</label>
                                        <input type="text" class="form-control" name="" disabled value="{{$story->user_views}}">
                                    </div>
                                </div>
                               <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Created Time</label>
                                        <input type="text" name="" class="form-control" disabled  value="{{$story->created_time}}">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">{{$story->photo_video_type==1 ? 'Photo' : 'Video'}}</label>
                                        @if($story->photo_video_type==1)
                                        <img  src="{{asset('stories/'.$story->photo_video)}}" width="100" >
                                        @else
                                            <video width="320" height="240" controls>
                                              <source src="{{asset('stories/'.$story->photo_video)}}" type="video/mp4">
                                             </video>
                                        @endif
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="country">User View Details</label>
                                        <table class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <tr>
                                                <th> User System Name</th>
                                                <th> User Time</th>
                                            </tr>
                                            <tbody>
                                                @if(count($newUser)>0)
                                                @foreach($newUser as $key => $userData)
                                             <tr>
                                                 <td>{{$key}}</td>
                                                 <td>{{$userData}}</td>
                                             </tr>   
                                                 @endforeach
                                                 @else
                                             <tr>
                                                 <td colspan="2"> No Data found</td>
                                             </tr>   
                                                 @endif
                                            </tbody>
                                        </table>
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