<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ActivityController;

// Public Routes
Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login'])->name('login');
Route::post('/logout', [AuthController::class, 'logout']);

// Protected Routes
Route::middleware('auth:sanctum')->group(function () {
    // Fetch logged-in user's activities by date range
    Route::get('/activities/date-range', [ActivityController::class, 'getActivitiesByDateRange']);
});
