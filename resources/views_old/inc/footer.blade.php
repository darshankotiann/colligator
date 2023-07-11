        <script src="{{asset('images/admin/libs/node-waves/waves.min.js')}}"></script>
        <script src="{{asset('images/admin/js/app.js')}}"></script>


        <!-- apexcharts -->
        <script src="{{asset('images/admin/libs/apexcharts/apexcharts.min.js')}}"></script>

        <!-- jquery.vectormap map -->
        <script src="{{asset('images/admin/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.min.js')}}"></script>
        <script src="{{asset('images/admin/libs/admin-resources/jquery.vectormap/maps/jquery-jvectormap-us-merc-en.js')}}"></script>

        <!-- Required datatable js -->
        <script src="{{asset('images/admin/libs/datatables.net/js/jquery.dataTables.min.js')}}"></script>
        <script src="{{asset('images/admin/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js')}}"></script>
        
        <!-- Responsive examples -->
        <script src="{{asset('images/admin/libs/datatables.net-responsive/js/dataTables.responsive.min.js')}}"></script>
        <script src="{{asset('images/admin/libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js')}}"></script>

        <script src="{{asset('images/admin/js/pages/dashboard.init.js')}}"></script>
        <script src="{{asset('images/admin/libs/datatables.net-buttons/js/dataTables.buttons.min.js')}}"></script>
        <script src="{{asset('images/admin/libs/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js')}}"></script>
        <script src="{{asset('images/admin/libs/jszip/jszip.min.js')}}"></script>
        <script src="{{asset('images/admin/libs/pdfmake/build/pdfmake.min.js')}}"></script>
        <script src="{{asset('images/admin/libs/pdfmake/build/vfs_fonts.js')}}"></script>
        <script src="{{asset('images/admin/libs/datatables.net-buttons/js/buttons.html5.min.js')}}"></script>
        <script src="{{asset('images/admin/libs/datatables.net-buttons/js/buttons.print.min.js')}}"></script>
        <script src="{{asset('images/admin/libs/datatables.net-buttons/js/buttons.colVis.min.js')}}"></script>

        <script src="{{asset('images/admin/libs/datatables.net-keytable/js/dataTables.keyTable.min.js')}}"></script>
        <script src="{{asset('images/admin/libs/datatables.net-select/js/dataTables.select.min.js')}}"></script>
 <!-- Responsive examples -->
<!--         <script src="{{asset('images/admin/libs/datatables.net-responsive/js/dataTables.responsive.min.js')}}"></script> -->
        <script src="{{asset('images/admin/libs/bootstrap-datepicker/js/bootstrap-datepicker.min.js')}}"></script>
<!--         <script src="{{asset('images/admin/libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js')}}"></script> -->
        <script src="{{asset('images/admin/js/dataTables.checkboxes.min.js')}}"></script>
        <!-- <script src="{{asset('images/admin/js/pages/form-validation.init.js')}}"></script> -->

 <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.min.css"/>
  <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"> </script>
        <!-- Datatable init js -->
        <script src="{{asset('images/admin/js/pages/datatables.init.js')}}"></script>
        <script src="{{asset('images/admin/js/tinymce.min.js')}}" referrerpolicy="origin"></script>
    <script type="text/javascript">
        tinymce.init({
            selector: 'textarea.tinymce-editor',
            height: 400,
            menubar: false,
            // Disable branding message, remove "Powered by TinyMCE"
            branding: false,
            plugins: [
                'advlist autolink lists link image charmap print preview anchor',
                'searchreplace visualblocks code fullscreen',
                'insertdatetime media table paste code help wordcount',
                'advcode'
            ],
            toolbar: 'undo redo | formatselect | ' +
                'bold italic backcolor | alignleft aligncenter ' +
                'alignright alignjustify | bullist numlist outdent indent | ' +
                'removeformat | help | code ',
            content_css: [
              '//fonts.googleapis.com/css?family=Lato:300,300i,400,400i',
            '//www.tiny.cloud/css/codepen.min.css']
        });
    </script>
    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
    </script>
    <!-- custom function file -->
        <script src="{{asset('images/admin/js/form-validation.js')}}"></script>
        <script src="{{asset('images/admin/js/customDatatableFunction.js')}}"></script>
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-6">
                        <script>document.write(new Date().getFullYear())</script> © {{$global_setting->name}}.
                    </div>
                    <div class="col-sm-6">
                        <div class="text-sm-right d-none d-sm-block">
                            {{$global_setting->footer}}
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        </div>
        <script type="text/javascript">
            function openthankuform(id) {
                $('.thankuid').val(id);
            }
            function openStoryform(id) {
                $('.storyid').val(id);
            }
        </script>
        <script>
        $(document).ready(function(){
            $('#optionsSelected').change(
                function(){
                     $(this).closest('form').trigger('submit');
                });
            $('#countrySelectBox').change( function(){
                var optval= $("#optionsSelected option:selected").val();
                if(optval!=''){
                    $(this).closest('form').trigger('submit');
                }
            });
        });
    </script>
        <div class="modal fade" id="suggestionThankuModal" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Close Suggestion Request </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form name="thankuform" id="correctionThanku" action="{{route('admin.profile_corrections.thanku')}}" method="post">
                <div class="modal-body">
                    @csrf
                    <input type="hidden" class="thankuid" name="id" value="">
                    <textarea class="form-control" name="message" placeholder="Enter your thank you message" required></textarea>
                    
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-light waves-effect" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary waves-effect waves-light">Send</button>
                </div>
                </form>
            </div>
        </div>
    </div>
        <div class="modal fade" id="reportThankuModal" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Close Story Report Request </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form name="thankuform" id="storyThanku" action="{{route('admin.report_spam.story.thanku')}}" method="post">
                <div class="modal-body">
                        @csrf
                    <input type="hidden" class="storyid" name="id" value="">
                    <textarea class="form-control" name="message" placeholder="Enter your thank you message" required></textarea>
                    
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-light waves-effect" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary waves-effect waves-light">Send</button>
                </div>
                </form>
            </div>
        </div>
    </div>
        <script type="text/javascript">
        $(document).find("#correctionThanku").validate({
        rules: {
          message:{
            normalizer: function(value) {
              return $.trim(value);
            },
           required:true,
           maxlength:250,
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
        // Called when the element is valid:
        // unhighlight: function(element) {
        //     $(element).css({'background': '#ffffff','border-color': 'green'});
        // }
      });
        $(document).find("#storyThanku").validate({
        rules: {
          message:{
            normalizer: function(value) {
              return $.trim(value);
            },
           required:true,
           maxlength:250,
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
      });

      $(function () {
  $('[data-toggle="tooltip"]').tooltip()
})
        </script>