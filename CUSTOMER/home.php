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
                
                width: 150px;
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

$sql_result=mysqli_query($conn,"select * from product join user on product.owner=user.userid");

while($dbrow=mysqli_fetch_assoc($sql_result)){
    echo "<div class='own-card'>
           <div>$dbrow[name]</div>
           <div>$dbrow[price]</div>
           <div>$dbrow[detail]</div>
           <div class='pdtimg'>
            <img src='$dbrow[impath]'>
           </div>
           <div>
                $dbrow[username]
           </div>
           <div>
               <a href='addcart.php?pid=$dbrow[pid]'>
                 <button>Add to Cart</button>
               </a>
            </div>
         </div>";
}


?>
