<?php
include 'dbcon.php';
$ca=$_POST['category'];
$sql=mysqli_query($conn,"insert into category(Category)values('$ca')");
echo "<script>alert('Successfully Submitted');window.location='adminhome.php';</script>";
?>