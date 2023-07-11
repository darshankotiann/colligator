@extends('layouts.frontend.loginapp')

@section('content')
<div class="login-wrap new_login">
                <div class="login-box ">
                    <div class="headings">
                        <h4>{{__('lang.resetPassword')}}</h4>
                        <p>{{__('Please enter your new password below')}}</p>
                    </div>
                    <div class="login-box-form">
                         <form method="POST" action="{{ route('password.update') }}" id="resetPassword">
                        @csrf
                        <input type="hidden" name="token" value="{{ $token }}">
                        <input type="hidden" name="email" value="{{ $email ?? old('email') }}">
                        <input type="hidden" name="type" value="1">
                        <div class="form-group">
                            <input type="password" name="change_password" placeholder="{{__('lang.new_password')}}" id="password" class="form-control">
                        @error('password')
                                <span class="error" style="width: 100%;margin-top:.25rem;font-size: 80%;color: #dc3545;">
                                    {{ $message }}
                                </span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <input type="password" name="password_confirmation" placeholder="{{__('lang.confirm_password')}}" class="form-control">
                        </div>
                        <button class="btn btn-blue w-100 mt-2 subbtn">{{__('lang.submit')}}</button>
                    </div>
                </div>
            </div>


@if(session('error'))
<script type="text/javascript">
  toastr.error("{{ session('error') }}");
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
