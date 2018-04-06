<?php
include_once 'config.php';
$username = $_POST['user_name'];
$sql = "SELECT `name` FROM `user` WHERE usrid='$username'";
$result = $con->query($sql);
$row = mysqli_fetch_assoc($result);
echo $row['name'];