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
                                            <h4 class="card-title">Edit User</h4>
                                            <p class="card-title-desc">Edit the below details</p>
                                        </div>
                                        <div class="col-md-1">
                                            @if($backUrl)
                                            <a href="{{url($backUrl)}}" class="btn btn-primary subbtn mt-2 text-right rounded" type="submit">Back</a>
                                            @else
                                            <a href="{{route('admin.user.list')}}" class="btn btn-primary subbtn mt-2 text-right rounded" type="submit">Back</a>
                                            @endif
                                        </div>
                                    </div>
                                        <form action="{{route('admin.user.update')}}" id="contactForm" method="post" enctype="multipart/form-data">
                                            @csrf
                                            <input type="hidden" name="id" value="<?= base64_encode($data->id)?>">
                                            <div class="row">
                                                {{--<div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="name">Name</label>
                                                        <input type="text" class="form-control errorvalidator" id="name" placeholder="First name" value="{{$data->name}}" name="name" required>
                                                        @error('name')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>--}}
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="email">Email</label>
                                                        <input type="email" class="form-control errorvalidator" id="email" readonly placeholder="Email" value="{{$data->email}}" name="email" required>
                                                    @error('email')
                                                    <span class="error form-errors mb-0">{{ $message }}</span>
                                                    @enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                        <div class="form-group">
                                                        <label class="control-label">Gender</label>
                                                        <select  class="form-control select2 errorvalidator" name="gender">
                                                            <option disabled  selected value="">Select Gender </option>
                                                            <option value="1" {{$data->gender == 1 ? 'selected' : ''}} >Male</option>
                                                            <option value="2" {{$data->gender  == 2 ? 'selected' : ''}} >Female</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                {{-- <div class="col-md-6">
                                                    <div class="row">
                                                        
                                                        <div class="col-md-9 form-group">
                                                            <label for="password">Password</label>
                                                            <input type="password" class="form-control errorvalidator" id="password" placeholder="Enter Password" value="" name="password" required>
                                                            @error('password')
                                                            <span class="error form-errors mb-0">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                        <div class="col-md-3 form-group">
                                                            <label for="password">Generate Password</label>
                                                            <button type="button" class="btn btn-success waves-effect waves-light btn-sm " style="float: right;" onclick="Password()">Generate </button>

                                                        </div>
                                                    </div>
                                                </div>--}}
                                                
                                                {{--<div class="col-md-6">
                                                
                                                    <div class="form-group">
                                                        <label for="University">University</label>
                                                        <input type="text" class="form-control errorvalidator" id="university" placeholder="University Name" value="{{$data->university}}" name="university" required>
                                                        @error('university')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div> 
                                                </div>--}} 
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6">
                                                        <div class="form-group">
                                                        <label class="control-label">Trusted Coordinator</label>
                                                        <select class="form-control select2 errorvalidator" name="trusted">
                                                            <option disabled selected value="">Select Yes/No </option>
                                                            <option value="1" {{$data->trusted == 1 ? 'selected' : ''}} >Yes</option>
                                                            <option value="0" {{$data->trusted  == 0 ? 'selected' : ''}} >No</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                              <label class="control-label">Age</label>
                                                        <select id="age" name="age" class="form-control">
                                                                <?php
                                                                for($i=16; $i<100; $i++){ ?>
                                                                 <option {{ $data->age == $i ? 'selected':'' }} >{{$i}}</option>
                                                                 <?php } ?>
                                                         </select>
                                                        @error('age')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                {{--<div class="col-md-6">
                                                        <div class="form-group">
                                                        <label class="control-label">User Profile Color</label>
                                                        <select class="form-control select2 errorvalidator" name="color">
                                                            <option disabled selected value="">Select Color </option>
                                                            <option value="1" {{$data->color == 1 ? 'selected' : ''}} >Blue</option>
                                                            <option value="2" {{$data->color  == 2 ? 'selected' : ''}} >Pink</option>
                                                        </select>
                                                    </div>
                                                </div>--}}
                                                
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">

                                                    <div class="form-group">
                                                        <label for="University">System Nickname</label>
                                                        <input type="text"  class="form-control errorvalidator" id="systemNickname" placeholder="System Nickname" value="{{$data->systemNickname}}" name="systemNickname" >
                                                        @error('systemNickname')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div> 
                                                </div> 
                                            {{--<div class="col-md-6">

                                                    <div class="form-group">
                                                        <label for="University">Nickname</label>
                                                        <input type="text" class="form-control errorvalidator" id="nickname" placeholder="User Nickname" value="{{$data->nickname}}" name="nickname">
                                                        @error('nickname')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div> 
                                                </div> 
                                            </div>--}}
                                           <!--  <div class="row"> -->
                                                {{--<div class="col-md-6">

                                                    <div class="form-group">
                                                        <label for="University">Profile Picture</label>
                                                        <input type="file" name="profile" id="image"  onchange="PreviewImage()">
                                                        <img src="{{asset('profile/'.$data->profile)}}" id="userImage" width="100" >
                                                        @error('profile')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>--}} 
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="colorpicker">Color Picker</label>
                                                    <div id="cp2" class="input-group colorpicker colorpicker-component"> 
                                                      <input type="text" name="colorpicker" value="{{$data->colorpicker ?? '#00AABB'}}" class="form-control" /> 
                                                      <span class="input-group-addon"><i class="fa fa-eye-dropper h-100">
                                                      </i></span> 
                                                    </div>
                                                    <p class="help-block"></p>
                                                    @if($errors->has('colorpicker'))
                                                        <p class="help-block">
                                                            {{ $errors->first('colorpicker') }}
                                                        </p>
                                                    @endif
                                                </div>
                                            </div>
                                            <button class="btn btn-primary subbtn" type="submit">Submit</button>
                                        </form>
                                    </div>
                                </div>
                                <!-- end card -->
                            </div> <!-- end col -->
        
                            
                        </div> <!-- end row -->
    </div>
</div>
   
<script>
$(function() {
  $('.colorpicker').colorpicker({});
  $("#contactForm").validate({
    rules: {
      name:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:false,
       minlength:3,
       maxlength:50,
        },
      university:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:false,
       minlength:3,
       maxlength:50,
        },
      systemNickname:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
       maxlength:20,
        },
      nickname:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
       maxlength:20,
        },
      email: {
        required: true,
        email: true,
        //custom validation
        validate_email: true,
      },
      password: {
        required: true,
        minlength: 8,
        maxlength: 15,
        regexPassword:true,
      },
      gender:"required",
      age:{required:true,digits:true,range: [1,100],minAge: 16},
      trusted:"required",
      color:"required",
    },
    messages: {
        name:{
          required:"Please enter your Name",
          minlength:"Please enter atleast 3 character",
        }, 
        password: {
            required: "Please provide a password",
            minlength: "Your password must be at least 8 characters long",
            maxlength: "Your password must not be bigger than 15 characters "
        },
        email: "Please enter a valid email address"
    },
    submitHandler: function(form) {
      $('.subbtn').prop('disabled',true);
      form.submit();
    },
    // Called when the element is invalid:
    highlight: function(element) {
        $(element).css({'background':'rgba(253, 238, 238, 0.61)','border-color':'red'});
    },
    // Called when the element is valid:
    unhighlight: function(element) {
        $(element).css({'background': '#ffffff','border-color': 'green'});
    }
  });
});

</script>
@endsection