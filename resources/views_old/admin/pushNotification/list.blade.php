@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <h4 class="card-title">Push Notification</h4>
                        <div class="row card-title-desc">
                            <p class=" col-5 "> List Of all Users.</p>
                             <div class="form-group mb-0 col-7">
                                {{ Form::open(array('url' => route('admin.push_notification_filter'),'method'=>'post','id'=>'rangeForm')) }}
                                @csrf
                                <div class="row">
                                <label class="col-3 float-right">Filter</label>
                                    <!-- <select class="form-control col-3 mr-1" id="selectedCountryBox" onchange="callUniversity()" name="country"> -->
                                    <select class="form-control col-3 mr-1" id="optionsSelected"  name="country">
                                        <option value="" selected disabled> Select Country Type</option>
                                        @foreach($countries as $country)
                                            <option {{ isset($countryId) ? ($country->iso2 ==$countryId ? 'selected': ''):''}} value="{{$country->iso2}}">{{$country->name}}</option>
                                        @endforeach
                                    </select>
                                    {{--<select class="form-control col-3 mr-1" id="optionsSelected" name="university">
                                        <option value="" selected disabled> Select University </option>
                                        @foreach($universities as $university)
                                            <option {{ isset($universityId) ? ($university->id ==$universityId ? 'selected': ''):''}} value="{{base64_encode($university->id)}}">{{$university->name}}</option>
                                        @endforeach
                                    </select>--}}
                                    <a style="float: right;" class="col-2 btn btn-danger waves-effect waves-light " href="{{route('admin.push_notification_list')}}">Reset  </a>
                                </div>
                                {{ Form::close() }}
                            </div>
                        </div>
                        <div class="maintable">
                            @include('admin.pushNotification.userTable')
                        </div>
                    </div>
                </div>
            </div> <!-- end col -->
        </div> <!-- end row -->
    </div>
</div>
<script>
    $(document).ready(function(){
        $('#optionsSelected').change(
            function(){
                 $(this).closest('form').trigger('submit');
            });
        });
    function callUniversity() {
        var selectedCountry= $( "#selectedCountryBox option:selected" ).val();
        $.ajax({
            'method':'post',
            'url':"{{route('admin.push_notification_university_filter')}}",
            'data':{
                'code':selectedCountry
            },success:function (response) {
                $('#optionsSelected').html(response);
            }
        });
    }

</script>
@endsection
