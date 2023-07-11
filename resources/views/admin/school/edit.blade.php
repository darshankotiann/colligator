@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Edit School</h4>
                                        <p class="card-title-desc">Edit the below details</p>
                                        <form action="{{route('admin.school.update',base64_encode($school->id))}}" id="schoolForm" method="post" enctype="multipart/form-data">
                                            @csrf
                                            {{ method_field('PATCH') }}
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="country">Country</label>
                                                        <select class="form-control select2" disabled name="country_code">
                                                            <option value="" >Select Country</option>
                                                            @foreach($Countries as $country)
                                                                <option {{$school->country_code == $country->iso2 ? 'selected' : ''}} value="{{$country->iso2}}" >{{$country->name}}</option>
                                                            @endforeach
                                                        </select>
                                                        @error('country_code')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                    <input type="hidden" name="country_code" value="{{$school->country_code}}">
                                                </div>
                                                 <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="lang">Language Code</label>
                                                        <select class="form-control select2" onchange="checklangType()" id="langcode" name="lang_code">
                                                            <option value="" disabled >Select Language</option>
                                                            <option value="1" {{$school->lang_code == 1 ? 'selected' : ''}}>{{'English'}}</option>
                                                            <option value="2" {{$school->lang_code == 2 ? 'selected' : ''}}>{{'Arabic'}}</option>
                                                        </select>
                                                        @error('lang_code')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="name">Name</label>
                                                        <input type="text" class="form-control errorvalidator " id="name" placeholder="school name" value="{{$school->name}}" name="name" required>
                                                        @error('name')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                   <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="school_code">School Code</label>
                                                        <input type="text" class="form-control errorvalidator " id="name" placeholder="school code" value="{{$school->school_code}}" name="school_code" required>
                                                        @error('school_code')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
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