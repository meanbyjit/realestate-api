<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\RealEstateController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
*/

Route::prefix('v1')->group(function () {

    // Route::apiResource('real-estates', RealEstateController::class);
    Route::apiResource('real-estates', RealEstateController::class)
            ->names([
                'index' => 'real-estates.index',
                'store' => 'real-estates.store',
                'show' => 'real-estates.show',
                'update' => 'real-estates.update',
                'destroy' => 'real-estates.destroy',
            ]);

    Route::get('recent-deleted', [RealEstateController::class, 'recentDeleted'])
        ->name('real-estates.recent-deleted');

});