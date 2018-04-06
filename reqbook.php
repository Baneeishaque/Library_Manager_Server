<?php
include_once 'config.php';
$title=$_POST['title'];
$author=$_POST['author'];
$volume=$_POST['volume'];
$userid=$_POST['userid'];

$sql = "INSERT INTO `bookrqst`(`Author`, `bookname`, `volume`, `requestdate`, `userid`) VALUES ('".$author."','".$title."','".$volume."','".date("Y-m-d")."','".$userid."')";

if ($con->query($sql)) {
	echo "OK";
}
else
{
	echo "Not OK";
}
