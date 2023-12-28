<?php
include 'dbcon.php';
session_start();
$val=$_SESSION['uid'];
$q=mysqli_query($conn,"select * from student where id='$val'");
$rw=mysqli_fetch_array($q);
$n=$rw['Name'];
$d=date('Y-m-d');
$o1=$_POST['o1'];
$o2=$_POST['o2'];
$o3=$_POST['o3'];
$o4=$_POST['o4'];
$o5=$_POST['o5'];
$o6=$_POST['o6'];
$o7=$_POST['o7'];
$o8=$_POST['o8'];
$o9=$_POST['o9'];
$o10=$_POST['o10'];
$id=$_POST['qid'];
$code=$_POST['code'];
$qcode=$_POST['qcode'];
$tmk=$_POST['tmark'];
$sql=mysqli_query($conn,"insert into ans(uid,dte,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,qid,qcode,code,tmark,sname)values('$val','$d','$o1','$o2','$o3','$o4','$o5','$o6','$o7','$o8','$o9','$o10','$id','$qcode','$code','$tmk','$n')");
echo "<script>alert('Added');window.location='studenthome.php';</script>";
?>