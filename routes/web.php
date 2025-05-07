<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return redirect->route('welcome');
// });


Route::get('/', [App\Http\Controllers\FrontController::class, 'index'])->name('front.index');

Route::get('/login', [App\Http\Controllers\LoginController::class, 'login'])->name('login');

Route::post('/logins', [App\Http\Controllers\LoginController::class, 'logins'])->name('logins');
Route::post('/logout', [App\Http\Controllers\LoginController::class, 'logout'])->name('logout');

Route::middleware(['auth'])->group(function () {
    Route::get('/dashboard', [App\Http\Controllers\Admin\DashboardController::class, 'dashboard'])->name('admin.dashboard');

    // admin
    Route::group(['middleware' => 'checkRole:0'], function () {

        // user
        Route::get('/admin/student', [App\Http\Controllers\Admin\StudentController::class, 'index'])->name('admin.student');
        // Route::get('/admin/student/create', [App\Http\Controllers\Admin\StudentController::class, 'create'])->name('admin.student.create');
        // Route::post('/admin/student/store', [App\Http\Controllers\Admin\StudentController::class, 'store'])->name('admin.student.store');
        Route::get('/admin/student/{id}/detail', [App\Http\Controllers\Admin\StudentController::class, 'detail'])->name('admin.student.detail');
        Route::get('/admin/student/{id}/{class}/{examType}', [App\Http\Controllers\Admin\StudentController::class, 'examDetail'])->name('admin.student.examDetail');
        // Route::post('/admin/student/{id}/update', [App\Http\Controllers\Admin\StudentController::class, 'update'])->name('admin.student.update');
        // Route::get('/admin/student/{id}/delete', [App\Http\Controllers\Admin\StudentController::class, 'delete'])->name('admin.student.delete');

    });
});






















