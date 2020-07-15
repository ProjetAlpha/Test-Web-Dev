<?php

use Illuminate\Support\Facades\Route;

/*************************************
 ************ Home routes ************
 ************************************/

Route::get('/', 'ActorsController@index')->name('home');

/************************************
 ******* Administrator routes *******
 ************************************/

/*
 * Administrator CRUD routes.
 */
Route::post('admin/create/confirm', 'ActorsController@create')
    ->middleware('is_admin')
    ->name('admin.create.confirm');

Route::post('admin/update/{id}/confirm', 'ActorsController@update')
    ->middleware('is_admin')
    ->name('admin.update');

Route::post('admin/delete/{id}', 'ActorsController@delete')
    ->middleware('is_admin')
    ->name('admin.delete');

Route::get('admin/update/{id}', 'ActorsController@updateView')
    ->middleware('is_admin')
    ->name('admin.view.update');

/************************************
 *********** View routes ************
 ************************************/

/*
 * Administrator routes.
 */
Route::view('admin/create', 'admin.create')
    ->middleware('is_admin')
    ->name('admin.create');

Auth::routes();
