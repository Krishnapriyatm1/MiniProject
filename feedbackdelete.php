<?php
include 'dbcon.php';
$id=$_GET['id'];
$sql=mysqli_query($conn,"delete from feedback where id='$id'");
echo "<script>alert('Deleted');window.location='feedbackview.php';</script>";
?>