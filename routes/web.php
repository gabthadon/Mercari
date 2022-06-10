<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\SocialController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\FlutterwaveController;

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


//Get details of a product
Route::get('/{id}/{slug}', [HomeController::class, 'show']);
Route::delete('/cartremove/{id}', [CartController::class, 'update']);

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();

});

Route::get('/', [HomeController::class, 'index']);


Route::post('/addtocart',  [CartController::class, 'store']);

Route::get('/getcartcontent',  [CartController::class, 'show']);




//Open Signup Page
Route::get('/signup', function () {
    return view('signup.index');
});




//Open Signin Page
Route::get('/signin', function () {
    return view('signin.index');
});

//Register New User
Route::post('/adduser', [AuthController::class, 'add']);










//Login User
Route::post('/login', [AuthController::class, 'login']);





//Process Flutterwave Payment
Route::get('/process_payment', [FlutterwaveController::class, 'index']);

Route::get('/rave/callback', [FlutterwaveController::class, 'callback'])->name('callback');


Route::get('auth/facebook', [SocialController::class, 'facebookRedirect']);
Route::get('auth/facebook/callback', [SocialController::class, 'loginWithFacebook']);





