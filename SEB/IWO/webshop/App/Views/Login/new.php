<?php require_once('../App/Views/base.php');

$title = 'Login';

?>
<h1>Log in</h1>

<form action="/login/create" method="post">
    <div class="form-group">
        <label for="inputEmail">Email address</label>
        <input type="email" id="inputEmail" class="form-control" name="email" placeholder="Email address" autofocus/>
    </div>
    <div class="form-group">
        <label for="inputPassword">Password</label>
        <input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password"/>
    </div>
    <div class="checkbox">
        <label>
            <input type="checkbox" name="remember_me"/> Remember me
        </label>
    </div>
    <button type="submit" class="btn btn-default">Log in</button>
    <a href="/password/forgot">Forgot password?</a>
</form>

