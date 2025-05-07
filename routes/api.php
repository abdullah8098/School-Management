<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthApi;
use App\Http\Controllers\Api\CustomerController;

Route::post("register", [AuthApi::class, 'register']);
Route::post('logout', [AuthApi::class, 'logout']);
Route::post("customer/list", [CustomerController::class, 'list']);
