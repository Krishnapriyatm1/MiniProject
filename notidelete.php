<?php
include 'dbcon.php';
$id=$_GET['id'];
$sql=mysqli_query($conn,"delete from notification where id='$id'");
echo "<script>alert('Deleted');window.location='notiview.php';</script>";
?>