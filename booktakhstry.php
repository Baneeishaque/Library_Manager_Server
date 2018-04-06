<?php
include_once 'config.php';
$id=$_GET['ID'];
$sql = "SELECT `bkid`, `issuedate`, `returndate`, `process` FROM `bookreport` WHERE `userid`='".$id."'";
$result = $con->query($sql);
$emptyarray = array();
while ($row = mysqli_fetch_assoc($result)) {
	$emptyarray[] = $row;
}
echo json_encode($emptyarray);
