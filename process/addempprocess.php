<?php

require_once ('dbh.php');

$firstname = $_POST['firstName'];
$lastName = $_POST['lastName'];
$email = $_POST['email'];
$contact = $_POST['contact'];
$address = $_POST['address'];
$gender = $_POST['gender'];
$dept = $_POST['dept'];
$degree = $_POST['degree'];
$salary = $_POST['salary'];
$birthday =$_POST['birthday'];

//echo "$gender";

$sql = "INSERT INTO `employee` (`firstName`, `lastName`, `email`, `birthday`, `gender`, 
`contact`, `address`, `dept`, `degree`, `salary`) VALUES ('$firstname','$lastName','$email',
'$birthday','$gender','$contact','$address','$dept','$degree',$salary)";

$result = mysqli_query($conn, $sql);
if(($result) == 1){
    
    echo ("<SCRIPT LANGUAGE='JavaScript'>
    window.alert('Succesfully Registered')
    window.location.href='..//viewemp.php';
    </SCRIPT>");
    //header("Location: ..//aloginwel.php");
}

else{
    echo ("<SCRIPT LANGUAGE='JavaScript'>
    window.alert($sql)
    window.location.href='javascript:history.go(-1)';
    </SCRIPT>");
}
?>