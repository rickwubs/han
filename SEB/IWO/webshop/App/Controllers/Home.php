<?php

namespace App\Controllers;

use Core\Controller;
use \Core\View;
use Exception;

/**
 * Home Controller
 */
class Home extends Controller
{
    /**
     * Show the index page
     *
     * @return void
     * @throws Exception
     */
    public function indexAction()
    {
        View::renderTemplate('Home/index.php');
    }
}