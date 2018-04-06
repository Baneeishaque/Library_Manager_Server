<?php
include_once 'config.php';

$sql = "SELECT `bkid`, `title`, `author` FROM `book`";
$result = $con->query($sql);
$emptyarray = array();
while ($row = mysqli_fetch_assoc($result)) {
	$emptyarray[] = $row;
}
echo json_encode($emptyarray);
