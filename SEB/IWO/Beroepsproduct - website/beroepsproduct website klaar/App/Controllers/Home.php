<?php

namespace App\Controllers;

use Core\Controller;
use \Core\View;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Error\SyntaxError;

/**
 * Home Controller
 */
class Home extends Controller
{
    /**
     * Show the index page
     *
     * @return void
     * @throws LoaderError
     * @throws RuntimeError
     * @throws SyntaxError
     */
    public function indexAction()
    {
        View::renderTemplate('Home/index.html');
    }

    /**
     * Show the about page
     */
    public function aboutAction()
    {
        View::render('Home/about.php');
    }
}