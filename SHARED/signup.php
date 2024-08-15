<?php

if(!isset($_POST['uname']) || !isset($_POST['upass1']))
{
    echo "Missing params";
    die;
}

include "../SHARED/connection.php";

$status=mysqli_query($conn,"insert into user(username,password,usertype) values('$_POST[uname]','$_POST[upass1]','$_POST[usertype]')");

if($status){
    echo "Registration Successfull";
}
else{
    echo mysqli_error($conn);
}

?>