<?php
header('Content-Type: application/json');
header("Access-Control-Allow-Origin: *");

include "db.php";

$stmt = $db->prepare("SELECT AttractionID, AttractionName FROM attractions");
$stmt->execute();
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($result);