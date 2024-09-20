<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ActivityController;

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

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::get('/', function () {
//     return view('admin.dashboard');
// });



Route::get('/login', function () {
    return view('admin.signin');
})->name('login');

Route::get('/register', function () {
    return view('admin.signup');
})->name('register');




Route::get('/', [ActivityController::class, 'index'])->name('admin.dashboard');
Route::get('/activities/create', [ActivityController::class, 'create'])->name('activities.create');
Route::post('/activities/store', [ActivityController::class, 'store'])->name('activities.store');
Route::get('/activities/list', [ActivityController::class, 'list'])->name('activities.list');
Route::delete('/activities/{activity}', [ActivityController::class, 'destroy'])->name('activities.destroy');
Route::get('/activities/{activity}/edit', [ActivityController::class, 'edit'])->name('activities.edit');
Route::put('/activities/{activity}', [ActivityController::class, 'update'])->name('activities.update');
Route::get('/users', [ActivityController::class, 'getUsers'])->name('users');
