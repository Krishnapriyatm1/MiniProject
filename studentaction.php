<?php
include 'dbcon.php';
$n=$_POST['name'];
$e=$_POST['email'];
$c=$_POST['cno'];
$u=$_POST['username'];
$p=$_POST['password'];
$cp=$_POST['cpassword'];
if($p==$cp)
{
$sql=mysqli_query($conn,"insert into student(Name,Email,CNO)values('$n','$e','$c')");
$sq=mysqli_query($conn,"select max(id) as id from student");
$row=mysqli_fetch_array($sq);
$uid=$row['id'];
$q=mysqli_query($conn,"insert into login(uid,username,password,usertype)values('$uid','$u','$p','Student')");
echo "<script>alert('Successfully Submitted');window.location='index.html';</script>";
}
else
{
    echo "<script>alert('Password and Confirm Password doesnot match');window.location='index.html';</script>"; 
}
?>