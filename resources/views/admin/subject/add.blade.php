@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Add subject</h4>
                                        <p class="card-title-desc">fill the below details</p>
                                        <form action="{{route('admin.subject.store')}}" id="subjectForm" method="post" enctype="multipart/form-data">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="country">Country</label>
                                                        <select class="form-control select2" onchange="ChangeSchool()" name="country" id="countryCode">
                                                            <option value="" selected disabled>Select Country</option>
                                                            @foreach ($countries as $country)
                                                                <option {{ old('country') == $country->iso2 ? 'selected' : '' }}
                                                                    value="{{ $country->iso2 }}" value="{{ $country->iso2 }}">
                                                                    {{ $country->name }}
                                                                </option>
                                                            @endforeach
                                                        </select>
                                                        @error('country')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                               <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="country">School</label>
                                                        <select class="form-control select2" id="schoolCode"  name="school_code">
                                                            <option value="" selected disabled>Select School</option>
                                                        </select>
                                                        @error('country_code')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="name">Subject Name</label>
                                                        <input type="text" class="form-control errorvalidator  checksubjectname" id="name" placeholder="Subject name" value="{{old('name')}}" name="name" required>
                                                        @error('name')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       <input type="hidden" id="langtype" name="lang_code" value="{{old('lang_code')}}">
                                                        <input type="hidden" id="modalname" value="School">
                                                        
                                                    </div>
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
$("#schoolCode").change(function () {
    $('.checklangname').val('');
  var langval= $("#schoolCode :selected").val();
  $.ajax({
    'type':'post',
    'url':baseurl+'/admin/subject/school-lang',
    'data':{
        '_token': '{{csrf_token()}}',
        'school':langval
    },success:function(response){
        $('#langtype').val(response);
    }
  });
});

</script>

@endsection