// custom jquery form validators
$(window).scroll(function() {
    var body = $('body'),
        scroll = $(window).scrollTop();
    if(scroll >= 5) {
        body.addClass('fixed');
    } else {
        body.removeClass('fixed');
    }
});
$('.banner-home-slider').owlCarousel({
    loop: true,
    margin: 25,
    nav: false,
    dots: true,
    responsive: {
        0: {
            items: 1
        },
        600: {
            items: 1
        },
        1000: {
            items: 1
        }
    }
})

$('.blog-home-slider').owlCarousel({
    loop: true,
    nav: true,
    dots: true,
    responsive: {
        0: {
            items: 1
        },
        600: {
            items: 2
        },
        1000: {
            items: 3
        }
    }
});
// for Valid Email
  jQuery.validator.addMethod("validate_email", function(value, element) {
          if (/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test(value)) {
              return true;
          } else {
              return false;
          }
      });

// for Regex password
 $.validator.addMethod("regexPassword", function(value) {
    return /^[a-zA-Z0-9!@#$%^&*()_=\[\]{};':"\\|,.<>\/?+-]+$/.test(value)
       && /[a-z]/.test(value) // has a lowercase letter
       && /\d/.test(value)//has a digit
      },'Password must consist of alphabets and number');
// for file size
$.validator.addMethod('filesize', function(value, element, param) {
  return this.optional(element) || (element.files[0].size <= param * 1000000)
}, 'File size must be less than {0} Mb');

 jQuery.validator.addMethod("noSpace", function(value, element) { 
  return value.indexOf(" ") < 0 && value != ""; 
});

if ($("#userLogin").length > 0) {
    $("#userLogin").validate({
    rules: {
    nickname: {
       normalizer: function(value) {
          return $.trim(value);
        },
    required: true,
    },
    password: {
    required: true,
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
if ($("#userRegister").length > 0) {
    $("#userRegister").validate({
    errorPlacement: function(error, element) {
      if (element.attr("name") == "registercheckbox" ){
          error.appendTo('.registercheckbox');
        }  else {
      error.insertAfter(element);
      }
    },
    rules: {
    email: {
    required: true,
    email:true,
    validate_email: true,
    },
    gender: {
    required: true,
    },
    age: {
    required: true,
    range: [1,100],
    },
    // name: {
    //   normalizer: function(value) {
    //       return $.trim(value);
    //     },
    //     minlength:3,
    // required: true,
    //     maxlength:50,
    // },
    // nickname: {
    //   normalizer: function(value) {
    //       return $.trim(value);
    //     },
    //     minlength:3,
    //      noSpace: true,
    // required: true,
    //     maxlength:50,
    
    // },
    registercheckbox: {
    required: true,
    },
    password: {
    required: true,
    minlength: 8,
    regexPassword: true,
    },
    password_confirmation: {
        equalTo: "#password",
    }
    },
      messages: {
      email: {
        required: "The email field is required",
      },
      gender: {
        required: "Please select gender",
      },
      age: {
        required: "Please select age",
      },
      password: {
        required: "The password field is required",
      },
       password_confirmation: {
        equalTo: "The confirm password should be same to password",
      },
        registercheckbox: {
        required: "Please accept terms & conditions",
      },

    },
    
    submitHandler: function(form) {
       if(grecaptcha.getResponse() == "") {
        $('.g-recaptcha iframe').css("border","2px solid red");
  } else {
      $('.subbtn').prop('disabled',true);
          form.submit();
  }
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
if ($("#customerContactForm").length > 0) {
    $("#customerContactForm").validate({
    rules: {
    email: {
    required: true,
    email:true,
    validate_email: true,
    },
    name: {
      normalizer: function(value) {
          return $.trim(value);
        },
    required: true,
    },
    subject: {
      normalizer: function(value) {
          return $.trim(value);
        },
    required: true,
    },
    message: {
      normalizer: function(value) {
          return $.trim(value);
        },
    required: true,
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
if ($("#resetPassword").length > 0) {
    $("#resetPassword").validate({
    rules: {
    password: {
    required: true,
    minlength: 8,
    regexPassword: true
    },
    password_confirmation: {
        equalTo: "#password",
    },
    otp: {
        required: true,
        digits:true
    },
    oldpassword: {
        required: true,
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
if ($(".suggestionBox").length > 0) {
    $(".suggestionBox").validate({
    rules: {
       suggestion: {
      normalizer: function(value) {
          return $.trim(value);
        },
    required: true,
    minlength: 3,
    maxlength: 200,
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
if ($(".ratingform").length > 0) {
    $(".ratingform").validate({
      errorPlacement: function(error, element) {
      if (element.attr("name") == "repeat" ){
          error.appendTo('.repeatError');
        }   
      else if(element.attr("name") == "textbook") {
          error.appendTo('.textbookError');
      }
      else{
        error.insertAfter(element);
      }
    },
    rules: {
       course_code: {
      normalizer: function(value) {
          return $.trim(value);
        },
    required: true,
    minlength: 3,
    maxlength: 20,
    },
    study_type: {
      normalizer: function(value) {
          return $.trim(value);
        },
    required: true,
    },
    textbook: {
    required: true,
    },
    repeat: {
    required: true,
    },
    attendance: {
    required: true,
    },
    grade: {
    required: true,
    },
    // message: {
    //   normalizer: function(value) {
    //       return $.trim(value);
    //     },
    // required: true,
    // minlength:200,
    // },
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
if ($(".universityRating").length > 0) {
    $(".universityRating").validate({
     /* errorPlacement: function(error, element) {
      if (element.attr("name") == "professor_range" ){
          error.appendTo('.professor_rangeError');
        }   
      else if(element.attr("name") == "course_range") {
          error.appendTo('.course_rangeError');
      } 
      else if(element.attr("name") == "facility_range") {
          error.appendTo('.facility_rangeError');
      }
      else{
        error.insertAfter(element);
      }
    },
    professor_range: {
    required: true,
    },
    course_range: {
    required: true,
    },
    facility_range: {
    required: true,
    },*/
    rules: {
    message: {
      normalizer: function(value) {
          return $.trim(value);
        },
    required: true,
    minlength:200,
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
if ($("#emailConfirmation").length > 0) {
    $("#emailConfirmation").validate({
    rules: {
    email: {
      required: true,
      email:true,
      validate_email: true,
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
if ($("#updateMyProfile").length > 0) {
    $("#updateMyProfile").validate({
    errorPlacement: function(error, element) {
      if (element.attr("name") == "profile" ){
          error.appendTo('.profileError');
        }  else {
      error.insertAfter(element);
      }
    },
    rules: {
    name: {
      required: false,
      minlength:3,
      maxlength:30,
      },
    profile: {
      accept: "image/jpg,image/jpeg,image/png,image/svg",
      filesize:2
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
    
if ($("#userteacher").length > 0) {
    $("#userteacher").validate({
    rules: {
    school: {
      required: true,
      },
    subject: {
      required: true,
      },
      name: {
      normalizer: function(value) {
          return $.trim(value);
        },
      required: true,
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
