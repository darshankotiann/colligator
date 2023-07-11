@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Add User</h4>
                                        <p class="card-title-desc">fill the below details</p>
                                        <form action="{{route('admin.user.store')}}" id="userAddForm" method="post">
                                            @csrf
                                            <div class="row">
                                                {{--<div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="name">Name</label>
                                                        <input type="text" class="form-control errorvalidator" id="name" placeholder="First name" value="{{old('name')}}" name="name" >
                                                        @error('name')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>--}}
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="email">Email</label>
                                                        <input type="email" class="form-control errorvalidator" id="email" placeholder="Email" value="{{old('email')}}" name="email" required>
                                                    @error('email')
                                                    <span class="error form-errors mb-0">{{ $message }}</span>
                                                    @enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
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
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                          <label class="control-label">Age</label>
                                                        <select id="age" name="age" required class="form-control">
                                                         <!-- <option selected="" value="" disabled="">{{__('lang.age')}}</option> -->
                                                                <?php
                                                                for($i=16; $i<100; $i++){ ?>
                                                             <option {{ old('age')== $i ? 'selected':'' }} value="{{$i}}">{{$i}}</option>
                                                        <?php } ?>
                                                    </select>
                                                    </div>
                                                </div>

                                                <div class="col-md-6">
                                                        <div class="form-group">
                                                        <label class="control-label">Gender</label>
                                                        <select class="form-control select2 errorvalidator" required name="gender">
                                                            <option disabled selected value="">Select Gender </option>
                                                            <option value="1" {{old('gender') == 1 ? 'selected' : ''}} >Male</option>
                                                            <option value="2" {{old('gender') == 2 ? 'selected' : ''}} >Female</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                       {{-- 
                                                <div class="col-md-6">
                                                    <div class="row">
                                                        
                                                        <div class="col-md-9 form-group">
                                                            <label for="systemNickname">Nick Name System Generated</label>
                                                            <input type="text" class="form-control errorvalidator" id="rand_nickname" placeholder="Generate Nickname"  name="systemNickname" required>
                                                            @error('systemNickname')
                                                            <span class="error form-errors mb-0">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                        <div class="col-md-3 form-group">
                                                            <label for="systemNickname">Generate Nickname</label>
                                                            <button type="button" class="btn btn-success waves-effect waves-light btn-sm " style="float: right;" onclick="Nickname()">Generate </button>

                                                        </div>
                                                    </div>
                                                </div>
                                                     --}}
                                                {{--<div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="University">University</label>
                                                        <input type="text" class="form-control errorvalidator" id="university" placeholder="University Name" value="{{old('university')}}" name="university" >
                                                        @error('university')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>--}}
                                                
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
  $("#userAddForm").validate({
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
      age:{
        required:true,digits:true,maxlength:3,minAge: 16
    },
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