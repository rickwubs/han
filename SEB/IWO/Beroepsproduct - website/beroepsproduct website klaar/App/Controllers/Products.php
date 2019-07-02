<?php


namespace App\Controllers;

use App\Auth;
use App\Flash;
use App\Models\User;
use Core\Controller;
use \Core\View;
use \App\Models\Product;
use Exception;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Error\SyntaxError;

/**
 * Products controller
 */
class Products extends Controller
{
    /**
     * Show the index page
     *
     * @return void
     * @throws LoaderError
     * @throws RuntimeError
     * @throws SyntaxError
     */
    public function indexAction()
    {
        $products = Product::getAll();

        View::renderTemplate('Products/index.html', [
            'products' => $products
        ]);
    }

    /**
     * Filters products by category
     */
    public function filterAction()
    {
        $category = $_POST['category'];

        $products = Product::getByCategory($category);

        View::renderTemplate('Products/category.html', [
            'products' => $products
        ]);
    }

    /**
     * Show the add new page
     *
     * @return void
     * @throws LoaderError
     * @throws RuntimeError
     * @throws SyntaxError
     * @throws Exception
     */
    public function newAction()
    {
        $user = User::findByID($_SESSION['user_id']);
        $products = Product::getAll();

        if (!$user->is_admin) {
            Flash::addMessage('You must be an admin to create a new products', FLASH::WARNING);
            $this->redirect('/login');
        } else {
            View::renderTemplate('Products/new.html', [
                'products' => $products
            ]);
        }
    }

    /**
     * Show the details page
     */
    public function detailsAction()
    {
        $id = $this->route_params['id'];
//        echo print_r($this->route_params, true);
        $product = Product::findById($id);

        View::renderTemplate('Products/details.html', [
            'product' => $product
        ]);
    }

    /**
     * Creates a new product
     */
    public function createAction()
    {
        $product = new Product($_POST);

        if ($product->save()) {
            $product = Product::findByMostRecent();

            View::renderTemplate('Products/show.html', [
                'product' => $product
            ]);
        } else {
            View::renderTemplate('Products/new.html', [
                'product' => $product
            ]);
        }
    }

    /**
     * Show the edit page
     */
    public function editAction()
    {
        $user = User::findByID($_SESSION['user_id']);
        $products = Product::getAll();

        if (!$user->is_admin) {
            Flash::addMessage('You must be an admin to edit new products', FLASH::WARNING);
            $this->redirect('/login');
        } else {
            View::renderTemplate('Products/edit.html', [
                'products' => $products
            ]);
        }
    }

    /**
     * Shows the search page
     */
    public function searchAction()
    {
        $search = $_POST['search'];
        $products = Product::search($search);

        View::renderTemplate('Products/search.html', [
           'products' => $products
        ]);
    }

    /**
     * Deletes a product
     */
    public function deleteAction()
    {
        $id = $_POST['id'];
        Product::removeProduct($id);
        if (Product::doesNotExist($id)) {
            Flash::addMessage('Product deleted successfully', FLASH::INFO);
            $this->redirect('/products/index');
        } else {
            Flash::addMessage('Product not deleted', FLASH::WARNING);
            $this->redirect('/products/index');
        }
    }

    /**
     * Adds a product to the shopping cart
     */
    public function shoppingAction()
    {
        if (!isset($_SESSION['cart'])) {
            $_SESSION['cart'] = array();
        }

        if (!in_array($_POST['id'], $_SESSION['cart'])) {
            array_push($_SESSION['cart'], $_POST['id']);
            Flash::addMessage('Product added to cart', FLASH::INFO);
        } else {
            Flash::addMessage('Product already in cart', FLASH::WARNING);
        }

        $this->redirect('/products/index');
    }

    /**
     * Removes a product from the shopping cart
     */
    public function removeAction()
    {
        $key = array_search($_POST['id'], $_SESSION['cart']);
        unset($_SESSION['cart'][$key]);
        Flash::addMessage('Product removed from cart', FLASH::SUCCESS);
        $this->redirect('/products/cart');
    }

    /**
     * Shows the shopping cart
     */
    public function cartAction()
    {
        $total = 0;

        $products = Product::getList();

        if ($products != null) {
            foreach ($products as $product) {
                $total += $product['price'];
            }


            View::renderTemplate('Products/cart.html', [
                'products' => $products,
                'total' => $total
            ]);
        } else {
            Flash::addMessage('Shopping cart is empty', FLASH::INFO);
            view::renderTemplate('Home/index.html');
        }


    }

    /**
     * Shows the confirmation page
     */
    public function confirmationAction()
    {
        $products = Product::getList();

        View::renderTemplate('Products/confirmation.html', [
            'products' => $products
        ]);
    }

    /**
     * Shows the payment page
     */
    public function paymentAction()
    {
        if (Auth::getUser() != null) {
            $products = Product::getList();

            if (Product::payment()) {
                unset($_SESSION['cart']);
                Flash::addMessage('Payment successful', FLASH::SUCCESS);
            } else {
                Flash::addMessage('Payment unsuccessful', FLASH::WARNING);
            }

            View::renderTemplate('Products/payment.html', [
                'products' => $products
            ]);
        } else {
            Flash::addMessage('Please log in to complete payment', FLASH::INFO);
            $this->redirect('/login');
        }


    }
}