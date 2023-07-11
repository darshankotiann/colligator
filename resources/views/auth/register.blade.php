@extends('layouts.frontend.loginapp')
     {!! NoCaptcha::renderJs() !!}

@section('content')
<div class="login-wrap new_login">
                <div class="login-box signup-box">
                    <form method="POST" action="{{ route('register') }}" aria-label="{{ __('lang.register') }}" id="userRegister">
                        @csrf
                    <div class="headings">
                        <h4>{{__('Create You Account')}}</h4>
                        <p>{{__('Please fill in the details and create your account')}}</p>
                    </div>
                    <div class="login-box-form">
                        <div class="form-group">
                            <input id="email" type="email" placeholder="{{ __('lang.emailAddress') }}" class="form-control " name="email" value="{{ old('email') }}" autocomplete="email">
                        @if($errors->has('email'))
                                <div class="error">{{ $errors->first('email') }}</div>
                        @endif
                        </div>
                        <div class="row"> 
                            <div class="col-md-6 genderClass">
                                <div class="form-group">
                                    <select name="gender" class="form-control">
                                        <option selected="" value="" disabled="">{{__('lang.gender')}}</option>
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
                            <div class="col-md-6 ageClass">
                                <div class="form-group">
                                    <select id="age" name="age" class="form-control">
                                        <option selected="" value="" disabled="">{{__('lang.age')}}</option>
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
                        <div class="row"> 
                            <!-- <div class="col-md-6">
                                <div class="form-group">
                                    <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" placeholder="{{ __('lang.name') }}" required autocomplete="name" autofocus>

                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                                </div>
                            </div> -->
                            {{--<div class="col-md-12">
                                <div class="form-group">
                                    <input id="nickname" type="text" class="form-control " name="nickname" value="{{ old('nickname') }}" placeholder="{{ __('lang.nickname') }}" autocomplete="nickname" autofocus>

                                @error('nickname')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                                </div>
                            </div>--}}
                        </div>
                        <div class="form-group">
                            <input id="password" type="password" class="form-control" placeholder="{{__('lang.password')}}" name="password" autocomplete="new-password" id="password">
                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <input id="password-confirm" type="password" class="form-control" name="password_confirmation" placeholder="{{__('lang.confirm_password')}}" autocomplete="new-password">
                        </div>
                        <!-- <img src="images/captha.png"> -->
                         <div class="form-group{{ $errors->has('g-recaptcha-response') ? ' has-error' : '' }}">
                            <!-- <label class="col-md-4 control-label">Captcha</label> -->
                            <div >
                                {!! app('captcha')->display() !!}
                                @if ($errors->has('g-recaptcha-response'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('g-recaptcha-response') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        <div class="custom-control custom-checkbox mt-2 mb-3" required>
                            <input class="custom-control-input" id="registercheckbox" name="registercheckbox"  type="checkbox" >
                            <label class="custom-control-label" for="registercheckbox">{{__('I Accept the')}}</label> <a href="{{route('frontend.slug','term-conditions')}}" target="_blank">{{__('lang.t&c')}}</a>
                            <p class="registercheckbox"></p>
                        </div>
                        <div class="custom-control custom-checkbox mt-2 mb-3" required>
                            <input class="custom-control-input" id="privacypol" name="privacypol"  type="checkbox" >
                            <label class="custom-control-label" for="privacypol">{{__('I Accept the')}}</label> <a href="{{route('frontend.slug','privacy-policy')}}" target="_blank">{{ __('lang.privacy_policy') }}</a>
                            <p class="privacypol"></p>
                        </div>
                        <button class="btn btn-blue w-100 mt-2 subbtn">{{__('lang.submit')}}</button>
                        <div class="or-divi">
                            <span>{{__('Or Sign up With')}}</span>
                        </div>
                        <div class="login-with-ic">
                        <a href="{{ url('/auth/redirect/facebook') }}" class="btn btn-primary"><img src="{{asset('frontend/images/fb.png')}}"></a>
                        <a href="{{ url('/auth/redirect/google') }}" class="btn btn-primary"><img src="{{asset('frontend/images/google.png')}}"></a>
                       <!--  <a href="{{ url('/auth/redirect/twitter') }}" class="btn btn-primary"><img src="{{asset('frontend/images/tw.png')}}"></a>
                        <a href="{{url('/auth/redirect/instagram')}}" class="btn btn-primary"><img src="{{asset('frontend/images/insta.png')}}"></a> -->
                        </div>
                        <div class="already-login">
                            <p>{{__('When you Go Rate, you will always be anonymous!')}}</p>
                        </div>
                    </div>
                </form>
                </div>
            </div>
@endsection
<style>

    @media (max-width: 479px){
            .footer_none{
                display: none;
            }
        }
</style>

