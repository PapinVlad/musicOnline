<?php

$hn = 'localhost';
$un = 'music_admin_new';
$pw = 'GudITy[B9-U/c131';
$db = 'musiconlinenew';

$conn = new mysqli($hn, $un, $pw, $db);

if($conn->connect_error){
    die("connection failed: " . $db->connect_error);
}
 else{
    //echo "connection successful";
} 

?>