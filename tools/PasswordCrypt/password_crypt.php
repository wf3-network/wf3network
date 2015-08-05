<?php
$password = !empty($_GET['password']) ? $_GET['password'] : '123456';

$crypted_password = password_hash($password, PASSWORD_BCRYPT);

echo $crypted_password;