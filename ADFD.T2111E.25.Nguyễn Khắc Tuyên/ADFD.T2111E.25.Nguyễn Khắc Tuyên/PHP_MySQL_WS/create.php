<?php
header('Content-Type: application/json');
header("Access-Control-Allow-Origin: *");

include "db.php";


$name = $_POST['AttractionName'];
$city = $_POST['City'];
$des = $_POST['Description'];
$img = $_POST['Image'];
$rate = (int) $_POST['Rating'];

$stmt = $db->prepare("INSERT INTO attractions (AttractionName, City,Description,Image,Rating) VALUES (?, ?, ?, ?, ?)");
$result = $stmt->execute([$name,$city,$des,$img,$rate]);

echo json_encode([
'success' => $result
]);