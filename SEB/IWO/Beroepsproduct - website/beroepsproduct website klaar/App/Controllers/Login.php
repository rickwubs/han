<?php

namespace App\Controllers;

use Core\Controller;
use \Core\View;
use \App\Models\User;
use \App\Auth;
use \App\Flash;
use Exception;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Error\SyntaxError;

/**
 * Login controller
 */
class Login extends Controller
{
    /**
     * Show the login page
     *
     * @return void
     * @throws LoaderError
     * @throws RuntimeError
     * @throws SyntaxError
     */
    public function newAction()
    {
        View::renderTemplate('Login/new.html');
    }

    /**
     * Log in a user
     *
     * @return void
     * @throws Exception
     */
    public function createAction()
    {
        $user = User::authenticate($_POST['email'], $_POST['password']);

        $remember_me = isset($_POST['remember_me']);

        if ($user) {
            Auth::login($user, $remember_me);

            Flash::addMessage('Login successful');

            $this->redirect(Auth::getReturnToPage());
        } else {
            Flash::addMessage('Login unsuccessful, please try again', Flash::WARNING);

            View::renderTemplate('Login/new.html', [
                'email' => $_POST['email'],
                'remember_me' => $remember_me
            ]);
        }
    }

    /**
     * Log out a user
     *
     * @return void
     * @throws Exception
     */
    public function destroyAction()
    {
        Auth::logout();

        $this->redirect('/login/show-logout-message');
    }

    /**
     * Show a 'logged out' flash message and redirect to the homepage. Necessary to use the flash messages
     * as they use the session and at the end of the logout method (destroyAction) the session is destroyed
     * so a new action needs to be called in order to use the session.
     *
     * @return void
     */
    public function showLogoutMessageAction()
    {
        Flash::addMessage('Logout successful');

        $this->redirect('/');
    }
}