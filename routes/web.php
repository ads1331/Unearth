<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\SingleController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\AuthController;
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

Route::get('/', [PostController::class, 'index']) -> name('index');

Route::get('/single', [PostController::class, 'single']) -> name('single');
Route::get('/press-single/{id}', [PostController::class, 'press_single']) -> name('press-single');


Route::post('/',[PostController::class, 'send']) -> name('send.comment');





Route::get('admin/login', [AuthController::class, 'showLoginForm'])->name('admin.login');
Route::post('admin/login', [AuthController::class, 'login'])->name('admin.login.post');
Route::post('admin/logout', [AuthController::class, 'logout'])->name('admin.logout');


Route::middleware('admin')->prefix('admin')->name('admin.')->group(function() {
    Route::get('/', [AdminController::class, 'index'])->name('index');

    // Comments
    Route::post('comments', [AdminController::class, 'storeComment'])->name('comments.store');
    Route::delete('comments/{type}/{id}', [AdminController::class, 'destroy'])->name('comments.destroy');
    Route::get('comments/{id}/edit', [AdminController::class, 'editComment'])->name('comments.edit');
    Route::put('comments/{id}', [AdminController::class, 'updateComment'])->name('comments.update');

    // Questions
    Route::post('questions', [AdminController::class, 'storeQuestion'])->name('questions.store');
    Route::delete('questions/{type}/{id}', [AdminController::class, 'destroy'])->name('questions.destroy');
    Route::get('questions/{id}/edit', [AdminController::class, 'editQuestion'])->name('questions.edit');
    Route::put('questions/{id}', [AdminController::class, 'updateQuestion'])->name('questions.update');

    // Teams
    Route::post('teams', [AdminController::class, 'storeTeam'])->name('teams.store');
    Route::delete('teams/{type}/{id}', [AdminController::class, 'destroy'])->name('teams.destroy');
    Route::get('teams/{id}/edit', [AdminController::class, 'editTeam'])->name('teams.edit');
    Route::put('teams/{id}', [AdminController::class, 'updateTeam'])->name('teams.update');

    // Posts
    Route::post('posts', [AdminController::class, 'storePost'])->name('posts.store');
    Route::delete('posts/{type}/{id}', [AdminController::class, 'destroy'])->name('posts.destroy');
    Route::get('posts/{id}/edit', [AdminController::class, 'editPost'])->name('posts.edit');
    Route::put('posts/{id}', [AdminController::class, 'updatePost'])->name('posts.update');
});
