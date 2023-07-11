<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Collegator') }}</title>
    <meta name="viewport" content="minimum-scale=1.0, maximum-scale=1.0,width=device-width, user-scalable=no">
    <meta http-equiv="cache-control" content="'nocache, no-store, max-age=0, must-revalidate"> 
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="expires" content="Sun, 02 Jan 1990 00:00:00 GMT">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    {!! $global_setting->google_analytic_script??'' !!}
    <!--responsive-meta-end-->
    <script>
        var baseurl= "<?= url('/') ?>";
        var segment= "<?=  Request::segment('1') ?>";
    </script>

    @include('inc.frontend.login.header_styles')
    @toastr_css
    @toastr_js
    <style>
    .toast-middle-center{top:40%;right:0%; left:41.5%;width:50%}
    </style>
<script>
    
    var langfunction= <?= session()->get('locale')=='ar' ? 'arabic()' : 'english()';  ?>
</script>
<body>
    <div class="wraper">
        <!-- Header in -->
        @include('inc.frontend.login.header')
        
        <div class="site-wraper">
            @yield('content')
        </div>
        @include('inc.frontend.login.footer')

    @toastr_render