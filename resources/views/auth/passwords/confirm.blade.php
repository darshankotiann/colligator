@extends('layouts.loginapp')

@section('content')
<div class="row justify-content-center">
    <div class="col-lg-9">
        <div>
            <div class="text-center">
                <div>
                    <a href="index-2.html" class="logo"><img src="{{asset('images/logo-png.png')}}" height="100" alt="logo"></a>
                </div>

                <h4 class="font-size-18 mt-4">{{ __('Confirm Password') }}</h4>
                <p class="text-muted">{{ __('Please confirm your password before continuing.') }}</p>
            </div>

            <div class="p-2 mt-5">
                <form method="POST" class="form-horizontal" action="{{ route('password.confirm') }}" >
                @csrf
                         <div class="form-group auth-form-group-custom mb-4">
                        <i class="ri-user-2-line auti-custom-input-icon"></i>
                        <label for="password">{{ __('Password') }}</label>
                        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" value="{{ old('password') }}" required autocomplete="password" autofocus>
                        <div class="col-md-6">
                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>

                    <div class="mt-4 text-center">
                        <button class="btn btn-primary w-md waves-effect waves-light" type="submit">{{ __('Confirm Password') }}</button>
                    </div>

                        <div class="form-group row mb-0">
                                @if (Route::has('password.request'))
                                    <a class="btn btn-link" href="{{ route('password.request') }}">
                                        {{ __('Forgot Your Password?') }}
                                    </a>
                                @endif
                        </div>

                </form>
            </div>

            
            <div class="mt-5 text-center">
                <p>Have an account ? <a href="{{route('admin.login')}}" class="font-weight-medium text-primary"> Login</a> </p>
                <p>{{$global_setting->footer}}</p>
            </div>
        </div>

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
