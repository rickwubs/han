<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>{% block title %}{% endblock %}</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet"
          href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
          integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
          crossorigin="anonymous">
    <link rel="stylesheet" href="/css/styles.css"/>
</head>
<body>
<div class="container-fluid">
    <nav class="navbar navbar-expand-md navbar-light bg-light">
        <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a href="/" class="nav-link">Home</a>
                </li>
                <li class="nav-item">
                    <a href="/products/index" class="nav-link">Products</a>
                </li>
                <li class="nav-item">
                    <a href="/home/about" class="nav-link">About</a>
                </li>
                <li class="nav-item">
                    <a href="/products/cart" class="nav-link">Cart
                        <?php if (isset($_SESSION['cart'])) { ?> (<?php echo count($_SESSION['cart']) . ')';}?>
                        <?php if (!isset($_SESSION['cart'])) {?> (0)<?php }?>
                    </a>
                </li>
            </ul>
        </div>
        <div class="mx-auto order-0">
            <a class="navbar-brand mx-auto" href="#">Menu</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
        <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
            <ul class="navbar-nav ml-auto">
                <?php if (isset($_SESSION['user_id'])) {?>
                <li class="nav-item">
                    <a href="/profile/show" class="nav-link">Profile</a>
                </li>
                <li class="nav-item">
                    <a href="/logout" class="nav-link">Log out</a>
                </li>
                <?php }?>
                <?php if (!isset($_SESSION['user_id'])) {?>
                <li class="nav-item">
                    <a href="/signup" class="nav-link">Sign up</a>
                </li>
                <li class="nav-item">
                    <a href="/login" class="nav-link">Log in</a>
                </li>
                <?php } ?>
            </ul>
        </div>
    </nav>