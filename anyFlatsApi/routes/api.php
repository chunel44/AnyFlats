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

Route::prefix('v1')->group(function () {
    //Prefijo V1, todo lo que este dentro de este grupo se accedera escribiendo v1 en el navegador, es decir /api/v1/*
    Route::post('login', 'App\Http\Controllers\AuthController@login');
    Route::post('register', 'App\Http\Controllers\AuthController@register');
    Route::post('comentary', 'App\Http\Controllers\CommentaryController@postComenntary');
    Route::get('comentaries-size', 'App\Http\Controllers\CommentaryController@getComenntariesLength');
    Route::group(['middleware' => ['jwt.verify']], function() {
        Route::post('logout', 'App\Http\Controllers\AuthController@logout');
        Route::post('me', 'App\Http\Controllers\AuthController@me');
        Route::post('refresh', 'App\Http\Controllers\AuthController@refresh');
        Route::get('comentary/{id}', 'App\Http\Controllers\CommentaryController@getComenntaryById');
        Route::get('comentaries', 'App\Http\Controllers\CommentaryController@getComenntaries');
    });
});