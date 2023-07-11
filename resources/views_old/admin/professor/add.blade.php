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
                                                
                                            <h4 class="card-title">Add Professor</h4>
                                            <p class="card-title-desc">fill the below details</p>
                                            </div>
                                            <div class="col-md-1">
                                                <a href="{{route('admin.professor.index')}}" class="btn btn-primary subbtn mt-2 text-right rounded" type="submit">Back</a>
                                                
                                            </div>
                                        </div>
                                        <form action="{{route('admin.professor.store')}}" id="professorForm" method="post" enctype="multipart/form-data">
                                            @csrf
                                            <input type="hidden" id="langtype" value="">
                                            <input type="hidden" id="modalname" value="university">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="country">Country</label>
                                                        <select class="form-control select2" onchange="ChangeUniversity()" name="country" id="countryCode">
                                                            <option value="" selected disabled>Select Country</option>
                                                            @foreach($countries as $country)
                                                                <option value="{{$country->iso2}}" >{{$country->name}}</option>
                                                            @endforeach
                                                        </select>
                                                        @error('country')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="university">University</label>
                                                        <select class="form-control select2" onchange="ChangeCollege()" id="universityCode" name="university_code">
                                                            <option value="" selected disabled>Select University</option>
                                                        </select>
                                                        @error('university_code')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                

                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="country">College</label>
                                                        <select class="form-control select2" id="collegeCode" name="college_code">
                                                            <option value="" selected disabled>Select College</option>
                                                        </select>
                                                        @error('college_code')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="name">Name</label>
                                                        <input type="text" class="form-control errorvalidator checklangname" id="name" placeholder="Professor Name" autocomplete="new-password" value="{{old('name')}}" name="name" required>
                                                        @error('name')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">

                                                <div class="col-md-6">
                                                        <label for="profile">Profile</label>
                                                    <div class="form-group custom-file">
                                                        <input type="file" onchange="PreviewImage()" name="profile" class="custom-file-input" id="image">
                                                        <label class="custom-file-label" for="image">Choose file</label>
                                                        @error('profile')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                    <img src="" id="userImage" width="100">
                                                </div>
                                                
                                            </div>
                                            <button class="btn btn-primary subbtn mt-2" type="submit">Submit</button>
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
  $("#professorForm").validate({
    rules: {
      name:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
       maxlength:50,
        },
      university_code:{
       required:true,
        },
      college_code:{
       required:true,
        },
      profile: {
        required: false,
        extension: "jpg,jpeg,png",
        filesize: 5,
      },
      country:"required",
    },
    messages: {
        name:{
          required:"Please enter your Name",
          minlength:"Please enter atleast 3 character",
        },
        university_code:{
          required:"Please select your University ",
        }, 
        college_code:{
          required:"Please select your College ",
        }, 
        profile:{
          extension:"Please add only jpg|png|jpeg file",
        }, 
    },
    submitHandler: function(form) {
      $('.subbtn').prop('disabled',true);
      form.submit();
    },
    // Called when the element is invalid:
    highlight: function(element) {
        if(element.getAttribute('id')=='image'){
            $('.custom-file-label').css({'background':'rgba(253, 238, 238, 0.61)','border-color':'red'});
        }else{

            $(element).css({'background':'rgba(253, 238, 238, 0.61)','border-color':'red'});
        }
    },
    // Called when the element is valid:
    unhighlight: function(element) {
        if(element.getAttribute('id')=='image'){
            $('.custom-file-label').css({'background': '#ffffff','border-color': 'green'});
        }else{
            $(element).css({'background': '#ffffff','border-color': 'green'});
        }
    }
  });
});

</script>

@endsection