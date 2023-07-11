// custom jquery form validators
// for Valid Email
  jQuery.validator.addMethod("validate_email", function(value, element) {
          if (/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test(value)) {
              return true;
          } else {
              return false;
          }
      }, "Please enter a valid email address.");

// for Regex password
 $.validator.addMethod("regexPassword", function(value) {
    return /^[a-zA-Z0-9!@#$%^&*()_=\[\]{};':"\\|,.<>\/?+-]+$/.test(value)
       && /[a-z]/.test(value) // has a lowercase letter
       && /[A-Z]/.test(value) // has a lowercase letter
       && /\d/.test(value)//has a digit
       && /[!@#$%^&*()_=\[\]{};':"\\|,.<>\/?+-]/.test(value)// has a special character
      },"Password must consist Uppercase, lowercase letter, number and special characters");
// for file size

jQuery.validator.addMethod("minAge", function(value, element, min) {
 
    if (value > min+1) {
        return true;
    }
 
    return value >= min;
}, "You are not old enough!");


$.validator.addMethod('filesize', function(value, element, param) {
  return this.optional(element) || (element.files[0].size <= param * 1000000)
}, 'File size must be less than {0} Mb');

/*generate password logic*/
    var upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    var lower = 'abcdefghijklmnopqrstuvwxyz'
    var digit = '0123456789'
    var specialchar = '!$#%@'
    var all = upper + lower + digit +specialchar
/**
 * generate random integer not greater than `max`
 */

function rand (max) {
  return Math.floor(Math.random() * max)
}

/**
 * generate random character of the given `set`
 */

function random (set) {
  return set[rand(set.length - 1)]
}

/**
 * generate an array with the given `length` 
 * of characters of the given `set`
 */

function generate (length, set) {
  var result = []
  while (length--) result.push(random(set))
  return result
}

/**
 * shuffle an array randomly
 */
function shuffle (arr) {
  var result = []

  while (arr.length) {
    result = result.concat(arr.splice(rand[arr.length - 1]))
  }

  return result
}
function randomNumber(){
        return Math.floor(Math.random() * 20)+3;
}
    function Password() {
      var result = [] // we need to ensure we have some characters

      result = result.concat(generate(1, upper)) // 1 upper case
      result = result.concat(generate(1, lower)) // 1 lower case
      result = result.concat(generate(1, digit)) // 1 digit
      result = result.concat(generate(1, specialchar)) // 1 digit
      result = result.concat(generate(10 - 4, all)) // remaining - whatever
        $('#password').val(shuffle(result).join(''));
    }

    function Nickname() {
      var Digits = randomNumber();
      var result = [] // we need to ensure we have some characters

      result = result.concat(generate(Digits, all)) // remaining - whatever
      $('#rand_nickname').val(shuffle(result).join(''));
    }
/**
 * do the job
 */

 $(document).on('keypress','.errorvalidator',function(){
	$('.form-errors').text('');
 });

 //profile validation
 $(function() {
  if ($("#contactForm").length > 0) {
  $("#contactForm").validate({
    rules: {
      name:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
       maxlength:50,
        },
      email: {
        required: true,
        email: true,
        //custom validation
        validate_email: true,
      },
      password: {
        required: true,
        minlength: 8,
        maxlength: 15,
        regexPassword:true,
      },
      user_access:"required",
    },
    messages: {
        name:{
          required:"Please enter your Name",
          minlength:"Please enter atleast 3 character",
        }, 
        password: {
            required: "Please provide a password",
            minlength: "Your password must be at least 8 characters long",
            maxlength: "Your password must not be bigger than 15 characters "
        },
        email: "Please enter a valid email address"
    },
    submitHandler: function(form) {
      form.submit();
    },
    // Called when the element is invalid:
    highlight: function(element) {
        $(element).css({'background':'rgba(253, 238, 238, 0.61)','border-color':'red'});
    },
    // Called when the element is valid:
    unhighlight: function(element) {
        $(element).css({'background': '#ffffff','border-color': 'green'});
    }
  });
}
});
 //image preview
  // function PreviewImage($id='') {
  //       var oFReader = new FileReader();
  //       oFReader.readAsDataURL(document.getElementById("image"+$id).files[0]);

  //       oFReader.onload = function (oFREvent) {
  //           document.getElementById("userImage"+$id).src = oFREvent.target.result;
  //       };
  //   };


function readURL(input) {
  var url = input.value;
  var ext = url.substring(url.lastIndexOf('.') + 1).toLowerCase();


  if (input.files && input.files[0]) {

    var reader = new FileReader();
    reader.onload = function (e) {
      let path;
      if (input.files && input.files[0] && (ext == "gif" || ext == "png" || ext == "jpeg" || ext == "jpg")) {
        path = e.target.result
      }
      else {
        path = 'https://www.shutterstock.com/image-vector/play-button-icon-vector-illustration-260nw-1697833306.jpg'
      }
      document.querySelector("#userImage").setAttribute("src", path);
    };
  }
  reader.readAsDataURL(input.files[0]);
}

    /*for dynamic datatable*/
    $(document).on('click', '.pagination a', function(event){
        var sdate= $('.startdate').val();
        var edate= $('.enddate').val();
        if(sdate!='' && edate !=''){
            event.preventDefault(); 
            var page = $(this).attr('href').split('page=')[1];
            dateAjax(page);
        }
     });
    function dateAjax(page=1) {
      $('#rangeForm').submit();
        // var sdate= $('.startdate').val();
        // var edate= $('.enddate').val();
        // $.ajax({
        //     'url':'?page='+page+'&startdate='+sdate+'&enddate='+edate,
        //     'type':'get',
        //     'datatype':'html'
        // }).done(function (data,textStatus, jqXHR){
        //     $('.maintable').html(data);
        // }).fail(function (jqXHR,ajaxOptions,thrownError){
        //     alert('error');
        // })
    }
$(function() {
    // university validation
  $("#universityForm").validate({
    rules: {
      name:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
       maxlength:50,
        },
      
      country_code:"required",
      lang_code:"required",
    },
    messages: {
        name:{
          required:"Please enter your University Name",
          minlength:"Please enter atleast 3 character",
        },
        country_code:{
          required:"Please Select Country Code",
        }, 
        lang_code:{
          required:"Please Select Language Code",
        }, 
    },
    submitHandler: function(form) {
      $('.subbtn').prop('disabled',true);
      form.submit();
    },
    // Called when the element is invalid:
    highlight: function(element) {
        $(element).css({'background':'rgba(253, 238, 238, 0.61)','border-color':'red'});
    },
    // Called when the element is valid:
    unhighlight: function(element) {
        $(element).css({'background': '#ffffff','border-color': 'green'});
    }
  });
    // College validation
  $("#collegeForm").validate({
    rules: {
      name:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
       maxlength:50,
        },
      
      university_code:"required",
      lang_code:"required",
    },
    messages: {
        name:{
          required:"Please enter your College Name",
          minlength:"Please enter atleast 3 character",
        },
        university_code:{
          required:"Please Select University Code",
        }, 
        lang_code:{
          required:"Please Select Language Code",
        }, 
    },
    submitHandler: function(form) {
      $('.subbtn').prop('disabled',true);
      form.submit();
    },
    // Called when the element is invalid:
    highlight: function(element) {
        $(element).css({'background':'rgba(253, 238, 238, 0.61)','border-color':'red'});
    },
    // Called when the element is valid:
    unhighlight: function(element) {
        $(element).css({'background': '#ffffff','border-color': 'green'});
    }
  });
  //school form validation
  $("#schoolForm").validate({
    rules: {
      name:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
       maxlength:50,
        },
      
      country_code:"required",
      lang_code:"required",
    },
    messages: {
        name:{
          required:"Please enter your School Name",
          minlength:"Please enter atleast 3 character",
        },
        country_code:{
          required:"Please Select Country Code",
        }, 
        lang_code:{
          required:"Please Select Language Code",
        }, 
    },
    submitHandler: function(form) {
      $('.subbtn').prop('disabled',true);
      form.submit();
    },
    // Called when the element is invalid:
    highlight: function(element) {
        $(element).css({'background':'rgba(253, 238, 238, 0.61)','border-color':'red'});
    },
    // Called when the element is valid:
    unhighlight: function(element) {
        $(element).css({'background': '#ffffff','border-color': 'green'});
    }
  });
  //Subject form validation
  $("#subjectForm").validate({
    rules: {
      name:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
       maxlength:50,
        },
      
      school_code:"required",
      lang_code:"required",
    },
    messages: {
        name:{
          required:"Please enter your Subject Name",
          minlength:"Please enter atleast 3 character",
        },
        school_code:{
          required:"Please Select School",
        }, 
        lang_code:{
          required:"Please Select Language Code",
        }, 
    },
    submitHandler: function(form) {
      $('.subbtn').prop('disabled',true);
      form.submit();
    },
    // Called when the element is invalid:
    highlight: function(element) {
        $(element).css({'background':'rgba(253, 238, 238, 0.61)','border-color':'red'});
    },
    // Called when the element is valid:
    unhighlight: function(element) {
        $(element).css({'background': '#ffffff','border-color': 'green'});
    }
  });
});
  //CMS About Us form validation
  $("#aboutUsForm").validate({
     rules: {
      slider_title_en:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
       maxlength:250,
        },
      slider_title_ar:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
       maxlength:250,
        },
      heading_en:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
       maxlength:250,
        },
      heading_ar:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
       maxlength:250,
        },
      title_en:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
       maxlength:250,
        },
      title_ar:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
       maxlength:250,
        },
      slider_description_en:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
        },
      slider_description_ar:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
        },
      description_en:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
        },
      description_ar:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
        },
      slider_image:{ accept: "image/jpg,image/jpeg,image/png",
        },
      desc_image:{ accept: "image/jpg,image/jpeg,image/png",
        },
    },
    submitHandler: function(form) {
      $('.subbtn').prop('disabled',true);
      form.submit();
    },
    // Called when the element is invalid:
    highlight: function(element) {
        $(element).css({'background':'rgba(253, 238, 238, 0.61)','border-color':'red'});
    },
    // Called when the element is valid:
    unhighlight: function(element) {
        $(element).css({'background': '#ffffff','border-color': 'green'});
    }
  });
  //CMS Contact Us form validation
  $("#contactUsForm").validate({
     rules: {
      slider_title_en:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
       maxlength:250,
        },
      slider_title_ar:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
       maxlength:250,
        },
      slider_description_en:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
        },
      slider_description_ar:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
        },
      slider_image:{ accept: "image/jpg,image/jpeg,image/png",
        },
    },
    submitHandler: function(form) {
      $('.subbtn').prop('disabled',true);
      form.submit();
    },
    // Called when the element is invalid:
    highlight: function(element) {
        $(element).css({'background':'rgba(253, 238, 238, 0.61)','border-color':'red'});
    },
    // Called when the element is valid:
    unhighlight: function(element) {
        $(element).css({'background': '#ffffff','border-color': 'green'});
    }
  });

  //CMS Contact Us form validation
  $("#testimonialForm").validate({
     rules: {
      title_en:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
       maxlength:250,
        },
      title_ar:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
       maxlength:250,
        },
      description_en:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
        },
      description_ar:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
        },
      image:{
         extension: "jpg,jpeg,png",
        },
    },
    messages: {
    image: {
      extension: "Please add only jpg, png, jpeg file",
    },
  },
    submitHandler: function(form) {
      $('.subbtn').prop('disabled',true);
      form.submit();
    },
    // Called when the element is invalid:
    highlight: function(element) {
        $(element).css({'background':'rgba(253, 238, 238, 0.61)','border-color':'red'});
    },
    // Called when the element is valid:
    unhighlight: function(element) {
        $(element).css({'background': '#ffffff','border-color': 'green'});
    }
  });
  //CMS Contact Us form validation
  $("#bannerForm").validate({
     rules: {
      text_en:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:false,
       minlength:3,
       maxlength:250,
        },
      text_ar:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:false,
       minlength:3,
       maxlength:250,
        },
      description_en:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
        },
      country_code:{
        required:true
      },
      type:{
        required:true
      },
      image:{
        required: true,
        extension: "jpg,jpeg,png,mp4",
        },
    },
     messages: {
    image: {
      required: "Banner image is required",
      extension: "Please add only jpg, png, jpeg file",
    },
  },
    submitHandler: function(form) {
      $('.subbtn').prop('disabled',true);
      form.submit();
    },
    // Called when the element is invalid:
    highlight: function(element) {
        $(element).css({'background':'rgba(253, 238, 238, 0.61)','border-color':'red'});
    },
    // Called when the element is valid:
    unhighlight: function(element) {
        $(element).css({'background': '#ffffff','border-color': 'green'});
    }
  });


    $("#bannereditForm").validate({
     rules: {
      text_en:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:false,
       minlength:3,
       maxlength:250,
        },
      text_ar:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:false,
       minlength:3,
       maxlength:250,
        },
      description_en:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
        },
      country_code:{
        required:true
      },
      type:{
        required:true
      },
      image:{
        extension: "jpg,jpeg,png,mp4",
        },
    },
     messages: {
    image: {
      extension: "Please add only jpg, png, jpeg file",
    },
  },
    submitHandler: function(form) {
      $('.subbtn').prop('disabled',true);
      form.submit();
    },
    // Called when the element is invalid:
    highlight: function(element) {
        $(element).css({'background':'rgba(253, 238, 238, 0.61)','border-color':'red'});
    },
    // Called when the element is valid:
    unhighlight: function(element) {
        $(element).css({'background': '#ffffff','border-color': 'green'});
    }
  });
