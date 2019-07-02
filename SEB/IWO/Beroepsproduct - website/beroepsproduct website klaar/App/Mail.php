<?php

namespace App;

use GuzzleHttp\Client;
use Mailgun\Mailgun;
use Mailgun\Messages\Exceptions\MissingRequiredMIMEParameters;

/**
 * Mail
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
     * @throws MissingRequiredMIMEParameters
     */
    public static function send($to, $subject, $text, $html)
    {
        $client = new Client([
            'verify' => false
        ]);
        $adapter = new \Http\Adapter\Guzzle6\Client($client);
        $mg = new Mailgun(Config::MAILGUN_API_KEY, $adapter);
        $domain = Config::MAILGUN_DOMAIN;

        $mg->sendMessage($domain, ['from' => 'your-sender@your-domain.com',
            'to' => $to,
            'subject' => $subject,
            'text' => $text,
            'html' => $html]);
    }
}