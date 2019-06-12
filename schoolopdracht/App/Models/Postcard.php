<?php
/**
 *
 * Created by PhpStorm.
 * User: rickw
 * Date: 4/8/2019
 * Time: 11:42 AM
 */

namespace App\Models;

use PDO;
use \App\Token;
use \App\Mail;
use \Core\View;

/**
 * Postcard model
 *
 * PHP Version 7.0
 */
class Postcard extends \Core\Model
{
    /**
     * Error messages
     *
     * @var array
     */
    public $errors = [];

    /**
     * Class constructor
     *
     * @param array $data Initial property values
     *
     * @return void
     */
    public function __construct($data = [])
    {
        foreach ($data as $key => $value) {
            $this->$key = $value;
        };
    }

    /**
     * Save the postcard model with the current property values
     *
     * @return boolean True if the postcard was saved, false otherwise
     * @throws \Exception
     */
    public function save()
    {
        $this->validate();

        if (empty($this->errors)) {
            $token = new Token();
            $hashed_token = $token->getHash();
            $this->activation_token = $token->getValue();

            $sql = ''
        }
    }
}