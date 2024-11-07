<?php
header('Content-Type: application/json');
header("Access-Control-Allow-Origin: *");

include "db.php";

$id = (int) $_GET['id'];

if($id>1000)
{
    header("HTTP/1.1 500 Internal Server Error");
    include("./error-500.php");
    die();
}

$stmt = $db->prepare("SELECT AttractionName, City,Description,Image,Rating FROM attractions WHERE AttractionID = ?");
$stmt->execute([$id]);
$result = $stmt->fetch(PDO::FETCH_ASSOC);


if($result==false){

    header("HTTP/1.0 404 Not Found");
    die();
}

$name = $_POST['AttractionName'];
$city = $_POST['City'];
$des = $_POST['Description'];
$img = $_POST['Image'];
$rate = (int) $_POST['Rating'];

$stmt = $db->prepare("UPDATE attractions SET AttractionName = ?, City = ?,Description = ?,Image = ?,Rating = ? WHERE AttractionID = ?");
$result =  $stmt->execute([$name, $city, $des, $img, $rate, $id]);


echo json_encode([
'success' => $result
]);