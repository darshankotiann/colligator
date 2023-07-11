<?php

use App\Permissions;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('clear-cache', function () {
    Artisan::call('cache:clear');
    Artisan::call('route:clear');
    Artisan::call('view:clear');
    Artisan::call('config:cache');
    return '<h1>Cache cleared</h1>';
});

Route::get('job-test', function () {

    $details['email'] = 'your_email@gmail.com';

    dispatch(new App\Jobs\CreateUserUploadJob($details));

    dd('done');
});
Route::get('backup', 'Admin\GlobalSettingController@BackupData')->name('backup');

// common COntroller
Route::get('/share', 'CommonController@ShareLink')->name('shareLink');
Route::any('/check-auth-user', 'CommonController@checkAuthUser')->name('checkAuthUser');
Route::get('/lang/{lang}', 'CommonController@lang')->name('lang');
Route::post('/popupsocial', 'CommonController@popupsocial')->name('popupsocial');

Route::post('/apple/login', 'API\\Auth\\AppleLoginController@login');
//facebook login
Route::get('/auth/redirect/{provider}', 'SocialController@redirect');
Route::get('/callback/{provider}', 'SocialController@callback');
Route::post('/create-social-register', 'SocialController@socialRegister')->name('social_register');
Route::get('/social-register', 'SocialController@socialRegisterForm')->name('social_register_form');

Route::get('/login', 'Auth\LoginController@showLoginForm');
Route::get('/otp-verify', 'Auth\LoginController@otpreset')->name('otpreset');
Route::post('/otp-verified', 'Auth\LoginController@otpsubmit')->name('otpsubmit');
Route::get('/resend-otp', 'Auth\LoginController@ResendOtp')->name('resend_otp');
// for capche check
// Route::get('site-register', 'SiteAuthController@siteRegister');
// Route::post('site-register', 'SiteAuthController@siteRegisterPost');

Auth::routes();
/*popup login signup*/
Route::post('modal-login', 'Auth\LoginController@modallogin')->name('modal_login');
Route::post('modal-signup', 'Auth\RegisterController@modalsignup')->name('modal_signup');

Route::get('/go-login', function () {
    session()->put('previousUrl', url()->previous());
    return redirect()->route('login');
})->name('goLogin');

