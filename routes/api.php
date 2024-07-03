<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\CustomerTTHController;
use App\Http\Controllers\CustomerTthDetailController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::post('get-customer', [CustomerController::class, 'getCustomer']);
Route::post('get-customertth-by-id', [CustomerTTHController::class, 'getCustomerTthById']);
Route::post('get-customertth-detail-by-id', [CustomerTthDetailController::class, 'getCustomerDetailByIdCustomer']);
Route::post('update-received-yes-customertth', [CustomerTTHController::class, 'updateReceivedYesCustomerTTH']);
Route::post('update-received-no-customertth', [CustomerTTHController::class, 'updateReceivedNoCustomerTTH']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
