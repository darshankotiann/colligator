<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<style type="text/css">
      .tox-notifications-container {display: none !important;}

</style>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <script>
            var baseurl= "<?= url('/') ?>";
            var segment= "<?=  Request::segment('1') ?>";
        </script>
        <?php $baseurl = Request::segment('1') ?>
        <title>{{ config('app.name', 'Collegator') }}</title>
            @include('inc.header_nav')
             @toastr_css
             <style>
    .toast-middle-center{top:40%;right:0%; left:41.5%;width:50%}
    </style>
    </head>
    <body data-sidebar="dark" data-keep-enlarged="true" class="">
        <div id="layout-wrapper">
                @include('inc.header')
            @include('inc.sidebar')
            <div class="main-content">
                @yield('content')
            </div>
        </div>
        <div class="rightbar-overlay"></div>
            @include('inc.footer')
                  @toastr_js
                @toastr_render           
    </body>
</html>
