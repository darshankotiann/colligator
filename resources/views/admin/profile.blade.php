@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Edit Profile</h4>
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
                                                <div class="mb-4 main-content-label">Personal Information</div>
                                                <form class="form-horizontal " id="profileUpdate" action="{{route('admin.profile_update')}}" method="post" enctype="multipart/form-data">
                                                    @csrf
                                                <div class="mt-4 mt-md-0 mb-4">
                                                    <img class="rounded-circle avatar-xl" id="userImage" alt="200x200" src="{{asset('profile/'.Auth::guard('admin')->user()->image)}}">
                                                </div>
                                                    <div class="form-group ">
                                                        <div class="row row-sm">
                                                            <div class="col-md-3">
                                                                <label class="form-label">User Name</label>
                                                            </div>
                                                            <div class="col-md-9">
                                                                <input type="text" class="form-control"  name="name" placeholder="User Name" value="{{Auth::guard('admin')->user()->name}}" required>
                                                                 @if ($errors->has('name'))
                                                                    <span class="text-danger">{{ $errors->first('name') }}</span>
                                                                @endif
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <div class="row row-sm">
                                                            <div class="col-md-3">
                                                                <label class="form-label">Email</label>
                                                            </div>
                                                            <div class="col-md-9">
                                                                <input type="text" readonly="readonly" class="form-control" placeholder="Email" value="{{Auth::guard('admin')->user()->email}}">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <div class="row row-sm">
                                                            <div class="col-md-3">
                                                                <label class="form-label">Image</label>
                                                            </div>
                                                            <div class="col-md-9">
                                                                <input type="file" id="image" class="form-control" name="image" onchange="PreviewImage();">
                                                                @if ($errors->has('image'))
                                                                    <span class="text-danger">{{ $errors->first('image') }}</span>
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
if ($("#profileUpdate").length > 0) {
                    $("#profileUpdate").validate({
                    rules: {
                    name:{
                    normalizer: function(value) {
                      return $.trim(value);
                    },
                   required:true,
                   minlength:3,
                   maxlength:50,
                    },
                     image: {
                        extension: "jpg|jpeg|png"
                    },
                    },
                    messages: {
                    name: {
                    required: "Please enter Name ",
                    },
                    
                    image: {
                        extension: "Please upload file in these format only (jpg, jpeg, png)."
                    },
                    },
                     submitHandler: function(form) {
                        $('.subbtn').prop('disabled', true);
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
                          };

            </script>

@endsection