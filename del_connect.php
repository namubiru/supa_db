<?php
//connection to the server

$con = mysql_connect("localhost","root","") or die("can not connect to local host");


//connection to the database
mysql_select_db("supa_db",$con);


//inserting fields
//$o = $_POST['id'];
$p = $_POST['customer_id'];
$q = $_POST['customer_name'];
$r = $_POST['address'];
$s = $_POST['pin_code'];

//inserting fields in the table from the db

$sql = "insert into del_customer( customer_id , customer_name, address, pin_code ) VALUES('$p','$q','$r','$s',)";

$result = mysql_query($sql);
if($result)
{
echo "<h1 align='center'><font color='red'>successfully added into the database go get urself a drink</font></h1>";
}
else
{
echo "<h1 align='center'><font color='red'>Oooooops!!!!!!!!!! Please style up</font></h1>";
}




?>