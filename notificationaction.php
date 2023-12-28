<?php
include 'dbcon.php';
$dat=$_POST['date'];
$tim=$_POST['time'];
$det=$_POST['details'];
$sql=mysqli_query($conn,"insert into notification(Date,Time,Details)values('$dat','$tim','$det')");
echo "<script>alert('Successfully Submitted');window.location='adminhome.php';</script>";
?>