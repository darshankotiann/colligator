@extends('layouts.frontend.loginapp')

@section('content')
<?php
    $slider_title= 'slider_title_'.$type;
    $slider_description= 'slider_description_'.$type;
?>
<section class="banner-top-section">
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
                                    <div class="banner-img contact">
                                        <figure class="obj-fit">
                                            <img src="{{asset('images/'.$data->slider_image)}}">
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            
            <section class="contact-content-section">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-10">
                            <div class="row">
                                <div class="col-md-5">
                                    <div class="contact-info-block">
                                        <div class="contact-info-heading">Contact Info</div>
                                        <div class="contact-info-detail">
                                            <ul>
                                                <!-- <li>
                                                    <div class="contact-info-item">
                                                        <div class="contact-info-item-icon">
                                                            <i class="ri-map-pin-2-fill"></i>
                                                        </div>
                                                        <div class="contact-info-item-txt">{{$global_setting->address}}</div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="contact-info-item">
                                                        <div class="contact-info-item-icon">
                                                            <i class="ri-phone-fill"></i>
                                                        </div>
                                                        <div class="contact-info-item-txt">{{$global_setting->phone_no}}</div>
                                                    </div>
                                                </li> -->
                                                <li>
                                                    <div class="contact-info-item">
                                                        <div class="contact-info-item-icon">
                                                            <i class="ri-mail-open-fill"></i>
                                                        </div>
                                                        <div class="contact-info-item-txt">{{$global_setting->email}}</div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="contact-social-media-blk">
                                            <div class="contact-social-media-hd">Social Media</div>
                                            <div class="contact-social-list">
                                                <a href="mailto:{{$global_setting->email}}" class="contact-social-item">
                                                   <i class="ri-mail-open-fill"></i>
                                                </a>
                                                <a href="{{$global_setting->instagram}}" class="contact-social-item">
                                                   <i class="ri-instagram-line"></i>
                                                </a>
                                                <a href="{{$global_setting->twitter}}" class="contact-social-item">
                                                    <i class="ri-twitter-fill"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7">
                                    <div class="contact-form-block">
                                        <div class="contact-form-heading">{{__('lang.send_message')}}</div>
                                        <form class="row" action="{{route('frontend.contact_mail')}}" method="post" id="customerContactForm">
                                            @csrf
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input type="text" name="name" placeholder="{{__('lang.name')}}" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input type="email" name="email" placeholder="{{__('lang.emailAddress')}}" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <input type="text" name="subject" class="form-control" placeholder="{{__('lang.subject')}}">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <textarea  placeholder="{{__('lang.message')}}" class="form-control" name="message" spellcheck="false"></textarea>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group btn-block">
                                                    <button type="submit" class="btn btn-blue send-button">{{__('lang.send')}}</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="contact-map-block">
                        <div class="map-img">
                            <figure class="obj-fit">
                                <!-- <img src="images/map.png"> -->
                            </figure>
                        </div>
                    </div>
                    
                </div>
            </section>
@endsection
