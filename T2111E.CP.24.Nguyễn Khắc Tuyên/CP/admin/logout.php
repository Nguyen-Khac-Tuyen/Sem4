<?php
session_start();

unset($_SESSION["user"]);
unset($_SESSION["pass"]);
unset($_SESSION["logined"]);

header("location: index.php");
?>