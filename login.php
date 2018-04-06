<?php
include_once 'config.php';
$username = $_POST['user_name'];
$password = $_POST['password'];
$sql = "SELECT `usrid` FROM `user` WHERE usrid='$username' and password='$password'";
$result = $con->query($sql);
if(mysqli_num_rows($result)>0)
{
	echo "Success";
}
else
{
	echo "Error";
}