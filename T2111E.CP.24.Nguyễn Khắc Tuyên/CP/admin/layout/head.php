<?php
session_start();
if(!isset($_SESSION["logined"])){
    header('location: index.php');
}
?>