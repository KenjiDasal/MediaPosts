<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\PageController;
use App\Http\Controllers\User\PostController as UserPostController;
use App\Http\Controllers\Admin\PostController as AdminPostController;

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

Route::get('/login', [LoginController::class, 'login']);

Route::get('/register', function () {
    return view('register');
});

Route::get('/profile', [ProfileController::class, 'DisplayProfile']);

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('/admin/home', [App\Http\Controllers\Admin\HomeController::class, 'index'])->name('admin.home');
Route::get('/user/home', [App\Http\Controllers\User\HomeController::class, 'index'])->name('user.home');

Route::get('/', [PageController::class, 'welcome'])->name('welcome');
Route::get('/about', [PageController::class, 'about'])->name('about');

Route::get('/user/posts/', [UserPostController::class, 'index'])->name('user.posts.index');
Route::get('/user/posts/{id}', [UserPostController::class, 'show'])->name('user.posts.show');

Route::get('/admin/posts/', [AdminPostController::class, 'index'])->name('admin.posts.index');
Route::get('/admin/posts/create', [AdminPostController::class, 'create'])->name('admin.posts.create');
Route::get('/admin/posts/{id}', [AdminPostController::class, 'show'])->name('admin.posts.show');
Route::post('/admin/posts/store', [AdminPostController::class, 'store'])->name('admin.posts.store');
Route::get('/admin/posts/{id}/edit', [AdminPostController::class, 'edit'])->name('admin.posts.edit');
Route::put('admin/posts/{id}', [AdminPostController::class, 'update'])->name('admin.posts.update');
Route::delete('admin/posts/{id}', [AdminPostController::class, 'destroy'])->name('admin.posts.destroy');

