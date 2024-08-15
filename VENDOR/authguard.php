<?php

session_start();

if(!isset($_SESSION['login_status'])){
    echo "Illegal Attempt, Login Bypassed";
    die;
}

if($_SESSION['login_status']==false){
    echo "Unauthorized Access, 403:Forbidden";
    die;
}

if($_SESSION['usertype']!='Vendor'){
    echo "Permission Denied, Authorization Failed";
    die;
}

echo "<div class='d-flex justify-content-evenly'>

       <div>
         $_SESSION[userid]
       </div>
       <div>
         $_SESSION[username]
       </div>
       <div>
         <a href='../SHARED/logout.php'>Logout</a>
       </div>
      </div>";
        
?>