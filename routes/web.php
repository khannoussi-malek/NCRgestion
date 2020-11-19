<?php

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/admin/report/getEdit/{id}', "AdminReportController@getEdit");
Route::get('/admin/report/edit-save/{idr}', "AdminReportController@addcomite");
Route::get('/admin/storages/getDetail/{id}', "AdminStoragesController@getDetail");
Route::get('/admin/ArchiveRapport/getDetail/{id}', "AdminArchiveRapportController@getDetail");

Route::post('/admin/sites19/addcomite', 'AdminSites19Controller@addcomite');


