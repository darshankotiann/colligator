@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Add University</h4>
                                        <p class="card-title-desc">fill the below details</p>
                                        <form action="{{route('admin.university.store')}}" id="universityForm" method="post" enctype="multipart/form-data">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="country">Country</label>
                                                        <select class="form-control select2" name="country_code">
                                                            <option value="" selected disabled>Select Country</option>
                                                            @foreach($Countries as $country)
                                                                <option {{old('country_code')==$country->iso2 ? 'selected' : ''}} value="{{$country->iso2}}" >{{$country->name}}</option>
                                                            @endforeach
                                                        </select>
                                                        @error('country_code')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="lang">Language Code</label>
                                                        <select class="form-control select2 " onchange="checklangType()" id="langcode" name="lang_code">
                                                            <option value="" selected disabled>Select Language</option>
                                                            <option {{old('lang_code')==1 ? 'selected' : ''}} value="1" >{{'English'}}</option>
                                                            <option {{old('lang_code')==2 ? 'selected' : ''}} value="2" >{{'Arabic'}}</option>
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
                                                        <input type="text" class="form-control errorvalidator " id="name" placeholder="University name" value="{{old('name')}}" name="name" required>
                                                        @error('name')
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
<script>

</script>

@endsection