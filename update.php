<?php
include ("connection.php");


$strquery="UPDATE std_details_tbl SET customer_name= '" . $_GET['cn'] . "', location= '".  $_GET['location'] "', email= '".  $_GET['email'] ."' WHERE id='". $_GET['id'] ."' ";
$results=mysql_query ($strquery);

header ('location:index.php'); 

?>
>
