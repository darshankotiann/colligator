@extends('layouts.app')

@section('content')
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
                                        <select class="form-control select2" name="country_code">
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
                                            <option {{old('type')==3 ? 'selected' : ''}} value="3" >Professor</option>
                                            <option {{old('type')==4 ? 'selected' : ''}} value="4" >School</option>
                                            <option {{old('type')==5 ? 'selected' : ''}} value="5" >Teacher</option>

                                        </select>
                                        @error('type')
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
                                            <input type="text" class="form-control errorvalidator col-11" id="text_en" placeholder="English text" value="{{old('text_en')}}" name="text_en" >
                                            <i class="fa fa-info col-1" data-toggle="tooltip" data-placement="bottom"  title="For perfect text alignment add text between 30-40 characters"></i>
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
                                            <input type="text" class="form-control errorvalidator col-11" id="text_ar" placeholder="Arabic text" value="{{old('text_ar')}}" name="text_ar" >
                                            <i class="fa fa-info col-1" data-toggle="tooltip" data-placement="bottom"  title="For perfect text alignment add text between 30-40 characters"></i>
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
                                        <div class="d-flex">
                                            
                                        <input type="file" name="image" id="image" onchange="PreviewImage()" class="form-control col-11">
                                        <i class="fa fa-info col-1" data-toggle="tooltip" data-placement="bottom" title="For perfect visibility add 620*130 dimensions image"></i>
                                        </div>
                                        @error('image')
                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                        @enderror
                                        
                                    </div>
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
<script>

</script>

@endsection