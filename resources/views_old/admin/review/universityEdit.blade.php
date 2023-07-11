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
                                <h4 class="card-title">Edit University Review</h4>
                                <p class="card-title-desc">Edit the below details</p>
                            </div>
                            <div class="col-md-1">
                                <a href="{{url($backUrl)}}" class="btn btn-primary subbtn mt-2 text-right rounded" type="submit">Back</a>
                            </div>
                        </div>
                        <form action="{{route('admin.universityReviewUpdate')}}" method="post" >
                            @csrf
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="university">University Name</label>
                                        <input type="text" readonly name="" class="form-control"  value="{{$universityReview['ptuName']}}">
                                        <input type="hidden" name="id" value="{{base64_encode($universityReview['id'])}}">
                                    </div>
                                </div>
                                 <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Message</label>
                                        <textarea required name="message" class="form-control">{{$universityReview['message']}}</textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <button class="btn btn-primary">Update</button>
                                </div>
                            </div>
                        </form>
                            <!-- <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="university">Course Range</label>
                                        <input type="text" readonly name="" class="form-control"  value="{{$universityReview['course_range']}}">
                                       
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Facility Range</label>
                                        <input type="text" readonly name="" class="form-control"  value="{{$universityReview['facility_range']}}">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Professor Range</label>
                                        <input type="text" readonly name="" class="form-control"  value="{{$universityReview['professor_range']}}">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">User System Nickname</label>
                                        <input type="text" readonly name="" class="form-control"  value="{{$universityReview['usersystemNickname']}}">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Like Users</label>
                                        <input type="text" readonly name="" class="form-control"  value="{{$universityReview['likes']}}">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">Dislike Users</label>
                                        <input type="text" readonly name="" class="form-control"  value="{{$universityReview['dislikes']}}">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Report/Spam</label>
                                        <input type="text" readonly name="" class="form-control"  value="{{$universityReview['reports']}}">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">Created At</label>
                                        <input type="text" readonly name="" class="form-control"  value="{{$universityReview['created_at']}}">
                                    </div>
                                </div>
                            </div> -->
                    </div>
                </div>
                <!-- end card -->
            </div> <!-- end col -->

            
        </div> <!-- end row -->
    </div>
</div>

@endsection