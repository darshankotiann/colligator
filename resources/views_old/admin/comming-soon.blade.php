@extends('layouts.app')

@section('content')
                <div class="page-content">
                    <div class="container-fluid">

                     <div class="row">
                    <img src="{{asset('images/admin/images/coming-soon.jpg')}}" style="width: 100%;">
                </div>

                    </div> <!-- container-fluid -->
                </div>
                <!-- End Page-content -->
<script type="text/javascript">
    $(document).ready(function(){


@if(Session::has('status'))
  toastr.options =
  {
    "closeButton" : true,
    "progressBar" : true
  }
        toastr.success("{{ session('status') }}");
  @endif
    });
    
</script>
                
@endsection