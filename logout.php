<?php
//Start the session
session_start();

include_once 'Server_connection.php';

if(isset($_SESSION['user'])!="")
{
 header("Location: home.php");
}
if(isset($_POST['btn-login']))
{
 $email = mysql_real_escape_string($_POST['email']);
 $upass = mysql_real_escape_string($_POST['pass']);
 $res=mysql_query("SELECT * FROM users WHERE email='$email'");
 $row=mysql_fetch_array($res);
 if($row['password']==md5($upass))
 {
  $_SESSION['user'] = $row['user_id'];
  header("Location: home.php");
 }
 else
 {
  ?>
        <script>alert('wrong details');</script>
        <?php
 }
 
}
?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>cleartuts - Login & Registration System</title>
<link rel="stylesheet" href="style.css" type="text/css" />
<style type="text/css">
<!--
.style2 {
	color: #0000FF;
	font-style: italic;
}
.style3 {color: #0000FF}
-->
</style>
</head>
<body>
<center>
<div id="main">
<h1 class="style2"> Logout happily</h1>
<div id="login">
  <h2 class="style3">thank you buh logout </h2>
<form method="post">
	<label>Email :</label>
<input id="name" type="text" name="email" placeholder="Your Email" required>

	<label>Password :</label>
<input id="password" type="password" name="pass" placeholder="Your Password" required>

	<input type="submit" name="btn-login" value=" Logout">
<center>
<a href="register.php">Sign Up</a>
</center>

  </form>
</div>
</body>
</html>
