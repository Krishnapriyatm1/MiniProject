<?php
include 'dbcon.php';
$na=$_POST['name'];
$fe=$_POST['feedback'];
$da=$_POST['date'];
$sql=mysqli_query($conn,"insert into feedback(Name,Feedback,Date)values('$na','$fe','$da')");
echo "<script>alert('Successfully Submitted');window.location='studenthome.php';</script>";
?>