<?php

namespace App\Controllers\Admin;

use Core\Controller;

/**
 * User admin controller
 */
class Users extends Controller
{
    /**
     * Before filter
     *
     * @return void
     */
    protected function before()
    {
        // make sure an admin user is logged in
    }

    /**
     * Show the index page
     *
     * @return void
     */
    protected function indexAction()
    {
        echo 'User admin index';
    }

    /**
     * After filter
     *
     * @return void
     */
    protected function after()
    {
    }

}