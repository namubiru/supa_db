<?php
//connection to the database
$con = mysql_connect("localhost","root","");

// connection to the server

mysql_select_db("super_db", $con);

//values
$mmm = $_POST['ID'];
$aaa = $_POST['FIRST_NAME'];
$bbb = $_POST['LAST_NAME'];
$ccc = $_POST['DATE'];



$sql= "insert into issued_report (ID, FIRST_NAME, LAST_NAME , DATE ) values('$mmm', '$aaa', '$bbb', '$ccc', '$eee')";

$result = mysql_query($sql);

if(result){
echo "<h1 align='center'><font color='blue'>congratulations miss josephine, no php in second semister. SUCCESS </font></h1>";
}
else{
echo"<h1 align='center'><font color='red'> u might repeat php next yeah, pull up ur socks. failure</font></h1>";
}
?>



