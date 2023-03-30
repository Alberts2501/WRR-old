<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/login', function () {
    return view('login');
});

Route::get('/register', function () {
    return view('register');
});

Route::get('/forgotpassword', function () {
    return view('forgotpassword');
});

Route::get('/', function () {
    return view('home');
});

Route::get('/home', function () {
    return view('home');
});

Route::get('/memory', function () {
    return view('memory');
});

Route::get('/news', function () {
    return view('news');
});

Route::get('/contacts', function () {
    return view('contacts');
});

Route::get('/aboutus', function () {
    return view('aboutus');
});