<?php
//connection to the database
$con = mysql_connect("localhost","root","");

// connection to the server

mysql_select_db("super_db", $con);

//values
$mmmmm = $_POST['ID'];
$aaaaa = $_POST['admin_name'];
$bbbbb = $_POST['terms_of_pay'];
$ccccc = $_POST['date_of_purchase'];


$sql= "insert into purchaser (ID, admin_name,terms_of_pay ,date_of_purchase  ) values('$mmmmm', '$aaaaa', '$bbbbb', '$ccccc')";

$result = mysql_query($sql);

if(result){
echo "<h1 align='center'><font color='blue'>congratulations miss josephine, no php in second semister. SUCCESS </font></h1>";
}
else{
echo"<h1 align='center'><font color='red'> u might repeat php next yeah, pull up ur socks. failure</font></h1>";
}
?>



