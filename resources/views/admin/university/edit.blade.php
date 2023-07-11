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
                                                <h4 class="card-title">Edit University</h4>
                                                <p class="card-title-desc">Edit the below details</p>
                                            </div>
                                            <div class="col-md-1">
                                                @if($backUrl)
                                                    <a href="{{url($backUrl)}}" class="btn btn-primary subbtn mt-2 text-right rounded" type="submit">Back</a>
                                                @else
                                                    <a href="{{route('admin.university.index')}}" class="btn btn-primary subbtn mt-2 text-right rounded" type="submit">Back</a>
                                                @endif
                                            </div>
                                        </div>
                                        <form action="{{route('admin.university.update',base64_encode($university->id))}}" id="universityForm" method="post" enctype="multipart/form-data">
                                            @csrf
                                            {{ method_field('PATCH') }}
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="country">Country</label>
                                                        <select class="form-control select2" disabled name="country_code">
                                                            <option value="" >Select Country</option>
                                                            @foreach($Countries as $country)
                                                                <option {{$university->country_code == $country->iso2 ? 'selected' : ''}} value="{{$country->iso2}}" >{{$country->name}}</option>
                                                            @endforeach
                                                        </select>
                                                        @error('country_code')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                    <input type="hidden" name="country_code" value="{{$university->country_code}}">
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="lang">Language Code</label>
                                                        <select class="form-control select2" onchange="checklangType()" id="langcode" name="lang_code" disabled>
                                                            <option value="" >Select Language</option>
                                                            <option value="1" {{$university->lang_code == 1 ? 'selected' : ''}}>{{'English'}}</option>
                                                            <option value="2" {{$university->lang_code == 2 ? 'selected' : ''}}>{{'Arabic'}}</option>
                                                        </select>
                                                           <input type="hidden" name="lang_code" value="{{$university->lang_code}}">
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
                                                        <input type="text" class="form-control errorvalidator " id="name" placeholder="University name" value="{{$university->name}}" name="name" required>
                                                        @error('name')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                 <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="university_code">University Code</label>
                                                        <input type="text" class="form-control errorvalidator " id="university_code" placeholder="University code" value="{{$university->university_code}}" name="university_code" required>
                                                        @error('university_code')
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