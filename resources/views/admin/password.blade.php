@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Change Password</h4>
                                        <p class="card-title-desc">Edit the below details</p>
                                       <div class="main-content-body tab-pane p-4 border-top-0 active" id="edit">
                                        @if(session('success'))
                                        <div class="alert alert-outline-success" role="alert">
                                            <button aria-label="Close" class="close" data-dismiss="alert" type="button">
                                            <span aria-hidden="true">&times;</span></button>
                                            <strong>Well done!</strong> {{session('success')}}
                                        </div>

                                        @endif
                                            <div class="card-body border">
                                                <div class="mb-4 main-content-label">Information</div>
                                                <form class="form-horizontal formsubmit" id="passwordUpdate" action="{{route('admin.password_update')}}" method="post" enctype="multipart/form-data">
                                                    @csrf

                                                    <div class="form-group ">
                                                        <div class="row row-sm">
                                                            <div class="col-md-3">
                                                                <label class="form-label">Old Password</label>
                                                            </div>
                                                            <div class="col-md-9">
                                                                <input type="password" class="form-control"  name="oldpassword" placeholder="Old Password" required>
                                                                 @if ($errors->has('oldpassword'))
                                                                    <span class="text-danger">{{ $errors->first('oldpassword') }}</span>
                                                                @endif
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <div class="row row-sm">
                                                            <div class="col-md-3">
                                                                <label class="form-label">New Password</label>
                                                            </div>
                                                            <div class="col-md-9">
                                                                <input type="password" class="form-control"  name="newpassword" id="newpassword" placeholder="New Password" required>
                                                                 @if ($errors->has('newpassword'))
                                                                    <span class="text-danger">{{ $errors->first('newpassword') }}</span>
                                                                @endif
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <div class="row row-sm">
                                                            <div class="col-md-3">
                                                                <label class="form-label">Confirm Password</label>
                                                            </div>
                                                            <div class="col-md-9">
                                                                <input type="password" class="form-control"  name="confirm_password" placeholder="confirm Password" required>
                                                                 @if ($errors->has('confirm_password'))
                                                                    <span class="text-danger">{{ $errors->first('confirm_password') }}</span>
                                                                @endif
                                                            </div>
                                                        </div>
                                                    </div>
                                                    
                                                    <button class="btn ripple btn-success subbtn" type="submit">Update</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end card -->
                            </div> <!-- end col -->
        
                            
                        </div> <!-- end row -->
    </div>
</div>
<script>
$(function() {
  $("#passwordUpdate").validate({
    rules: {
      
      oldpassword: {
        required: true,
      },
      newpassword: {
        required: true,
        minlength: 8,
        maxlength: 15,
        regexPassword:true,
      },
      confirm_password: {
        required: true,
        equalTo : "#newpassword"
      },
    },
    messages: { 
        newpassword: {
            required: "Please provide a password",
            minlength: "Your password must be at least 8 characters long",
            maxlength: "Your password must not be bigger than 15 characters "
        },
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