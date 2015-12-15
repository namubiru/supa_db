<?php
//connection to the server

$con = mysql_connect("localhost","root","") or die("can not connect to local host");


//connection to the database
mysql_select_db("supa_db",$con);


//inserting fields
$id = $_POST['id'];
$b = $_POST['fname'];
$c = $_POST['lname'];
$d = $_POST['location'];
$e = $_POST['i_n'];
$f = $_POST['quantity'];

//inserting fields in the table from the db

$sql = "insert into shop(id, fname, fname, location, i_n, quantity) VALUES('$id','$b','$c','$d','$e','$f')";

$result = mysql_query($sql);
if($result)
{
echo "<h1 align='center'><font color='red'>successfully added, am a superstar</font></h1>";
}
else
{
echo "<h1 align='center'><font color='red'>Oooooops!!!!!!!!!! u might repeat php next year. pull up ur socks</font></h1>";
}

?>