<?php
include 'dbcon.php';
$id=$_GET['id'];
$sql=mysqli_query($conn,"delete from tester_details where id='$id'");
echo "<script>alert('Deleted');window.location='testerview.php';</script>";
?>