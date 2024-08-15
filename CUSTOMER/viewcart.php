<html>
    <head>
        <style>
            .own-card{
                width:300px;
                height:350px;
                background-color:aqua;
                display:inline-block;
                margin:10px;
                vertical-align:top;
                border-radius:10px;
                padding:10px;
                
                
            }
            img{
                
                width: 220px;
            }
            button{
                display:inline-block;
                vertical-align:bottom;
            }
        </style>
    </head>
</html>

<?php
include "authguard.php";
include "menu.html";

include "../SHARED/connection.php";

$sql_result=mysqli_query($conn,"select * from cart join product on cart.pid=product.pid where userid=$_SESSION[userid]");

$total=0;
while($dbrow=mysqli_fetch_assoc($sql_result)){
    $total=$total+$dbrow["price"];
    echo "<div class='own-card'>
           <div>$dbrow[name]</div>
           <div>$dbrow[price]</div>
           <div>$dbrow[detail]</div>
           <div class='pdtimg'>
            <img src='$dbrow[impath]'>
           </div>
           <div>              
                 <button onclick='deleteCart($dbrow[cartid])'>Remove Cart</button>
            </div>
         </div>";
}

echo "<div class='m-3'>
   <form method='post' action='placeorder.php' class='w-50'>
   <br>
   <h3>Place Order</h3>
   <textarea class='form-control' name='address' placeholder='Enter Delivery Address'></textarea>
   <br>
   <input value='$total' hidden name='total'>
   <button class='p-3 btn btn-primary'>Place Order $total Rs </button>
   </form>
</div>"

?>

<html>
    <body>
        
    </body>

    <script>
        function deleteCart(cartid){
            res=confirm("Are you sure want to Delete?")
            if(res){
                window.location.href=`delete.php?cartid=${cartid}`;
            }
        }
    </script>
</html>