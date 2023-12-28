<?php
include 'dbcon.php';
$u=$_POST['username'];
$p=$_POST['password'];
$k=mysqli_query($conn,"select * from login where username='$u' and password='$p' ");
$r=mysqli_fetch_array($k);
session_start();
if($r['usertype']=="admin")
{
    $_SESSION['uid']=$r['uid'];
    echo "<script>alert('Welcome Admin');window.location='adminhome.php';</script>";
}
else if($r['usertype']=="Student")
{
    $_SESSION['uid']=$r['uid'];
    echo "<script>alert('Welcome Student');window.location='studenthome.php';</script>";

}
else if($r['usertype']=='Tester')
{
    $_SESSION['uid']=$r['uid'];
    echo "<script>alert('Welcome Tester');window.location='testerhome.php';</script>";
}
else{
    echo "<script>alert('Invalid Username or Password');window.location='index.html';</script>";
}
?>