<?php
//connection to the database
$con = mysql_connect("localhost","root","");

// connection to the server

mysql_select_db("super_db", $con);

//values
$mm = $_POST['ID'];
$aa = $_POST['SUPPLIER_NAME'];
$bb = $_POST['DATE_OF_ARRIVAL'];
$cc = $_POST['TERMS'];
$ee = $_POST['ANY_COMPLAINTS'];


$sql= "insert into arrival_report (ID, SUPPLIER_NAME, DATE_OF_ARRIVAL, TERMS ,ANY_COMPLAINTS ) values('$mm', '$aa', '$bb', '$cc', '$ee')";

$result = mysql_query($sql);

if(result){
echo "<h1 align='center'><font color='blue'>congratulations miss josephine, no php in second semister. SUCCESS </font></h1>";
}
else{
echo"<h1 align='center'><font color='red'> u might repeat php next yeah, pull up ur socks. failure</font></h1>";
}
?>



