<?php

session_start();

$_SESSION['login_status'] = false;

$uname = $_POST['uname'];
$upass = $_POST['upass'];

include "../SHARED/connection.php";

$sql_result = mysqli_query($conn, "select * from user where username='$uname' and password='$upass'");

$no_of_rows = mysqli_num_rows($sql_result);

if ($no_of_rows == 0) {
    echo "Invalid Credentials";
    die;
}

echo "Login Success";
$dbrow = mysqli_fetch_assoc($sql_result);
$_SESSION['login_status'] = true;
$_SESSION['usertype'] = $dbrow['usertype'];
$_SESSION['username'] = $dbrow['username'];
$_SESSION['userid'] = $dbrow['userid'];


if ($dbrow['usertype'] == 'Vendor') {
    header("location:../VENDOR/home.php");
} else if ($dbrow['usertype'] == 'Customer') {
    header("location:../CUSTOMER/home.php");
}

?>