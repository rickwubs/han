<?php
/**
 * Created by PhpStorm.
 * User: rickw
 * Date: 3/6/2019
 * Time: 12:12 PM
 */

namespace App\Controllers\Admin;
/**
 * User admin controller
 *
 * PHP version 5.4
 */
class Users extends \Core\Controller
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