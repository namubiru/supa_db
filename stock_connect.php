<?php
//connection to the database
$con = mysql_connect("localhost","root","");

// connection to the server

mysql_select_db("super_db", $con);

//values
$mmmm = $_POST['id'];
$aaaa = $_POST['supplier_name'];
$bbbb = $_POST['quantity'];
$cccc = $_POST['date'];



$sql= "insert into stock (id,supplier_name ,quantity ,date  ) values('$mmmm', '$aaaa', '$bbbb', '$cccc')";

$result = mysql_query($sql);

if(result){
echo "<h1 align='center'><font color='blue'>congratulations miss josephine, no php in second semister. SUCCESS </font></h1>";
}
else{
echo"<h1 align='center'><font color='red'> u might repeat php next yeah, pull up ur socks. failure</font></h1>";
}
?>



