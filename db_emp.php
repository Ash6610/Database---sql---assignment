<?php
    $con = mysqli_connect("localhost","root","","EMP_DB" );

    if(!$con){
        die('Could not connect'.mysql_error());
    }else{
        echo 'Connection Established Successfully.....';
        echo nl2br("\n");

        $sql = "INSERT INTO emp_dept(EMP_DEPT,DEPT_TYPE,EMP_DEPT_NO)
        VALUES 
        ('$_POST[emp_dept]',
        '$_POST[dept_type]',
        '$_POST[emp_dept_no]')";
 }
    if(!mysqli_query($con,$sql)){
        die('Error'.mysqli_error());
    }else{
        echo 'your record added successfully...';
    }
    mysqli_close($con);
?> 
