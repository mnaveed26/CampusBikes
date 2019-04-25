<?php
 
define('DB_NAME', 'bikeshop');
define('DB_USER', 'root');
define('DB_PASSWORD', '');
define('DB_HOST', 'localhost');

$link = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

if(mysqli_connect_errno($link)){
	echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

?>