-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Nov 07, 2024 at 05:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartid`, `userid`, `pid`, `created_date`) VALUES
(1, 3, 4, '2024-03-12 07:26:01'),
(3, 5, 7, '2024-03-12 07:26:34'),
(10, 5, 8, '2024-03-13 17:34:53'),
(16, 3, 4, '2024-08-15 05:11:40'),
(17, 3, 11, '2024-08-15 05:11:46'),
(18, 3, 4, '2024-08-16 08:44:29'),
(19, 6, 8, '2024-09-03 13:22:24');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `total_amount` float NOT NULL,
  `userid` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_status` varchar(100) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `username`, `address`, `total_amount`, `userid`, `created_date`, `order_status`, `created_at`) VALUES
(3, 'Harsha1', 'Mr.Harsha,\r\nMH2.', 180000, 3, '2024-03-13 17:50:09', 'pending', '2024-08-15 06:56:17'),
(4, 'james1', 'Mr.James,\r\nMH4.', 68000, 5, '2024-03-13 17:50:57', 'pending', '2024-08-15 06:56:17'),
(5, 'Harsha1', '', 150000, 3, '2024-08-08 17:44:12', 'pending', '2024-08-15 06:56:17'),
(6, 'Harsha1', '', 330000, 3, '2024-08-15 05:24:45', 'pending', '2024-08-15 06:56:17'),
(7, 'Harsha1', '', 330000, 3, '2024-08-15 08:28:47', 'pending', '2024-08-15 08:28:47'),
(8, 'Harsha1', 'Divvala HarshaVardhan Sai\r\nVitAp \r\n522237\r\nAndhra Pradesh', 330000, 3, '2024-08-15 08:29:30', 'pending', '2024-08-15 08:29:30'),
(9, 'Harsha1', '', 330000, 3, '2024-08-15 08:30:15', 'pending', '2024-08-15 08:30:15'),
(10, 'Harsha1', '', 480000, 3, '2024-08-16 08:44:39', 'pending', '2024-08-16 08:44:39');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `orderid` int(11) NOT NULL,
  `order_details_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `owner` int(11) NOT NULL,
  `details` text NOT NULL,
  `impath` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`orderid`, `order_details_id`, `pid`, `name`, `price`, `owner`, `details`, `impath`) VALUES
(3, 1, 4, 'IPHONE 15 PR0', 150000, 1, 'iPhone 15 Pro, starring a titanium case, USB-C, an Action Button, the A17 Pro chip\r\n            ', '../SHARED/images/IPHONE_15.jpg'),
(3, 2, 11, 'IQOO 9SE', 30000, 1, 'AMOLED 120Hz display, powered by Snapdragon 888 chipset with 8GB RAM', '../SHARED/images/IQOO 9SE.png'),
(4, 3, 7, 'IQOO NEO 9 PRO', 38000, 4, '6.78-inch LTPO AMOLED display with support for 144 Hz refresh rate and up to 3,000 nits peak brightness', '../SHARED/images/IQOO NEO 9 PRO.png'),
(4, 4, 8, 'SAMSUNG GALAXY F13', 30000, 4, '50 MP + 5 MP + 2 MP with autofocus 6000 mAh, Li-Po Battery\r\n            ', '../SHARED/images/samsung galaxy f13.png'),
(5, 5, 4, 'IPHONE 15 PR0', 150000, 1, 'iPhone 15 Pro, starring a titanium case, USB-C, an Action Button, the A17 Pro chip\r\n            ', '../SHARED/images/IPHONE_15.jpg'),
(6, 6, 4, 'IPHONE 15 PR0', 150000, 1, 'iPhone 15 Pro, starring a titanium case, USB-C, an Action Button, the A17 Pro chip\r\n            ', '../SHARED/images/IPHONE_15.jpg'),
(6, 7, 4, 'IPHONE 15 PR0', 150000, 1, 'iPhone 15 Pro, starring a titanium case, USB-C, an Action Button, the A17 Pro chip\r\n            ', '../SHARED/images/IPHONE_15.jpg'),
(6, 8, 11, 'IQOO 9SE', 30000, 1, 'AMOLED 120Hz display, powered by Snapdragon 888 chipset with 8GB RAM', '../SHARED/images/IQOO 9SE.png'),
(7, 9, 4, 'IPHONE 15 PR0', 150000, 1, 'iPhone 15 Pro, starring a titanium case, USB-C, an Action Button, the A17 Pro chip\r\n            ', '../SHARED/images/IPHONE_15.jpg'),
(7, 10, 4, 'IPHONE 15 PR0', 150000, 1, 'iPhone 15 Pro, starring a titanium case, USB-C, an Action Button, the A17 Pro chip\r\n            ', '../SHARED/images/IPHONE_15.jpg'),
(7, 11, 11, 'IQOO 9SE', 30000, 1, 'AMOLED 120Hz display, powered by Snapdragon 888 chipset with 8GB RAM', '../SHARED/images/IQOO 9SE.png'),
(8, 12, 4, 'IPHONE 15 PR0', 150000, 1, 'iPhone 15 Pro, starring a titanium case, USB-C, an Action Button, the A17 Pro chip\r\n            ', '../SHARED/images/IPHONE_15.jpg'),
(8, 13, 4, 'IPHONE 15 PR0', 150000, 1, 'iPhone 15 Pro, starring a titanium case, USB-C, an Action Button, the A17 Pro chip\r\n            ', '../SHARED/images/IPHONE_15.jpg'),
(8, 14, 11, 'IQOO 9SE', 30000, 1, 'AMOLED 120Hz display, powered by Snapdragon 888 chipset with 8GB RAM', '../SHARED/images/IQOO 9SE.png'),
(9, 15, 4, 'IPHONE 15 PR0', 150000, 1, 'iPhone 15 Pro, starring a titanium case, USB-C, an Action Button, the A17 Pro chip\r\n            ', '../SHARED/images/IPHONE_15.jpg'),
(9, 16, 4, 'IPHONE 15 PR0', 150000, 1, 'iPhone 15 Pro, starring a titanium case, USB-C, an Action Button, the A17 Pro chip\r\n            ', '../SHARED/images/IPHONE_15.jpg'),
(9, 17, 11, 'IQOO 9SE', 30000, 1, 'AMOLED 120Hz display, powered by Snapdragon 888 chipset with 8GB RAM', '../SHARED/images/IQOO 9SE.png'),
(10, 18, 4, 'IPHONE 15 PR0', 150000, 1, 'iPhone 15 Pro, starring a titanium case, USB-C, an Action Button, the A17 Pro chip\r\n            ', '../SHARED/images/IPHONE_15.jpg'),
(10, 19, 4, 'IPHONE 15 PR0', 150000, 1, 'iPhone 15 Pro, starring a titanium case, USB-C, an Action Button, the A17 Pro chip\r\n            ', '../SHARED/images/IPHONE_15.jpg'),
(10, 20, 11, 'IQOO 9SE', 30000, 1, 'AMOLED 120Hz display, powered by Snapdragon 888 chipset with 8GB RAM', '../SHARED/images/IQOO 9SE.png'),
(10, 21, 4, 'IPHONE 15 PR0', 150000, 1, 'iPhone 15 Pro, starring a titanium case, USB-C, an Action Button, the A17 Pro chip\r\n            ', '../SHARED/images/IPHONE_15.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `detail` text NOT NULL,
  `impath` varchar(200) NOT NULL,
  `owner` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `name`, `price`, `detail`, `impath`, `owner`, `created_date`) VALUES
(4, 'IPHONE 15 PR0', 150000, 'iPhone 15 Pro, starring a titanium case, USB-C, an Action Button, the A17 Pro chip\r\n            ', '../SHARED/images/IPHONE_15.jpg', 1, '2024-03-11 06:56:52'),
(7, 'IQOO NEO 9 PRO', 38000, '6.78-inch LTPO AMOLED display with support for 144 Hz refresh rate and up to 3,000 nits peak brightness', '../SHARED/images/IQOO NEO 9 PRO.png', 4, '2024-03-11 09:30:05'),
(8, 'SAMSUNG GALAXY F13', 30000, '50 MP + 5 MP + 2 MP with autofocus 6000 mAh, Li-Po Battery\r\n            ', '../SHARED/images/samsung galaxy f13.png', 4, '2024-03-11 09:31:03'),
(11, 'IQOO 9SE', 30000, 'AMOLED 120Hz display, powered by Snapdragon 888 chipset with 8GB RAM', '../SHARED/images/IQOO 9SE.png', 1, '2024-03-11 20:11:50');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(80) NOT NULL,
  `password` varchar(200) NOT NULL,
  `usertype` varchar(20) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `usertype`, `created_date`) VALUES
(1, 'Harsha', 'h@123', 'Vendor', '2024-03-11 05:49:35'),
(3, 'Harsha1', 'h@1234', 'Customer', '2024-03-11 05:50:06'),
(4, 'james', 'j@123', 'Vendor', '2024-03-11 09:13:57'),
(5, 'james1', 'j@1234', 'Customer', '2024-03-11 09:14:16'),
(6, '22BCE20237', 'Puneeth', 'Customer', '2024-09-03 13:21:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
