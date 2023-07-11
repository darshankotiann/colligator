@extends('layouts.loginapp')

@section('content')
<div class="row justify-content-center">
    <div class="col-lg-9">
        <div>
            <div class="text-center">
                <div>
                    <a href="{{route('admin.login')}}" class="logo"><img src="{{asset('images/logo-png.png')}}" height="100" alt="logo"></a>
                </div>

                <h4 class="font-size-18 mt-4">Welcome Back !</h4>
                <p class="text-muted">Sign in to continue to Collegator.</p>
            </div>

            <div class="p-2 mt-5">
                @isset($loginRoute)
                <form method="POST" id="adminLogin" class="form-horizontal" action='{{ route($loginRoute) }}' aria-label="{{ __('Login') }}">
                @else
                <form method="POST" class="form-horizontal" action='{{ route('login') }}' aria-label="{{ __('Login') }}">
                @endisset
                @csrf

                    <div class="auth-form-group-custom">
                        <i class="ri-user-2-line auti-custom-input-icon"></i>
                        <label for="email">{{ __('E-Mail Address') }}</label>
                        <input id="email" type="email" class="form-control " name="email" value="{{ old('email') }}" required autocomplete="email" placeholder="Email">
                    </div>
                            @error('email')
                        <p class="text-danger">{{ $message }}</p>
                            @enderror
                        <p class="emailError"></p>
                   
                    <div class="auth-form-group-custom">
                        <i class="ri-lock-2-line auti-custom-input-icon"></i>
                        <label for="password">{{ __('Password') }}</label>
                        <input type="password" class="form-control @error('password') is-invalid @enderror" id="password" name="password" autocomplete="current-password" placeholder="Enter password">
                    </div>
                            @error('password')
                                <p class="text-danger">{{ $message }}</p>
                            @enderror
                        <p class="passwordError"></p>

                    <div class="custom-control custom-checkbox">
                        <input class="form-check-input custom-control-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                        <label class="custom-control-label" for="remember">{{ __('Remember Me') }}</label>
                    </div>
                    

                    <div class="mt-4 text-center">
                        <button class="btn btn-primary w-md waves-effect waves-light" type="submit">{{ __('Login') }}</button>
                    </div>

                    <div class="mt-4 text-center">
                        @if (Route::has('password.request'))
                        <a href="{{ route('admin.password.request') }}" class="text-muted"><i class="mdi mdi-lock mr-1"></i> Forgot your password?</a>
                        @endif
                    </div>
                </form>

            </div>

            <!-- <div class="mt-5 text-center">
                <p>Don't have an account ? <a href="auth-register.html" class="font-weight-medium text-primary"> Register </a> </p>
                <p>© 2020 Nazox. Crafted with <i class="mdi mdi-heart text-danger"></i> by Themesdesign</p>
            </div> -->
        </div>

    </div>
</div>
 <script type="text/javascript">
                if ($("#adminLogin").length > 0) {
                    $("#adminLogin").validate({
                         errorPlacement: function(error, element) {
                    if (element.attr("name") == "email" ){
                        error.appendTo('.emailError');
                      }  else {
                    error.appendTo('.passwordError');
                  }
                },
                    rules: {
                    email: {
                    required: true,
                    email:true,
                    validate_email: true,
                    },
                    password: {
                    required: true,
                    },
                    },
                    messages: {
                    email: {
                    required: "Please enter email ",
                    },
                    password: {
                    required: "Please enter password",
                    },
                    },
                    submitHandler: function(form) {
                      form.submit();
                    },
                    // Called when the element is invalid:
                    highlight: function(element) {
                        $(element).css({'background':'rgba(253, 238, 238, 0.61)','border-color':'red'});
                    },
                    // Called when the element is valid:
                    unhighlight: function(element) {
                        $(element).css({'background': '#ffffff','border-color': 'green'});
                    }
                          })
                    } 

$(document).ready(function(){


@if(Session::has('status'))
  toastr.options =
  {
    "closeButton" : true,
    "progressBar" : true
    "positionClass": "toast-middle-center",
  }
        toastr.success("{{ session('status') }}");
  @endif
    
    @if(Session::has('error'))
    toastr.options = {
        "closeButton":true,
        'progressBar':true
        "positionClass": "toast-middle-center",
    }
    toastr.error("{{ session('error') }}");
    @endif
    });
            </script>

@endsection
