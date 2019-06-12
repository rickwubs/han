<?php

namespace App;

use App\Config;
use Mailgun\Mailgun;

/**
 * Mail
 *
 * PHP version 7.0
 */
class Mail
{

    /**
     * Send a message
     *
     * @param string $to Recipient
     * @param string $subject Subject
     * @param string $text Text-only content of the message
     * @param string $html HTML content of the message
     *
     * @return mixed
     * @throws \Mailgun\Messages\Exceptions\MissingRequiredMIMEParameters
     */
    public static function send($to, $subject, $text, $html)
    {
        $client = new \GuzzleHttp\Client([
            'verify' => false
        ]);
        $adapter = new \Http\Adapter\Guzzle6\Client($client);
        $mg = new Mailgun(Config::MAILGUN_API_KEY, $adapter);
        $domain = Config::MAILGUN_DOMAIN;

        //TODO: update to new methods (message() -> send());
        $mg->sendMessage($domain, ['from' => 'your-sender@your-domain.com',
            'to' => $to,
            'subject' => $subject,
            'text' => $text,
            'html' => $html]);
    }
}