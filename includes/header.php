<?php
session_start();
//display PHP errors to make debugging easier
// Comment this out when you are finished with the website
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

define('ROOT_DIR', '/musicOnline/');
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Music Online</title>
    <link rel="stylesheet" href="<?= ROOT_DIR ?>assets/css/style.css">
</head>
<body>

 <?php include 'navigation.php'; ?>

 <form action="search" method="post">
    <input type="text" name="search" id="">
    <input type="submit" value="search">
 </form>
