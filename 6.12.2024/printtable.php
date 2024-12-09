
<!DOCTYPE html>
<html>
<head>
    <title>printtable</title>
</head>
<body>
   
<?php

 //echo "Employee";

require_once 'conf/dbconf.php'; 
require_once 'fun/myfunc.php';


 
 $regno = $_GET['regno'];

 studentdetails($regno,$connect);


?>


</body>
</html>
