<?php

namespace App\Controllers;

use Core\Controller;
use \Core\View;
use \App\Models\Post;
use Exception;

/**
 * Posts controller
 */
class Posts extends Controller
{
    /**
     * Show the index page
     *
     * @return void
     * @throws Exception
     */
    public function indexAction()
    {
        $posts = Post::getAll();

        View::renderTemplate('Posts/index.php', [
            'posts' => $posts
        ]);
    }

    /**
     * Show the add new page
     *
     * @return void
     */
    public function addNewAction()
    {
        echo 'Hello from the addNew action in the Posts controller!';
    }

    /**
     * Show the edit page
     */
    public function editAction()
    {
        echo 'Hello from the edit action in the Posts controller!';
        echo '<p>Route parameters: <pre>' .
            htmlspecialchars(print_r($this->route_params, true)) . '</pre></p>';
    }
}