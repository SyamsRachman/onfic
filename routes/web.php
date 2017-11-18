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
    return view('tambahArtikel');
});
// login logout
Route::get('/logout', 'LoginController@logout');
Route::get('/login', 'LoginController@index')->name('login');
Route::post('/postLogin','LoginController@postLogin');
Route::get('/register', 'RegisterController@index');
Route::post('/postRegister','RegisterController@postRegister');
Route::get('/aksesDitolak',function()
{
  return view('aksesDitolak');
});
// hitung persentase
Route::get('/hitungPersentase', 'hitungPersentaseController@index');
//kolamDiskusi
Route::get('/kolamDiskusi', 'KolamDiskusiController@index');
Route::get('/kolamDiskusi/tambahArtikel','KolamDiskusiController@tambahArtikel');
Route::post('/kolamDiskusi/postArtikel','kolamDiskusiController@postArtikel');
Route::post('/kolamDiskusi/postKomentar','kolamDiskusiController@postKomentar');
Route::get('/kolamDiskusi/{id}/admin', 'PantauDiskusiController@showDiskusi');
Route::get('/kolamDiskusi/{id}/verifikasiArtikel', 'PantauDiskusiController@verifikasiArtikel');
Route::get('/kolamDiskusi/{id}/hapusArtikel', 'PantauDiskusiController@hapusArtikel');
Route::get('/kolamDiskusi/{id}', 'KolamDiskusiController@showDiskusi');
Route::get('/pantauDiskusi', 'PantauDiskusiController@index');
//data Ikan
Route::get('/dataIkan', 'dataIkanController@index');
Route::post('/dataIkan/updateIkan','dataIkanController@updateIkan');
Route::post('/dataIkan/tambahIkan','dataIkanController@tambahIkan');
Route::get('/hapusIkan/{id}', 'dataIkanController@hapusIkan');
