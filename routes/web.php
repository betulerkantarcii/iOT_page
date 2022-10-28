<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', 'App\Http\Controllers\HomeController@index');
Route::get('/{category}/{slug}', 'App\Http\Controllers\HomeController@listByCategory')->where('category', 'category|kategori|');
Route::get('lang/{lang}', ['as' => 'lang.switch', 'uses' => 'App\Http\Controllers\LanguageController@switchLang']);


/* Auto-generated admin routes */
Route::middleware(['auth:' . config('admin-auth.defaults.guard'), 'admin'])->group(static function () {
    Route::prefix('admin')->namespace('App\Http\Controllers\Admin')->name('admin/')->group(static function() {
        Route::prefix('admin-users')->name('admin-users/')->group(static function() {
            Route::get('/',                                             'AdminUsersController@index')->name('index');
            Route::get('/create',                                       'AdminUsersController@create')->name('create');
            Route::post('/',                                            'AdminUsersController@store')->name('store');
            Route::get('/{adminUser}/impersonal-login',                 'AdminUsersController@impersonalLogin')->name('impersonal-login');
            Route::get('/{adminUser}/edit',                             'AdminUsersController@edit')->name('edit');
            Route::post('/{adminUser}',                                 'AdminUsersController@update')->name('update');
            Route::delete('/{adminUser}',                               'AdminUsersController@destroy')->name('destroy');
            Route::get('/{adminUser}/resend-activation',                'AdminUsersController@resendActivationEmail')->name('resendActivationEmail');
        });
    });
});

/* Auto-generated admin routes */
Route::middleware(['auth:' . config('admin-auth.defaults.guard'), 'admin'])->group(static function () {
    Route::prefix('admin')->namespace('App\Http\Controllers\Admin')->name('admin/')->group(static function() {
        Route::get('/profile',                                      'ProfileController@editProfile')->name('edit-profile');
        Route::post('/profile',                                     'ProfileController@updateProfile')->name('update-profile');
        Route::get('/password',                                     'ProfileController@editPassword')->name('edit-password');
        Route::post('/password',                                    'ProfileController@updatePassword')->name('update-password');
    });
});

 



/* Auto-generated admin routes */
Route::middleware(['auth:' . config('admin-auth.defaults.guard'), 'admin'])->group(static function () {
    Route::prefix('admin')->namespace('App\Http\Controllers\Admin')->name('admin/')->group(static function() {
        Route::prefix('templates')->name('templates/')->group(static function() {
            Route::get('/',                                             'TemplatesController@index')->name('index');
            Route::get('/create',                                       'TemplatesController@create')->name('create');
            Route::post('/',                                            'TemplatesController@store')->name('store');
            Route::get('/{template}/edit',                              'TemplatesController@edit')->name('edit');
            Route::post('/bulk-destroy',                                'TemplatesController@bulkDestroy')->name('bulk-destroy');
            Route::post('/{template}',                                  'TemplatesController@update')->name('update');
            Route::delete('/{template}',                                'TemplatesController@destroy')->name('destroy');
        });
    });
});

/* Auto-generated admin routes */
Route::middleware(['auth:' . config('admin-auth.defaults.guard'), 'admin'])->group(static function () {
    Route::prefix('admin')->namespace('App\Http\Controllers\Admin')->name('admin/')->group(static function() {
        Route::prefix('choice-of-templates')->name('choice-of-templates/')->group(static function() {
            Route::get('/',                                             'ChoiceOfTemplateController@index')->name('index');
            Route::get('/create',                                       'ChoiceOfTemplateController@create')->name('create');
            Route::post('/',                                            'ChoiceOfTemplateController@store')->name('store');
            Route::get('/{choiceOfTemplate}/edit',                      'ChoiceOfTemplateController@edit')->name('edit');
            Route::post('/bulk-destroy',                                'ChoiceOfTemplateController@bulkDestroy')->name('bulk-destroy');
            Route::post('/{choiceOfTemplate}',                          'ChoiceOfTemplateController@update')->name('update');
            Route::delete('/{choiceOfTemplate}',                        'ChoiceOfTemplateController@destroy')->name('destroy');
        });
    });
});

