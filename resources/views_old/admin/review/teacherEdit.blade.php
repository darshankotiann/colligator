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
                                <h4 class="card-title">Edit Teacher</h4>
                                    <p class="card-title-desc">Edit the below details</p>
                            </div>
                            <div class="col-md-1">
                                @if($backUrl)
                                    <a href="{{url($backUrl)}}" class="btn btn-primary subbtn mt-2 text-right rounded" type="submit">Back</a>
                                @else
                                    <a href="{{route('admin.teacherreview')}}" class="btn btn-primary subbtn mt-2 text-right rounded" type="submit">Back</a>
                                @endif
                            </div>
                        </div>
                        <form action="{{route('admin.teacherReviewUpdate')}}" method="post" >
                            @csrf
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="university">Teacher Name</label>
                                        <input type="text" readonly name="" class="form-control" disabled value="{{$teacherReview['ptuName']}}">
                                        <input type="hidden" name="id" value="{{base64_encode($teacherReview['id'])}}">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Message</label>
                                        <textarea name="message" class="form-control">{{$teacherReview['message']}}</textarea>
                                    @error('message')
                                    <p class="error">{{$message}}</p>
                                    @enderror
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <button class="btn btn-primary">Update</button>
                                </div>
                            </div>
                        </form>
                    {{--<div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="university">Study Type</label>
                                    <input type="text" readonly name="" class="form-control" disabled value="{{$teacherReview['easyrange']}}">
                                   
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="country">Home Range</label>
                                    <input type="text" readonly name="" class="form-control" disabled value="{{$teacherReview['homerange']}}">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="country">School Range</label>
                                    <input type="text" readonly name="" class="form-control" disabled value="{{$teacherReview['schoolrange']}}">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">User System Nickname</label>
                                    <input type="text" readonly name="" class="form-control" disabled value="{{$teacherReview['usersystemNickname']}}">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="country">Like Users</label>
                                    <input type="text" readonly name="" class="form-control" disabled value="{{$teacherReview['likes']}}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">Dislike Users</label>
                                    <input type="text" readonly name="" class="form-control" disabled value="{{$teacherReview['dislikes']}}">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="country">Report/Spam</label>
                                    <input type="text" readonly name="" class="form-control" disabled value="{{$teacherReview['reports']}}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">Created At</label>
                                    <input type="text" readonly name="" class="form-control" disabled value="{{$teacherReview['created_at']}}">
                                </div>
                            </div>
                        </div>--}}   
                    </div>
                </div>
                <!-- end card -->
            </div> <!-- end col -->
        </div> <!-- end row -->
    </div>
</div>
@endsection