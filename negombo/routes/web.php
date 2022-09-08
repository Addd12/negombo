<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/welcome', function(){
  return view('welcome');
});
Route::get('/', 'PagesController@index')->name('user.index');
Route::get('/viewplaces/{map_name}', 'PagesController@viewsmallplace')->name('user.viewsmallplace');
Route::get('/booking/{place_id}/{checkin}/{checkout}/{error_msg}', 'PagesController@createbooking')->name('user.createbooking');
Route::post('/booking/confirm', 'PagesController@confirmbooking')->name('user.createbooking.confirm');
Route::post('/booking/confirm/payment', 'PagesController@confirmbookingpayment')->name('user.createbooking.confirm.payment');
Route::post('/booking/confirm/payment/stripe', 'PagesController@confirmbookingpaymentstripe')->name('user.createbooking.confirm.payment.stripe');
Route::get('/booking/payment/tracking/{tracking_id}', 'PagesController@confirmbookingpaymentpaypal')->name('user.createbooking.payment.track');


Route::get('/booking/confirm/card/{tracking_id}', 'BookingController@confirmCreditcard')->name('user.createbooking.confirmcreditcard');

Route::get('/contact', 'PagesController@contact')->name('user.contact');

Route::get('/regulations', 'PagesController@regulationsview')->name('user.regulations');

Route::get('/privacy', 'PagesController@userPrivacyView')->name('user.privacy');
Route::get('/prices', 'PagesController@userpricesView')->name('user.prices');
Route::get('/Temp', 'PagesController@randompageView')->name('Temp');

// error page
Route::get('/404', 'PagesController@error404')->name('error.404');

Route::get('/bookingerror', 'PagesController@booking404')->name('booking.404');

// Language Request
Route::get('lang/{lang}', ['as' => 'lang.switch', 'uses' => 'LanguageController@switchLang']);
Route::get('/languageDemo', 'HomeController@languageDemo');




Route::group(['prefix' => 'admin'], function(){
  Route::get('/', 'AdminPagesController@dashboard')->name('admin');
  Route::post('/', 'AdminPagesController@dashboard')->name('admin');

  Route::post('/place/submit', 'AdminPagesController@submitplace_search')->name('admin.place.submit');
  Route::post('/place/quickbooking', [App\Http\Controllers\AdminPagesController::class, 'quickbooking'])->name('admin.place.quickbooking');
  Route::get('/place/viewplaces', 'AdminPagesController@place_view')->name('admin.place.viewplaces');
  Route::get('/place/create', 'AdminPagesController@place_create')->name('admin.place.create');
  Route::get('/place/status/{place_id}', 'AdminPagesController@changeStatus')->name('admin.place.changestatus');
  Route::post('/place/create', 'AdminPagesController@place_store')->name('admin.place.store');
  Route::post('/place/edit/{place_id}', 'AdminPagesController@place_update')->name('admin.place.update');
  Route::get('/place/edit/{place_id}', 'AdminPagesController@place_edit')->name('admin.place.edit');
  Route::get('/place/delete/{place_id}', 'AdminPagesController@place_delete')->name('admin.place.delete');

  Route::get('/booking/exporttoexcel', 'AdminController@export')->name('admin.booking.export');
  Route::get('/booking/exporttoexcel/{date}', 'AdminController@exportdate')->name('admin.booking.export.date');
  Route::get('/booking/exporttoexcelcat/{category}', 'AdminController@exportcategory')->name('admin.booking.export.category');

  Route::get('/booking/viewbookings', 'AdminPagesController@booking_view')->name('admin.booking.viewbookings');
  Route::get('/booking/allbookings', 'AdminPagesController@booking_view_all')->name('admin.viewbookings.all');
  Route::get('/booking/viewbooking/{id}', 'AdminPagesController@viewbookingdelaits')->name('admin.booking.viewbookingdelaits');
  Route::get('/booking/edit/{id}', 'AdminPagesController@editbookingdelaits')->name('admin.booking.editbookingdelaits');
  Route::post('/booking/update/', 'AdminPagesController@updatebookingdelaits')->name('admin.booking.updatebookingdelaits');
  Route::get('/booking/delete/{id}', 'AdminPagesController@deletebookingdelaits')->name('admin.booking.deletebookingdelaits');

  Route::get('/booking/subscription', 'AdminPagesController@subscription_view')->name('admin.booking.subscription');
  Route::get('/booking/subscription/approve/{id}', 'AdminPagesController@subscription_approve')->name('admin.booking.subscription.approve');
  Route::get('/booking/subscription/reject/{id}', 'AdminPagesController@subscription_reject')->name('admin.booking.subscription.reject');

  Route::get('/booking/entrance', 'AdminPagesController@entrance_view')->name('admin.booking.entrance');

  Route::get('/booking/transactions', 'AdminPagesController@transaction_view')->name('admin.booking.transaction');


  Route::get('/promocodes', 'AdminPagesController@promocodesviews')->name('admin.promocodes');
  Route::get('/promocodes/create', 'AdminPagesController@promocodesviewcreate')->name('admin.promocodes.create');
  // Route::post('/promocodes/create', 'AdminPagesController@promocodesviewstore')->name('admin.promocodes.store');
  Route::get('/promocodes/{id}', 'AdminPagesController@promocodechange')->name('admin.promocodes.change');
  Route::get('/promocodes/edit/{id}', 'AdminPagesController@promocodeedit')->name('admin.promocodes.edit');
  Route::post('/promocodes/edit/update', 'AdminPagesController@promocodeupdate')->name('admin.promocodes.update');
  Route::post('/promocodes/edit/add', 'AdminPagesController@promocodeadd')->name('admin.promocodes.add');
  Route::get('/promocodes/delete/{id}', 'AdminPagesController@promocodedetele')->name('admin.promocodes.delete');

  Route::get('/profile', 'AdminPagesController@profileview')->name('admin.profile');
  Route::post('/profile/update', 'AdminPagesController@profileupdate')->name('admin.profile.update');

  Route::get('/staffs', 'AdminPagesController@staffsview')->name('admin.staffs');
  Route::get('/staffs/edit/{id}', 'AdminPagesController@staffseditview')->name('admin.staffs.edit');
  Route::get('/staffs/delete/{id}', 'AdminPagesController@staffsdelete')->name('admin.staffs.delete');


  Route::get('/settings', 'AdminPagesController@settingsview')->name('admin.settings');
  Route::get('/settings/email', 'AdminPagesController@settingsemailContect')->name('admin.settings.email');
  Route::post('/settings/email/update', 'AdminPagesController@settingsemailContectupdate')->name('admin.settings.email.update');
  Route::post('/settings/update', 'AdminPagesController@settingsupdate')->name('admin.settings.update');


  Route::get('/help', 'HomeController@helpview')->name('admin.help');

});

Auth::routes();

// Route::get('/home', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
