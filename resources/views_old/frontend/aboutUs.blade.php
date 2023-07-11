@extends('layouts.frontend.loginapp')

@section('content')
<section class="banner-top-section">
<?php
$slider_title= 'slider_title_'.$type;
$slider_description= 'slider_description_'.$type;
$heading= 'heading_'.$type;
$title= 'title_'.$type;
$description= 'description_'.$type;
?>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-10">
                            <div class="banner-top-content">
                                <div class="d-flex">
                                    <div class="banner-text">
                                        <div class="banner-text-inner">
                                            <h3>{{$data->$slider_title}}</h3>
                                            <h1>{!!$data->$slider_description!!}</h1>
                                        </div>
                                    </div>
                                    <div class="banner-img">
                                        <figure class="obj-fit">
                                            <img src="{{asset('/images/'.$data->slider_image)}}">
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            
            <section class="about-content-section">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-9 about-content-head">
                            <h1>{{$data->$heading}}</h1>
                            {!!$data->$title!!}
                        </div>
                    </div>
                    
                    <div class="about-content-block">
                        <div class="banner-img">
                            <figure class="obj-fit">
                                <img src="{{asset('images/'.$data->desc_image)}}">
                            </figure>
                        </div>
                        <div class="about-content">
                           {!!$data->$description!!}
                        </div>
                    </div>
                    
                </div>
            </section>
@endsection
