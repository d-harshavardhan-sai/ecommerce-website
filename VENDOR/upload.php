<?php

session_start();
print_r($_POST);

echo "<br>";

print_r($_FILES['pdtimg']);

$source=$_FILES['pdtimg']['tmp_name'];
$dest="../SHARED/images/".$_FILES['pdtimg']['name'];

echo "<br>";
echo $dest;

move_uploaded_file($source,$dest);

include "../SHARED/connection.php";

$status=mysqli_query($conn,"insert into product(name,price,detail,impath,owner) values('$_POST[name]',$_POST[price],'$_POST[detail]','$dest',$_SESSION[userid])");

if($status){
    echo "Product Uploaded Successfully!";
}
else{
    echo mysqli_error($conn);
}
?>