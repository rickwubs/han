<?php
/**
 * Created by PhpStorm.
 * User: rickw
 * Date: 3/13/2019
 * Time: 4:01 PM
 */

namespace App\Controllers;
/**
 * Authenticated base controller
 *
 * PHP version 7.0
 */
abstract class Authenticated extends \Core\Controller
{
    /**
     * Require the user to be authenticated before giving access to all methods in the controller
     *
     * @return void
     * @throws \Exception
     */
    protected function before()
    {
        $this->requireLogin();
    }
}