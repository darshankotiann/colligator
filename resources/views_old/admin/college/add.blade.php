@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Add College</h4>
                                        <p class="card-title-desc">fill the below details</p>
                                        <form action="{{route('admin.college.store')}}" id="collegeForm" method="post" enctype="multipart/form-data">
                                            @csrf
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
                                                        <label for="country">University</label>
                                                        <select class="form-control select2" id="universityCode"  name="university_code">
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
                                                        <label for="name">College Name</label>
                                                        <input type="text" class="form-control errorvalidator  checkcollegename" id="name"  placeholder="college name" value="{{old('name')}}" name="name" required>
                                                        @error('name')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       <input type="hidden" id="langtype" value="">
                                                       <input type="hidden" id="modalname" value="university">
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
$("#universityCode").change(function () {
    $('.checkcollegename').val('');
  var langval= $("#universityCode :selected").val();
  $.ajax({
    'type':'post',
    'url':baseurl+'/admin/college/university-lang',
    'data':{
        '_token': '{{csrf_token()}}',
        'university':langval
    },success:function(response){
        $('#langtype').val(response);
    }
  });
});
</script>

@endsection