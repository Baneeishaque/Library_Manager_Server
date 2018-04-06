<?php
include_once 'config.php';
$id=$_GET['bookid'];
$user=$_GET['userid'];
$sql = "UPDATE `book` SET Status='Loaned',`Issuedto`='".$user."' WHERE `bkid`='".$id."'";

if ($con->query($sql)) {
	$sql = "insert into bookreport(Bkid,Userid,Issuedate,Returndate,Process)values('".$id."','".$user."','".date("Y-m-d")."',DATE_ADD('".date("Y-m-d")."',INTERVAL 14 DAY),'Issue')";
	if ($con->query($sql)) {
		$sql = "update user set bookinhand='1' where usrid='".$user."'";
		if ($con->query($sql)) {
			echo date('Y-m-d', strtotime("+14 days"));
		}
		else
		{
			echo "Oops.. Issue Unsuccessful";
		}
	}
	else
	{
		echo "Oops.. Issue Unsuccessful";
	}
}	
else
{
	echo "Oops.. Issue Unsuccessful";
}
