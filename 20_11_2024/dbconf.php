<?php
// dbconf.php

$host = getenv('DB_HOST') ?: 'db';  // Default to 'db' if DB_HOST is not set
$dbname = getenv('DB_NAME') ?: 'students';
$user = getenv('DB_USER') ?: 'root';
$pass = getenv('DB_PASS') ?: 'mariadb';

// Create a connection using mysqli
$connect = mysqli_connect($host, $user, $pass, $dbname);

// Check for connection errors
if (!$connect) {
    die("Database connection failed: " . mysqli_connect_error());
}

// Connection was successful
echo "Database connection successful.";
?>
