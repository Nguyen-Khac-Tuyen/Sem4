<?php

function ConnectDB()
{
    $conn = NULL;
    try
    {
    $conn = new PDO("mysql:host=localhost;dbname=demo","root","");
    $conn->query("SET NAMES UTF8");
    }
    catch(PDOException $ex)
    {
        echo "<p>" . $ex->getMessage() . "</p>";
    }
    return $conn;
}