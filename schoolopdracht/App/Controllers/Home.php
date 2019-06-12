<?php
/**
 * Created by PhpStorm.
 * User: rickw
 * Date: 3/5/2019
 * Time: 3:54 PM
 */

namespace App\Controllers;

use \Core\View;

/**
 * Home Controller
 *
 * PHP version 5.4
 */
class Home extends \Core\Controller
{
    /**
     * Show the index page
     *
     * @return void
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function indexAction()
    {
        View::renderTemplate('Home/index.html');
    }
}