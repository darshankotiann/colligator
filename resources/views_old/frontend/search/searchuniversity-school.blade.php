@extends('layouts.frontend.app')
@section('content')
@php
    $universityType= 'text_'.$type;
@endphp
  <section class="search-professor section-padd">
    <div class="container"> 
        <div class="row justify-content-center mb-5">
        <div class="col-md-6 mb-5">
            @if($global_setting->university_school==1)
                @if(!empty($banners)  && $banners->status==1)

                <a href="{{$banners->link ?? '#' }}">
                     
                        <?php 
                        $universityBanner= $banners->image? 'banner/'.$banners->image : 'frontend/images/search-prof-bg1.png' ?>
                        <div class="search-professor-banner" style="background-image: url({{asset($universityBanner)}});">
                        <div class="search-professor-banner-content">
                                <p><?= $banners->$universityType? $banners->$universityType : '' ?></p>
                        </div>
                    </div>
                    </a>

                @endif
            @endif
            </div>
            <div class="col-md-8">
                <div class="professor-search icon">
                   <h3 class="mb-4">{{$countryName->name}}</h3>
                    <form action="{{route('frontend.show_university')}}" method="get" id="professorteachersearchform">
<!--                         <input type="text" id="searchprofessorteacher" name="ptname" class="form-control" placeholder="{{__('Search/Write University Name')}}"> -->
                        <!-- <input type="hidden" id="searchprofessorteacherId" name="id"> -->
                         <select class="select2 form-control" id="searchprofessorteacher" name="ptname">
                            <option></option>
                            @foreach($universities as $result)
                            <option value="{{base64_encode($result->id)}}">{{$result->name}}</option>
                            @endforeach
                        </select>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<script type="text/javascript">
 $(document).ready(function() {
 
//     $( "#searchprofessorteacher" ).autocomplete({
 
//         source: function(request, response) {
//             $.ajax({
//             url: "{{url('autosearch-university-school')}}",
//             method:'get',
//             data: {
//                     search : request.term
//              },
//             dataType: "json",
//             success: function(data){
//                response(data);
//             }
//         });
//     },
//     minLength: 3
//  });
// });
//  $('#searchprofessorteacher').on('autocompleteselect', function (e, ui) {
//      $('#searchprofessorteacher').val(ui.item.value);
//      $('#searchprofessorteacherId').val(ui.item.desc);
//      $('#professorteachersearchform').submit();
//     });
    $('.select2').select2({
        placeholder:  "{{__('Search/Write University Name')}}",
          allowClear: true,
      // minimumInputLength: 3 // only start searching when the user has input 3 or more characters
    });
    $('#searchprofessorteacher').change(function(){
        $('#professorteachersearchform').submit();
    });
});
</script>
@endsection