Route::get('/go-signup', function () {
    if (url()->previous() != url()->to('/') . '/') {
        session()->put('previousUrl', url()->previous());
    }
    return redirect()->route('register');
})->name('goSignUp');
//frontend
Route::name('frontend.')->namespace('Frontend')->middleware(['prevent-back'])->group(function () {
    Route::group(['middleware' => ['auth', 'XSS']], function () {
        Route::view('/my-profile', 'frontend.my-profile')->name('my_profile');
        Route::post('/update-my-profile', 'HomeController@myProfile')->name('update_my_profile');
        Route::view('/change-password', 'frontend.change-password')->name('change_password');
        Route::post('/update-password', 'HomeController@updatePassword')->name('update_password');

        Route::post('/add-professor', 'SearchController@AddProfessor')->name('professor_add');
        Route::post('/add-user-teacher', 'SearchController@AddUserTeacher')->name('add_userdefine_teacher');
        Route::post('/add-user-professor', 'SearchController@AddUserProfessor')->name('add_userdefine_professor');
        Route::post('/search-teacher-subject', 'SearchController@searchTeacherSubject')->name('searchteacherSubject');
        Route::post('/search-university-college', 'SearchController@searchUniversityCollege')->name('searchUniversityCollege');
        /*rating controller*/
        Route::get('rate-teacher/{id}', 'RatingController@teacherRate')->name('rate_teacher');
        Route::post('add-rate-teacher', 'RatingController@addTeacherRate')->name('add_rate_teacher');
        Route::post('add-teacher-review', 'RatingController@addTeacherReview')->name('add_teacher_review');
        Route::post('add-teacher-like-dislike', 'RatingController@AddTeacherLikeDislike')->name('add_teacher_like_dislike');
        Route::post('add-teacher-report', 'RatingController@AddTeacherReport')->name('add_teacher_report');
        //university rating

        Route::get('rate-university/{id}', 'RatingController@universityRate')->name('rate_university');
        Route::post('add-rate-university', 'RatingController@addUniversityRate')->name('add_rate_university');
        Route::post('add-university-review', 'RatingController@addUniversityReview')->name('add_university_review');
        Route::post('add-university-like-dislike', 'RatingController@AddUniversityLikeDislike')->name('add_university_like_dislike');
        Route::post('add-university-report', 'RatingController@AddUniversityReport')->name('add_university_report');
        //professor rating

        Route::get('rate-professor/{id}', 'RatingController@professorRate')->name('rate_professor');
        Route::post('add-rate-professor', 'RatingController@addProfessorRate')->name('add_rate_professor');
        Route::post('add-professor-review', 'RatingController@addProfessorReview')->name('add_professor_review');
        Route::post('add-professor-like-dislike', 'RatingController@AddProfessorLikeDislike')->name('add_professor_like_dislike');
        Route::post('add-professor-report', 'RatingController@AddProfessorReport')->name('add_professor_report');

        Route::post('add-suggestion', 'RatingController@suggestionAdd')->name('addSuggestion');
        Route::post('get-child-user-name', 'RatingController@ChildUserName')->name('get_child_user_name');

        /*chat route*/
        Route::get('chat/{id}', 'ChatController@singleChat')->name('one-chat');
        Route::get('no-chat', 'ChatController@NoChat')->name('no_chat');
        Route::post('add-chat', 'ChatController@addChat')->name('add-chat');
        Route::any('chat-list/{id}', 'ChatController@chatList')->name('chat.list');
        Route::post('get-chat-userName', 'ChatController@getChatUserName')->name('get_chat_userName');

        Route::resource('/notification', 'NotificationController');
    });

    Route::any('/show-teacher-profile', 'SearchController@showTeacherProfile')->name('showteacherProfile');
    Route::get('/teacher-profile/{id}', 'SearchController@TeacherProfile')->name('teacherProfile');
    Route::get('/professor-profile/{id}', 'SearchController@ProfessorProfile')->name('professorProfile');
    Route::get('/university-profile/{id}', 'SearchController@UniversityProfile')->name('universityProfile');
    Route::any('/show-professor-profile', 'SearchController@showProfessorProfile')->name('showProfessorProfile');
    Route::any('/show-university-profile', 'SearchController@showUniversityProfile')->name('showUniversityProfile');
    Route::get('/search-country/{name}', 'SearchController@country')->name('country');
    Route::get('/autosearch-country', 'SearchController@SearchCountryData')->name('autosearchcountry');
    Route::get('/autosearch-university-school', 'SearchController@SearchUniversitySchoolData')->name('autosearchuniversityschool');
    Route::get('/autosearch-school-teacher-name', 'SearchController@SearchSchoolTeacherData')->name('autosearchschoolteacher');
    Route::get('/autosearch-university-professor-name', 'SearchController@SearchUniversityProfessorData')->name('autosearchuniversityprofessor');
    Route::get('/add-find-rate', 'SearchController@AddfindAndRate')->name('add_find_rate');
    Route::get('/search-find-rate/{name}', 'SearchController@searchFindAndRateProfessorTeacher')->name('search_find_rate_professor_teacher')->where('name', 'professor|teacher');
    Route::get('/find-rate/{name}', 'SearchController@findAndRateProfessorTeacherName')->name('find_rate_professor_teacher')->where('name', 'professor|teacher');
    Route::get('/show-university', 'SearchController@ShowUniversityData')->name('show_university');
    Route::post('/add-teacher-professor', 'SearchController@AddTeacherProfessor')->name('add_teacher_professor');
    Route::post('/add-user-university', 'SearchController@AddUserUniversity')->name('add_userdefine_university');

    Route::get('/', 'HomeController@index')->name('home');
    Route::get('/home', 'HomeController@index');

    Route::get('/{slug}', ['as' => 'slug', 'uses' => 'CMSController@view'])->where('slug', 'term-conditions|privacy-policy|help-centre');
    Route::get('/about-us', 'staticPageController@aboutUs')->name('aboutUs');
    Route::get('/contact-us', 'staticPageController@contactUs')->name('contactUs');
    Route::post('/contact-mail', 'staticPageController@sendContactMail')->name('contact_mail');
    Route::get('/faq', 'staticPageController@faq')->name('faq');
});
//admin
Route::prefix('/admin')->name('admin.')->namespace('Admin')->middleware('prevent-back')->group(function () {
    Route::namespace('Auth')->group(function () {
        //Login Routes
        Route::get('/login', 'LoginController@showLoginForm')->name('login');
        Route::post('/login', 'LoginController@login');
        Route::post('/logout', 'LoginController@logout')->name('logout');
        //Forgot Password Routes
        Route::get('/password/reset', 'ForgotPasswordController@showLinkRequestForm')->name('password.request');
        Route::post('/password/email', 'ForgotPasswordController@sendResetLinkEmail')->name('password.email');
        //Reset Password Routes
        Route::get('/password/reset/{token}', 'ResetPasswordController@showResetForm')->name('password.reset');
        Route::post('/password/reset', 'ResetPasswordController@reset')->name('password.update');
    });

    Route::group(['middleware' => ['auth:admin', 'XSS']], function () {
        Route::group(['middleware' => 'active-subadmin'], function () {
            Route::get('/', 'HomeController@index')->name('home');
            Route::post('/profile-update', 'HomeController@profileUpdate')->name('profile_update');
            Route::view('/profile', 'admin.profile')->name('profile');
            Route::view('/change-password', 'admin.password')->name('change_password');
            Route::post('/password-update', 'HomeController@passwordUpdate')->name('password_update');
            Route::view('/comming-soon', 'admin.comming-soon')->name('comming_soon');

            //subadmin 
            Route::get('/sub-admin', 'SubAdminController@index')->name('subadmin.list');
            Route::get('/sub-admin/add', 'SubAdminController@add')->name('subadmin.add');
            Route::post('/sub-admin/store', 'SubAdminController@store')->name('subadmin.store');
            Route::get('/sub-admin/edit/{id}', 'SubAdminController@edit')->name('subadmin.edit');
            Route::post('/sub-admin/update', 'SubAdminController@update')->name('subadmin.update');
            Route::get('/sub-admin/delete/{id}', 'SubAdminController@delete')->name('subadmin.delete');
            Route::get('/sub-admin/status/{id}', 'SubAdminController@status')->name('subadmin.status');
            Route::post('/sub-admin/range', ['uses' => 'SubAdminController@RangeSearch'])->name('subadmin.ajax');

            //users
            Route::get('/users', 'SubUserController@index')->name('user.list');
            Route::get('/users/add', 'SubUserController@add')->name('user.add');
            Route::post('/users/store', 'SubUserController@store')->name('user.store');
            Route::get('/users/edit/{id}', 'SubUserController@edit')->name('user.edit');
            Route::post('/users/update', 'SubUserController@update')->name('user.update');
            Route::get('/users/delete/{id}', 'SubUserController@delete')->name('user.delete');
            Route::get('/users/status/{id}', 'SubUserController@status')->name('user.status');
            Route::post('/users/range', ['uses' => 'SubUserController@RangeSearch'])->name('user.ajax');
            //global setting

            Route::get('/global-setting', 'GlobalSettingController@index')->name('global_setting.list');
            Route::get('/global-setting-edit', 'GlobalSettingController@edit')->name('global_setting.edit');
            Route::post('/global-setting/update', 'GlobalSettingController@update')->name('global_setting.update');
            //email template
            Route::get('/email-template', 'EmailTemplateController@index')->name('email.list');
            Route::get('/email-template/{id}', 'EmailTemplateController@edit')->name('email.edit');
            Route::post('/email-template/update', 'EmailTemplateController@update')->name('email.update');
            //cms pages
            Route::get('/cms-list', 'CmsPagesController@index')->name('cms.list');
            Route::get('/cms-edit/{id}', 'CmsPagesController@edit')->name('cms.edit');
            Route::post('/cms-update', 'CmsPagesController@update')->name('cms.update');
            Route::any('/cms/about-us', 'CmsPagesController@aboutUs')->name('cms.edit_aboutUs');
            Route::any('/cms/contact-us', 'CmsPagesController@contactUs')->name('cms.edit_contactUs');
            Route::get('customer-contact-list', 'CmsPagesController@customerContactList')->name('customer_contact');
            Route::get('customer-contact-delete/{id}', 'CmsPagesController@customerContactDelete')->name('customer_contact_delete');

            // professor profile
            Route::get('/professor1/ajax', 'ProfessorProfileController@professorAjax')->name('professorAjax');
            Route::resource('/professor', 'ProfessorProfileController');
            Route::get('/user-professor/edit/{id}', 'ProfessorProfileController@useredit')->name('user-professor.edit');
            Route::post('/user-professor/update/{id}', 'ProfessorProfileController@userupdate')->name('professor.userupdate');
            Route::get('/user-professor', 'ProfessorProfileController@userprofessor')->name('userprofessor');
            Route::get('/professor/status/{id}', 'ProfessorProfileController@status')->name('professor.status');
            Route::get('/professor/rate-active/{id}', 'ProfessorProfileController@rateActive')->name('professor.rate_active');

            Route::post('/professor/changeProfileVisibility', 'ProfessorProfileController@changeProfileVisibility')->name('professor.changeProfileVisibility');

            Route::post('/professor/range', 'ProfessorProfileController@RangeSearch')->name('professor.ajax');
            Route::post('/user-professor/range', 'ProfessorProfileController@userRangeSearch')->name('professor.userajax');
            Route::post('/professor/import', 'ProfessorProfileController@import')->name('professor.import');
            Route::post('/professor/universityList', 'ProfessorProfileController@universityList')->name('professor.university_list');
            Route::post('/professor/collegeList', 'ProfessorProfileController@collegeList')->name('professor.college_list');
            Route::post('/professor/delete-all', 'ProfessorProfileController@deleteAll')->name('professor.deleteall');
            //country list
            Route::get('/country-list', 'CountryCode@index')->name('country.index');
            Route::get('/country-status/{id}', 'CountryCode@status')->name('country.status');
            Route::get('/banner-list', 'CountryCode@bannerIndex')->name('country.banner');
            Route::get('/banner-edit/{id}', 'CountryCode@bannerEdit')->name('country.editBanner');
            Route::post('/banner-update', 'CountryCode@updateBanner')->name('country.updateBanner');
            Route::post('/active-deactive-all', 'CountryCode@activeDeactiveAll')->name('country.activeDeactiveAll');

            //Banner Module
            Route::resource('/banner', 'BannerController');
            Route::get('/banner/status/{id}', 'BannerController@status')->name('banner.status');
            Route::post('/banner/delete-all', 'BannerController@deleteAll')->name('banner.deleteall');
            Route::post('/banner/range', 'BannerController@RangeSearch')->name('banner.ajax');
            Route::post('/banner/universityList', 'BannerController@universityListbanner')->name('banner.university_list');
            Route::post('/banner/schoolList', 'BannerController@schoolListbanner')->name('banner.school_list');

            //university
            Route::resource('/university', 'UniversityController');
            Route::get('/university/rate-active/{id}', 'UniversityController@rateActive')->name('university.rate_active');
            Route::get('/university/status/{id}', 'UniversityController@status')->name('university.status');
            Route::post('/university/range', 'UniversityController@RangeSearch')->name('university.ajax');
            Route::post('/ajax-Data/university', 'UniversityController@ajaxDataUniversity')->name('university.ajax_data');
            Route::any('/university/queue', 'UniversityController@countUniversity')->name('ajax.university');

            Route::post('/university/import', 'UniversityController@import')->name('university.import');
            Route::post('/university/delete-all', 'UniversityController@deleteAll')->name('university.deleteall');

            //college 
            Route::resource('/college', 'CollegeController');
            Route::get('/college/status/{id}', 'CollegeController@status')->name('college.status');
            Route::post('/college/range', 'CollegeController@RangeSearch')->name('college.ajax');
            Route::post('/college/import', 'CollegeController@import')->name('college.import');
            Route::post('/college/university-lang', 'CollegeController@UniversityLang')->name('college.universitylang');
            Route::post('/college/delete-all', 'CollegeController@deleteAll')->name('college.deleteall');
            Route::any('/college/queue', 'CollegeController@countCollege')->name('ajax.college');


            //School 
            Route::resource('/school', 'SchoolController');
            Route::get('/school/status/{id}', 'SchoolController@status')->name('school.status');
            Route::post('/school/range', 'SchoolController@RangeSearch')->name('school.ajax');
            Route::post('/school/import', 'SchoolController@import')->name('school.import');
            Route::post('/school/delete-all', 'SchoolController@deleteAll')->name('school.deleteall');
            Route::any('/school/queue', 'SchoolController@countSchool')->name('ajax.school');
            //Subject 
            Route::resource('/subject', 'SubjectController');
            Route::get('/subject/status/{id}', 'SubjectController@status')->name('subject.status');
            Route::post('/subject/range', 'SubjectController@RangeSearch')->name('subject.ajax');
            Route::post('/subject/school-lang', 'SubjectController@schoolLang')->name('subject.schoollang');
            Route::post('/subject/import', 'SubjectController@import')->name('subject.import');
            Route::post('/subject/delete-all', 'SubjectController@deleteAll')->name('subject.deleteall');
            Route::any('/subject/queue', 'SubjectController@countSubject')->name('ajax.subject');

            // High School profile
            Route::get('/teacher1/ajax', 'TeacherProfileController@teacherAjax')->name('teacherAjax');
            Route::resource('/teacher', 'TeacherProfileController');
            Route::get('/user-teacher/edit/{id}', 'TeacherProfileController@useredit')->name('user-teacher.edit');
            Route::post('/user-teacher/update/{id}', 'TeacherProfileController@userupdate')->name('teacher.userupdate');
            Route::get('/user-teacher', 'TeacherProfileController@userteacher')->name('userteacher');
            Route::post('/user-teacher/range', 'TeacherProfileController@userRangeSearch')->name('teacher.userajax');
            Route::get('/teacher/status/{id}', 'TeacherProfileController@status')->name('teacher.status');
            Route::get('/teacher/rate-active/{id}', 'TeacherProfileController@rateActive')->name('teacher.rate_active');
            Route::post('/teacher/range', 'TeacherProfileController@RangeSearch')->name('teacher.ajax');
            Route::post('/teacher/import', 'TeacherProfileController@import')->name('teacher.import');

            Route::post('/teacher/changeProfileVisibility', 'TeacherProfileController@changeProfileVisibility')->name('teacher.changeProfileVisibility');


            Route::post('/teacher/schoolList', 'TeacherProfileController@schoolList')->name('teacher.school_list');
            Route::post('/teacher/subjectList', 'TeacherProfileController@subjectList')->name('teacher.subject_list');
            Route::post('/teacher/delete-all', 'TeacherProfileController@deleteAll')->name('teacher.deleteall');
            //testimonials

            Route::resource('/testimonial', 'TestimonialController');
            Route::get('/testimonial/status/{id}', 'TestimonialController@status')->name('testimonial.status');
            Route::post('/testimonial/range', 'TestimonialController@RangeSearch')->name('testimonial.ajax');
            //Faq

            Route::resource('/faq', 'FaqController');
            Route::get('/faq/status/{id}', 'FaqController@status')->name('faq.status');
            Route::post('/faq/range', 'FaqController@RangeSearch')->name('faq.ajax');
            //Slider
            Route::resource('/slider', 'SliderController');
            Route::get('/slider/status/{id}', 'SliderController@status')->name('slider.status');
            Route::post('/slider/range', 'SliderController@RangeSearch')->name('slider.ajax');
            //Slider
            Route::get('/professor-review', 'ReviewController@ProfessorReview')->name('professorreview');
            Route::get('/professor-review-delete/{id}', 'ReviewController@ProfessorReviewDelete')->name('professorReview.delete');
            Route::get('/professor-review-view/{id}', 'ReviewController@ProfessorReviewView')->name('professorReview.View');
            Route::get('/professor-review-report-view/{id}', 'ReviewController@ProfessorReviewReportView')->name('professorReviewReport.View');
            Route::get('/professor-review-edit/{id}', 'ReviewController@ProfessorReviewEdit')->name('professorReview.Edit');
            Route::post('/professor-review-update', 'ReviewController@ProfessorReviewUpdate')->name('professorReviewUpdate');
            Route::post('/professor-review/range', 'ReviewController@professorRangeSearch')->name('professor_ajax');


            Route::get('/comments', 'ReviewController@commentsTrack')->name('comments_track');
            Route::post('/comments-ajax', 'ReviewController@commentsTrackAjax')->name('comments_track_ajax');
            Route::get('/comment-edit/{id}/{type}', 'ReviewController@commentTrackEdit')->name('commentsTrack.Edit');
            Route::post('/comment-update', 'ReviewController@commentTrackUpdate')->name('commentsTrack.update');
            Route::get('/comment-view/{id}/{type}', 'ReviewController@commentTrackView')->name('commentsTrack.View');
            Route::get('/comment-delete/{id}/{type}', 'ReviewController@commentTrackDelete')->name('commentsTrack.delete');
            Route::get('/teacher-review', 'ReviewController@TeacherReview')->name('teacherreview');
            Route::get('/teacher-review-delete/{id}', 'ReviewController@TeacherReviewDelete')->name('teacherReview.delete');
            Route::get('/teacher-review-view/{id}', 'ReviewController@TeacherReviewView')->name('teacherReview.View');
            Route::get('/teacher-review-comment-view/{id}', 'ReviewController@TeacherReviewCommentView')->name('teacherReviewComment.View');
            Route::get('/professor-review-comment-view/{id}', 'ReviewController@ProfessorReviewCommentView')->name('professorReviewComment.View');
            Route::get('/university-review-comment-view/{id}', 'ReviewController@UniversityReviewCommentView')->name('universityReviewComment.View');
            Route::get('/teacher-review-report-view/{id}', 'ReviewController@TeacherReportReviewView')->name('teacherReportReview.View');
            Route::get('/teacher-review-edit/{id}', 'ReviewController@TeacherReviewEdit')->name('teacherReview.Edit');
            Route::post('/teacher-review-update', 'ReviewController@TeacherReviewUpdate')->name('teacherReviewUpdate');
            Route::post('/teacher-review/range', 'ReviewController@teacherRangeSearch')->name('teacher_ajax');
            Route::get('/university-review', 'ReviewController@UniversityReview')->name('universityreview');
            Route::get('/university-review-delete/{id}', 'ReviewController@UniversityReviewDelete')->name('universityReview.delete');
            Route::get('/university-review-view/{id}', 'ReviewController@UniversityReviewView')->name('universityReviewView');
            Route::get('/university-review-report-view/{id}', 'ReviewController@UniversityReportReviewView')->name('universityReportReview.View');
            Route::get('/university-review-edit/{id}', 'ReviewController@universityReviewEdit')->name('universityReview.Edit');
            Route::post('/university-review-update', 'ReviewController@universityReviewUpdate')->name('universityReviewUpdate');
            Route::post('/university-review/range', 'ReviewController@universityRangeSearch')->name('university_ajax');

            Route::get('/review/status/{id}', 'ReviewController@status')->name('review.status');
            Route::post('/review/range', 'ReviewController@RangeSearch')->name('review.ajax');
            //Abuse Words
            Route::resource('/abuse-words', 'AbuseWordsController');
            Route::post('/abuse-words/import', 'AbuseWordsController@import')->name('abuse-words.import');
            Route::get('/abuse_words/status/{id}', 'AbuseWordsController@status')->name('abuse.status');
            Route::get('/abuse_words/list', 'AbuseWordsController@professorList')->name('abuse-words.professorlist');
            Route::get('/abuse_words/university-list', 'AbuseWordsController@universityList')->name('abuse-words.universitylist');
            Route::get('/abuse_words/teacher-list', 'AbuseWordsController@teacherList')->name('abuse-words.teacherlist');

            Route::get('/abuse_words/destroy/{id}', 'AbuseWordsController@professorDestroy')->name('abuse-words.professordestroy');
            Route::get('/abuse_words/university-destroy/{id}', 'AbuseWordsController@universityDestroy')->name('abuse-words.universitydestroy');
            Route::post('/abuse_words/teacher-destroy/{id}', 'AbuseWordsController@teacherDestroy')->name('abuse-words.teacherdestroy');
            Route::POST('story/delete', 'StoryController@deleteAll')->name('story.deleteall');

            Route::get('/abuse_words/professor-delete', 'AbuseWordsController@professorDestroyall')->name('abuse-words.professordestroyall');
            Route::get('/abuse_words/university-delete', 'AbuseWordsController@universityDestroyall')->name('abuse-words.universitydestroyall');
            Route::post('/abuse_words/teacher-delete', 'AbuseWordsController@teacherDestroyall')->name('abuse-words.teacherdestroyall');
            Route::post('/abuse_words/range', 'AbuseWordsController@RangeSearch')->name('abuse.ajax');
            Route::post('/abuse-ajax', 'AbuseWordsController@abuseTrackAjax')->name('abuse_track_ajax');

            //Profile Correction
            Route::resource('/profile-corrections', 'ProfileCorrectionController');
            Route::post('/teacher-profile-corrections/range', 'ProfileCorrectionController@teacherRangeSearch')->name('profile_corrections.teacherAjax');

            Route::get('/All-profile-corrections', 'ProfileCorrectionController@teacherList')->name('profile_corrections.teacherList');
            Route::get('/view-profile-corrections/{id}', 'ProfileCorrectionController@teacherView')->name('profile_corrections.teacherView');

            Route::get('/view-professor-profile-corrections/{id}', 'ProfileCorrectionController@professorView')->name('profile_corrections.professorView');
            Route::get('/professor-profile-corrections', 'ProfileCorrectionController@professorList')->name('profile_corrections.professorList');
            Route::post('/professor-profile-corrections/range', 'ProfileCorrectionController@professorRangeSearch')->name('profile_corrections.professorAjax');

            Route::get('/view-university-profile-corrections/{id}', 'ProfileCorrectionController@universityView')->name('profile_corrections.universityView');
            Route::post('/suggestion-thanku', 'ProfileCorrectionController@profileCorrectionThanku')->name('profile_corrections.thanku');
            Route::get('/university-profile-corrections', 'ProfileCorrectionController@universityList')->name('profile_corrections.universityList');
            Route::post('/university-profile-corrections/range', 'ProfileCorrectionController@universityRangeSearch')->name('profile_corrections.universityAjax');

            Route::get('/profile-corrections/status/{id}', 'ProfileCorrectionController@status')->name('abuse.status');
            Route::post('/profile-corrections/range', 'ProfileCorrectionController@RangeSearch')->name('abuse.ajax');
            //Abuse Words
            Route::resource('/report_spam', 'ReportSpamController');
            Route::get('/report-spam/university', 'ReportSpamController@universityList')->name('report_spam.universityList');
            Route::post('/report-spam/teacher-range', 'ReportSpamController@teacherCommentAjax')->name('comment.teacher_ajax');
            Route::post('/report-spam/professor-range', 'ReportSpamController@professorCommentAjax')->name('comment.professor_ajax');
            Route::post('/report-spam/univeristy-range', 'ReportSpamController@universityCommentAjax')->name('comment.university_ajax');

            Route::get('/report-spam/professor', 'ReportSpamController@professorList')->name('report_spam.professorList');
            Route::post('/range-report-spam/professor', 'ReportSpamController@professorRangeList')->name('report_spam.professorRangeList');
            Route::post('/range-report-spam/teacher', 'ReportSpamController@teacherRangeList')->name('report_spam.teacherRangeList');
            Route::post('/range-report-spam/university', 'ReportSpamController@universityRangeList')->name('report_spam.universityRangeList');
            Route::get('/report-spam/teacher', 'ReportSpamController@teacherList')->name('report_spam.teacherList');
            Route::get('/report-spam/university-comment', 'ReportSpamController@universityCommentList')->name('report_spam.universityCommentList');
            Route::get('/report-spam/professor-comment', 'ReportSpamController@professorCommentList')->name('report_spam.professorCommentList');
            Route::get('/report-spam/teacher-comment', 'ReportSpamController@teacherCommentList')->name('report_spam.teacherCommentList');
            Route::get('/report-spam/status/{id}', 'ReportSpamController@status')->name('abuse.status');
            Route::post('/report-spam/range', 'ReportSpamController@RangeSearch')->name('abuse.ajax');
            Route::post('/showReporters', 'ReportSpamController@AjaxReportersList')->name('showReporters');
            Route::get('/all-report-spam', 'ReportSpamController@allReportSpamTrack')->name('all_report_spam_track');
            Route::post('/all-report-spam-ajax', 'ReportSpamController@allReportSpamCommentAjax')->name('all_report_spam_track_ajax');

            // report for stories
            Route::get('/report-spam/stories', 'ReportSpamController@storyList')->name('report_spam.stories.list');
            Route::get('/report-spam/stories/{id}', 'ReportSpamController@storyView')->name('report_spam.stories.view');
            Route::post('/report-spam/stories-thanku', 'ReportSpamController@storyReportThanku')->name('report_spam.story.thanku');
            Route::get('report-spam/story/destroy/{id}', 'ReportSpamController@storyDestroy')->name('report_spam.stories.destroy');

            Route::post('/report-spam/stories/range', 'ReportSpamController@storiesRangeSearch')->name('report_spam.stories.ajax');
            // user report
            Route::get('/report-spam/user', 'ReportSpamController@userReportList')->name('report_spam.user.list');
            Route::get('/report-spam/user-view/{id}', 'ReportSpamController@userReportView')->name('report_spam.user.view');

            Route::get('/report/user-statics/{limit?}', 'ReportStaticsController@userStatics')->name('user_statics');
            Route::get('/report/professor-statics/{limit?}', 'ReportStaticsController@professorStatics')->name('professor_statics');
            Route::get('/report/teacher-statics/{limit?}', 'ReportStaticsController@teacherStatics')->name('teacher_statics');
            Route::get('/report/university-statics/{limit?}', 'ReportStaticsController@universityStatics')->name('university_statics');

            Route::get('/report/user-statics-filter/{countryId?}/{order?}/{limit?}', 'ReportStaticsController@userStaticsOrder')->name('user_statics_filter');
            Route::get('/report/professor-statics-filter/{countryId?}/{order?}/{limit?}', 'ReportStaticsController@professorStaticsOrder')->name('professor_statics_filter');
            Route::get('/report/teacher-statics-filter/{countryId?}/{order?}/{limit?}', 'ReportStaticsController@teacherStaticsOrder')->name('teacher_statics_filter');
            Route::get('/report/university-statics-filter/{countryId?}/{order?}/{limit?}', 'ReportStaticsController@universityStaticsOrder')->name('university_statics_filter');

            // Route::post('/report/user-statics-filter','ReportStaticsController@userStaticsOrder')->name('user_statics_filter');
            // Route::post('/report/professor-statics-filter','ReportStaticsController@professorStaticsOrder')->name('professor_statics_filter');
            // Route::post('/report/teacher-statics-filter','ReportStaticsController@teacherStaticsOrder')->name('teacher_statics_filter');
            // Route::post('/report/university-statics-filter','ReportStaticsController@universityStaticsOrder')->name('university_statics_filter');

            Route::get('story/list', 'StoryController@index')->name('story.list');
            Route::post('story/store', 'StoryController@store')->name('story.store');
            Route::post('story/update', 'StoryController@update')->name('story.update');
            Route::get('story/show/{id}', 'StoryController@show')->name('story.show');
            Route::get('story/destroy/{id}', 'StoryController@destroy')->name('story.destroy');
            Route::POST('story/delete', 'StoryController@deleteAll')->name('story.deleteall');
            Route::post('/story/range', ['uses' => 'StoryController@RangeSearch'])->name('story.ajax');
            // push notification

            Route::get('send-push-notification', 'SendPushNotification@list')->name('push_notification_list');
            Route::post('push-notification-send', 'SendPushNotification@Send')->name('sendPushNotification.send');
            Route::post('push-notification-filter', 'SendPushNotification@filter')->name('push_notification_filter');
            Route::post('push-notification-university-filter', 'SendPushNotification@getUniversities')->name('push_notification_university_filter');
        });
    });
});


/*Route::prefix('/sub_admin')->name('sub_admin.')->namespace('SubAdmin')->group(function(){
	    Route::namespace('Auth')->group(function(){
        //Login Routes
        Route::get('/login','LoginController@showLoginForm')->name('login');
        Route::post('/login','LoginController@login');
        Route::post('/logout','LoginController@logout')->name('logout');

        //Forgot Password Routes
        Route::get('/password/reset','ForgotPasswordController@showLinkRequestForm')->name('password.request');
        Route::post('/password/email','ForgotPasswordController@sendResetLinkEmail')->name('password.email');

        //Reset Password Routes
        Route::get('/password/reset/{token}','ResetPasswordController@showResetForm')->name('password.reset');
        Route::post('/password/reset','ResetPasswordController@reset')->name('password.update');

    	});
    });*/

Route::get('/data', function () {
    return Permissions::select('modal_name')->distinct()->get();
});
