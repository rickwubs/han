<?php

namespace App\Controllers;

use App\Models\Product;
use \Core\View;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Error\SyntaxError;

/**
 * Items controller
 */
class Items extends Authenticated
{
    /**
     * Items index
     *
     * @return void
     * @throws LoaderError
     * @throws RuntimeError
     * @throws SyntaxError
     */
    public function indexAction()
    {
        $items = Product::getAll();

        View::renderTemplate('Items/index.html', [
            'items' => $items
        ]);
    }

    /**
     * Add a new item
     *
     * @return void
     * @throws LoaderError
     * @throws RuntimeError
     * @throws SyntaxError
     */
    public function newAction()
    {

        View::renderTemplate('Items/new.html');
    }



    /**
     * Show an item
     *
     * @return void
     */
    public function showAction()
    {
        echo "show action";
    }
}