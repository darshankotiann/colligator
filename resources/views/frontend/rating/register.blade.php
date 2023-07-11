@extends('layouts.frontend.loginapp')

@section('content')
<div class="login-wrap">
                <div class="login-box signup-box">
                    <form method="POST" action="{{ route('social_register') }}" aria-label="{{ __('lang.register') }}" id="userRegister">
                        @csrf
                    <div class="headings">
                        <h4>{{__('Create You Account')}}</h4>
                        <p>{{__('Please fill in the details and create your account')}}</p>
                    </div>
                    <div class="login-box-form">
                        <div class="form-group">
                            <input id="email" type="email" placeholder="{{ __('lang.emailAddress') }}" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ $getInfo->email }}" required readonly autocomplete="email">
                            @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <input type="hidden" name="profile" value="{{$getInfo->avatar?? 'colleicon.png'}}">
                        <input type="hidden" name="provider" value="{{$getInfo->user['provider']}}">
                        <input type="hidden" name="provider_id" value="{{$getInfo->user['id']}}">
                        <input type="hidden" name="name" value="{{$getInfo->user['name']??$getInfo->user['first_name'].' '.$getInfo->user['last_name'] }}">

                        <div class="row"> 
                            <div class="col-md-6">
                                <div class="form-group">
                                    <select name="gender" class="form-control">
                                        <option selected="" value="" disabled>{{__('lang.gender')}}</option>
                                        <option {{ old('gender')==1 ? 'selected':'' }} value="1">{{__('lang.male')}}</option>
                                        <option {{ old('gender')==2 ? 'selected':'' }} value="2">{{__('lang.female')}}</option>
                                    </select>

                                    @error('gender')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <select id="age" name="age" required class="form-control">
                                        <!-- <option selected="" value="" disabled="">{{__('lang.age')}}</option> -->
                                        <?php
                                        for($i=16; $i<100; $i++){ ?>
                                        <option {{ old('age')== $i ? 'selected':'' }} value="{{$i}}">{{$i}}</option>
                                        <?php } ?>
                                    </select>
                                    @error('age')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        {{--<div class="row"> 
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input id="nickname" type="text" class="form-control @error('nickname') is-invalid @enderror" name="nickname" value="{{ old('nickname') }}" placeholder="{{ __('lang.nickname') }}" required autocomplete="nickname" autofocus>

                                @error('nickname')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                                </div>
                            </div>
                        </div>--}}
                        <div class="custom-control custom-checkbox mt-2 mb-3" required>
                            <input class="custom-control-input" id="registercheckbox" name="registercheckbox"  type="checkbox" >
                            <label class="custom-control-label" for="registercheckbox">{{__('I Accept the')}}</label> <a href="{{route('frontend.slug','term-conditions')}}" target="_blank">{{__('lang.t&c')}}</a>
                            <p class="registercheckbox"></p>
                        </div>
                        <div class="custom-control custom-checkbox mt-2 mb-3" required>
                            <input class="custom-control-input" id="privacypol" name="privacypol"  type="checkbox" >
                            <label class="custom-control-label" for="privacypol">{{__('I Accept the')}}</label> <a href="{{route('frontend.slug','term-conditions')}}" target="_blank">{{__('lang.p&p')}}</a>
                            <p class="privacypol"></p>
                        </div>
                        <button class="btn btn-blue w-100 mt-2 subbtn">{{__('lang.submit')}}</button>
                    </div>
                </form>
                </div>
            </div>
@endsection
