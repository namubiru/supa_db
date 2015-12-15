<?php
//connection to the database
$con = mysql_connect("localhost","root","");

// connection to the server

mysql_select_db("suppa_db", $con);

//values
$m = $_POST['ID'];
$a = $_POST['ITEM_NAME'];
$b = $_POST['EXPIRY_DATE'];
$c = $_POST['BATCH_NUMBER'];
$d = $_POST['SUPPLIER_NAME'];

$sql= "insert into itemmaster (ID, ITEM_NAME, EXPIRY_DATE, BATCH_NUMBER, SUPPLIER_NAME) values('$m', '$a', '$b', '$c', '$c', '$d')";

$result = mysql_query($sql);

if(result){
echo "<h1 align='center'><font color='blue'>congratulations miss josephine, no php in second semister. SUCCESS </font></h1>";
}
else{
echo"<h1 align='center'><font color='red'> u might repeat php next yeah, pull up ur socks. failure</font></h1>";
}
?>



