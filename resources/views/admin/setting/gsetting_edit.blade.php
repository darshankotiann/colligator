@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Edit Setting</h4>
                                        <p class="card-title-desc">fill the below details</p>
                                        <form action="{{route('admin.global_setting.update')}}" id="settingForm" method="post" enctype="multipart/form-data">
                                            @csrf

        
        
                                        <!-- Nav tabs -->
                                        <ul class="nav nav-tabs" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active" data-toggle="tab" href="#settings" role="tab">
                                                    <span class="d-block d-sm-none"><i class="fas fa-home"></i></span>
                                                    <span class="d-none d-sm-block">Basic</span>    
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" data-toggle="tab" href="#socialLinks" role="tab">
                                                    <span class="d-block d-sm-none"><i class="far fa-user"></i></span>
                                                    <span class="d-none d-sm-block">Social Links</span>    
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" data-toggle="tab" href="#appLinks" role="tab">
                                                    <span class="d-block d-sm-none"><i class="far fa-envelope"></i></span>
                                                    <span class="d-none d-sm-block">App Links</span>    
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" data-toggle="tab" href="#websettings" role="tab">
                                                    <span class="d-block d-sm-none"><i class="fas fa-cog"></i></span>
                                                    <span class="d-none d-sm-block">Web Settings</span>    
                                                </a>
                                            </li>
                                        </ul>
        
                                        <!-- Tab panes -->
                                        <div class="tab-content p-3 text-muted">
                                            <div class="tab-pane active" id="settings" role="tabpanel">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="name">Name</label>
                                                            <input type="text" class="form-control errorvalidator" id="name" placeholder="First name" value="{{$setting['name']}}" name="name" required>
                                                            @error('name')
                                                                <span class="error form-errors mb-0">{{ $message }}</span>
                                                            @enderror
                                                           
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="email">Email</label>
                                                            <input type="email" class="form-control errorvalidator" id="email" placeholder="Email" value="{{$setting['email']}}" name="email" required>
                                                        @error('email')
                                                        <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                        </div>
                                                    </div>
                                                </div>
                                                 <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="logo">Logo</label>
                                                        <input type="file" class="form-control errorvalidator" id="logo"  name="logo" >
                                                    @error('logo')
                                                    <span class="error form-errors mb-0">{{ $message }}</span>
                                                    @enderror
                                                    </div>
                                                    <img src="{{asset('setting/'.$setting['logo'])}}" width="100">
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="favicon">Favicon</label>
                                                        <input type="file" class="form-control errorvalidator" id="favicon"  name="favicon" >
                                                    @error('favicon')
                                                    <span class="error form-errors mb-0">{{ $message }}</span>
                                                    @enderror
                                                    </div>
                                                     <img src="{{asset('setting/'.$setting['favicon'])}}" width="50">
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="email">Address</label>
                                                        <textarea class="form-control errorvalidator" id="address"  name="address" placeholder="Address" required> {{$setting['address']}}</textarea> 
                                                    @error('address')
                                                    <span class="error form-errors mb-0">{{ $message }}</span>
                                                    @enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="email">Footer</label>
                                                        <textarea class="form-control errorvalidator" placeholder="Footer" id="footer"  name="footer" required>{{$setting['footer']}}</textarea> 
                                                    @error('phone_no')
                                                    <span class="error form-errors mb-0">{{ $message }}</span>
                                                    @enderror
                                                    </div>
                                                </div>
                                            </div>
                                                <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="email" class="col-xl-12">Phone No</label>
                                                        <input type="text" class="form-control w-100 col-xl-12 errorvalidator"value="{{$setting['phone_no']}}" id="phone_no" placeholder="phone number" name="phone_no" required>
                                                        <input type="hidden" name="fullphone_no" id="fullphone_no" value="">
                                                    @error('phone_no')
                                                    <span class="error form-errors mb-0">{{ $message }}</span>
                                                    @enderror
                                                    </div>
                                                    <p class="phoneError"></p>
                                                </div>
                                            </div>
                                            </div>
                                            <div class="tab-pane" id="socialLinks" role="tabpanel">
                                                 <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="email">Facebook</label>
                                                        <input type="text" class="form-control errorvalidator" placeholder="Facebook url" value="{{$setting['facebook']}}" id="facebook"  name="facebook" required>
                                                    @error('facebook')
                                                    <span class="error form-errors mb-0">{{ $message }}</span>
                                                    @enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="email">Twitter</label>
                                                        <input type="text" class="form-control errorvalidator" placeholder="Twitter url " value="{{$setting['twitter']}}" id="twitter"  name="twitter" required>
                                                    @error('twitter')
                                                    <span class="error form-errors mb-0">{{ $message }}</span>
                                                    @enderror
                                                    </div>
                                                </div>
                                            </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="linkedin">Linkedin</label>
                                                            <input type="text" class="form-control errorvalidator"value="{{$setting['linkedin']}}" id="linkedin" placeholder="Linkedin Url"  name="linkedin" required>
                                                        @error('linkedin')
                                                        <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="youtube">Youtube</label>
                                                            <input type="text" class="form-control errorvalidator"placeholder="Youtube Url" value="{{$setting['youtube']}}" id="youtube"  name="youtube" required>
                                                        @error('youtube')
                                                        <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="instagram">Instagram</label>
                                                            <input type="text" class="form-control errorvalidator" placeholder="Instagram Url" value="{{$setting['instagram']}}" id="instagram"  name="instagram" required>
                                                        @error('instagram')
                                                        <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="appLinks" role="tabpanel">
                                                 <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="playstore">Play Store</label>
                                                        <input type="text" class="form-control errorvalidator"value="{{$setting['play_store']}}" id="play_store" placeholder="playstore link" name="play_store" required>
                                                    @error('play_store')
                                                    <span class="error form-errors mb-0">{{ $message }}</span>
                                                    @enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="app_store">App Store</label>
                                                        <input type="text" class="form-control errorvalidator"value="{{$setting['app_store']}}" id="app_store"  name="app_store" placeholder="Appstore Link" required>
                                                    @error('app_store')
                                                    <span class="error form-errors mb-0">{{ $message }}</span>
                                                    @enderror
                                                    </div>
                                                </div>
                                            </div>
                                            </div>
                                            <div class="tab-pane" id="websettings" role="tabpanel">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="email">Longtitude</label>
                                                            <textarea class="form-control errorvalidator" id="longtitude" placeholder="longtitude" name="longtitude" required>{{$setting['longtitude']}}</textarea> 
                                                        @error('longtitude')
                                                        <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                        </div>
                                                    </div>
                                                     <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="email">Latitude</label>
                                                            <textarea class="form-control errorvalidator" id="latitude" placeholder="Latitude"  name="latitude" required>{{$setting['latitude']}}</textarea> 
                                                        @error('latitude')
                                                        <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="row">
                                                   <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="email">Google Analytic Script</label>
                                                            <textarea class="form-control errorvalidator" id="google_analytic_script"  name="google_analytic_script" placeholder="Google Analytic Script" required>{{$setting['google_analytic_script']}}</textarea> 
                                                        @error('google_analytic_script')
                                                        <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                        </div>
                                                    </div>
                                                   <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="email">Allow Teacher Rating</label>
                                                            <select class="form-control" name="teacher_rating">
                                                                <option {{$setting['teacher_rating'] == 0 ? 'selected' : ''}} value="0">Decline Visibility</option>
                                                                <option {{$setting['teacher_rating'] == 1 ? 'selected' : ''}} value="1">Allow Visibility</option>
                                                            </select>
                                                        @error('teacher_rating')
                                                        <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                   <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="email">Allow Professor Rating</label>
                                                            <select class="form-control" name="professor_rating">
                                                                <option {{$setting['professor_rating'] == 0 ? 'selected' : ''}} value="0">Decline Visibility</option>
                                                                <option {{$setting['professor_rating'] == 1 ? 'selected' : ''}} value="1">Allow Visibility</option>
                                                            </select>
                                                        @error('professor_rating')
                                                        <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                        </div>
                                                    </div>
                                                   <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="email">Allow University Rating</label>
                                                            <select class="form-control" name="university_rating">
                                                                <option {{$setting['university_rating'] == 0 ? 'selected' : ''}} value="0">Decline Visibility</option>
                                                                <option {{$setting['university_rating'] == 1 ? 'selected' : ''}} value="1">Allow Visibility</option>
                                                            </select>
                                                        @error('university_rating')
                                                        <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                   <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="email">Allow Slider View</label>
                                                            <select class="form-control" name="slider_view">
                                                                <option {{$setting['slider_view'] == 0 ? 'selected' : ''}} value="0">Decline Visibility</option>
                                                                <option {{$setting['slider_view'] == 1 ? 'selected' : ''}} value="1">Allow Visibility</option>
                                                            </select>
                                                        @error('slider_view')
                                                        <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                        </div>
                                                    </div>
                                                   <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="email">Allow About Us Section</label>
                                                            <select class="form-control" name="about_us_view">
                                                                <option {{$setting['about_us_view'] == 0 ? 'selected' : ''}} value="0">Decline Visibility</option>
                                                                <option {{$setting['about_us_view'] == 1 ? 'selected' : ''}} value="1">Allow Visibility</option>
                                                            </select>
                                                        @error('about_us_view')
                                                        <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                   <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="email">Allow News View</label>
                                                            <select class="form-control" name="news_view">
                                                                <option {{$setting['news_view'] == 0 ? 'selected' : ''}} value="0">Decline Visibility</option>
                                                                <option {{$setting['news_view'] == 1 ? 'selected' : ''}} value="1">Allow Visibility</option>
                                                            </select>
                                                        @error('news_view')
                                                        <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                        </div>
                                                    </div>
                                                   <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="email">Allow About Us Section</label>
                                                            <select class="form-control" name="about_us_view">
                                                                <option {{$setting['about_us_view'] == 0 ? 'selected' : ''}} value="0">Decline Visibility</option>
                                                                <option {{$setting['about_us_view'] == 1 ? 'selected' : ''}} value="1">Allow Visibility</option>
                                                            </select>
                                                        @error('about_us_view')
                                                        <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                   <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="email">Allow Country banner</label>
                                                            <select class="form-control" name="country_banner">
                                                                <option {{$setting['country_banner'] == 0 ? 'selected' : ''}} value="0">Decline Visibility</option>
                                                                <option {{$setting['country_banner'] == 1 ? 'selected' : ''}} value="1">Allow Visibility</option>
                                                            </select>
                                                        @error('country_banner')
                                                        <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                        </div>
                                                    </div>
                                                   <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="email">Allow university/school banner</label>
                                                            <select class="form-control" name="university_school">
                                                                <option {{$setting['university_school'] == 0 ? 'selected' : ''}} value="0">Decline Visibility</option>
                                                                <option {{$setting['university_school'] == 1 ? 'selected' : ''}} value="1">Allow Visibility</option>
                                                            </select>
                                                        @error('university_school')
                                                        <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                   <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="email">Allow university banner</label>
                                                            <select class="form-control" name="find_rate_university">
                                                                <option {{$setting['find_rate_university'] == 0 ? 'selected' : ''}} value="0">Decline Visibility</option>
                                                                <option {{$setting['find_rate_university'] == 1 ? 'selected' : ''}} value="1">Allow Visibility</option>
                                                            </select>
                                                        @error('find_rate_university')
                                                        <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                        </div>
                                                    </div>
                                                   <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="email">Allow Teacher banner</label>
                                                            <select class="form-control" name="find_rate_teacher">
                                                                <option {{$setting['find_rate_teacher'] == 0 ? 'selected' : ''}} value="0">Decline Visibility</option>
                                                                <option {{$setting['find_rate_teacher'] == 1 ? 'selected' : ''}} value="1">Allow Visibility</option>
                                                            </select>
                                                        @error('find_rate_teacher')
                                                        <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                   <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="email">Allow Private Messaging</label>
                                                            <select class="form-control" name="private_message">
                                                                <option {{$setting['private_message'] == 0 ? 'selected' : ''}} value="0">Decline Visibility</option>
                                                                <option {{$setting['private_message'] == 1 ? 'selected' : ''}} value="1">Allow Visibility</option>
                                                            </select>
                                                        @error('private_message')
                                                        <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                   <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="email">Show Language Selection Button</label>
                                                            <select class="form-control" name="show_language">
                                                                <option {{$setting['show_language'] == 0 ? 'selected' : ''}} value="0">Decline Visibility</option>
                                                                <option {{$setting['show_language'] == 1 ? 'selected' : ''}} value="1">Allow Visibility</option>
                                                            </select>
                                                        @error('show_language')
                                                        <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <button class="btn btn-primary" type="submit">Update Settings</button>
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
    var phone_number = window.intlTelInput(document.querySelector("#phone_no"),{
        separateDialCode: true,
        preferredCountries:["ae"],
        nationalMode: false,
        formatOnDisplay: false,
        utilsScript: "//cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.12/js/utils.js"
      }); 
  $("#settingForm").validate({
    errorPlacement: function(error, element) {
                    if (element.attr("name") == "phone_no" ){

                        error.appendTo('.phoneError');
                      }  else {
                    error.insertAfter(element);
                  }
              },
    rules: {
      name:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
       maxlength:50,
        },
      email: {
        required: true,
        email: true,
        //custom validation
        validate_email: true,
      },
      phone_no: {
        required: true,
        digits:true,
        minlength:7,
        maxlength:15,
      },
      logo:{
        accept: "image/jpg,image/jpeg,image/png"
      },
      favicon:{
        accept: "image/jpg,image/jpeg,image/png"
      },
      address:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
      },
      footer:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
      },
      latitude:{
        normalizer: function(value) {
          return $.trim(value);
        },
        required:false,
       minlength:3,
      },
      longtitude:{
        normalizer: function(value) {
          return $.trim(value);
        },
        required:false,
       minlength:3,
      },
      google_analytic_script:{
        normalizer: function(value) {
          return $.trim(value);
        },
        required:false,
       minlength:3,
      },
      facebook:{
        normalizer: function(value) {
          return $.trim(value);
        },
        required:false,
       minlength:3,
       url: true,
      },
      twitter:{
        normalizer: function(value) {
          return $.trim(value);
        },
        required:false,
       minlength:3,
       url: true
      },
      linkedin:{
        normalizer: function(value) {
          return $.trim(value);
        },
        required:false,
       minlength:3,
       url: true,
      },
      youtube:{
        normalizer: function(value) {
          return $.trim(value);
        },
        required:false,
       minlength:3,
       url: true,
      },
      instagram:{
        normalizer: function(value) {
          return $.trim(value);
        },
        required:false,
       minlength:3,
       url: true,
      },
      play_store:{
        normalizer: function(value) {
          return $.trim(value);
        },
        required:false,
       minlength:3,
       url: true,
      },
      app_store:{
        normalizer: function(value) {
          return $.trim(value);
        },
        required:false,
       minlength:3,
       url: true,
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
        var phonefull_number = phone_number.getNumber(intlTelInputUtils.numberFormat.E164);
        var countryData = phone_number.getSelectedCountryData();
        $('#fullphone_no').val(phonefull_number);
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

      <style type="text/css">
        .iti.iti--allow-dropdown.iti--separate-dial-code{
      width:calc(100% ) !important;
    }
      </style>
@endsection