<?php require_once('../App/Views/base.php');

$title = 'Reset password';

?>

<h1>Reset password</h1>

<form method="post" id="formPassword" action="/password/reset-password">
    <input type="hidden" name="token" value="{{ token }}"/>
    <div class="form-group">
        <label for="inputPassword">Password</label>
        <input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password" required/>
    </div>
    <button type="submit" class="btn btn-default">Reset password</button>
</form>
