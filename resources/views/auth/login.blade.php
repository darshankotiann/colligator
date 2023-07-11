
@extends('layouts.frontend.loginapp')

@section('content')

<div class="login-wrap new_login">
                <div class="login-box">
                    <div class="headings">
                        <h4>{{ __('lang.welcome')}}!</h4>
                        <p>{{ __('lang.sign_in_message')}}</p>
                    </div>
                    <div class="login-box-form">
                        <form method="POST" class="form-horizontal" action='{{ route($loginRoute) }}' aria-label="{{ __('lang.login') }}" id="userLogin">
                        @csrf
                        <div class="form-group">
                            <input id="nickname" type="text" class="form-control " name="nickname" value="{{ old('nickname') }}" required  autofocus   placeholder="{{ __('lang.nicknameAddress') }}" >
                            @error('nickname')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control " id="password" name="password" autocomplete="current-password" placeholder="{{ __('lang.password') }}" >
                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="remember-box d-flex mb-3">
                            <!-- <div class="custom-control custom-checkbox">
                                 <input class="form-check-input custom-control-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                                <label class="custom-control-label" for="remember">{{ __('lang.rememberMe') }}</label>
                            </div> -->
                            @if (Route::has('password.request'))
                                <a href="{{ route('password.request') }}" class="ml-auto"><i class="mdi mdi-lock mr-1"></i> {{__('lang.forgotPassword').'?' }}</a>
                            @endif
                        </div>
                        <div class="form-group btn-block">
                        <span class="btn-blue-new">
                            <button class="btn submit-button subbtn btn-blue">{{__('lang.login') }}</button>
                        </span>
                    </div>

                        <div class="or-divi">
                            <span>{{__('Sign in With') }}</span>
                        </div>
                        </form>
                        <div class="login-with-ic">
                        <a href="{{ url('/auth/redirect/facebook') }}" class="btn btn-primary"><img src="{{asset('frontend/images/fb.png')}}"></a>
                        <a href="{{ url('/auth/redirect/google') }}" class="btn btn-primary"><img src="{{asset('frontend/images/google.png')}}"></a>
                       <!--  <a href="{{ url('/auth/redirect/twitter') }}" class="btn btn-primary"><img src="{{asset('frontend/images/tw.png')}}"></a>
                        <a href="{{url('/auth/redirect/instagram')}}" class="btn btn-primary"><img src="{{asset('frontend/images/insta.png')}}"></a> -->

                            <!-- <button type="submit"><img src="{{asset('frontend/images/apple.png')}}"></button> -->
                        </div>
                        <div class="already-login">
                        <a href="{{route('register')}}"> <p><span style="color:black">{{__('Not Registered Yet').'?' }}</span> {{__('lang.signUp') }}</p></a>
                        </div>

                    </div>
                </div>
            </div>

@if(session('status'))
<script type="text/javascript">
    toastr.options =
  {
    "closeButton" : true,
    "progressBar" : true,
    "positionClass": "toast-middle-center",
  }
  toastr.success("{{ session('status') }}");
</script>
@endif


</script>
<style>

    @media (max-width: 479px){
            .footer_none{
                display: none;
            }
            .login-box .headings h4 {
                font-size: 30px !important;
                margin-bottom: 5px;
                padding-bottom: 0px;
            }
        }

</style>
@endsection
