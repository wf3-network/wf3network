<?php

define('HOST', '46.226.110.248');
define('USER', 'webaccess');
define('PASS', 'ihhnlmda');
define('DB', 'wf3network');

try {

    global $db;
    $db_options = array(
            PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8",
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING
    );

    $db = new PDO('mysql:host='.HOST.';dbname='.DB.'', USER, PASS, $db_options);

} catch (Exception $e) {
    exit('MySQL Connect Error >> '.$e->getMessage());
}

$query = $db->prepare('SELECT * FROM profile');
$query->execute();
$test = $query->fetchAll();

echo '<pre>';
print_r($test);
echo '</pre>';

