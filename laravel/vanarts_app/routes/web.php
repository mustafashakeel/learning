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
// use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\DB;
// use DB;

Route::get('/', function () {
    return view('welcome');
});
// Route::get('/post/{id}','PostsController@index');

Route::get('/post','PostsController@index');

// Route::get('/post/{id}/{name}',function($id,$name){
// 	return "This Post number is ".$id."  ".$name; 
// });

// Route::get('admin/posts/example',array('as'=>'admin.home',function(){
// 	$url = route('admin.home');
// 	return 'This url is '.$url;
// }));
Route::get('/insert',function(){
	   DB::insert('insert into posts(author,title,content) values(?,?,?)',['James','PHP   with Laravel','PHP Laravel is best thing in PHP']);
	});