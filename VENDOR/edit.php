<?php
include "authguard.php";
include "../SHARED/connection.php";

$pid = $_GET['pid'];
$sql_result = mysqli_query($conn, "SELECT * FROM product WHERE pid = $pid");
$dbrow = mysqli_fetch_assoc($sql_result);

if (!$dbrow) {
    echo "Product not found!";
    die;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="d-flex justify-content-center align-items-center vh-100">
        <form enctype="multipart/form-data" action="update.php" method="POST" class="w-50 bg-warning p-4">
            <h3 class="text-center">Edit Product</h3>
            <input type="hidden" name="pid" value="<?php echo $pid; ?>">
            <input class="form-control mt-3" type="text" placeholder="Product Name" name="name" value="<?php echo $dbrow['name']; ?>">
            <input class="form-control mt-2" type="number" placeholder="Product Price" name="price" value="<?php echo $dbrow['price']; ?>">
            <textarea class="form-control mt-2" name="detail" cols="30" rows="5"><?php echo $dbrow['detail']; ?></textarea>
            <input class="form-control mt-2" type="file" name="pdtimg" accept=".jpg,.png">
            <div class="text-center mt-3">
                <button class="btn btn-success">Update Product</button>
            </div>
        </form>
    </div>
</body>
</html>
