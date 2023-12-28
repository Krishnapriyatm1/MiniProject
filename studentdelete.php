<?php
include 'dbcon.php';
$id=$_GET['id'];
$sql=mysqli_query($conn,"delete from student where id='$id'");
echo "<script>alert('Deleted');window.location='studentview.php';</script>";
?>