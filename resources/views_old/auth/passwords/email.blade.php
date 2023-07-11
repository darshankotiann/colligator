@extends('layouts.frontend.loginapp')

@section('content')
  <div class="login-wrap new_login reset_pt">
                <div class="login-box">
                    <div class="forgotImage">
                        <img src="{{asset('frontend/images/forgotLock.svg')}}">
                    </div>
                    <div class="headings">
                        <h4>{{__('lang.forgotPassword')}}</h4>
                        <p>{{__('Please enter your email address to receive a verification code')}}</p>
                    </div>
                    <div class="login-box-form">
                        <form method="POST" class="form-horizontal" action="{{ route('password.email') }}" id="emailConfirmation" >
                        @csrf
                        <div class="form-group">
                            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" placeholder="{{__('lang.emailAddress')}}" value="{{ old('email') }}" required autocomplete="email" autofocus>
                        </div>
                        @error('email')
                                <span class="error" style="width: 100%;margin-top:.25rem;font-size: 80%;color: #dc3545;">{{ $message }}</span>
                        @enderror
                        <button class="btn btn-blue w-100 mt-2 subbtn">{{__('lang.submit')}}</button>
                        </form>
                    </div>
                </div>
            </div>
@if(session('success'))
<script type="text/javascript">
  toastr.success("{{ session('success') }}");
</script>
@endif
@endsection
<style>

    @media (max-width: 479px){
            .footer_none{
                display: none;
            }
        }
</style>
