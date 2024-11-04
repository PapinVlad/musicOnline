<?php 
include '../../config/config.php';

$aid = $_GET['aid'];

$unpublish = $conn->prepare("UPDATE
album
SET
is_active = 0
WHERE id = $aid
");

$unpublish->execute();

header("Location: ../../pending");