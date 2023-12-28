<?php
include 'dbcon.php';
$id=$_GET['id'];
$sql=mysqli_query($conn,"delete from category where id='$id'");
echo "<script>alert('Deleted');window.location='categoryview.php';</script>";
?>