<?php
include 'dbcon.php';
session_start();
$val=$_SESSION['uid'];
$name=$_POST['name'];
$categ=$_POST['category'];
$ecode=$_POST['examcode'];
$qcode=$_POST['questioncode'];
$mark=$_POST['mark'];
$aid=$_POST['aid'];
$uid=$_POST['uid'];
$dt=date('Y-m-d');
$sql=mysqli_query($conn,"insert into res_ult(Name,Category,Examcode,Questioncode,Mark,aid,uid,dte,eid)values('$name','$categ','$ecode','$qcode','$mark','$aid','$uid','$dt','$val')");
echo "<script>alert('Successfully Submitted');window.location='testerhome.php';</script>";
?>