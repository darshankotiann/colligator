@extends('layouts.app')
@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Edit Subject</h4>
                        <p class="card-title-desc">Edit the below details</p>
                        <form action="{{route('admin.subject.update',base64_encode($subject->id))}}" id="subjectForm" method="post" enctype="multipart/form-data">
                            @csrf
                            {{ method_field('PATCH') }}
                            <div class="row">
                               <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Country</label>
                                        <input type="text" disabled="" class="form-control" value="{{$countryName->name}}">    
                                    </div>
                                </div>
                               <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">School</label>
                                        <select class="form-control select2" id="" disabled name="university_code">
                                            <option value="" selected disabled>Select School</option>
                                            @foreach($schools as $school)
                                                <option {{$subject->school_code== $school->school_code ? 'selected': ''}} value="{{$school->school_code}}" >{{$school->name}}</option>
                                            @endforeach
                                        </select>
                                        @error('country_code')
                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                        @enderror
                                       <input type="hidden" name="school_code" value="{{$subject->school_code}}">
                                    </div>
                                </div>
                            </div>
                            <div class="row">

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">Subject Name</label>
                                        <input type="text" class="form-control errorvalidator  checksubjectname" id="name" placeholder="Subject name" value="{{$subject->name}}" name="name" required>
                                        @error('name')
                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                        @enderror
                                       <input type="hidden" id="langtype" name="lang_code" value="{{$subject->lang_code}}">
                                        <input type="hidden" id="modalname" value="school">

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