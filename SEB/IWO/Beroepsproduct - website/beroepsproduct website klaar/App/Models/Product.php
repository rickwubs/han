<?php


namespace App\Models;

use App\Auth;
use Core\Model;
use Exception;
use PDO;
use PDOException;

class Product extends Model
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
    public function __constructor($data = [])
    {
        foreach ($data as $key => $value) {
            $this->$key = $value;
        }
    }

    /**
     * Get the user model of the current user
     *
     * @return User The user model
     * @throws Exception
     */
    public function getUser()
    {
        return Auth::getUser();
    }

    /**
     * Save the product model with the current property values
     *
     * @return boolean True if the product was saved, false otherwise
     * @throws Exception
     */
    public function save()
    {
        $image_big = $_FILES['image_big']['tmp_name'];
        $image_small = $_FILES['image_small']['tmp_name'];
        $this->name = $_POST['name'];
        $this->description = $_POST['description'];
        $this->category = $_POST['category'];
        $this->price = $_POST['price'];
        $this->stock = $_POST['stock'];

        $this->validate();

        if (empty($this->errors)) {
            $this->image_big = base64_encode(file_get_contents($image_big));
            $this->image_small = base64_encode(file_get_contents($image_small));

            $sql = 'INSERT INTO products(name, description, category, price, stock, image_big, image_small)
                    VALUES(:name, :description, :category, :price, :stock, :image_big, :image_small)';

            $db = static::getDB();
            $stmt = $db->prepare($sql);

            $stmt->bindValue(':name', $this->name, PDO::PARAM_STR);
            $stmt->bindValue(':description', $this->description, PDO::PARAM_STR);
            $stmt->bindValue(':category', $this->category, PDO::PARAM_STR);
            $stmt->bindValue(':price', $this->price, PDO::PARAM_STR);
            $stmt->bindValue(':stock', $this->stock, PDO::PARAM_INT);
            $stmt->bindValue(':image_big', $this->image_big, PDO::PARAM_LOB);
            $stmt->bindValue(':image_small', $this->image_small, PDO::PARAM_LOB);

            return $stmt->execute();
        }

        return false;
    }

    /**
     * Validate current property values, adding validation error messages
     * to the errors array property
     *
     * @return void
     */
    public function validate()
    {
        //name
        if ($this->name == '') {
            $this->errors[] = 'Name is required';
        }
        //description
        if ($this->description == '') {
            $this->errors[] = 'Description is required';
        }
        //category
        if ($this->category == '') {
            $this->errors[] = 'Category is required';
        }
        //price
        if ($this->price == '') {
            $this->errors[] = 'Price is required';
        }
        if ($this->price < 0) {
            $this->errors[] = 'Price must be higher than 0';
        }
        //stock
        if ($this->stock == '') {
            $this->errors[] = 'Stock is required';
        }
        if ($this->stock < 0) {
            $this->errors[] = 'Stock must be higher than 0';
        }
    }

    /**
     * Get all the products as an associative array
     *
     * @return array
     */
    public static function getAll()
    {
        try {
            $db = static::getDB();
            $stmt = $db->query('SELECT id, name, description, category, price, stock, image_big, image_small FROM products');
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $results;
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }

    /**
     * Gets all products from a certain category
     *
     * @param string $category The category to filter by
     * @return array
     */
    public static function getByCategory($category)
    {
        try {
            $sql = "SELECT * from products WHERE category = :category";
            $db = static::getDB();
            $stmt = $db->prepare($sql);
            $stmt->bindValue(':category', $category, PDO::PARAM_STR);
            $stmt->setFetchMode(PDO::FETCH_ASSOC);
            $stmt->execute();
            return $stmt->fetchAll();
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }

    /**
     * Gets all products matching a certain search term
     * @param string $search The search term to be used
     * @return array
     */
    public static function search($search)
    {
        try {
            $sql = "SELECT * from products WHERE name LIKE '%" . $search . "%'";
            $db = static::getDB();
            $stmt = $db->prepare($sql);
            $stmt->setFetchMode(PDO::FETCH_ASSOC);
            $stmt->execute();

            return $stmt->fetchAll();
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }

    /**
     * Gets a list of products which are in the shopping cart
     */
    public static function getList()
    {

        if (isset($_SESSION['cart'])) {
            $array = $_SESSION['cart'];

            if (!empty($_SESSION['cart'])) {
                try {
                    $sql = 'SELECT * 
          FROM products 
         WHERE id IN (' . implode(',', array_map('intval', $array)) . ')';

                    $db = static::getDB();
                    $stmt = $db->prepare($sql);
                    $stmt->setFetchMode(PDO::FETCH_ASSOC);
                    $stmt->execute();

                    return $stmt->fetchAll();
                } catch (PDOException $e) {
                    echo $e->getMessage();
                }
            }
        } else {
            $_SESSION['cart'] = array();
        }
    }

    /**
     * Find the most recent product from a user
     */
    public static function findByMostRecent()
    {
        try {
            $sql = 'SELECT id, name, description, category, price, stock, imagE_big, image_small FROM products
                    ORDER BY id DESC LIMIT 1';
            $db = static::getDB();
            $stmt = $db->prepare($sql);
            $stmt->setFetchMode(PDO::FETCH_ASSOC);
            $stmt->execute();

            $products = $stmt->fetch();

            return $products;
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }

    /**
     * Find a product by id
     */
    public static function findById($id)
    {
        try {
            $sql = 'SELECT * from products WHERE id = :id';
            $db = static::getDB();
            $stmt = $db->prepare($sql);

            $stmt->bindValue(':id', $id, PDO::PARAM_INT);
            $stmt->setFetchMode(PDO::FETCH_ASSOC);

            $stmt->execute();

            $product = $stmt->fetch();

            return $product;

        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }

    /**
     * Removes product with the specified id
     * @param int $id The id of the product to be removed
     */
    public static function removeProduct($id)
    {
        try {
            $sql = 'DELETE FROM products WHERE id = :id';
            $db = static::getDB();
            $stmt = $db->prepare($sql);

            $stmt->bindValue(':id', $id, PDO::PARAM_INT);

            $stmt->execute();

        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }

    /**
     * Checks if a product exists
     */
    public static function doesNotExist($id)
    {
        try {
            $sql = 'SELECT * FROM products WHERE id = :id';
            $db = static::getDB();
            $stmt = $db->prepare($sql);

            $stmt->bindValue(':id', $id, PDO::PARAM_INT);
            $stmt->setFetchMode(PDO::FETCH_ASSOC);
            $stmt->execute();

            $product = $stmt->fetch();

            if ($product == null) {
                return true;
            } else {
                return false;
            }
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }

    /**
     * Handles payment of the products, reducing inventory stock
     */
    public static function payment()
    {
        $products = Product::getList();

        foreach ($products as $product) {
            $id = $product['id'];

            try {
                $sql = "UPDATE products SET stock = stock - 1 WHERE id = :id";
                $db = static::getDB();
                $stmt = $db->prepare($sql);

                $stmt->bindValue(':id', $id, PDO::PARAM_INT);
                $stmt->execute();

                return true;
            } catch (PDOException $e) {
                echo $e->getMessage();

                return false;
            }
        }
    }
}