<?php
//connection to the databse

$slau = mysql_connect("localhost", "root", "")or die("<h1 align='center'>Sorry You cannot connect to the Server</br></h1><h2 align='center'>Contact Server Admin--info@slau.ac.ug</h2>");
mysql_select_db("supa_db", $slau)or die("<h1 align='center'>Cannot connect to mysql Database</h1>");

//studnt table

$xyz = $_POST['id'];
$ss = $_POST['scode'];
$tt = $_POST['sname'];
$qq = $_POST['country'];
$ff = $_POST['city'];
$ii = $_POST['pin'];



$sql = "insert into supplier(id, scode, sname, country, city, pin ) values( '$xyz', '$ss','$tt', '$qq', '$ff' '$ii')";
$done= mysql_query($sql);
if($done){

echo "Successful <a href='home.php'>back to home page</a>";
}else{

echo "Error...Try Again ";
}
?>