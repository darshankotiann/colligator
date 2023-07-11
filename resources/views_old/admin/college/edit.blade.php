@extends('layouts.app')
@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Edit College</h4>
                        <p class="card-title-desc">Edit the below details</p>
                        <form action="{{route('admin.college.update',base64_encode($college->id))}}" id="collegeForm" method="post" enctype="multipart/form-data">
                            @csrf
                            {{ method_field('PATCH') }}
                            <div class="row">
                               <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Country</label>
                                        <input type="text" class="form-control" name="" disabled value="{{$countryName->name}}">
                                                                               
                                    </div>
                                </div>
                               <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">University</label>
                                        <select class="form-control select2" id="universitycode" disabled name="university_code">
                                            <option value="" selected disabled>Select University</option>
                                            @foreach($universities as $university)
                                                <option {{$college->university_code== $university->university_code ? 'selected': ''}} value="{{$university->university_code}}" >{{$university->name}}</option>
                                            @endforeach
                                        </select>
                                        @error('country_code')
                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                        @enderror
                                       <input type="hidden" name="university_code" value="{{$college->university_code}}">
                                    </div>
                                </div>
                            </div>
                            <div class="row">

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">College Name</label>
                                        <input type="text" class="form-control errorvalidator " id="name"  placeholder="college name" value="{{$college->name}}" name="name" required>
                                        @error('name')
                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                        @enderror
                                        <input type="hidden" id="langtype" value="{{$college->university['lang_code']}}">
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

@endsection