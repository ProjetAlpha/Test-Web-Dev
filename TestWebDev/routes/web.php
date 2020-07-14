<?php

use Illuminate\Support\Facades\Route;

/*************************************
 *********** Public routes ***********
 ************************************/

Route::get('/', 'ActorsController@publicFetch')
    ->name('actors.public.fetch');

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

/*
 * Administrator home route.
 */
Route::get('admin', 'ActorsController@adminFetch')
    ->middleware('is_admin')
    ->name('admin.fetch');

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
