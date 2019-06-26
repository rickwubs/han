<?php require_once('../App/Views/base.php');

$title = 'Forgot password';

?>


<h1>Request password reset</h1>
<form method="post" action="/password/request-reset">
    <div class="form-group">
        <label for="inputEmail">Email address</label>
        <input type="email" id="inputEmail" class="form-control" name="email" placeholder="Email address" autofocus
               required/>
    </div>
    <button type="submit" class="btn btn-default">Send password reset</button>
</form>
