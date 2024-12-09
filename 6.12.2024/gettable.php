<!DOCTYPE html>
<html>
<head>
	<title>STUDENT LIST</title>
</head>
<body>

	<?php
//get the db connection file

require_once 'conf/dbconf.php'; 
require_once 'fun/myfunc.php';

//PrintTable ("student",$connect);
student($connect);

?>



</body>
</html>