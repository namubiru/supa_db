<?php
//connection to the server

$con = mysql_connect("localhost","root","") or die("can not connect to local host");


//connection to the database
mysql_select_db("supa_db",$con);


//inserting fields

$id = $_POST['id'];
$b = $_POST['SUPPLIER_NAME'];
$c = $_POST['QUANTITY'];
$d = $_POST['LOCATION'];
$e = $_POST['DATE_OF_DELIVERY'];
$f = $_POST['PAYMENT_TERM'];

//inserting fields in the table from the db

$sql = "insert into material(id, SUPPLIER_NAME, QUANTITY, LOCATION, DATE_OF_DELIVERY, PAYMENT_TERM) values('$id','$b','$c','$d','$e','$f')";

$result = mysql_query($sql);

$query2 = "SELECT * FROM  material ";

$result = mysqli_query($sql, $query2);

$row = mysqli_fetch_array($result);


mysql_close($sql);
if($result)
{
echo "<h1 align='center'><font color='red'>YOUR CHANCES OF REPEATING THIS CORSE ARE VERY LIMITED. CONGRATULATIONS MISS JOSEPHINE.</font></h1>";
}
else
{
echo "YOUR CHANCES OF REPEATING THIS COURSE NEXT YEAR ARE VERY HIGH, 110% FAIRURE";
}

?>