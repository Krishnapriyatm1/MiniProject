<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        th,td,tr
        {
            padding-left: 30px;
            padding-right: 40px;
            padding-top: 30px;
            padding-bottom: 30px;
            font-size: medium;
            font-weight: bold;
            font-family: 'Times New Roman', Times, serif;
        }
    </style>
</head>
<body>
    <table border="2">
        <tr>
            <th>Id</th>
            <th>Student Name</th>
            <th>Category</th>
            <th>Exam Code</th>
            <th>Question Code</th>
            <th>Mark</th>
            <th>ACTION</th>
        </tr>
        <?php
        include 'dbcon.php';
        $stu=mysqli_query($conn,"select * from res_ult");
        while($a=mysqli_fetch_array($stu))
        {
            ?>
            <tr>
                <td> <?php echo $a['id']; ?> </td>
                <td> <?php echo $a['Name']; ?> </td>
                <td> <?php echo $a['category']; ?> </td>
                <td> <?php echo $a['examcode']; ?> </td>
                <td> <?php echo $a['questioncode']; ?> </td>
                <td> <?php echo $a['mark']; ?> </td>
                <td><a href="resultdelete.php?id=<?php echo $a['id'];?>">Delete</a></td>
            </tr>
            <?php
        }
        ?>
    </table>
</body>
</html>