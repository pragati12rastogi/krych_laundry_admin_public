<?php

use Illuminate\Http\Request;

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


/*
 * Modified apis
 * by #structlooper
 * at 31/03/21
 * */
Route::group(['middleware' => ['cors']], function(){
    Route::middleware('auth:api')->get('/user', function (Request $request) {
        return $request->user();
    });
    Route::resource('customer', 'CustomerController');
    
    Route::post('customer/login', 'CustomerController@login');
    Route::post('refreshToken', 'CustomerController@refreshToken');
    Route::post('customer/otp','CustomerController@otp');
    Route::get('app_setting', 'AppSettingController@index');
    Route::post('privacy_policy', 'PrivacyPolicyController@index');
    Route::post('faq', 'FaqController@index');
    Route::resource('service', 'ServiceController');
    //secured apis using customer token
    Route::group(['middleware' => ['jwt.verify']], function() {
        Route::post('customer/update', 'CustomerController@update_profile');
        Route::get('logged/customer', 'CustomerController@getAuthenticatedUser');
        Route::get('servicesBanners', 'ServiceController@banners');
        Route::resource('category','CategoryController');
        //    Route::resource('product', 'ProductController');
        Route::get('product/{id}/{if}', 'ProductController@show');
        Route::get('product/{id}', 'ProductController@show1');
        Route::get('cart/{id}','CartController@index');
        Route::post('cart','CartController@cart');
        Route::post('cart/checkout','CartController@checkout');
        Route::get('address/{id}', 'AddressController@get_address');
        Route::post('address/add', 'UserAddressController@add_address');
        Route::post('address/update','UserAddressController@update_address');
        Route::get('address_id/{id}','UserAddressController@get_address_id');
        Route::post('address/delete','UserAddressController@delete');
        Route::get('time_slots','TimeSlotController@index');
        Route::get('date_slots','TimeSlotController@date');
        Route::get('date_slots/{id}','TimeSlotController@date_drop');
        Route::post('save_date_time','TimeSlotController@save_date_time');
        Route::post('slots/clear','TimeSlotController@slots_clear');
        Route::post('get_orders', 'OrderController@getOrders');
        Route::post('order', 'OrderController@getOrder');
        Route::post('select/address','UserAddressController@select_address');
        Route::post('promo', 'PromoCodeController@index');
        Route::post('promo/select','PromoCodeController@select');
        Route::post('notifications','CustomerController@notifications');
        Route::get('membership','MembershipController@index');
        Route::post('membership/save','MembershipController@save');
        Route::resource('service-area','ServiceAreaController');
        Route::get('checkAddress/{id}','UserAddressController@checkAddress');
        Route::post('payment', 'PaymentMethodController@payment');

    });
    //Route::post('customer/profile_picture', 'CustomerController@profile_picture');
    //Route::post('customer/forgot_password', 'CustomerController@forgot_password');
    //Route::post('customer/reset_password', 'CustomerController@reset_password');

    Route::group(['prefix' => 'delivery_partner'],function (){
        Route::resource('/', 'DeliveryBoyController');
        Route::post('otp','DeliveryBoyController@otp');
        Route::post('login', 'DeliveryBoyController@login');
        Route::post('orders','DeliveryBoyController@orders');
        Route::post('orders/completed','DeliveryBoyController@completed');
        Route::post('orders/details','DeliveryBoyController@details');
        Route::post('orders/status','DeliveryBoyController@status');
        Route::post('notifications','DeliveryBoyController@notifications');
        Route::post('update', 'DeliveryBoyController@update_profile');
        Route::post('refresh_details', 'DeliveryBoyController@refresh_details');
        Route::post('earnings','DeliveryBoyController@earnings');
    });
    Route::post('delivery_partner/profile_picture', 'DeliveryBoyController@profile_picture');
    Route::post('delivery_partner/forgot_password', 'DeliveryBoyController@forgot_password');
    Route::post('delivery_partner/reset_password', 'DeliveryBoyController@reset_password');
    Route::post('order_status_change', 'OrderController@order_status_change');
    Route::post('dashboard', 'DeliveryBoyController@dashboard');
    Route::post('stripe_payment', 'PaymentMethodController@stripe_payment');
});





