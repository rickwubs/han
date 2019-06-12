<?php
/**
 * Created by PhpStorm.
 * User: rickw
 * Date: 3/5/2019
 * Time: 9:47 AM
 */

/**
 * Front controller
 *
 * PHP version 5.4
 */

/**
 * Composer
 */
require_once dirname(__DIR__) . '/vendor/autoload.php';
//TODO: look into twig caching options

/**
 * Error and Exception handling
 */
error_reporting(E_ALL);
set_error_handler('Core\Error::errorHandler');
set_exception_handler('Core\Error::exceptionHandler');

/**
 * Sessions
 */
session_start();

/**
 * Routing
 */
$router = new Core\Router();

// Add the routes
$router->add('', ['controller' => 'Home', 'action' => 'index']);
$router->add('{controller}/{action}');
$router->add('{controller}/{id:\d+}/{action}');
$router->add('password/reset/{token:[\da-f]+}', ['controller' => 'Password', 'action' => 'reset']);
$router->add('signup/activate/{token:[\da-f]+}', ['controller' => 'Signup', 'action' => 'activate']);
$router->add('admin/{controller}/{action}', ['namespace' => 'Admin']);
$router->add('login', ['controller' => 'Login', 'action' => 'new']);
$router->add('logout', ['controller' => 'Login', 'action' => 'destroy']);
$router->add('signup', ['controller' => 'Signup', 'action' => 'new']);

// Dispatch the route
$router->dispatch($_SERVER['QUERY_STRING']);