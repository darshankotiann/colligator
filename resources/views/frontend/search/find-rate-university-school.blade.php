@extends('layouts.frontend.app')
@section('content')
    @php
        $teacherType = 'text_' . $type;
    @endphp

    <section class="search-professor section-padd">
                <div class="container"> 
                    <div class="row justify-content-center mb-5">
                    <!-- <div class="col-md-5">

                    @if($global_setting->university_school==1)
                        @if(!empty($banners)  && $banners->status==1)
                                <a href="{{$banners->link ?? '#' }}"></a>
                                <?php
                                $teacherBanner = $banners->image ? 'public/banner/' . $banners->image : 'frontend/images/search-prof-bg1.png'?>
                                  <?php $mime = mime_content_type($teacherBanner); ?>
                                @if (strstr($mime, 'image/'))
                                    <div class="search-professor-banner"
                                        style="background-image: url({{ asset($teacherBanner) }});">

                                        <div class="search-professor-banner-content">
                                            <p><?= $banners->$teacherType ? $banners->$teacherType : '' ?></p>
                                        </div>
                                    </div>
                                    <img src="{{ asset($teacherBanner) }}" width="100%">
                                @else
                                    <video width="620" height="200" controls>
                                        <source src="{{ asset($teacherBanner) }}" type="video/mp4">
                                    </video>
                                @endif
                            
                        @else
                            <img src="https://www.collegator.com/banner/blank.webp" width="100%" class="staticBanner">
                        @endif
                    @endif
                        </div> -->
                        <div class="col-md-5 ">
                            <!-- <?= $global_setting->university_school ?> -->
                            @if($global_setting->university_school==1)
                                @if(!empty($banners)  && $banners->status==1)
                                <a href="{{$banners->link ?? '#' }}"></a>
                                <?php
                                    $teacherBanner = $banners->image ? 'public/banner/' . $banners->image : 'frontend/images/search-prof-bg1.png'?>
                                        <?php $mime = mime_content_type($teacherBanner); ?>
                                        @if (strstr($mime, 'image/'))
                                            <div class="search-professor-banner"
                                                style="background-image: url({{ asset($teacherBanner) }});">

                                            
                                            </div>
                                        @else
                                            <video width="620" height="200" controls>
                                                <source src="{{ asset($teacherBanner) }}" type="video/mp4">
                                            </video>
                                        @endif
                                
                                @else
                                    <img src="https://www.collegator.com/banner/blank.webp" width="100%" class="staticBanner"/>
                                @endif
                                @else <img src="https://www.collegator.com/banner/blank.webp" width="100%" class="staticBanner"/>

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


window.addEventListener("pageshow", function(event) {
    var historyTraversal = event.persisted ||
                (typeof window.performance != "undefined" &&
                    window.performance.navigation.type === 2);
            if (historyTraversal) {
                // Handle page restore.
                window.location.reload();
    }
});


$('#searchprofessorteacher').change(function(){
    $('#professorteachersearchform').submit();
});
});
</script>
@endsection 