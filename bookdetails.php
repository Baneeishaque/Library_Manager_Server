<?php
include_once 'config.php';
$id=$_GET['ID'];
$sql = "SELECT `bkid`, `title`, `author`, `number`, `status`, `description`, `volume`, `shelf`, `row`, `position`,`department` FROM `book` WHERE `bkid`='".$id."'";
$result = $con->query($sql);
$emptyarray = array();
while ($row = mysqli_fetch_assoc($result)) {
	$emptyarray[] = $row;
}
echo json_encode($emptyarray);
