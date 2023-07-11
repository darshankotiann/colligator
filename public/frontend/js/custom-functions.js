


function arabic() {
    $.extend( $.validator.messages, {
    required: "هذا الحقل إلزامي",
    remote: "يرجى تصحيح هذا الحقل للمتابعة",
    email: "رجاء إدخال عنوان بريد إلكتروني صحيح",
    validate_email: "رجاء إدخال عنوان بريد إلكتروني صحيح",
    url: "رجاء إدخال عنوان موقع إلكتروني صحيح",
    date: "رجاء إدخال تاريخ صحيح",
    dateISO: "رجاء إدخال تاريخ صحيح (ISO)",
    number: "رجاء إدخال عدد بطريقة صحيحة",
    digits: "رجاء إدخال أرقام فقط",
    creditcard: "رجاء إدخال رقم بطاقة ائتمان صحيح",
    equalTo: "رجاء إدخال نفس القيمة",
    extension: "رجاء إدخال ملف بامتداد موافق عليه",
    maxlength: $.validator.format( "الحد الأقصى لعدد الحروف هو {0}" ),
    minlength: $.validator.format( "الحد الأدنى لعدد الحروف هو {0}" ),
    rangelength: $.validator.format( "عدد الحروف يجب أن يكون بين {0} و {1}" ),
    range: $.validator.format( "رجاء إدخال عدد قيمته بين {0} و {1}" ),
    max: $.validator.format( "رجاء إدخال عدد أقل من أو يساوي {0}" ),
    min: $.validator.format( "رجاء إدخال عدد أكبر من أو يساوي {0}" ),
    regexPassword: "يجب أن تتكون كلمة المرور من الحروف الأبجدية والأرقام",
    noSpace: "لا توجد مساحة من فضلك ولا تتركها فارغة",
    accept: "يرجى تحميل نوع صورة صالح داخل jpg، jpeg، png ",
    confirmpassword: "يجب أن يكون تأكيد كلمة المرور مساويًا لكلمة المرور"
} );
}
function english() {
    $.extend( $.validator.messages, {
    required: "This field is required",
    remote: "Please correct this field to continue",
    email: "Please enter a valid email address",
    validate_email: "Please enter a valid email address",
    url: "Please enter a valid website address",
    date: "Please enter a valid date",
    dateISO: "Please enter a valid date (ISO)",
    number: "Please enter a number correctly",
    digits: "Please enter numbers only",
    creditcard: "Please enter a valid credit card number",
    equalTo: "Please enter the same value",
    extension: "Please enter a file with an approved extension",
    maxlength: $.validator.format( "The maximum number of characters is {0}" ),
    minlength: $.validator.format( "The minimum number of characters is {0}" ),
    rangelength: $.validator.format( "The number of characters must be between {0} and {1}" ),
    range: $.validator.format( "Please enter a number whose value is between {0} and {1}" ),
    max: $.validator.format( "Please enter a number less than or equal to {0}" ),
    min: $.validator.format( "Please enter a number greater than or equal to {0}" ),
    regexPassword: "Password must consist of alphabets and number",
    noSpace: "No Space Please and don't leave it empty ",
    accept: "Please upload a valid image type within jpg, jpeg, png ",
    confirmpassword: "Confirm password should be equal to the password"
} );
}
$(document).ready(function() {
    $('.select2box').select2();
}); 
 function callbtnajax(type) {
    $.ajax({
        'url':baseurl+'/add-teacher-professor',
        'method':'post',
        'data':{
            'type':type,
        },
        success:function(response){
        result= jQuery.parseJSON(response);
            if(result.status=='error'){
                 if(sessionlang=='ar'){
                    $('#login-signup-popup').modal('show');
                    // toastr.error('الرجاء تسجيل الدخول أولا')
                }else{
                    $('#login-signup-popup').modal('show');
                    // toastr.error('Please Login First')
                }
            }else{
                $('.modalopen').html(result.html);
                $('#add_professor').modal('show');
            }
        }
    });
}

