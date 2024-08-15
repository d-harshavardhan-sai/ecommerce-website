<?php
include "authguard.php";
include "../SHARED/connection.php";

$orderid = $_GET['orderid'];
$sql_details = "
SELECT product.name, product.price, order_details.details, order_details.impath
FROM order_details
JOIN product ON order_details.pid = product.pid
WHERE order_details.orderid = $orderid";

$details_result = mysqli_query($conn, $sql_details);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <?php include "menu.html"; ?>
    <div class="container mt-5">
        <h3 class="text-center">Order Details</h3>
        <div class="row">
            <?php while ($detail = mysqli_fetch_assoc($details_result)) { ?>
            <div class="col-md-4">
                <div class="card mb-4">
                    <img src="<?php echo $detail['impath']; ?>" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title"><?php echo $detail['name']; ?></h5>
                        <p class="card-text"><?php echo $detail['details']; ?></p>
                        <p class="card-text">Price: <?php echo $detail['price']; ?> Rs</p>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>
</body>
</html>
