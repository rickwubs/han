<?php
/**
 * Created by PhpStorm.
 * User: rickw
 * Date: 3/14/2019
 * Time: 2:52 PM
 */

namespace App;
/**
 * Unique random tokens
 *
 * PHP version 7.0
 */
class Token
{
    /**
     * The token value
     * @var array
     */
    protected $token;

    /**
     * Class constructor. Create a new random token.
     *
     * @param string $token_value
     *
     * @return string A 32-character token
     * @throws \Exception
     */
    public function __construct($token_value = null)
    {
        if ($token_value) {
            $this->token = $token_value;
        } else {
            $this->token = bin2hex(random_bytes(16));
        }
    }

    /**
     * Get the token value
     *
     * @return string The value
     */
    public function getValue()
    {
        return $this->token;
    }

    /**
     * Get the hashed token value
     *
     * @return string The hashed value
     */
    public function getHash()
    {
        return hash_hmac('sha256', $this->token, Config::SECRET_KEY);
    }
}