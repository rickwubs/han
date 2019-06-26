<?php

namespace App\Controllers;

use Core\Controller;
use Exception;

/**
 * Authenticated base controller
 */
abstract class Authenticated extends Controller
{
    /**
     * Require the user to be authenticated before giving access to all methods in the controller
     *
     * @return void
     * @throws Exception
     */
    protected function before()
    {
        $this->requireLogin();
    }
}