<?php
include "authguard.php";
include "../SHARED/connection.php";

$pid = $_POST['pid'];
$name = $_POST['name'];
$price = $_POST['price'];
$detail = $_POST['detail'];

if ($_FILES['pdtimg']['name']) {
    $source = $_FILES['pdtimg']['tmp_name'];
    $dest = "../SHARED/images/" . $_FILES['pdtimg']['name'];
    move_uploaded_file($source, $dest);
    $sql_update = "UPDATE product SET name='$name', price=$price, detail='$detail', impath='$dest' WHERE pid=$pid";
} else {
    $sql_update = "UPDATE product SET name='$name', price=$price, detail='$detail' WHERE pid=$pid";
}

$status = mysqli_query($conn, $sql_update);

if ($status) {
    header("location:view.php");
} else {
    echo mysqli_error($conn);
}
?>
