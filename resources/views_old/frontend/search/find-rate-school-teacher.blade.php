@extends('layouts.frontend.app')
@section('content')
<style type="text/css">
    .ui-menu-item .search-contact-box{
        display: list-item;                                                     
        list-style-type: disc;
    list-style-position: inside; 
    }
</style>
@php
    $teacherType= 'text_'.$type;
@endphp
<?php $langName= $schools->lang_code=='2'? ' In Arabic' : ' In English' ; ?>
  <section class="search-professor section-padd">
                <div class="container"> 
                    <div class="row justify-content-center mb-5">
                    <div class="col-md-6 mb-5">
                        @if($global_setting->find_rate_teacher==1)
                            @if(!empty($banners)  && $banners->status==1)
                            
                            <a href="{{$banners->link ?? '#' }}">
                              
                              <?php 
                                $teacherBanner= $banners->image? 'banner/'.$banners->image : 'frontend/images/search-prof-bg1.png' ?>
                                <div class="search-professor-banner" style="background-image: url({{asset($teacherBanner)}});">

                                    <div class="search-professor-banner-content">
                                        <p><?= $banners->$teacherType? $banners->$teacherType : '' ?></p>
                                    </div>
                                </div>
                                </a>
                            @endif
                        @endif
                        </div>
                        <div class="col-md-8">
                            <div class="professor-search icon">
                               <h3 class="mb-4">{{$countryName}} / {{$universityschoolname}}</h3>
                                <form action="{{route('frontend.showteacherProfile')}}" method="post" id="professorteachersearchform">
                                @csrf
                                <input type="hidden" id="langtype" value="{{$schools->lang_code}}">
                                <input type="text" id="searchschoolteacher" name="tname" class="form-control checklangname" placeholder="{{__('Write Teacher Name'.$langName)}}">
                                <input type="hidden" name="id" id="searchschoolteacherId">
                                </form>
                            </div>
                            @error('tname')
                            <p class="error">{{$message}}</p>
                            @enderror
                            <div class="no-professor-info" style="display: none;">
                                <div class="no-professor-info-icon">
                                    <img src="{{asset('frontend/images/search-animate-icon.png')}}">
                                </div>
                                <div class="no-professor-info-txt">{{__('Didn’t see the Teacher you’re looking for?')}} </div>
                                <a href="javascript:void(0);" onclick="callbtnajax('teacher')"  class="btn btn-blue">{{__('Add Teacher')}}</a>
                                <!-- <span><img src="{{asset('frontend/images/arrow.png')}}"></span> -->
                            </div>
                        </div>
                    </div>
                </div> 
            </section>
<script type="text/javascript">
 $(document).ready(function() {
 
    $( "#searchschoolteacher" ).autocomplete({
 
        source: function(request, response) {
            $.ajax({
            url: "{{url('autosearch-school-teacher-name')}}",
            method:'get',
            data: {
                    search : request.term
             },
            dataType: "json",
            success: function(data){
               response(data);
            }
        });
    },
      response: function(event, ui) {
            // ui.content is the array that's about to be sent to the response callback.
            if (ui.content.length === 0) {
                $(".no-professor-info").css('display','block');
            } else {
                $(".no-professor-info").css('display','none');
            }
        },
    minLength: 3
 }).autocomplete( "instance" )._renderItem = function( ul, item ) {
      return $( "<li>" )
        .append( "<div class='search-contact-box'><p>" + item.value + "</p> <span>" + item.label + "</span> </div>" )
        .appendTo( ul );
    };
});
 $('#searchschoolteacher').on('autocompleteselect', function (e, ui) {
    $('#searchschoolteacher').val(ui.item.value);
    $('#searchschoolteacherId').val(ui.item.desc);
    $('#professorteachersearchform').submit();
    });
</script>
<!-- //modal -->
  <div id="add_professor" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3>Add Teacher</h3>
                    <button type="button" class="close" data-dismiss="modal">
                        <img src="{{asset('frontend/images/close-icon.svg')}}">
                    </button>
                </div>
                <div class="modal-body">
                    <div class="add_professore_form">
                        <form action="{{route('frontend.add_userdefine_teacher')}}" method="post" id="userteacher">
                            @csrf
                            <div class="form-group">
                                <input type="hidden" id="langtype" value="{{$schools->lang_code}}">
                                <input type="hidden" id="modalname" value="subject">

                                <input type="text" name="country" class="form-control" readonly value="{{$countryName}}">
                            </div>
                            <div class="form-group">
                                <input type="text" name="school" class="form-control" readonly value="{{$universityschoolname}}">
                            </div>
                            <div class="form-group">
                                <select class="form-control" name="subject" required>
                                    <option selected="" value="" disabled="">Select Subject</option>
                                    @foreach($schools->subject as $subject)
                                        <option value="{{$subject->id}}">{{$subject->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <input type="text" name="name" required placeholder="{{__('Write Teacher Name'.$langName)}}" class="form-control checklangname">
                            </div>
                            <div class="form-group btn-block">
                                <button type="submit" class="btn submit-button">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @if(Session::has('teacher_professor_error'))
    @auth
    <script>
        $('#add_professor').modal('show');
    </script>
    @endauth
@endif
@endsection 