<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::namespace('API')->group(function(){

    Route::post('/login','LoginController@login');
    Route::post('/social-login','LoginController@socialLogin');
    Route::post('/social-register','RegisterController@socialRegister');
    Route::post('/register','RegisterController@register');
	Route::get('/home','HomeController@index'); 
    Route::get('/about-us','HomeController@aboutUs'); 
    Route::get('/global-data','HomeController@globalSetting'); 
    Route::get('/introduction','HomeController@introduction'); 
	Route::get('/lang/{type}','HomeController@changeLang'); 
	Route::get('/contact-us','HomeController@contactUs'); 
    Route::post('/send-contact-mail','HomeController@sendContactMail'); 
    Route::get('/country/{id}/{countryCode}','SearchController@Country')->where('id','university|teacher|professor');
    Route::post('/search-find-rate-school-university', 'SearchController@searchFindAndRateProfessorTeacher');
    Route::post('/search-find-rate-teacher-professor', 'SearchController@findAndRateProfessorTeacherName');
    Route::get('/show-teacher-profile/{id}', 'SearchController@showTeacherProfile');
    Route::get('/show-university-profile/{id}', 'SearchController@showUniversityProfile');
    Route::get('/show-professor-profile/{id}', 'SearchController@showProfessorProfile');
    Route::get('/faq', 'HomeController@faq');
    Route::post('/forgot-password', 'LoginController@forgotPassword');
    Route::post('/reset-password', 'LoginController@resetPassword');
    Route::post('/soft-delete/{id}', 'LoginController@softDelete');

    Route::get('/{slug}', ['as'=>'slug','uses'=>'HomeController@CmsView'])->where('slug','term-conditions|privacy-policy|help-centre');
    Route::middleware('jwt')->group(function(){
        Route::get('/testing','LoginController@testing'); 
        Route::post('/logout','LoginController@logout');
	   
       Route::post('/update-profile','HomeController@updateMyProfile'); 
       Route::post('/update-password','HomeController@updatePassword'); 
        // common controller
        Route::get('/pushTest','RatingController@sendTestNotification');
        Route::post('/suggestion','RatingController@suggestionAdd');
        Route::post('/add-teacher-professor', 'SearchController@AddTeacherProfessor');
        Route::post('/add-new-teacher', 'SearchController@AddUserTeacher');
        Route::post('/add-new-professor', 'SearchController@AddUserProfessor');
        //Teacher Controller 
        Route::post('rate-teacher','RatingController@teacherRate');
        Route::post('add-rate-teacher','RatingController@addTeacherRate');
        Route::post('add-teacher-like-dislike','RatingController@AddTeacherLikeDislike');
        Route::post('add-teacher-report','RatingController@AddTeacherReport');
        Route::post('add-teacher-review','RatingController@addTeacherReview');
        // professor Controller
        Route::get('rate-professor/{id}','RatingController@professorRate');
        Route::post('add-rate-professor','RatingController@addProfessorRate');
        Route::post('add-professor-like-dislike','RatingController@AddProfessorLikeDislike');
        Route::post('add-professor-report','RatingController@AddProfessorReport');
        Route::post('add-professor-review','RatingController@addProfessorReview');
        // University Controller
        Route::get('rate-university/{id}','RatingController@universityRate');
        Route::post('add-rate-university','RatingController@addUniversityRate');
        Route::post('add-university-like-dislike','RatingController@AddUniversityLikeDislike');
        Route::post('add-university-report','RatingController@AddUniversityReport');
        Route::post('add-university-review','RatingController@addUniversityReview');

        // chat screen
        Route::get('chat/{id}','ChatController@singleChat');
        Route::get('notifications','ChatController@allNotification');
        Route::get('new-notification','ChatController@newNotification');
        Route::get('delete-notification/{id}','ChatController@deleteNotification');
        Route::get('mark-notification/{id}','ChatController@markNotification');
        
        // for social platform

        //creating channels

        Route::get('all-channels','ChannelController@index');
        Route::post('add-channel','ChannelController@add');
        Route::get('delete-channel/{id}','ChannelController@delete');
        Route::post('update-channel','ChannelController@update');
        Route::post('generate-token','ChannelController@generateToken');
        Route::post('generate-rtm-token','ChannelController@generateRtmToken');
        Route::get('favourites/{id}','ChannelController@favourites');
        Route::post('user-in-out-channel','ChannelController@addLeftUserInChannel');
        Route::post('all-user-list','ChannelController@userList');
        Route::get('channel-user-list/{channelId}','ChannelController@channelUserList');
        Route::get('user-following/{userId}','ChannelController@UserFollowing');
        Route::post('give-control','ChannelController@giveControl');
        
        Route::post('update-mic-msg','ChannelController@updateMicMessage');

        Route::get('all-stories','StoryController@index');
        Route::get('all-stories','StoryController@index');
        
        // social chat apis
        
        Route::get('all-channel-messages/{id}','ChatController@AllChannelMessages');
        Route::get('current-message/{id}','ChatController@LatestMessage');
        Route::post('add-channel-message','ChatController@AddChannelMessage');
        
    });
});