<?php

include "authguard.php";
include "../SHARED/connection.php";

$pid=$_GET['pid'];

$sql_status=mysqli_query($conn,"insert into cart(userid,pid) values($_SESSION[userid],$pid)");

if($sql_status){
    header("location:home.php");
}
else{
    echo mysqli_error($conn);
}
?>