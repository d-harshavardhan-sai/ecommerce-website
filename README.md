Step_1 : Download the zip file from the button  "<> Code ▼" -> Download ZIP
         ecommerce-website-main.zip  ZIP file is downloaded
Step_2 : Go to file manager -> downloads -> ecommerce-website-main.zip 
         Copy the folder "ecommerce-website-main"
Step_3 : Go to file manager -> This PC -> Windows(C:) -> xampp -> htdocs
         Paste the folder "ecommerce-website-main"
Step_4 : Download xampp download link is given -> (https://www.apachefriends.org/download.html)     (If installed already go to Step_5)
         Download "8.2.12 / PHP 8.2.12" --version for Windows
Step_5 : After installation open xampp control pannel 
         start Apache and MySQL                                        
         -----If MySQL is unable to start 
                  1. click on Config with is at top right of the panel -> Service and Port Settings -> MySQL -> Main Port = 3307 -> save -> save **Ignore errors**
                  2. click on Config in MySQL row -> my.ini -> change port=3306 to port=3307 in lines 20 and 30  and save the file.
         Stop both Apache and MySQL.
         Now try to start both of them.
         **Ignore red text in the control panel**
Step_5 : Go to any of the browser like Chrome. On the top search bar -> localhost/phpmyadmin
                If you get error watch this video to solve the issue -> (https://youtu.be/84IOtc05TuA?feature=shared)
                Close xampp control panel and open it again and start both of them Apache and MySQL 
                Go to any of the browser like Chrome. On the top search bar -> localhost/phpmyadmin
         phpmyadmin home page is opened.
         check in lef-sided panel -> (**If any other databases with name "project" is there on the left-side panel, then drop them use "drop database project; -> ctrl+enter"**)
         On the left-side panel click on New -> Create Database -> database name : project - create
         In the top nav bar, Go to import -> choose file -> This PC -> Windows(C:) -> xampp -> htdocs -> ecommerce-website-main -> select project.sql and open
         Scroll down and Import.
Step_6 : Now in the new tab of chrome -> localhost/ecommerce-website-main
        login page is displayed
        Use already registered credentials of vendor and customer 
        (If you go to phpmyadmin and select database project and see credentails in user table)
        you can directly login through those username and password (harsha and sai are vendors and harsha1, sai1 and 22BCE20069 are customers)
        Or you click on signup here and register yout own username and password and login
        Separate home pages are there for both customer and vendor.
