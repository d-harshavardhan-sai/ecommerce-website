<?php

$pid=$_GET['pid'];

echo "Received Id=$pid";

include "../SHARED/connection.php";

$sql_result=mysqli_query($conn,"delete from product where pid=$pid");

if($sql_result){
    header("location:view.php");
}
else{
    echo "Failed to Delete";
    echo mysqli_error($conn);
}
?>