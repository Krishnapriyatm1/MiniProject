<?php
include 'dbcon.php';
$id=$_GET['id'];
$sql=mysqli_query($conn,"delete from res_ult where id='$id'");
echo "<script>alert('Deleted');window.location='resultview.php';</script>";
?>