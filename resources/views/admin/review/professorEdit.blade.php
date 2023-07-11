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
                                <h4 class="card-title">Edit Professor</h4>
                                <p class="card-title-desc">Edit the below details</p>
                            </div>
                            <div class="col-md-1">
                                <a href="{{url($backUrl)}}" class="btn btn-primary subbtn mt-2 text-right rounded" type="submit">Back</a>
                            </div>
                        </div>
                        <form action="{{route('admin.professorReviewUpdate')}}" method="post" >
                            @csrf
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Professor Name</label>
                                        <input type="text" readonly name="" class="form-control" disabled value="{{$professorsReview['ptuName']}}">
                                        <input type="hidden" name="id" value="{{base64_encode($professorsReview['id'])}}">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="message">Message</label>
                                        <textarea name="message" class="form-control">{{$professorsReview['message']}}</textarea>
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
                                    <label for="country">Easyness Range</label>
                                    <input type="text" readonly name="" class="form-control" disabled value="{{$professorsReview['easyness_range']}}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">Repeat</label>
                                    <input type="text" readonly name="" class="form-control" disabled value="{{$professorsReview['repeat']}}">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="country">Textbook</label>
                                    <input type="text" readonly name="" class="form-control" disabled value="{{$professorsReview['textbook']==1 ? 'Textbook use' : 'No textbook'}}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">Attendance</label>
                                    <input type="text" readonly name="" class="form-control" disabled value="{{$professorsReview['attendance']==1? 'Compulsary' : 'Not compulsary'}}">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="country">Grade</label>
                                    <input type="text" readonly name="" class="form-control" disabled value="{{$professorsReview['grade']}}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">Message</label>
                                    <input type="text" readonly name="" class="form-control" disabled value="{{$professorsReview['message']}}">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="country">Like Users</label>
                                    <input type="text" readonly name="" class="form-control" disabled value="{{$professorsReview['likes']}}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">Dislike Users</label>
                                    <input type="text" readonly name="" class="form-control" disabled value="{{$professorsReview['dislikes']}}">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="country">Report/Spam</label>
                                    <input type="text" readonly name="" class="form-control" disabled value="{{$professorsReview['reports']}}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">User System Nickname</label>
                                    <input type="text" readonly name="" class="form-control" disabled value="{{$professorsReview['usersystemNickname']}}">
                                </div>
                            </div>
                        </div>--}}
                    </div>
                    </div>
                </div> <!-- end col -->
            </div> <!-- end row -->
        </div>
    </div>
<?php //echo "<pre>"; print_r($professorRatingData) ?>
@endsection