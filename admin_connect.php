<?php
//connection to the databse

$slau = mysql_connect("localhost", "root", "")or die("<h1 align='center'>Sorry You cannot connect to the Server</br></h1><h2 align='center'>Contact Server Admin--info@slau.ac.ug</h2>");
mysql_select_db("supa_db", $slau)or die("<h1 align='center'>Cannot connect to mysql Database</h1>");

//studnt table

$uu = $_POST['id'];
$nn = $_POST['uname'];
$oo = $_POST['email'];
$pp = $_POST['pasword'];


$sql = "insert into admin(id, uname, email, pasword) values( '$uu', '$nn','$oo', '$pp')";
$done= mysql_query($sql);
if($done){

echo "Successful <a href='home.php'>bach to home page</a>";
}else{

echo "Error...Try Again ";
}
?>