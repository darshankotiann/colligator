@extends('layouts.app')

@section('content')

<div class="page-content">
    <div class="container-fluid">
        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Edit About Us </h4>
                                        <p class="card-title-desc">Edit the below details</p>
                                        <form action="{{route('admin.cms.edit_aboutUs')}}" id="aboutUsForm" method="post" enctype="multipart/form-data">
                                            @csrf
                                            <input type="hidden" name="id" value="<?= base64_encode($aboutUs->id)?>">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="title_en">Slider Title (En)</label>
                                                        <input type="text" class="form-control errorvalidator" id="slider_title_en" placeholder="Slider Title In English" value="{{$aboutUs->slider_title_en}}" name="slider_title_en" required>
                                                        @error('slider_title_en')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="title_en">Slider Title (Ar)</label>
                                                        <input type="text" class="form-control errorvalidator" id="slider_title_ar" placeholder="Slider Title In Arabic" value="{{$aboutUs->slider_title_ar}}" name="slider_title_ar" required>
                                                        @error('slider_title_ar')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="content_en">Slider Description (En)</label>
                                                        <textarea class="form-control errorvalidator tinymce-editor" id="slider_description_en" placeholder="Slider Description In English" name="slider_description_en">{{$aboutUs->slider_description_en}}</textarea>
                                                       @error('slider_description_en')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="slider_description_ar">Slider Description (Ar)</label>
                                                        <textarea class="form-control errorvalidator tinymce-editor" id="slider_description_ar" placeholder="Slider Description In Arabic" name="slider_description_ar">{{$aboutUs->slider_description_ar}}</textarea>
                                                        @error('slider_description_ar')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="heading_en">Heading  (En)</label>
                                                        <input type="text" class="form-control errorvalidator" id="heading_en" placeholder="Heading In English" value="{{$aboutUs->heading_en}}" name="heading_en" required>
                                                        @error('heading_en')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="title_en">Heading (Ar)</label>
                                                        <input type="text" class="form-control errorvalidator" id="heading_ar" placeholder="Heading In Arabic" value="{{$aboutUs->heading_ar}}" name="heading_ar" required>
                                                        @error('heading_ar')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="content_en">Title (En)</label>
                                                        <textarea class="form-control errorvalidator tinymce-editor" id="title_en" placeholder="Title In English" name="title_en" required>{{$aboutUs->title_en}}</textarea>
                                                        <span class="error" id="title_en_error"></span>
                                                       @error('title_en')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="title_ar">Title (Ar)</label>
                                                        <textarea class="form-control errorvalidator tinymce-editor" id="title_ar" placeholder="Title In Arabic" name="title_ar" required>{{$aboutUs->title_ar}}</textarea>
                                                        <span class="error" id="title_ar_error"></span>

                                                        @error('title_ar')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="content_en">Main Description (En)</label>
                                                        <textarea class="form-control errorvalidator tinymce-editor" id="description_en" placeholder="Description In English" name="description_en">{{$aboutUs->description_en}}</textarea>
                                                       @error('description_en')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="description_ar">Main  Description (Ar)</label>
                                                        <textarea class="form-control errorvalidator tinymce-editor" id="description_ar" placeholder="Description In Arabic" name="description_ar">{{$aboutUs->description_ar}}</textarea>
                                                        @error('description_ar')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="content_en">Slider image</label>
                                                        <input type="file" id="image1" onchange="PreviewImage(1)" name="slider_image" class="form-control">
                                                       @error('slider_image')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                            	<img src="{{asset('images/'.$aboutUs->slider_image)}}" id="userImage1" width="100">


                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="content_en">Description image</label>
                                                        <input type="file" id="image2" onchange="PreviewImage(2)" name="desc_image" class="form-control">
                                                       @error('desc_image')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                            	<img src="{{asset('images/'.$aboutUs->desc_image)}}" id="userImage2" width="100">

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