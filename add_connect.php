<?php
//connection to the databse
$slau = mysql_connect("localhost", "root", "")or die("<h1 align='center'>Sorry You cannot connect to the Server</br></h1><h2 align='center'>Contact Server Admin--info@slau.ac.ug</h2>");
mysql_select_db("supa_db", $slau)or die("<h1 align='center'>Cannot connect to mysql Database</h1>");

//studnt table

$w = $_POST['id'];
$o = $_POST['cn'];
$y = $_POST['location'];
$z = $_POST['email'];


$sql = "insert add_customer(id, cn, location, email ) values( '$w', '$o','$y', '$z')";
$done= mysql_query($sql);
if($done){

echo "Successful <a href='home.php'>Register Again</a><h1 align='center'>Successful</h1>";
}else{

echo "Error...Try Again ";
}

?>