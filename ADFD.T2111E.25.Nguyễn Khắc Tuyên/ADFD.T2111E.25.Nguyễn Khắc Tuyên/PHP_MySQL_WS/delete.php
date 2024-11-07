<?php
header('Content-Type: application/json');
header("Access-Control-Allow-Origin: *");

include "db.php";

$id = (int) $_POST['AttractionID'];
$stmt = $db->prepare("DELETE FROM attractions WHERE AttractionID = ?");
$result = $stmt->execute([$id]);

echo json_encode([
'id' => $id,
'success' => $result
]);