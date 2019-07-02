<?php

namespace App\Controllers;

use Core\Controller;
use \Core\View;
use \App\Models\User;
use Exception;
use Mailgun\Messages\Exceptions\MissingRequiredMIMEParameters;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Error\SyntaxError;

/**
 * Signup controller
 */
class Signup extends Controller
{
    /**
     * Show the signup page
     *
     * @return void
     * @throws LoaderError
     * @throws RuntimeError
     * @throws SyntaxError
     */
    public function newAction()
    {
        View::renderTemplate('Signup/new.html');
    }

    /**
     * Sign up a new user
     *
     * @return void
     * @throws MissingRequiredMIMEParameters
     * @throws LoaderError
     * @throws RuntimeError
     * @throws SyntaxError
     */
    public function createAction()
    {
        $user = new User($_POST);

        if ($user->save()) {

            $user->sendActivationEmail();

            $this->redirect('/signup/success');
        } else {
            View::renderTemplate('Signup/new.html', [
                'user' => $user
            ]);
        }
    }

    /**
     * Show the signup success page
     *
     * @return void
     * @throws LoaderError
     * @throws RuntimeError
     * @throws SyntaxError
     */
    public function successAction()
    {
        View::renderTemplate('Signup/success.html');
    }

    /**
     * Activate a new account
     *
     * @return void
     * @throws Exception
     */
    public function activateAction()
    {
        User::activate($this->route_params['token']);

        $this->redirect('/signup/activated');
    }

    /**
     * Show the activation success page
     *
     * @return void
     * @throws LoaderError
     * @throws RuntimeError
     * @throws SyntaxError
     */
    public function activatedAction()
    {
        View::renderTemplate('Signup/activated.html');
    }
}