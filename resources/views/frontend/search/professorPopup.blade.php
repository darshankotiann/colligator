<div id="add_professor" class="modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h3>{{__('Add Professor')}}</h3>
                    <button type="button" class="close" data-dismiss="modal">
                        <img src="{{asset('frontend/images/close-icon.svg')}}">
                    </button>
                </div>
                <div class="modal-body">
                    <div class="add_professore_form">
                        <form action="{{route('frontend.add_userdefine_professor')}}" method="post" id="userprofessor">
                            @csrf
                            <div class="form-group">
                                <input type="hidden" name="langtype" id="langtype" value="">
                                <input type="hidden" name="modalname" id="modalname" value="university">
                                <input type="hidden" name="type" id="type" value="add">

                                <input type="text" name="country" class="form-control" readonly value="{{$countryName->name}}">
                            </div>
                            <div class="form-group">
                                <select class="form-control schooldropdown" name="university" required>
                                    <option selected="" value="" disabled="">{{__('Select University')}}</option>
                                    @foreach($universities as $university)
                                        <option value="{{$university->id}}">{{$university->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <select class="form-control collegeDropdown" name="college" required>
                                    <option selected="" value="" disabled="">{{__('Select College')}}</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <input type="text" name="name" required placeholder="{{__('Write Professor Name')}}" class="form-control checklangname">
                            </div>
                            <div class="form-group btn-block">
                                <button type="submit" class="btn submit-button subbtn">{{__('lang.submit')}}</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $('.schooldropdown').on('change',function(e){
            var selectedval= $(this).val();
            $.ajax({
            'url':baseurl+'/search-university-college',
            'method':'post',
            'data':{
                'id':selectedval,
            },
            success:function(response){
            result= jQuery.parseJSON(response);
                if(result.status=='error'){
                    toastr.error('Error arise')
                }else{
                    $('.collegeDropdown').html(result.html);
                    $('#langtype').val(result.lang_type);
                }
            }
        });
        });
if ($("#userprofessor").length > 0) {
    $("#userprofessor").validate({
    rules: {
    university: {
      required: true,
      },
    college: {
      required: true,
      },
      name: {
      normalizer: function(value) {
          return $.trim(value);
        },
        required:true,
        minlength:3,
        maxlength:30,
      },
    },
    submitHandler: function(form) {
      $('.subbtn').prop('disabled',true);
      form.submit();
    },
    // Called when the element is invalid:
    // highlight: function(element) {
    //     $(element).css({'background':'rgba(253, 238, 238, 0.61)','border-color':'red'});
    // },
    // // Called when the element is valid:
    // unhighlight: function(element) {
    //     $(element).css({'background': '#ffffff','border-color': 'green'});
    // }
          })
    langfunction

    }

    </script>