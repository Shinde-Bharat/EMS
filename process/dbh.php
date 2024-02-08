<?php

$servername = "localhost";
$dBUsername = "root";
$dbPassword = "password";
$dBName = "EMS_Project";

$conn = mysqli_connect($servername, $dBUsername, $dbPassword, $dBName);

if(!$conn){
	echo "Databese Connection Failed";
}

?>