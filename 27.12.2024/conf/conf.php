<?php
define('SERVER', '127.0.0.1:3306');
define('USERNAME', 'root');
define('PASSWORD', 'mariadb');
define('DB', 'uovlib');
$conn = mysqli_connect(SERVER,USERNAME,PASSWORD,DB);

	if ($conn) {
		//echo "Databases connected successfuly";
	}
	else{
		die("Connection failed ".mysqli_connect_error());
	}

?>