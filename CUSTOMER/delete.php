<?php

$cartid=$_GET['cartid'];


include "../SHARED/connection.php";

$sql_result=mysqli_query($conn,"delete from cart where cartid=$cartid");

if($sql_result){
    header("location:viewcart.php");
}
else{
    echo "Failed to Delete";
    echo mysqli_error($conn);
}
?>