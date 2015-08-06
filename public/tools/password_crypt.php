<?php
$password = !empty($_GET['password']) ? $_GET['password'] : 'azerty';

$crypted_password = password_hash($password, PASSWORD_BCRYPT);

echo $crypted_password;