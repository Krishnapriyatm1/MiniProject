<?php
include 'dbcon.php';
$names=$_POST['name'];
$category=$_POST['category'];
$contact=$_POST['contact'];
$email=$_POST['email'];
$username=$_POST['username'];
$password=$_POST['password'];
$sql=mysqli_query($conn,"insert into tester_details(Name,Category,Contact,Email)values('$names','$category','$contact','$email')");
$sq=mysqli_query($conn,"select max(id) as id from tester_details");
$row=mysqli_fetch_array($sq);
$uid=$row['id'];
$q=mysqli_query($conn,"insert into login(uid,username,password,usertype)values('$uid','$username','$password','Tester')");
echo "<script>alert('Successfully Submitted');window.location='adminhome.php';</script>";
?>