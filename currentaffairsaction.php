<?php
include 'dbcon.php';
$cat=$_POST['category'];
$det=$_POST['details'];
$sql=mysqli_query($conn,"insert into current_affairs(Category,Details)values('$cat','$det')");
echo "<script>alert('Successfully Submitted');window.location='testerhome.php';</script>";
?>