// function callbtnajaxuniversity(type, country_code) {
//     $.ajax({
//         'url': baseurl + '/add-user-university',
//         'method': 'post',
//         'data': {
//             'type': type,
//             'country_code': country_code,
//         },
//         success: function (response) {
//             $('#add_university').modal('show');
//             result = jQuery.parseJSON(response);
//             if (result.status == 'error') {
//                 if (sessionlang == 'ar') {
//                     $('#login-signup-popup').modal('show');
//                     // toastr.error('الرجاء تسجيل الدخول أولا')
//                 } else {
//                     $('#login-signup-popup').modal('show');
//                     // toastr.error('Please Login First')
//                 }
//             } else {
//                 $('.modalopen').html(result.html);
//                 $('#add_university').modal('show');
//             }
//         }
//     });
// }

function callbtnajaxuniversity(type, country_code) {
    $.ajax({
        'url': baseurl + '/add-user-university',
        'method': 'post',
        'data': {
            'type': type,
            'country_code': country_code
        },
        success: function (response) {
            // $('#login-signup-popup').modal('hide');
            $('#add_university').modal('show');
            // result = jQuery.parseJSON(response);
            // alert(response)
            // $('#add_university').modal('show');
            if (response.status == 'error') {
                if (sessionlang == 'ar') {
                    $('#login-signup-popup').modal('hide');
                    // toastr.error('الرجاء تسجيل الدخول أولا')
                } else {
                    $('#login-signup-popup').modal('hide');
                    // toastr.error('Please Login First')
                }
            } else {
                // $('.modalopen').html(result.html);
                $('#login-signup-popup').modal('hide');
                // $('#add_university').modal('show');
            }
        }
    });
}

 function checkAuthUserOnMOdal(modalname='') {
    $.ajax({
        'url':baseurl+'/check-auth-user',
        'method':'post',
        success:function(response){
        result= jQuery.parseJSON(response);
            if(result.status=='error'){
                 if(sessionlang=='ar'){
                    $('#login-signup-popup').modal('show');
                    // toastr.error('الرجاء تسجيل الدخول أولا')
                }else{
                    $('#login-signup-popup').modal('show');
                    // toastr.error('Please Login First')
                }
                return true;
            }else{
                if(modalname != ''){
                    $('#'+modalname).modal('show');
                }
                return true;
            }
        }
    });
}
 function checkAuthUserOnAnchor(data) {
    $.ajax({
        'url':baseurl+'/check-auth-user',
        'method':'post',
        success:function(response){
        result= jQuery.parseJSON(response);
            if(result.status=='error'){
                 if(sessionlang=='ar'){
                    $('#login-signup-popup').modal('show');
                    // toastr.error('الرجاء تسجيل الدخول أولا')
                }else{
                    $('#login-signup-popup').modal('show');
                   // toastr.error('Please Login First')
                }
                return false;
            }else{
                window.location.href = data.attr('href');
            }
        }
    });
}
//image preview
function PreviewImage($id='') {
    var oFReader = new FileReader();
    oFReader.readAsDataURL(document.getElementById("image"+$id).files[0]);

    oFReader.onload = function (oFREvent) {
        document.getElementById("userImage"+$id).src = oFREvent.target.result;
    };
};
//for multi lang check

    $(document).on("cut copy",'.checkalphabet, .checklangname',function(e) {
         e.preventDefault();
     });

    $(document).on('paste keypress','.checklangname',function(e){
        var langval= $("#langtype").val();
        var name= $("#modalname").val();

        if(e.type== 'paste'){
          var result = e.originalEvent.clipboardData.getData('Text');
        }else{
            if(e.keyCode == 13) {
                return true;
            }
          var result= String.fromCharCode(e.keyCode);
        }
        if(langval==1){
            if(!checkEnglishFunction(result)){
                if(sessionlang=='ar'){
                    alert('الرجاء كتابة الاسم باللغة الإنجليزية');
                }else{
                    alert('Please write name in English');
                }
                return false;
            }

        }else if(langval==2){
            if(!checkArabicfunction(result)){
                if(sessionlang=='ar'){
                    alert('الرجاء كتابة الاسم بالعربية');
                }else{
                    alert('Please write name in Arabic');
                }
                return false;
            }
        }
        else{
            e.preventDefault();
            alert(`please select ${name} first`);
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
  $(document).on('input change', '.range-slide', function(e) {
    // $(this).closest('.rSlider-block').find('.slidercolor').html( $(this).val()==0 ? 1 :$(this).val()  );
    $(this).closest('.rSlider-block').find('.slidercolor').html( $(this).val() );
    var slideWidth = $(this).val() * 100 / 10;
    $(this).closest('.rSlider-block').find('.slide').css("width", slideWidth + "%");
});
    $(document).on('click','.copy_text' ,function (e) {
   e.preventDefault();
   var copyText = $(this).attr('href');

   document.addEventListener('copy', function(e) {
      e.clipboardData.setData('text/plain', copyText);
      e.preventDefault();
   }, true);
   // $( "#dialog" ).css('display','block');
   document.execCommand('copy');  
    $( "#dialog" ).dialog({
        modal: true,
        width: 300,
        height: 150,
        open: function (event, ui) {
            setTimeout(function () {
                $("#dialog").dialog("close");
            }, 1000);
        }
    });
 });

$(document).on('click','.likeli',function(e){
    var imgurl = imagePath+"frontend/images";
    var newcount= $(this).parent('.changelikeDislikeIcon').find('.likecount').text();

    if(newcount.trim()==''){
        newcount=0; 
    }
    var newdislikecount= $(this).parent('.changelikeDislikeIcon').find('.dislikecount').text();
    if(newdislikecount.trim()==''){
        newdislikecount=0; 
    }
    newdislikecount==="" ? 0 : newdislikecount;
    if($(this).find('.Like').attr('src') == imgurl+'/thumb-up.svg') {
        $(this).parent('.changelikeDislikeIcon').find('.likecount').addClass('userLike');
         if($(this).parent('.changelikeDislikeIcon').find('.dislikecount').hasClass('userDislike')){
            $(this).parent('.changelikeDislikeIcon').find('.dislikecount').text(newdislikecount>1 ?(newdislikecount-1):'');
            $(this).parent('.changelikeDislikeIcon').find('.dislikecount').removeClass('userDislike');
        }
        
        $(this).parent('.changelikeDislikeIcon').find('.likecount').text(parseInt(newcount)+1);
        $(this).find('.Like').attr('src',imgurl+'/thumb-up-fill.svg');
    $(this).parent('.changelikeDislikeIcon').find('.dislikeli .Dislike').attr('src',imgurl+'/thumb-down.svg');
    }
    else {
        if($(this).parent('.changelikeDislikeIcon').find('.likecount').hasClass('userLike')){
            $(this).parent('.changelikeDislikeIcon').find('.likecount').text(newcount>1 ?(newcount-1):'');
        }else{
            $(this).parent('.changelikeDislikeIcon').find('.likecount').text(newcount);
        }
        $(this).parent('.changelikeDislikeIcon').find('.likecount').removeClass('userLike');
        $(this).find('.Like').attr('src',imgurl+'/thumb-up.svg');
        $(this).parent('.changelikeDislikeIcon').find('.Dislike').attr('src',imgurl+'/thumb-down.svg');

    }
 });
$(document).on('click','.dislikeli',function(){
    var imgurl = imagePath+"frontend/images";
    var newcount= $(this).parent('.changelikeDislikeIcon').find('.dislikecount').text();
    if(newcount.trim()==''){
        newcount=0; 
    }
    newcount=='' ? 0 : newcount;
    var newlikecount= $(this).parent('.changelikeDislikeIcon').find('.likecount').text();
    if(newlikecount.trim()==''){
        newlikecount=0; 
    }
    if($(this).find('.Dislike').attr('src') == imgurl+'/thumb-down.svg') {
    $(this).parent('.changelikeDislikeIcon').find('.dislikecount').addClass('userDislike');
     if($(this).parent('.changelikeDislikeIcon').find('.likecount').hasClass('userLike')){

        $(this).parent('.changelikeDislikeIcon').find('.likecount').text(newlikecount>1 ?(newlikecount-1):'');
        $(this).parent('.changelikeDislikeIcon').find('.likecount').removeClass('userLike');
    }
    $(this).parent('.changelikeDislikeIcon').find('.dislikecount').text(parseInt(newcount)+1);
    $(this).find('.Dislike').attr('src',imgurl+'/thumb-down-fill.svg');
    $(this).parent('.changelikeDislikeIcon').find('.Like').attr('src',imgurl+'/thumb-up.svg');

}
else {
     if($(this).parent('.changelikeDislikeIcon').find('.dislikecount').hasClass('userDislike')){

        $(this).parent('.changelikeDislikeIcon').find('.dislikecount').text(newcount>1 ?(newcount-1):'');
    }else{
        $(this).parent('.changelikeDislikeIcon').find('.dislikecount').text(newcount);
    }
    $(this).parent('.changelikeDislikeIcon').find('.dislikecount').removeClass('userDislike');
    $(this).find('.Dislike').attr('src',imgurl+'/thumb-down.svg');
    $(this).parent('.changelikeDislikeIcon').find('.Like').attr('src',imgurl+'/thumb-up.svg');

}
});
function changeReport(e) {
    var imgurl = imagePath+"frontend/images";
    if($(e).closest('.report').find('.teacherreport').attr('src') == imgurl+'/flag.svg') {
        $(e).closest('.report').find('.teacherreport').attr('src',imgurl+'/flag-2-fill.svg');
       toastr.success('Reported Successfully');
    }
    else {
       toastr.success('Unreported Successfully');
        $(e).closest('.report').find('.teacherreport').attr('src',imgurl+'/flag.svg');
    }
    setTimeout(function(){window.location.reload(); }, 1000);
};

$(document).on('click', 'a.checkUser', function(e) {
    e.preventDefault();
    checkAuthUserOnAnchor($(this));
});
    
$(document).on("click",".view-reply-btn.2",function(e){
    if($(this).hasClass('showreply')){
        $(this).hide();
        $(this).closest('div').find('.hidereply').show();
    }else{
        $(this).closest('div').find('.hidereply').hide();
        $(this).closest('div').find('.showreply').show();
    }
    $(this).closest('.user-rating-item').find(".rating-replyed-item-list").slideToggle();
    $(this).closest('.user-rating-item').find(".rating-replyed-item-list").find('input').focus();
});

 function textCounter( field, countfield, maxlimit ) {
        if ( field.value.length > maxlimit ) {
            field.value = field.value.substring( 0, maxlimit );
            field.blur();
            field.focus();
        return false;
        } else {
            if(maxlimit - field.value.length <50){
                $(field).closest('div').find('.counterinput').css('color','red');
            }else{
                $(field).closest('div').find('.counterinput').css('color','rgb(84, 84, 84)');

            }
            countfield.value = maxlimit - field.value.length + ' characters remaining';
        }
    }
    function textReplyCounter( field, countfield, maxlimit ) {
        $(field).closest('div').find('.counterReplyinput').css('display','block');
        if ( field.value.length > maxlimit ) {
            field.value = field.value.substring( 0, maxlimit );
            field.blur();
            field.focus();
        return false;
        } else {
            if(maxlimit - field.value.length <50){
                $(field).closest('div').find('.counterReplyinput').css('color','red');
            }else{
                $(field).closest('div').find('.counterReplyinput').css('color','black');

            }
            countfield.value = maxlimit - field.value.length + ' characters remaining';
        }
    }
    function textReplyCounterReverse( field, countfield, minlimit ) {
        $('.error').text('');
        $(field).closest('div').find('.counterReplyinput').css('display','block');
            if(field.value.length <200){
                countfield.value = minlimit - field.value.length + ' characters more required';
                $(field).closest('div').find('.counterReplyinput').css('color','red');
            }else{
                countfield.value = '';
                $(field).closest('div').find('.counterReplyinput').css('color','black');

            }
        
    }
    function hidecounter(field) {
        if(field.value.length==0){

        $(field).closest('div').find('.counterReplyinput').css('display','none');
        }
        
    }

