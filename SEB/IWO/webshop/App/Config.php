<?php

namespace App;
/**
 * Application configuration
 */
class Config
{
    /**
     * Database host
     * @var string
     */
    const DB_HOST = 'localhost';

    /**
     * Database name
     * @var string
     */
    const DB_NAME = 'WEBSHOP';

    /**
     * Database user
     * @var string
     */
    const DB_USER = 'rickwubs';

    /**
     * Database password
     * @var string
     */
    const DB_PASSWORD = 'x8SJ36Dm';

    /**
     * Show or hide error messages on screen
     * @var boolean
     */
    const SHOW_ERRORS = false;

    /**
     * Secret key for hashing
     * @var boolean
     */
    const SECRET_KEY = 'ZlKZ0um33Qufw12sXTorR1KRIgoJVjZx';

    /**
     * Mailgun API key
     *
     * @var string
     */
    const MAILGUN_API_KEY = 'key-e8348978b011440e6aadfab5a16e29bb';

    /**
     * Mailgun domain
     *
     * @var string
     */
    const MAILGUN_DOMAIN = 'sandboxa6417c08abe747c1ba4df59ebb40dd40.mailgun.org';
}