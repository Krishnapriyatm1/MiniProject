<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        th,td,tr
        {
            padding-left: 100px;
            padding-right: 50px;
            padding-top: 30px;
            padding-bottom: 30px;
            font-size: medium;
            font-weight: bold;
            font-family: 'Times New Roman', Times, serif;
            background-color: skyblue;
        }
    </style>
</head>
<body>
    <table border="2">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Feedback</th>
            <th>Date</th>
            <th>ACTION</th>
        
        </tr>
        <?php
        include 'dbcon.php';
        $stu=mysqli_query($conn,"select * from feedback");
        while($a=mysqli_fetch_array($stu))
        {
            ?>
            <tr>
                <td> <?php echo $a['id']; ?> </td>
                <td> <?php echo $a['Name']; ?> </td>
                <td> <?php echo $a['Feedback']; ?> </td>
                <td> <?php echo $a['Date']; ?> </td>
                <td><a href="feedbackdelete.php?id=<?php echo $a['id'];?>">Delete</a></td>
            
            </tr>
            <?php
        }
        ?>
    </table>
</body>
</html>