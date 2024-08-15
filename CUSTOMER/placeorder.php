<?php

$addr=$_POST['address'];
$total=$_POST['total'];

include "authguard.php";
include "../SHARED/connection.php";

$sql_result=mysqli_query($conn,"insert into orders(username,userid,address,total_amount) values('$_SESSION[username]',$_SESSION[userid],'$addr',$total)");

$orderid = $conn->insert_id;

$sql_result=mysqli_query($conn,"select * from cart join product on cart.pid=product.pid where userid=$_SESSION[userid]");

while($dbrow=mysqli_fetch_assoc($sql_result)){
    $insert_status=mysqli_query($conn,"insert into order_details(orderid,pid,name,price,details,impath,owner) values($orderid,$dbrow[pid],'$dbrow[name]',$dbrow[price],'$dbrow[detail]','$dbrow[impath]',$dbrow[owner])");
    if(!$insert_status){
        echo mysqli_error($conn);
    }
}


//Create Entry in Orders Table 
//Get the inserted ID
//Loop the Cart items insert into order detail Table with the Orderid

?>