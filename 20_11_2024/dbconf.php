<?php
//define('SERVERNAME','127.0.0.1:3306');
//define('USERNAME','root');
//define('PASSWORD','mariadb');
//define('DNAME','students');
$dbHost = getenv('DB_HOST');
$dbName = getenv('DB_NAME');
$dbUser = getenv('DB_USER');
$dbPass = getenv('DB_PASS');
//mysql -h $DB_HOST -u root -p and password is : mariadb

//connect with database
try{
//$connect=mysqli_connect(SERVERNAME,USERNAME,PASSWORD,DNAME);
$connect=mysqli_connect(DB_HOST,DB_USER,DB_PASS,DB_NAME);
    if(!$connect){
        die("connection failed".mysqli_connect_error());
    }
    else{
        echo "connectection successfully";
    }
}
catch (Exception $e){
    die($e->getMessage());
}
?>