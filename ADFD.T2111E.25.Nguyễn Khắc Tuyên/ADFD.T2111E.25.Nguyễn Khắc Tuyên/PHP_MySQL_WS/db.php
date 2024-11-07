<?php

$db_name = "tourist_attractions";
$db_server = "127.0.0.1";
$db_user = "root";
$db_pass = "";

//try{
    $db = new PDO("mysql:host={$db_server};dbname={$db_name};charset=utf8", $db_user, $db_pass);
    $db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
//     $sql = "CREATE DATABASE {$db_name}";
//     $db->exec($sql);
//     echo "Database created successfully with the name school";
//         }
// catch(PDOException $e)
//         {
//         echo $sql . "
//     " . $e->getMessage();
//         }
// $conn = null;
?>