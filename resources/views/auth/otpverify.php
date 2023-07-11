@extends('layouts.frontend.loginapp')
     {!! NoCaptcha::renderJs() !!}

@section('content')
 <div class="login-wrap">
                <div class="login-box">
                    <div class="headings">
                        <h4>Otp Verify</h4>
                        <p>Please enter your otp to verify</p>
                    </div>
                    <div class="login-box-form">
                        <form action="{{route('otpsubmit')}}" method="post">
                            
                        <div class="form-group">
                            <input type="text" name="" placeholder="OTP" required class="form-control">
                        </div>
                        <a href="{{route('resend_otp')}}">resend otp</a>
                        </form>
                        <button class="btn btn-blue w-100 mt-2">Submit</button>
                    </div>
                </div>
            </div>
@endsection
