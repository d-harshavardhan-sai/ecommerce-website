# E-commerce Website Setup Guide

Welcome! This guide details the step-by-step process to set up and run the **E-commerce Website** on your local machine using XAMPP.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Setup Instructions](#setup-instructions)
  - [Step 1: Download the Project Files](#step-1-download-the-project-files)
  - [Step 2: Place Project Files in XAMPP htdocs](#step-2-place-project-files-in-xampp-htdocs)
  - [Step 3: Install XAMPP](#step-3-install-xampp)
  - [Step 4: Start Apache and MySQL](#step-4-start-apache-and-mysql)
  - [Step 5: Configure MySQL Port (If Necessary)](#step-5-configure-mysql-port-if-necessary)
  - [Step 6: Set Up the Database](#step-6-set-up-the-database)
  - [Step 7: Access the Website](#step-7-access-the-website)
- [Login Credentials](#login-credentials)
- [Troubleshooting](#troubleshooting)


## Prerequisites

- A **web browser** (e.g., Chrome, Firefox, Edge)
- **XAMPP** installed (see instructions below)
- Basic familiarity with file management on your OS

## Setup Instructions

### Step 1: Download the Project Files

1. Click the "<> Code" button at the top of the repository page, then select **Download ZIP**.
2. You will receive a file named `ecommerce-website-main.zip`.

### Step 2: Place Project Files in XAMPP htdocs

1. Go to your **Downloads** folder.
2. Extract `ecommerce-website-main.zip` — this creates a folder named `ecommerce-website-main`.
3. Copy the `ecommerce-website-main` folder.
4. Navigate to:  
   `This PC -> Windows (C:) -> xampp -> htdocs`
5. Paste the **ecommerce-website-main** folder into the **htdocs** directory.

### Step 3: Install XAMPP

1. If XAMPP is not installed, download it from [apachefriends.org](https://www.apachefriends.org/download.html).
2. Recommended version: **8.2.12 / PHP 8.2.12** for Windows.
3. Run the installer and follow the setup wizard.

### Step 4: Start Apache and MySQL

1. Open the **XAMPP Control Panel**.
2. Click **Start** next to both **Apache** and **MySQL**.

### Step 5: Configure MySQL Port (If Necessary)

If MySQL will not start:

1. In XAMPP Control Panel, click **Config** (top right) → **Service and Port Settings** → **MySQL**.
2. Change **Main Port** to `3307` and click **Save**.
3. In the MySQL row, click **Config** → **my.ini**.
4. Modify both `port=3306` entries (around lines 20 and 30) to `port=3307`.
5. Save and close the file.
6. Stop both Apache and MySQL if they’re running, then try starting them again.

### Step 6: Set Up the Database

1. Open a browser and go to `localhost/phpmyadmin`.
2. If phpMyAdmin doesn’t load or errors display, refer to troubleshooting below.
3. In phpMyAdmin, check for any **project** database. If present, select it, go to the **SQL** tab, and execute:
4. In the left sidebar, click **New** under Databases, type `project` as the name, and click **Create**.
5. Go to the **Import** tab.
6. Click **Choose File** and select `project.sql` from:  
`C:\xampp\htdocs\ecommerce-website-main\project.sql`
7. Click **Open** then scroll down and click **Import**.

### Step 7: Access the Website

1. Open a new browser tab.
2. Navigate to:  
3. The e-commerce website login page should appear.

## Login Credentials

You may use the following sample user accounts, or register your own account via **Sign Up**.

### Vendors

- **harsha**
- **sai**

### Customers

- **harsha1**
- **sai1**
- **22BCE20069**

> _Note: Separate home pages exist for vendors and customers._

## Troubleshooting

### MySQL “Shutdown Unexpectedly” Error

- This issue is often caused by database corruption or port conflicts.
- See:  
**YouTube:** _How to Fix MySQL Shutdown Unexpectedly Error in XAMPP_
- Common fix: Change MySQL’s XAMPP port as described in [Step 5](#step-5-configure-mysql-port-if-necessary).

### Cannot Access phpMyAdmin

- Make sure both **Apache** and **MySQL** are running.
- Try restarting the XAMPP Control Panel.
- Refresh `localhost/phpmyadmin` in your browser.

## 💡 Tips

- For new account creation, click on **signup here** on the login page.
- If you face issues, ensure you have full administrator rights on your PC for installing XAMPP and modifying files in the **htdocs** directory.
- For advanced configuration or PHP error debugging, check files in `ecommerce-website-main` for further documentation or comments.

Enjoy building and testing your E-commerce Website!  
If you encounter persistent problems, check online forums or raise an issue in this repository.