/* Auto-generated admin routes */
Route::middleware(['auth:' . config('admin-auth.defaults.guard'), 'admin'])->group(static function () {
    Route::prefix('admin')->namespace('App\Http\Controllers\Admin')->name('admin/')->group(static function() {
        Route::prefix('mains')->name('mains/')->group(static function() {
            Route::get('/',                                             'MainController@index')->name('index');
            Route::get('/create',                                       'MainController@create')->name('create');
            Route::post('/',                                            'MainController@store')->name('store');
            Route::get('/{main}/edit',                                  'MainController@edit')->name('edit');
            Route::post('/bulk-destroy',                                'MainController@bulkDestroy')->name('bulk-destroy');
            Route::post('/{main}',                                      'MainController@update')->name('update');
            Route::delete('/{main}',                                    'MainController@destroy')->name('destroy');
        });
    });
});

/* Auto-generated admin routes */
Route::middleware(['auth:' . config('admin-auth.defaults.guard'), 'admin'])->group(static function () {
    Route::prefix('admin')->namespace('App\Http\Controllers\Admin')->name('admin/')->group(static function() {
        Route::prefix('menus')->name('menus/')->group(static function() {
            Route::get('/',                                             'MenusController@index')->name('index');
            Route::get('/create',                                       'MenusController@create')->name('create');
            Route::post('/',                                            'MenusController@store')->name('store');
            Route::get('/{menu}/edit',                                  'MenusController@edit')->name('edit');
            Route::post('/bulk-destroy',                                'MenusController@bulkDestroy')->name('bulk-destroy');
            Route::post('/{menu}',                                      'MenusController@update')->name('update');
            Route::delete('/{menu}',                                    'MenusController@destroy')->name('destroy');
        });
    });
});

/* Auto-generated admin routes */
Route::middleware(['auth:' . config('admin-auth.defaults.guard'), 'admin'])->group(static function () {
    Route::prefix('admin')->namespace('App\Http\Controllers\Admin')->name('admin/')->group(static function() {
        Route::prefix('menu-contents')->name('menu-contents/')->group(static function() {
            Route::get('/',                                             'MenuContentController@index')->name('index');
            Route::get('/create',                                       'MenuContentController@create')->name('create');
            Route::post('/',                                            'MenuContentController@store')->name('store');
            Route::get('/{menuContent}/edit',                           'MenuContentController@edit')->name('edit');
            Route::post('/bulk-destroy',                                'MenuContentController@bulkDestroy')->name('bulk-destroy');
            Route::post('/{menuContent}',                               'MenuContentController@update')->name('update');
            Route::delete('/{menuContent}',                             'MenuContentController@destroy')->name('destroy');
        });
    });
});

/* Auto-generated admin routes */
Route::middleware(['auth:' . config('admin-auth.defaults.guard'), 'admin'])->group(static function () {
    Route::prefix('admin')->namespace('App\Http\Controllers\Admin')->name('admin/')->group(static function() {
        Route::prefix('menus')->name('menus/')->group(static function() {
            Route::get('/',                                             'MenuController@index')->name('index');
            Route::get('/create',                                       'MenuController@create')->name('create');
            Route::post('/',                                            'MenuController@store')->name('store');
            Route::get('/{menu}/edit',                                  'MenuController@edit')->name('edit');
            Route::post('/bulk-destroy',                                'MenuController@bulkDestroy')->name('bulk-destroy');
            Route::post('/{menu}',                                      'MenuController@update')->name('update');
            Route::delete('/{menu}',                                    'MenuController@destroy')->name('destroy');
        });
    });
});

/* Auto-generated admin routes */
Route::middleware(['auth:' . config('admin-auth.defaults.guard'), 'admin'])->group(static function () {
    Route::prefix('admin')->namespace('App\Http\Controllers\Admin')->name('admin/')->group(static function() {
        Route::prefix('event-calendars')->name('event-calendars/')->group(static function() {
            Route::get('/',                                             'EventCalendarController@index')->name('index');
            Route::get('/create',                                       'EventCalendarController@create')->name('create');
            Route::post('/',                                            'EventCalendarController@store')->name('store');
            Route::get('/{eventCalendar}/edit',                         'EventCalendarController@edit')->name('edit');
            Route::post('/bulk-destroy',                                'EventCalendarController@bulkDestroy')->name('bulk-destroy');
            Route::post('/{eventCalendar}',                             'EventCalendarController@update')->name('update');
            Route::delete('/{eventCalendar}',                           'EventCalendarController@destroy')->name('destroy');
        });
    });
});