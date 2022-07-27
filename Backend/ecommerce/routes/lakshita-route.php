<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AboutController;
use App\Http\Controllers\TermsController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\PageNotFoundController;
use App\Http\Controllers\Admin\InquiryController;
use App\Http\Controllers\PrivacyPolicyController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\AdvertisementController;





 Route::get('/about', [AboutController::class, 'index']);
 Route::get('/contact', [ContactController::class, 'index']);
 Route::get('/terms-and-conditions', [TermsController::class, 'index']);
 Route::get('/404', [PageNotFoundController::class, 'index']);
 Route::get('/privacy-policy', [PrivacyPolicyController::class, 'index']);


 //Category Controller
 Route::get('/admin/category', [App\Http\Controllers\Admin\CategoryController::class, 'index']);
 Route::get('/admin/category/create',[App\Http\Controllers\Admin\CategoryController::class, 'create']);
 Route::post('/admin/category',[App\Http\Controllers\Admin\CategoryController::class, 'store']);
 Route::get('/admin/category/edit/{category}',[App\Http\Controllers\Admin\CategoryController::class, 'edit'])->name('category_edit');
 Route::put('/admin/category/{id}',[App\Http\Controllers\Admin\CategoryController::class, 'update'])->name('category_update');
 Route::delete('/admin/category/{id}', [App\Http\Controllers\Admin\CategoryController::class, 'destroy']);
 Route::post('/admin/category',[App\Http\Controllers\Admin\CategoryController::class, 'search']);
// Inquiry Controler
Route::get('/admin/inquiry', [App\Http\Controllers\Admin\InquiryController::class, 'index']);
Route::delete('/admin/inquiry/{id}', [App\Http\Controllers\Admin\InquiryController::class, 'destroy']);
// Advertisement Controler
Route::get('/admin/advertisement', [App\Http\Controllers\Admin\AdvertisementController::class, 'index']);
Route::get('/admin/advertisement/create',[App\Http\Controllers\Admin\AdvertisementController::class, 'create']);
Route::post('/admin/advertisement',[App\Http\Controllers\Admin\AdvertisementController::class, 'store']);
Route::get('/admin/advertisement/edit/{advertisement}',[App\Http\Controllers\Admin\AdvertisementController::class, 'edit'])->name('advertisement_edit');
Route::put('/admin/advertisement/{id}',[App\Http\Controllers\Admin\AdvertisementController::class, 'update'])->name('advertisement_update');
// Route::delete('/admin/category/{id}', [App\Http\Controllers\Admin\CategoryController::class, 'destroy']);
// Route::post('/admin/advertisement/search',[App\Http\Controllers\Admin\AdvertisementController::class, 'search']);