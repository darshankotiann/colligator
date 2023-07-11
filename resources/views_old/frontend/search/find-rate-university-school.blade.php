@extends('layouts.frontend.app')
@section('content')

    <section class="search-professor section-padd">
                <div class="container"> 
                    <div class="row justify-content-center mb-5">
                    <div class="col-md-6 mb-5">

                    @if($global_setting->university_school==1)
                            @if(!empty($banners)  && $banners->status==1)
                                @php $textType= 'text_'.$type; 
                                    $universitySchoolBanner= $banners->image? 'banner/'.$banners->image : 'frontend/images/search-prof-bg1.png'; 
                                @endphp
                            
                            <a href="{{$banners->link ?? '#' }}">
                           
                            <div class="search-professor-banner" style="background-image: url({{asset($universitySchoolBanner)}});">
                                    <div class="search-professor-banner-content">
                                        <p><?=  $banners->$textType? $banners->$textType : '' ?></p>
                                    </div>
                                </div>
                                </a>

                            @endif
                        @endif
                        </div>
                        <div class="col-md-8">
                            <div class="professor-search icon">
                               <h3 class="mb-4">{{$countryName}}</h3>
                               @php $searchtype=='professor' ? 'professor' : 'teacher'; @endphp
                               @php $searchName= $searchtype=='professor' ? 'University' : 'School'; @endphp
                                <form action="{{route('frontend.find_rate_professor_teacher',$searchtype)}}" method="get" id="professorteachersearchform">
                                <select class="select2 form-control" id="searchprofessorteacher" name="ptname">
                                      <option></option>
                                        @foreach($resultData as $result)
                                        <option value="{{base64_encode($result->id)}}">{{$result->name}}</option>
                                        @endforeach
                                    </select>
                                </form>
                            </div>
                            @error('ptname')
                            <p class="error">{{$message}}</p>
                            @enderror
                            @error('id')
                            <p class="error">{{$message}}</p>
                            @enderror
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
    placeholder: "{{__('Select/Write '.ucfirst($searchName).' Name')}}",
      allowClear: true,
  // minimumInputLength: 3 // only start searching when the user has input 3 or more characters
});
$('#searchprofessorteacher').change(function(){
    $('#professorteachersearchform').submit();
});
});
</script>
@endsection 