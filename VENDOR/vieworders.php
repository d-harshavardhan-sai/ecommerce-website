<?php
include "authguard.php";
include "../SHARED/connection.php";

$vendor_id = $_SESSION['userid'];
$sql_orders = "
SELECT orders.orderid, orders.username, orders.total_amount, orders.address, orders.created_at
FROM orders
JOIN order_details ON orders.orderid = order_details.orderid
JOIN product ON order_details.pid = product.pid
WHERE product.owner = $vendor_id
GROUP BY orders.orderid
ORDER BY orders.created_at DESC";

$orders_result = mysqli_query($conn, $sql_orders);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <?php include "menu.html"; ?>
    <div class="container mt-5">
        <h3 class="text-center">Orders List</h3>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Order ID</th>
                    <th>Customer Name</th>
                    <th>Total Amount</th>
                    <th>Address</th>
                    <th>Date</th>
                    <th>View Details</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($order = mysqli_fetch_assoc($orders_result)) { ?>
                <tr>
                    <td><?php echo $order['orderid']; ?></td>
                    <td><?php echo $order['username']; ?></td>
                    <td><?php echo $order['total_amount']; ?></td>
                    <td><?php echo $order['address']; ?></td>
                    <td><?php echo $order['created_at']; ?></td>
                    <td><a href="orderdetails.php?orderid=<?php echo $order['orderid']; ?>">View Details</a></td>
                </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</body>
</html>
