@extends('layouts.app')

@section('content')
@php

 @endphp
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Add Sub Admin</h4>
                                        <p class="card-title-desc">fill the below details</p>
                                        <form action="{{route('admin.subadmin.store')}}" id="contactForm" method="post">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="name">Name</label>
                                                        <input type="text" class="form-control errorvalidator" id="name" placeholder="First name" value="{{old('name')}}" name="name" required>
                                                        @error('name')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="email">Email</label>
                                                        <input type="email" class="form-control errorvalidator" id="email" placeholder="Email" value="{{old('email')}}" name="email" required>
                                                    @error('email')
                                                    <span class="error form-errors mb-0">{{ $message }}</span>
                                                    @enderror
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
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
                                                <div class="col-md-6">
                                                    <div class="row">
                                                        
                                                        <div class="col-md-9 form-group">
                                                            <label for="nickname">System Nickname</label>
                                                            <input type="text" class="form-control errorvalidator" id="rand_nickname" placeholder="Enter nickname" value="" name="nickname" required>
                                                            @error('nickname')
                                                            <span class="error form-errors mb-0">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                        <div class="col-md-3 form-group">
                                                            <label for="password">Generate Nickname</label>
                                                            <button type="button" class="btn btn-success waves-effect waves-light btn-sm " style="float: right;" onclick="Nickname()">Generate </button>

                                                        </div>
                                                    </div>
                                                </div>
                                               
                                            </div>
                                            
                                            <div >
                                                <h4> Permissions</h4>
                                                <li class="custom-control custom-checkbox"><input type="checkbox" name="permission ?>" class="custom-control-input" id="customCheck" ><label class="custom-control-label" for="customCheck">Select All</label>

                                                <ul class="check-li-main custom-control custom-checkbox">

                                                    @foreach($modules as $key => $module)
                                                    @php 
                                                    $trimData= preg_replace('/\s+/', '', $module)
                                                    @endphp
                                                    <li class="d-flex">
                                                        <input type="checkbox" class="custom-control-input" id="customCheck<?= $key?>"><label class="custom-control-label" name="permissions[<?=$trimData?>][<?= $key ?>]?>" for="customCheck<?= $key?>"><?= $module ?></label>
                                                        <ul class="d-flex childli ml-auto" style="width: 80%;">
                                                            @foreach($modcolumns as $mkey => $modcol)
                                                            <li>
                                                            <input type="checkbox" name="permissions[<?=$trimData?>][<?= $mkey ?>] ?>" class="custom-control-input" id="customCheck<?= $key.$mkey ?>_child" ><label class="custom-control-label" for="customCheck<?= $key.$mkey ?>_child"><?= $modcol ?></label></li>
                                                            @endforeach
                                                        </ul>
                                                    </li>
                                                    @endforeach
                                                    
                                                </ul>
                                                </li>
                                                
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
  $("#contactForm").validate({
    rules: {
      name:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
       maxlength:50,
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
      user_access:"required",
      email_template:"required",
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
//for chckbox
$('li :checkbox').on('click', function () {
    var $chk = $(this),
        $li = $chk.closest('li'),
        $ul, $parent;
    if ($li.has('ul')) {
        $li.find(':checkbox').not(this).prop('checked', this.checked)
    }
    do {
        $ul = $li.parent();
        $parent = $ul.siblings(':checkbox');
        if ($chk.is(':checked')) {
            $parent.prop('checked', $ul.has(':checkbox:not(:checked)').length == 0)
        } else {
            $parent.prop('checked', false)
        }
        $chk = $parent;
        $li = $chk.closest('li');
    } while ($ul.is(':not(.someclass)'));
});
</script>
@endsection