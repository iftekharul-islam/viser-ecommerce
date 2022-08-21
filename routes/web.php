<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\CustomerController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ReportController;

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

Auth::routes();

Route::group(['middleware' => ['role:admin'], 'prefix' => 'admin'], function () {
    Route::get('/dashboard', [AdminController::class, 'index'])->name('admin.home');
    //reports
    Route::get('/sales-summary', [ReportController::class, 'salesSummary'])->name('admin.sales.summary');
    Route::get('/total-sales', [ReportController::class, 'totalSales'])->name('admin.total.sales');
    Route::get('/order-report', [ReportController::class, 'order'])->name('admin.order.report');
    Route::get('/payment-report', [ReportController::class, 'payment'])->name('admin.payment.report');
    //Excel export report
    Route::get('sales/filter-export/', [ReportController::class, 'filterExport'])->name('filter.export.report');
    Route::get('sales/export/', [ReportController::class, 'export'])->name('export.report');
});

//other role users dashboard
Route::get('/home', [HomeController::class, 'index'])->name('home');
