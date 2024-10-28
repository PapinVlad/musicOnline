<?php

$url = isset($_GET['url']) ? rtrim($_GET['url'], '/') : '';

$routes = [
'' => 'public/index.php',
'vinyl' => 'public/vinyl.php',
'registration' => 'public/register/index.php',
'register' => 'public/register/register.php',
'login' => 'public/login/index.php',
'admin' => 'public/admin/index.php',
'user' => 'public/user/index.php',
'moreinfo' => 'public/user/moreInfo.php',
'artist' => 'public/user/artistInfo.php',



'authenticate' => 'public/login/authenticate.php',
'logout' => 'public/logout.php',
'404error' => '/404.php',

];

if(array_key_exists($url, $routes)){
    require $routes[$url];
}