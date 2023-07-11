@extends('layouts.app')



@section('content')

<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />

 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Add Banner</h4>
                        <p class="card-title-desc">fill the below details</p>
                        <form action="{{route('admin.banner.store')}}" id="bannerForm" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Country</label>
                                        <select class="form-control select2 selectschool" onchange="ChangeUniversityforprofessor()" name="country_code" id="countryCode">
                                            <option value="" selected disabled>Select Country</option>
                                            @foreach($countries as $country)
                                                <option {{old('country_code')==$country->iso2 ? 'selected' : ''}} value="{{$country->iso2}}" value="{{$country->iso2}}" >{{$country->name}}</option>
                                            @endforeach
                                        </select>
                                        @error('country_code')
                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                        @enderror
                                       
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="lang">Banner Type</label>
                                        <select class="form-control select2 " id="type" name="type">
                                            <option value="" selected disabled>Select Banner Type</option>
                                            <option {{old('type')==1 ? 'selected' : ''}} value="1" >Country</option>
                                            <option {{old('type')==2 ? 'selected' : ''}} value="2" >University</option>
                                            <option {{old('type')==3 ? 'selected' : ''}} value="3" id="professoroption">Professor</option>
                                            <option {{old('type')==4 ? 'selected' : ''}} value="4" >School</option>
                                            <option {{old('type')==5 ? 'selected' : ''}} value="5" id="teacheroption">Teacher</option>

                                        </select>
                                        @error('type')
                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                        @enderror
                                       
                                    </div>
                                </div>
                                   <div class="col-md-6" id="Teacherbanner">
                                        <div class="form-group">
                                            <label for="country">School</label>
                                            <select class="form-control select2" id="schoolCode" name="school_code">
                                                <option value="{{ old('school_code') }}" selected disabled>Select School
                                                    @foreach ($schoolname as $school)
                                                <option {{ old('school_code') == $school->school_code ? 'selected' : '' }}
                                                    value="{{ $school->school_code }}">{{ $school->name }}</option>
                                                @endforeach
                                                </option>

                                            </select>
                                            @error('country_code')
                                                <span class="error form-errors mb-0">{{ $message }}</span>
                                            @enderror

                                        </div>
                                    </div>
                                <div class="col-md-6" id="Professorbanner">
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
                                        <label for="text_en">Text (English)</label>
                                        <div class="form-group d-flex">
                                            <input type="text" class="form-control errorvalidator" id="text_en" placeholder="English text" value="{{old('text_en')}}" name="text_en" >
                                           <!--  <i class="fa fa-info col-1" data-toggle="tooltip" data-placement="bottom"  title="For perfect text alignment add text between 30-40 characters"></i> -->
                                        </div>
                                        @error('text_en')
                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="text_en">Text (Arabic)</label>
                                        <div class="form-group d-flex">
                                            <input type="text" class="form-control errorvalidator" id="text_ar" placeholder="Arabic text" value="{{old('text_ar')}}" name="text_ar" >
                                           <!--  <i class="fa fa-info col-1" data-toggle="tooltip" data-placement="bottom"  title="For perfect text alignment add text between 30-40 characters"></i> -->
                                        </div>
                                        @error('text_ar')
                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>                                                 
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">Banner Image</label>
                                        <div class="form-group d-flex">
                                            
                                        <input type="file" name="image" id="bannerimage" onchange="readURL(this)" class="form-control">
                                        <i class="fa fa-info col-1" data-toggle="tooltip" data-placement="bottom" title="For perfect visibility add 540*400 dimensions image"></i>
                                        </div>
                                       @error('image')
                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                        @enderror
                                        
                                    </div>
                                    <label id="bannerimage-error" class="error" for="bannerimage"></label>
                                    <img src="" id="userImage" width="100">
                                    
                                </div>
                                 
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">Link For Banner</label>
                                        <input type="text" name="link" placeholder="banner link"  value="{{old('link')}}" class="form-control">
                                        @error('link')
                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                        @enderror
                                       
                                    </div>
                                </div>

                            </div>
                            <button class="btn btn-primary subbtn mt-3" type="submit">Submit</button>
                        </form>
                    </div>
                </div>
                <!-- end card -->
            </div> <!-- end col -->

            
        </div> <!-- end row -->
    </div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>
<script>
    $(function() {
  $("#type").change(function() {
    if ($("#professoroption").is(":selected")) {
      $("#Professorbanner").show();
    } else {
      $("#Professorbanner").hide();
    }
  }).trigger('change');
});

</script>

<script>
   $("#countryCode").change(function() {
  var countryval = $("#countryCode :selected").val();
  $.ajax({
    'url': baseurl + '/admin/banner/schoolList',
    'type': 'post',
    'data': {
      'countrycode': countryval,
    },
    'datatype': 'html',
  }).done(function (data, textStatus, jqXHR) {
    console.log(data);
    $('#schoolCode').html(data);
    $('#subjectCode').html('');
  }).fail(function (jqXHR, ajaxOptions, thrownError) {
    alert('error');
  });
});
</script>

<script>
    $(function() {
  $("#type").change(function() {
    if ($("#teacheroption").is(":selected")) {
      $("#Teacherbanner").show();
    } else {
      $("#Teacherbanner").hide();
    }
  }).trigger('change');
});

</script>
<script>
    $(document).ready(function(){
        // alert("{{old('country_code')}}");
        ChangeUniversityforprofessor("{{old('university_code')}}");
    });
</script>

    <script>
        $('#countryCode').select2({
            'placeholder': "{{ __('Select Country') }}",
            allowClear: true,
            // minimumInputLength: 3 // only start searching when the user has input 3 or more characters
        });


        $('#type').select2({
            'placeholder': "{{ __('Select Banner Type') }}",
            allowClear: true,
            // minimumInputLength: 3 // only start searching when the user has input 3 or more characters
        });

        $('#universityCode').select2({
            'placeholder': "{{ __('Select University') }}",
            allowClear: true,
            // minimumInputLength: 3 // only start searching when the user has input 3 or more characters
        });

        $('#schoolCode').select2({
            'placeholder': "{{ __('Select School') }}",
            allowClear: true,
            // minimumInputLength: 3 // only start searching when the user has input 3 or more characters
        });
    </script>


@endsection