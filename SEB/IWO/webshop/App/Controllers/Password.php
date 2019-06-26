<?php

namespace App\Controllers;

use Core\Controller;
use \Core\View;
use \App\Models\User;
use Exception;

/**
 * Password controller
 */
class Password extends Controller
{
    /**
     * Show the forgotten password page
     *
     * @return void
     * @throws Exception
     */
    public function forgotAction()
    {
        View::renderTemplate('Password/forgot.php');
    }

    /**
     * Send the password reset link to the supplied email
     *
     * @return void
     * @throws Exception
     */
    public function requestResetAction()
    {
        User::sendPasswordReset($_POST['email']);

        View::renderTemplate('Password/reset_requested.html');
    }

    /**
     * Show the reset password form
     *
     * @return void
     * @throws Exception
     */
    public function resetAction()
    {
        $token = $this->route_params['token'];

        $user = $this->getUserOrExit($token);

        View::renderTemplate('Password/reset.php', [
            'token' => $token
        ]);
    }

    /**
     * Reset the user's password
     *
     * @return void
     * @throws Exception
     */
    public function resetPasswordAction()
    {
        $token = $_POST['token'];

        $user = $this->getUserOrExit($token);

        if ($user->resetPassword($_POST['password'])) {
            echo "password valid";
        } else {
            View::renderTemplate('Password/reset.php', [
                'token' => $token,
                'user' => $user
            ]);
        }
    }

    /**
     * Find the user model associated with the password reset token, or end the request with a message
     *
     * @param string $token Password reset token sent to user
     *
     * @return mixed User object if found and the token hasn't expired, null otherwise
     * @throws Exception
     */
    protected function getUserOrExit($token)
    {
        $user = User::findByPasswordReset($token);

        if ($user) {
            return $user;
        } else {
            View::renderTemplate('Password/token_expired.html');
            exit;
        }
    }
}