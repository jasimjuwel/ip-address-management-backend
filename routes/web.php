<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});


$router->group(['prefix' => 'api'], function () use ($router) {
    $router->post('login', 'AuthController@login');
});

$router->group(['middleware' => 'auth', 'prefix' => 'api'], function ($router) {
    $router->get('profile', 'AuthController@profile');
    $router->post('logout', 'AuthController@logout');

    $router->post('ip-store', 'IpTableController@store');
    $router->get('ip-list', 'IpTableController@index');
    $router->get('ip-show/{id}', 'IpTableController@show');
    $router->get('ip-edit/{id}', 'IpTableController@edit');
    $router->put('ip-update/{id}', 'IpTableController@update');
    $router->delete('ip-delete/{id}', 'IpTableController@delete');

    $router->get('audit-log-list', 'AuditLogController@index');
});


$router->group(['namespace' => '\Rap2hpoutre\LaravelLogViewer'], function () use ($router) {
    $router->get('logs', 'LogViewerController@index');
});
