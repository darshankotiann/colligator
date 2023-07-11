@extends('layouts.frontend.app')
@section('content')
@php
    $countryType= 'text_'.$type;
@endphp
  <section class="search-professor section-padd">
                <div class="container"> 
                    <div class="row justify-content-center mb-5">
                        @if($global_setting->country_banner==1 )
                            @if(!empty($banners) && $banners->status==1)
                            <div class="col-md-6 mb-5">
                            <a href="{{$banners->link ?? '#' }}">
                                <?php
                                    $countryBanner= $banners->image? 'banner/'.$banners->image : 'frontend/images/search-prof-bg1.png';
                                ?>
                                <div class="search-professor-banner" style="background-image: url({{asset($countryBanner)}});">
                                    <div class="search-professor-banner-content">
                                        <p><?= $banners->$countryType? $banners->$countryType : '' ?></p>
                                    </div>
                                </div>
                            </a>
                            </div>
                            @endif
                        @endif
                        <div class="col-md-8">
                            <div class="professor-search icon">
                                <form action="{{route('frontend.add_find_rate')}}" method="get" id="countryform">
                                    <div class="dropdown-inputfield">
                                    <select class="select2 form-control" id="searchCountry" name="country">
                                        <option value=""></option>
                                        @foreach($countries as $country)
                                            <option value="{{$country->name}}">{{$country->name}}</option>
                                        @endforeach
                                    </select>
                                        <div class="toggle-icon"><i class="fa fa-caret-down"></i></div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
    
<script type="text/javascript">
$('.select2').select2({
    placeholder: 
        "{{__('Select/Write Country Name')}}"
      ,
      allowClear: true,
  // minimumInputLength: 3 // only start searching when the user has input 3 or more characters
});
$('#searchCountry').change(function(){
    $('#countryform').submit();
});

 


</script>
@endsection