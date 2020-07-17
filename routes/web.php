<?php

use App\Http\Controllers\FrontendController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

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
//---------------------------FRONTEND ROUTE----------------------------------
Route::get('/', 'FrontendController@index');
Route::get('/product/product_delete{id}',[
    'uses' => 'ProductController@product_delete',
    'as' => 'product_delete'
]);
Route::get('/shop/view',[
    'uses' => 'FrontendController@shop_product_view',
    'as'   =>'shop_page_view'
]);
Route::get('/shop/product/{id}',[
    'uses' => 'FrontendController@show_product_by_cate',
    'as'   =>'show_product_by_cate'
]);

// CART ROUTE
Route::post('/cart/add',[
    'uses' => 'CartController@product_add_to_cart',
    'as' => 'add_to_cart'
]);

Route::get('/remove-cart-item/{id}',[
    'uses' => 'CartController@cart_remove_item_pro_id',
    'as'   =>'cart_remove_item'
]);

Route::post('/update-cart-item',[
    'uses' => 'CartController@cart_update_item_pro_id',
    'as'   =>'cart_update'
]);

// CHECKOUT ROUTE
Route::get('/checkout/form',[
    'uses' => 'CheckoutController@checkout_form_view',
    'as'   =>'checkout_form'
]);
Route::post('/customer/signup',[
    'uses' => 'CheckoutController@customer_signup',
    'as'   =>'customer_signup',
]);
Route::get('/checkout/shipping',[
    'uses' => 'CheckoutController@checkout_shipping_form',
    'as'   =>'shipping_form',
]);
Route::post('/checkout/shipping',[
    'uses' => 'CheckoutController@save_shipping_info',
    'as'   =>'save_shipping',
]);
Route::get('/checkout/payment',[
    'uses' => 'CheckoutController@checkout_payment_form',
    'as'   =>'checkout_payment',
]);
Route::post('/checkout/order',[
    'uses' => 'CheckoutController@save_order_info',
    'as'   =>'save_order',
]);
Route::post('/customer/login',[
    'uses' => 'CheckoutController@loging_customer',
    'as'   =>'customer_login',
]);
Route::get('/customer/logout',[
    'uses' => 'CheckoutController@logout_customer',
    'as'   =>'logout_submit',
]);

//-----------------------------ADMIN ROUTE------------------------------------
//  CATEGORY ROUTE
Route::get('/add/category', 'CategoryController@show_category_form')->name('add_category_form');
Route::post('/add/category', 'CategoryController@add_category')->name('category_add');
Route::get('/category/manage',[
    'uses' => 'CategoryController@manage_category',
    'as' => 'manage_category'
]);
Route::get('/category/unpublish{id}',[
    'uses' => 'CategoryController@category_unpublish',
    'as' => 'category_unpublish'
]);
Route::get('/category/publish{id}',[
    'uses' => 'CategoryController@category_publish',
    'as' => 'category_publish'
]);
Route::get('/category/category_delete{id}',[
    'uses' => 'CategoryController@category_delete',
    'as' => 'category_delete'
]);
Route::get('/category/category_edit{id}',[
    'uses' => 'CategoryController@category_edit',
    'as' => 'category_edit'
]);
Route::post('/category/category_update',[
    'uses' => 'CategoryController@category_update',
    'as' => 'category_update'
]);
//  PRODUCT ROUTE
Route::get('/add/product', 'ProductController@show_product_form')->name('add_product_form');
Route::post('/add/product', 'ProductController@add_product')->name('product_add');
Route::get('/product/manage',[
    'uses' => 'ProductController@manage_product',
    'as' => 'manage_product'
]);
Route::get('/product/unpublish{id}',[
    'uses' => 'ProductController@product_unpublish',
    'as' => 'unpublished_product'
]);
Route::get('/product/publish{id}',[
    'uses' => 'ProductController@product_publish',
    'as' => 'published_product'
]);
Route::get('/product/product_edit{id}',[
    'uses' => 'ProductController@product_edit',
    'as' => 'product_edit'
]);
Route::post('/product/product_update',[
    'uses' => 'ProductController@product_update',
    'as' => 'product_update'
]);
Route::get('/product/product_restore{id}',[
    'uses' => 'ProductController@product_restore',
    'as' => 'product_restore'
]);
Route::get('/product/product_forceDelete{id}',[
    'uses' => 'ProductController@product_forceDelete',
    'as' => 'product_forceDelete'
]);

//  ORDER ROUTE
Route::get('/product/details/{id}',[
    'uses' => 'FrontendController@product_details_by_id',
    'as'   =>'product_details'
]);
Route::get('/manage/order',[
    'uses' => 'OrderController@manage_order_info',
    'as'   =>'manage_order'
]);
Route::get('/order/details/{id}',[
    'uses' => 'OrderController@order_detail_by_order_id',
    'as'   =>'order_details'
]);
Route::get('/order/invoice/{id}',[
    'uses' => 'OrderController@order_invoice_view_by_order_id',
    'as'   =>'order_invoice'
]);

// Phiếu thanh toán được in
Route::get('/order/invoice/download/{id}',[
    'uses' => 'OrderController@order_invoice_download_by_order_id',
    'as'   =>'order_invoice_download'
]);




Auth::routes();
Route::get('/dashboard', 'HomeController@index')->name('home');




