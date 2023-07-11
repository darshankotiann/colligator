<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">
    <link rel="shortcut icon" href="{{asset('images/admin/images/favicon.ico')}}">

    <!-- Bootstrap Css -->
    <link href="{{asset('images/admin/css/bootstrap.min.css')}}" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="{{asset('images/admin/css/icons.min.css')}}" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="{{asset('images/admin/css/app.min.css')}}" id="app-style" rel="stylesheet" type="text/css" />
    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
      <script src="{{asset('images/admin/libs/jquery/jquery.min.js')}}"></script>
        <script src="{{asset('images/admin/libs/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
        <script src="{{asset('images/admin/js/form-validation.js')}}"></script>
        @toastr_css
    @toastr_js
    <style>
    .toast-middle-center{top:40%;right:0%; left:41.5%;width:50%}
    </style>
</head>
 <body class="auth-body-bg">
        <div class="home-btn d-none d-sm-block">
            <a href="{{route('admin.login')}}"><i class="mdi mdi-home-variant h2 text-white"></i></a>
        </div>
        <div>
            <div class="container-fluid p-0">
                <div class="row no-gutters">
                    <div class="col-lg-4">
                        <div class="authentication-page-content p-4 d-flex align-items-center min-vh-100">
                            <div class="w-100">
                                @yield('content')
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="authentication-bg">
                            <div class="bg-overlay"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="{{asset('images/admin/libs/metismenu/metisMenu.min.js')}}"></script>
        <script src="{{asset('images/admin/libs/simplebar/simplebar.min.js')}}"></script>
        <script src="{{asset('images/admin/libs/node-waves/waves.min.js')}}"></script>

        <script src="{{asset('images/admin/js/app.js')}}"></script>
            @toastr_render
    </body>

<!-- Mirrored from themesdesign.in/nazox/layouts/vertical/auth-register.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 02 Jun 2020 04:17:54 GMT -->
</html>

