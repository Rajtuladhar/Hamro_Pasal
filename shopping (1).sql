-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2022 at 06:43 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Laptop\r\n', 'Electronics', '2022-02-18 19:17:37', ''),
(4, 'Smart Tv', 'Electronic Products', '2022-02-19 19:19:32', ''),
(5, 'Smart Phone', 'Electronics', '2022-02-19 19:19:54', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(8, 4, '11', 1, '2022-03-18 09:19:56', 'COD', 'Delivered'),
(26, 4, '29', 1, '2022-03-31 16:24:11', 'COD', 'Delivered'),
(27, 4, '22', 1, '2022-04-15 05:30:09', 'COD', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 11, 'in Process', 'after some days', '2022-03-19 07:46:25'),
(6, 12, 'Delivered', 'delivered', '2022-03-19 08:50:26'),
(7, 13, 'Delivered', 'Delivered', '2022-03-19 08:50:38'),
(8, 14, 'in Process', 'asbidbias', '2022-03-31 02:23:29'),
(9, 17, 'Delivered', 'delivered\r\n', '2022-03-31 15:29:15'),
(10, 18, 'Delivered', 'product delivered', '2022-03-31 15:33:06'),
(11, 22, 'in Process', 'it might take some time', '2022-03-31 15:50:48'),
(12, 8, 'Delivered', 'delivered', '2022-03-31 15:51:45'),
(13, 24, 'Delivered', 'delivered', '2022-03-31 16:12:32'),
(14, 26, 'Delivered', 'delivered', '2022-03-31 16:24:44'),
(15, 27, 'Delivered', 'product delivered', '2022-04-15 05:31:06');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(5, 22, 5, 4, 5, 'Raj Tuladhar', '', 'awesome', '2022-03-31 15:31:16'),
(6, 23, 4, 4, 4, 'pranil', '', 'good', '2022-03-31 15:57:14'),
(7, 29, 5, 5, 5, 'Raj Tuladhar', '', 'excellent', '2022-03-31 15:59:01'),
(8, 29, 5, 5, 5, 'pranil', '', 'awesome', '2022-03-31 16:02:10');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, 'Micromax 81cm (32) HD Ready LED TV  (32T6175MHD, 2 x HDMI, 2 x USB)', 'Micromax test', 139900, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">81 cm (32)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>', 'micromax1.jpeg', 'micromax main image.jpg', 'micromax main image.jpg', 1200, 'In Stock', '2017-01-30 16:54:35', ''),
(2, 5, 9, 'Apple iPhone 6 (Silver, 16 GB)', 'Apple INC', 36990, 0, '<div class=\"_2PF8IO\" style=\"box-sizing: border-box; margin: 0px 0px 0px 110px; padding: 0px; flex: 1 1 0%; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">1 GB RAM | 16 GB ROM |</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">4.7 inch Retina HD Display</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">8MP Primary Camera | 1.2MP Front</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Li-Ion Battery</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">A8 Chip with 64-bit Architecture and M8 Motion Co-processor Processor</li></ul></div>', 'apple-iphone-6-1.jpeg', 'apple-iphone-6-2.jpeg', 'apple-iphone-6-3.jpeg', 0, 'In Stock', '2017-01-30 16:59:00', ''),
(3, 5, 10, 'Redmi Note 4 (Gold, 32 GB)  (With 3 GB RAM)', 'Redmi', 10999, 0, '<br><div><ol><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>4100 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 625 64-bit Processor<br></li></ol></div>', 'mi-redmi-note-4-1.jpeg', 'mi-redmi-note-4-2.jpeg', 'mi-redmi-note-4-3.jpeg', 0, 'In Stock', '2017-02-04 04:03:15', ''),
(4, 5, 18, 'Lenovo K6 Power (Silver, 32 GB) ', 'Lenovo', 9999, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>4000 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 430 Processor<br></li></ul>', 'lenovo-k6-power-k33a42-1.jpeg', 'lenovo-k6-power-k33a42-2.jpeg', 'lenovo-k6-power-k33a42-3.jpeg', 45, 'In Stock', '2017-02-04 04:04:43', ''),
(5, 5, 18, 'Lenovo Vibe K5 Note (Gold, 32 GB)  ', 'Lenovo', 11999, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>3500 mAh Li-Ion Polymer Battery<br></li><li>Helio P10 64-bit Processor<br></li></ul>', 'lenovo-k5-note-pa330010in-1.jpeg', 'lenovo-k5-note-pa330116in-2.jpeg', 'lenovo-k5-note-pa330116in-3.jpeg', 0, 'In Stock', '2017-02-04 04:06:17', ''),
(6, 5, 19, 'Micromax Canvas Mega 4G', 'Micromax', 6999, 0, '<ul><li>3 GB RAM | 16 GB ROM |<br></li><li>5.5 inch HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>2500 mAh Battery<br></li><li>MT6735 Processor<br></li></ul>', 'micromax-canvas-mega-4g-1.jpeg', 'micromax-canvas-mega-4g-2.jpeg', 'micromax-canvas-mega-4g-3.jpeg', 35, 'In Stock', '2017-02-04 04:08:07', ''),
(7, 5, 11, 'SAMSUNG Galaxy On5', 'SAMSUNG', 7490, 0, '<ul><li>1.5 GB RAM | 8 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch HD Display<br></li><li>8MP Primary Camera | 5MP Front<br></li><li>2600 mAh Li-Ion Battery<br></li><li>Exynos 3475 Processor<br></li></ul>', 'samsung-galaxy-on7-sm-1.jpeg', 'samsung-galaxy-on5-sm-2.jpeg', 'samsung-galaxy-on5-sm-3.jpeg', 20, 'In Stock', '2017-02-04 04:10:17', ''),
(8, 5, 20, 'OPPO A57', 'OPPO', 14990, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 256 GB<br></li><li>5.2 inch HD Display<br></li><li>13MP Primary Camera | 16MP Front<br></li><li>2900 mAh Battery<br></li><li>Qualcomm MSM8940 64-bit Processor<br></li></ul>', 'oppo-a57-na-original-1.jpeg', 'oppo-a57-na-original-2.jpeg', 'oppo-a57-na-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:11:54', ''),
(9, 5, 10, 'Affix Back Cover for Mi Redmi Note 4', 'Techguru', 5000, 0, '<ul><li>Suitable For: Mobile<br></li><li>Material: Polyurethane<br></li><li>Theme: No Theme<br></li><li>Type: Back Cover<br></li><li>Waterproof<br></li></ul>', 'amzer-amz98947-original-1.jpeg', 'amzer-amz98947-original-2.jpeg', 'amzer-amz98947-original-3.jpeg', 10, 'In Stock', '2017-02-04 04:17:03', ''),
(11, 3, 17, 'Acer ES 15 Pentium Quad Core', 'Acer', 19990, 0, '<ul><li>Intel Pentium Quad Core Processor ( )<br></li><li>4 GB DDR3 RAM<br></li><li>Linux/Ubuntu Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul>', 'mac.jpg', 'acer-aspire-notebook-original-2.jpeg', 'acer-aspire-notebook-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:26:17', ''),
(12, 3, 17, 'Micromax Canvas Laptab II (WIFI) Atom 4th Gen', 'Micromax', 10999, 0, '<ul><li>Intel Atom Processor ( 4th Gen )<br></li><li>2 GB DDR3 RAM<br></li><li>32 bit Windows 10 Operating System<br></li><li>11.6 inch Touchscreen Display<br></li></ul>', 'micromax-lt777w-2-in-1-laptop-original-1.jpeg', 'micromax-lt777w-2-in-1-laptop-original-2.jpeg', 'micromax-lt777w-2-in-1-laptop-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:28:17', ''),
(13, 3, 17, 'HP Core i5 5th Gen', 'HP', 41990, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">HP Core i5 5th Gen - (4 GB/1 TB HDD/Windows 10 Home/2 GB Graphics) N8M28PA 15-ac123tx Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Turbo SIlver, 2.19 kg)</span><br><div><ul><li>Intel Core i5 Processor ( 5th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'hp-notebook-original-1.jpeg', 'hp-notebook-original-2.jpeg', 'hp-notebook-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:30:24', ''),
(14, 3, 17, 'Lenovo Ideapad 110 APU Quad Core A6 6th Gen', 'Lenovo', 22990, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Lenovo Ideapad 110 APU Quad Core A6 6th Gen - (4 GB/500 GB HDD/Windows 10 Home) 80TJ00D2IH IP110 15ACL Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Black, 2.2 kg)</span><br><div><ul><li>AMD APU Quad Core A6 Processor ( 6th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>500 GB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'lenovo-ideapad-notebook-original-1.jpeg', 'lenovo-ideapad-notebook-original-2.jpeg', 'lenovo-ideapad-notebook-3.jpeg', 0, 'In Stock', '2017-02-04 04:32:15', ''),
(17, 5, 9, 'Iphone 13 pro', 'Apple', 18900, 0, '<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bolder; color: rgb(85, 85, 85); font-family: roboto, Arial, Helvetica, sans-serif; font-size: 16px;\">Display</span><span style=\"color: rgb(85, 85, 85); font-family: roboto, Arial, Helvetica, sans-serif; font-size: 16px;\">: 6.7-inch Super Retina XDR OLED panel</span><div><font color=\"#555555\" face=\"roboto, Arial, Helvetica, sans-serif\"><span style=\"font-size: 16px;\"><b>Resolution:</b> 2778*1284 pixels,19.5:9 ratio</span></font></div><div><span style=\"color: rgb(85, 85, 85); font-family: roboto, Arial, Helvetica, sans-serif; font-size: 16px; box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bolder;\">Refresh Rate:</span><span style=\"color: rgb(85, 85, 85); font-family: roboto, Arial, Helvetica, sans-serif; font-size: 16px;\">&nbsp;</span><span style=\"color: rgb(85, 85, 85); font-family: roboto, Arial, Helvetica, sans-serif; font-size: 16px;\">120HZ</span></div><div><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bolder; color: rgb(85, 85, 85); font-family: roboto, Arial, Helvetica, sans-serif; font-size: 16px;\">Processor:&nbsp;</span><span style=\"color: rgb(85, 85, 85); font-family: roboto, Arial, Helvetica, sans-serif; font-size: 16px;\">Apple A15 Bionic (5nm)</span><span style=\"color: rgb(85, 85, 85); font-family: roboto, Arial, Helvetica, sans-serif; font-size: 16px;\"><br></span></div><div><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bolder; color: rgb(85, 85, 85); font-family: roboto, Arial, Helvetica, sans-serif; font-size: 16px;\">RAM:</span><span style=\"color: rgb(85, 85, 85); font-family: roboto, Arial, Helvetica, sans-serif; font-size: 16px;\">&nbsp;6GB</span><span style=\"color: rgb(85, 85, 85); font-family: roboto, Arial, Helvetica, sans-serif; font-size: 16px;\"><br></span></div><div><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bolder; color: rgb(85, 85, 85); font-family: roboto, Arial, Helvetica, sans-serif; font-size: 16px;\">OS &amp; UI:</span><span style=\"color: rgb(85, 85, 85); font-family: roboto, Arial, Helvetica, sans-serif; font-size: 16px;\">&nbsp;</span><a href=\"https://ronishdhakal.com/ios-15-top-features/\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: var(--pixanews-primary); transition: all 0.4s ease 0s; border-bottom: solid 1px var(--pixanews-secondary); font-family: roboto, Arial, Helvetica, sans-serif; font-size: 16px;\">iOS 15</a><span style=\"color: rgb(85, 85, 85); font-family: roboto, Arial, Helvetica, sans-serif; font-size: 16px;\"><br></span></div><div><span style=\"color: rgb(85, 85, 85); font-family: roboto, Arial, Helvetica, sans-serif; font-size: 16px;\"><br></span></div>', 'iphone1.jpg', 'iphone1.jpg', 'iphone2.jpg', 0, 'In Stock', '2017-02-04 04:40:37', ''),
(18, 5, 10, 'Redmi 10 pro', 'Redmi', 40000, 0, '<div><div><ul style=\"margin-bottom: 26px; box-sizing: border-box; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Verdana, Geneva, sans-serif; font-size: 15px;\"><li style=\"line-height: inherit; box-sizing: border-box; margin-left: 21px; margin-bottom: 10px;\"><span style=\"box-sizing: border-box;\">Body:&nbsp;</span>164.5×76.15×8.1mm; 192g</li><li style=\"line-height: inherit; box-sizing: border-box; margin-left: 21px; margin-bottom: 10px;\"><span style=\"box-sizing: border-box;\">Display:&nbsp;</span>6.67-inch Super AMOLED screen<br></li><li style=\"line-height: inherit; box-sizing: border-box; margin-left: 21px; margin-bottom: 10px;\"><span style=\"box-sizing: border-box;\">Resolution:</span>&nbsp;Full HD+(1080 × 2400 pixels); 20:9</li><li style=\"line-height: inherit; box-sizing: border-box; margin-left: 21px; margin-bottom: 10px;\"><span style=\"box-sizing: border-box;\">Chipset:&nbsp;</span>Snapdragon 732G (8nm)</li><li style=\"line-height: inherit; box-sizing: border-box; margin-left: 21px; margin-bottom: 10px;\"><span style=\"box-sizing: border-box;\">RAM</span>: 6/8GB LPDDR4X RAM</li><li style=\"line-height: inherit; box-sizing: border-box; margin-left: 21px; margin-bottom: 10px;\"><span style=\"box-sizing: border-box;\">OS:&nbsp;</span>Android 11 with MIUI 12</li><li style=\"line-height: inherit; box-sizing: border-box; margin-left: 21px; margin-bottom: 10px;\"><span style=\"box-sizing: border-box;\">SIM:&nbsp;</span>Dual SIM (nano + nano + microSD)</li></ul></div></div>', 'mi.jpg', 'mi1.jpg', 'mi2.jpg', 0, 'In Stock', '2017-02-04 04:42:27', ''),
(22, 3, 14, 'Asus TUF Gaming(8GB RAM 512SSD)', 'Asus', 128500, 0, '<span style=\"color: rgb(96, 96, 96); font-family: Roboto, sans-serif; font-size: 16px;\">CPU:</span>&nbsp;<span style=\"box-sizing: border-box; color: rgb(96, 96, 96); font-family: Roboto, sans-serif; font-size: 16px;\">10th&nbsp;</span><span style=\"box-sizing: border-box; color: rgb(96, 96, 96); font-family: Roboto, sans-serif; font-size: 16px;\">Generation Intel</span><span style=\"box-sizing: border-box; color: rgb(96, 96, 96); font-family: Roboto, sans-serif; font-size: 16px;\">®</span><span style=\"box-sizing: border-box; color: rgb(96, 96, 96); font-family: Roboto, sans-serif; font-size: 16px;\">&nbsp;Core™ i5-10300H</span><div><span style=\"box-sizing: border-box; color: rgb(96, 96, 96); font-family: Roboto, sans-serif; font-size: 16px;\">Graphics: NVIDIA® GeForce® GTX 1650, with 4GB VRAM<br></span></div><div><span style=\"box-sizing: border-box; color: rgb(96, 96, 96); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"background-color: rgb(246, 246, 246);\">Memory:&nbsp;</span><span style=\"background-color: rgb(246, 246, 246);\">8 GB DDR4&nbsp;</span><br></span></div><div><span style=\"box-sizing: border-box; color: rgb(96, 96, 96); font-family: Roboto, sans-serif; font-size: 16px;\">Display: 15.6\" (16:9) LED-backlit FHD (1920x1080) 144Hz<span style=\"background-color: rgb(246, 246, 246);\"><br></span></span></div><div><span style=\"box-sizing: border-box; color: rgb(96, 96, 96); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"background-color: rgb(246, 246, 246);\">Battery:&nbsp;</span><span style=\"background-color: rgb(246, 246, 246);\">3 -Cell 48 Wh Battery</span><br></span></div><div><span style=\"box-sizing: border-box; color: rgb(96, 96, 96); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"background-color: rgb(246, 246, 246);\">Storage:&nbsp;</span><span style=\"background-color: rgb(246, 246, 246);\">512GB NVMe SSD</span><span style=\"background-color: rgb(246, 246, 246);\"><br></span></span></div><div><span style=\"box-sizing: border-box; color: rgb(96, 96, 96); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"background-color: rgb(246, 246, 246);\"><br></span></span></div>', 'laptop.png', 'laptop1.png', 'laptop2.png', 1500, 'In Stock', '2022-03-18 06:56:36', NULL),
(23, 3, 8, 'HP ProBook 11', 'HP', 50000, 0, '<table border=\"2\" style=\"width: 361px; box-shadow: none; border: 1px solid rgb(238, 238, 238); color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;; font-size: 12px; background-color: rgb(255, 255, 255); height: 185px;\"><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; vertical-align: top; padding: 8px 10px; border: 1px solid rgb(238, 238, 238);\">CPU: Intel Celeron N4100 Processor; 1.1 GHz base frequency, up to 2.4 GHz burst frequency 4 MB cache;&nbsp;<span style=\"box-sizing: border-box;\"><span style=\"font-weight: bolder;\">4 cores</span><br>Graphics: Intel UHD Graphics 600<br>Memory: 4GB DDR4 RAM @ 2400MHz<br>Display: 11.6-inch diagonal HD IPS eDP LED-backlit touch-enabled screen<br>Storage: 128GB SATA-3 TLC Solid State Drive<br>Size: 29.97 x 20.60 x 1.98 cm (11.8 x 8.11 x 0.78 in)<br></span></td></tr></tbody></table>', 'laptop3.png', 'laptop4.jpg', 'laptop5.png', 1500, 'In Stock', '2022-03-18 07:06:00', NULL),
(28, 5, 11, 'Galaxy M32', 'Samsung', 40000, 0, '<a href=\"https://www.gsmarena.com/glossary.php3?term=os\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Arimo, Arial; vertical-align: baseline; color: rgb(85, 85, 85); background-color: rgb(250, 250, 250);\">OS</a>:&nbsp;<span style=\"color: rgb(34, 34, 34); font-family: Verdana, Geneva, sans-serif; font-size: 15px; background-color: rgb(247, 247, 247);\">Galaxy M32</span><div><a href=\"https://www.gsmarena.com/glossary.php3?term=cpu\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Arimo, Arial; vertical-align: baseline; color: rgb(85, 85, 85); background-color: rgb(250, 250, 250);\">CPU</a>:&nbsp;<span style=\"background-color: rgb(250, 250, 250); color: rgb(0, 0, 0); font-family: Arimo, Arial; font-size: 14px;\">Octa-core</span><span style=\"font-weight: bold; color: rgb(34, 34, 34); font-family: Verdana, Geneva, sans-serif; font-size: 15px; background-color: rgb(247, 247, 247);\"><br></span></div><div><a href=\"https://www.gsmarena.com/glossary.php3?term=dynamic-memory\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Arimo, Arial; vertical-align: baseline; color: rgb(85, 85, 85); background-color: rgb(250, 250, 250);\">Internal</a>:&nbsp;<span style=\"background-color: rgb(250, 250, 250); color: rgb(0, 0, 0); font-family: Arimo, Arial; font-size: 14px;\">64GB 4GB RAM</span><span style=\"background-color: rgb(250, 250, 250); color: rgb(0, 0, 0); font-family: Arimo, Arial; font-size: 14px;\"><br></span></div><div><a href=\"https://www.gsmarena.com/glossary.php3?term=battery-charging\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Arimo, Arial; vertical-align: baseline; color: rgb(85, 85, 85); background-color: rgb(250, 250, 250);\">Charging</a>:&nbsp;<span style=\"background-color: rgb(250, 250, 250); color: rgb(0, 0, 0); font-family: Arimo, Arial; font-size: 14px;\">Fast charging 25W</span><span style=\"background-color: rgb(250, 250, 250); color: rgb(0, 0, 0); font-family: Arimo, Arial; font-size: 14px;\"><br></span></div><div><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Arimo, Arial; vertical-align: baseline; color: rgb(85, 85, 85); background-color: rgb(250, 250, 250);\">Video</a>:&nbsp;<span style=\"background-color: rgb(250, 250, 250); color: rgb(0, 0, 0); font-family: Arimo, Arial; font-size: 14px;\">1080p@30fps</span><span style=\"background-color: rgb(250, 250, 250); color: rgb(0, 0, 0); font-family: Arimo, Arial; font-size: 14px;\"><br></span></div><div><a href=\"https://www.gsmarena.com/glossary.php3?term=sensors\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Arimo, Arial; vertical-align: baseline; color: rgb(85, 85, 85); background-color: rgb(250, 250, 250);\">Sensors</a>:&nbsp;<span style=\"background-color: rgb(250, 250, 250); color: rgb(0, 0, 0); font-family: Arimo, Arial; font-size: 14px;\">Fingerprint,&nbsp;</span><span style=\"background-color: rgb(250, 250, 250); color: rgb(0, 0, 0); font-family: Arimo, Arial; font-size: 14px;\">accelerometer</span><span style=\"background-color: rgb(250, 250, 250); color: rgb(0, 0, 0); font-family: Arimo, Arial; font-size: 14px;\"><br></span></div><div><a href=\"https://www.gsmarena.com/glossary.php3?term=resolution\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Arimo, Arial; vertical-align: baseline; color: rgb(85, 85, 85); background-color: rgb(250, 250, 250);\">Resolution</a>:&nbsp;<span style=\"background-color: rgb(250, 250, 250); color: rgb(0, 0, 0); font-family: Arimo, Arial; font-size: 14px;\">1080 x 2400 pixels, 20:9 ratio</span><span style=\"background-color: rgb(250, 250, 250); color: rgb(0, 0, 0); font-family: Arimo, Arial; font-size: 14px;\"><br></span></div><div><a href=\"https://www.gsmarena.com/glossary.php3?term=screen-protection\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Arimo, Arial; vertical-align: baseline; color: rgb(85, 85, 85); background-color: rgb(250, 250, 250);\">Protection</a>:&nbsp;<span style=\"background-color: rgb(250, 250, 250); color: rgb(0, 0, 0); font-family: Arimo, Arial; font-size: 14px;\">Corning Gorilla Glass 5</span><span style=\"background-color: rgb(250, 250, 250); color: rgb(0, 0, 0); font-family: Arimo, Arial; font-size: 14px;\"><br></span></div><div><br></div><br>', 'samsung.jpg', 'samsung1.jpg', 'samsung2.jpg', 0, 'In Stock', '2022-03-18 08:23:58', NULL),
(29, 3, 15, 'Apple MacBook Air', 'Apple', 200000, 0, '<table class=\"a-normal a-spacing-micro\" style=\"width: 675.025px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 4px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small po-model_name\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 161.675px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Model Name</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 513.35px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">New Apple MacBook Air (13-inch, 8GB RAM, 256GB SSD Storage) - Space Gray</span></td></tr><tr class=\"a-spacing-small po-brand\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 161.675px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Brand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 513.35px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">Apple</span></td></tr><tr class=\"a-spacing-small po-specific_uses_for_product\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 161.675px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Specific Uses For Product</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 513.35px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">Business</span></td></tr><tr class=\"a-spacing-small po-display.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 161.675px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Screen Size</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 513.35px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">13 Inches</span></td></tr><tr class=\"a-spacing-small po-operating_system\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 161.675px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Operating System</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 513.35px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">Mac OS</span></td></tr><tr class=\"a-spacing-small po-human_interface_input\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 161.675px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Human Interface Input</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 513.35px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">Touch Pad</span></td></tr></tbody></table>', 'mac.jpg', 'mac1.jpg', 'mac2.jpg', 0, 'In Stock', '2022-03-19 08:44:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Led Television', '2022-02-22 16:24:52', ''),
(3, 4, 'Television', '2017-01-26 16:29:09', ''),
(8, 3, 'Notebook', '2017-02-04 04:13:54', ''),
(9, 5, 'Iphone', '2017-02-04 04:36:45', '18-03-2022 12:11:31 PM'),
(10, 5, 'Redmi', '2017-02-04 04:37:02', '18-03-2022 12:11:49 PM'),
(11, 5, 'Samsung', '2017-02-04 04:37:51', '18-03-2022 12:12:05 PM'),
(14, 3, 'Gaming', '2022-03-18 06:49:54', NULL),
(15, 3, 'Macbook', '2022-03-18 07:00:23', NULL),
(16, 6, 'Desktop', '2022-03-18 07:11:44', NULL),
(17, 3, 'Laptops', '2022-03-18 08:28:28', NULL),
(18, 5, 'Lenovo', '2022-03-18 08:32:09', NULL),
(19, 5, 'MicroMax', '2022-03-18 08:33:40', NULL),
(20, 5, 'OPPO', '2022-03-18 08:35:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'rajtuladhar17@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-18 08:47:16', '31-03-2022 09:52:39 PM', 1),
(41, 'rajtuladhar17@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-31 16:24:00', NULL, 1),
(42, 'rajtuladhar17@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-15 05:29:59', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'Raj', 'rajtuladhar17@gmail.com', 9823834477, '65a1223dae83b8092c4edba0823a793c', 'bijeshwory', 'kathmandu ', 'kathmandu', 0, 'bijeshwory', 'kathmandu', 'kathmandu', 110001, '2022-03-18 08:47:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
