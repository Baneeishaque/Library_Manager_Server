<?php
include_once 'config.php';
$oldpass = $_POST['oldpass'];
$newpass = $_POST['newpass'];
$userid=$_POST['userid'];

$sql = "SELECT `usrid` FROM `user` WHERE usrid='$userid' and password='$oldpass'";
$result = $con->query($sql);
if(mysqli_num_rows($result)>0)
{
	$sql="UPDATE `user` SET `password`='$newpass' WHERE `usrid`='$userid'";
	if ($con->query($sql)) {
		echo "Success";
	}
	else
	{
		echo "Error...";
	}
}
else
{
	echo "Invalid Old Passcode...";
}