//for multi lang check

$('.checkalphabet, .checklangname').bind("cut copy",function(e) {
     e.preventDefault();
 });
$('.checkalphabet').bind('paste keypress',function(e){
    var langval= $("#langcode :selected").val();
    if(e.type== 'paste'){
      var result = e.originalEvent.clipboardData.getData('Text');
    }else{
      var result= String.fromCharCode(e.keyCode);
    }
    if(langval==1){
        return checkEnglishFunction(result);
    }else if(langval==2){
        return checkArabicfunction(result);
    }
    else{
        e.preventDefault();
        alert('please select language first');
    }
});
function checkArabicfunction(result){
  const isItAllArabic =s=>(!/[^\u0600-\u06FF\u0020-\u0040\u005B-\u0060\u007B-\u007E\-_\s]/.test(result));

  //const isItAllArabic =s=>(!/[^\u0600-\u06FF\u0020-\u0040\u005B-\u0060\u007B-\u007E]/.test(result));
    if(isItAllArabic(result)){
      return true;
    }else{
      return false;
    }
}
function checkEnglishFunction(result) {
  const isItAllArabic =s=>(/^[0-9a-zA-Z \-'_]+$/.test(result));
  if(isItAllArabic(result)){
    return true;
  }else{
    return false;
  }
}
function checklangType() {
  var langval= $("#langcode :selected").val();
  var result=  $('.checkalphabet').val();
    if(langval==1){
        if(!/[^\u0600-\u06FF\u0020-\u0040\u005B-\u0060\u007B-\u007E]/.test(result)){
            $('.checkalphabet').val('');
        }
    }
    if(langval==2){
        if(!/[^[0-9a-zA-Z]+$/.test(result)){
            $('.checkalphabet').val('');
        }
    }
}/*
function checkColLangType(e,name='') {
    var result =e.value;
    var langval= $("#langtype").val();
    if(langval==1){
        return checkEnglishFunction(result);
    }else if(langval==2){
        return checkArabicfunction(result);
    }
    else{
        event.preventDefault();
        alert(`please select ${name} first`);
    }
}*/
$('.checklangname').bind('paste keypress',function(e){
    var langval= $("#langtype").val();
    var name= $("#modalname").val();

    if(e.type== 'paste'){
      var result = e.originalEvent.clipboardData.getData('Text');
    }else{
      var result= String.fromCharCode(e.keyCode);
    }
    if(langval==1){
        return checkEnglishFunction(result);
    }else if(langval==2){
        return checkArabicfunction(result);
    }
    else{
        e.preventDefault();
        alert(`please select ${name} first`);
    }
});
//professor validations
function ChangeUniversity() {
    var countryval= $("#countryCode :selected").val();
        $.ajax({
            'url':baseurl+'/admin/professor/universityList',
            'type':'post',
            'data':{
              'countrycode':countryval,
            },
            'datatype':'html',
        }).done(function (data,textStatus, jqXHR){
          console.log(data);
            $('#universityCode').html(data);
            $('#collegeCode').html('');
        }).fail(function (jqXHR,ajaxOptions,thrownError){
            alert('error');
        });
    }

function ChangeUniversityforprofessor(code='a') {

    var countryval= $("#countryCode :selected").val();
        $.ajax({
            'url':baseurl+'/admin/banner/universityList',
            'type':'post',
            'data':{
              'countrycode':countryval,
              'code':code
            },
            'datatype':'html',
        }).done(function (data,textStatus, jqXHR){
          console.log(data);
            $('#universityCode').html(data);
            $('#collegeCode').html('');
        }).fail(function (jqXHR,ajaxOptions,thrownError){
            alert('error');
        });
    }



function ChangeCollege() {
    var universityval= $("#universityCode :selected").val();
        if(universityval!=''){
        $.ajax({
            'url':baseurl+'/admin/professor/collegeList',
            'type':'post',
            'data':{
              'universitycode':universityval,
            },
            'datatype':'html',
        }).done(function (data,textStatus, jqXHR){
            $('#langtype').val(data.lang);
            $('.checklangname').val('');
            $('#collegeCode').html(data.html);
        }).fail(function (jqXHR,ajaxOptions,thrownError){
            alert('error');
        });
    }
  }
//teacher validations
function ChangeSchool() {
    var countryval= $("#countryCode :selected").val();
        $.ajax({
            'url':baseurl+'/admin/teacher/schoolList',
            'type':'post',
            'data':{
              'countrycode':countryval,
            },
            'datatype':'html',
        }).done(function (data,textStatus, jqXHR){
          console.log(data);
            $('#schoolCode').html(data);
            $('#subjectCode').html('');
        }).fail(function (jqXHR,ajaxOptions,thrownError){
            alert('error');
        });
    }
function ChangeSubject() {
    var schoolval= $("#schoolCode :selected").val();
        if(schoolval!=''){
        $.ajax({
            'url':baseurl+'/admin/teacher/subjectList',
            'type':'post',
            'data':{
              'schoolcode':schoolval,
            },
            'datatype':'html',
        }).done(function (data,textStatus, jqXHR){
          console.log(data);
          $('.checklangname').val('');
            $('#langtype').val(data.langType);
            $('#subjectCode').html(data.html);
        }).fail(function (jqXHR,ajaxOptions,thrownError){
            alert('error');
        });
    }
  }

