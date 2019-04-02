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


$router->get('/users', "UserController@index");
$router->get('/areas', "AreaController@index");
$router->get('/phones', "PhoneController@index");
$router->get('/posts', "PostController@index");
$router->get('/comments', "CommentController@index");
$router->get('/roles', "RoleController@index");
