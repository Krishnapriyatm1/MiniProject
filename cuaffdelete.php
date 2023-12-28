<?php
include 'dbcon.php';
$id=$_GET['id'];
$sql=mysqli_query($conn,"delete from current_affairs where id='$id'");
echo "<script>alert('Deleted');window.location='currentaffview.php';</script>";
?>