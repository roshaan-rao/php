-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2021 at 11:45 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `email`) VALUES
(1, 'Roshaan Rao', 'My_Admin', 'admin', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `heading` varchar(500) NOT NULL,
  `sub_heading` varchar(500) NOT NULL,
  `link` varchar(100) NOT NULL,
  `link_txt` varchar(100) NOT NULL,
  `order_number` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image`, `heading`, `sub_heading`, `link`, `link_txt`, `order_number`, `added_on`, `status`) VALUES
(3, '722969077_slider-2.jpg', 'Welcome To Food Chef', 'Live Happy Life', 'shop', 'Order Now', 1, '2021-01-03 05:25:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `order_number` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `order_number`, `status`, `added_on`) VALUES
(8, 'Rice', 1, 1, '2021-01-06 01:40:00'),
(10, 'Chicken Variety', 3, 1, '2021-01-06 01:42:52'),
(11, 'Mutton Variety', 4, 1, '2021-01-06 01:43:06'),
(12, 'Beef Variety', 5, 1, '2021-01-06 01:43:22'),
(13, 'Soups', 6, 1, '2021-01-06 01:43:47'),
(14, 'Sea Food', 7, 1, '2021-01-06 01:44:00'),
(15, 'Chinese ', 8, 1, '2021-01-06 01:44:24'),
(16, 'Sandwiches', 9, 1, '2021-01-06 01:44:48'),
(17, 'Steaks', 10, 1, '2021-01-06 01:45:02'),
(18, 'Bar B. Q', 11, 1, '2021-01-06 01:45:26'),
(19, 'Nan, Roti, Paratha', 12, 1, '2021-01-06 01:45:57'),
(21, 'Salads', 13, 1, '2021-01-06 01:46:52'),
(22, 'Raita, Chatni', 14, 1, '2021-01-06 01:47:21'),
(23, 'Fresh Juices', 15, 1, '2021-01-06 01:47:43'),
(24, 'Milkshakes', 16, 1, '2021-01-06 01:47:56'),
(25, 'Fast Food', 17, 1, '2021-01-06 01:48:30'),
(26, 'Italian Cuisine', 18, 1, '2021-01-06 01:50:19'),
(27, 'Daal', 19, 1, '2021-01-06 01:52:14'),
(28, 'Vegetable Variety', 20, 1, '2021-01-06 01:52:36'),
(29, 'Desserts', 21, 1, '2021-01-06 01:53:11'),
(30, 'Beverages', 22, 1, '2021-01-06 01:53:46'),
(32, 'Baked Variety', 23, 1, '2021-01-06 01:54:42'),
(33, 'Chaat', 24, 1, '2021-01-06 01:55:18'),
(34, 'Side Orders', 25, 1, '2021-01-06 01:56:15');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `subject`, `message`, `added_on`) VALUES
(3, 'Ayda Shahbaz', 'ayda.mughal1997@gmail.com', '03415298071', 'Food Taste', 'Fantabulous Taste With Unexpexted Service. \r\nCompletely Satisfied.\r\nGood Luck Food Chef Foe Future.', '2021-01-07 12:04:18'),
(4, 'Muhammad Ali', 'muhammad.ali@gmail.com', '03009407345', 'Delivery Service', 'Fastest Delivery Service.\r\nRight On Time.', '2021-01-07 12:06:42');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_code`
--

CREATE TABLE `coupon_code` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(20) NOT NULL,
  `coupon_type` enum('P','F') NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `cart_min_value` int(11) NOT NULL,
  `expired_on` date NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon_code`
--

INSERT INTO `coupon_code` (`id`, `coupon_code`, `coupon_type`, `coupon_value`, `cart_min_value`, `expired_on`, `status`, `added_on`) VALUES
(4, 'NewYearFC2021', 'F', 5, 200, '2021-01-31', 1, '2021-01-06 02:15:39'),
(5, 'BlessedFebFC2021', 'F', 5, 200, '2021-02-28', 1, '2021-01-06 02:19:41'),
(6, 'MarchCuisineFC2021', 'P', 5, 200, '2021-03-31', 1, '2021-01-06 02:22:54'),
(7, 'FoodChefFC2021', 'P', 5, 200, '2021-01-31', 1, '2021-01-06 02:24:12');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_boy`
--

INSERT INTO `delivery_boy` (`id`, `name`, `mobile`, `password`, `status`, `added_on`) VALUES
(5, 'Abdul Basit', '03009407345', 'abasit01', 1, '2021-01-06 02:06:42'),
(6, 'Muhammad Umer ', '03009454778', 'mumer02', 1, '2021-01-06 02:07:52'),
(7, 'Muhammad Ibrahim', '03219454778', 'mibrahim03', 1, '2021-01-06 02:09:23'),
(8, 'Muhammad Walli', '0300415415', 'mwalli04', 1, '2021-01-06 02:10:23'),
(9, 'Muhammad Arham', '03224154154', 'marham05', 1, '2021-01-06 02:11:19');

-- --------------------------------------------------------

--
-- Table structure for table `dish`
--

CREATE TABLE `dish` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `dish` varchar(100) NOT NULL,
  `dish_detail` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `type` enum('veg','non-veg') NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish`
--

INSERT INTO `dish` (`id`, `category_id`, `dish`, `dish_detail`, `image`, `type`, `status`, `added_on`) VALUES
(7, 32, 'Cakes', 'Homemade Cake For Any Occasions According To Your Demand', '198623528_CakesCrop03.jpg', 'veg', 1, '2021-01-06 02:32:05'),
(8, 32, 'Cup Cakes', 'Homemade Cupcakes For Any Occasion According To Your Demand. ', '618547467_Cup Cakes 04.jpg', 'veg', 1, '2021-01-06 02:35:08'),
(9, 32, 'Donuts', 'Delicious Homemade Donuts For Any Occasion According To Your Demand.', '943944165_Donuts 03.jpg', 'veg', 1, '2021-01-06 02:38:53'),
(10, 32, 'Cookies', 'Special Themed Homemade Cookies For Any Occasion.', '701850093_Cookies 01.jpg', 'veg', 1, '2021-01-06 02:45:30'),
(11, 18, 'Chicken Tikka', 'Mouth Watering Chicken Tikka. Per Seekh Contains 04 Piece', '190946127_Chicken Tikkah.jpg', 'non-veg', 1, '2021-01-06 02:59:04'),
(12, 18, 'Chicken Malai Boti', 'Mouth Watering Chicken Malai Boti. Per Seekh Contains 04 Piece.', '564978983_Malai Boti.jpg', 'non-veg', 1, '2021-01-06 03:02:49'),
(13, 18, 'Chicken Seekh Kebab', 'Mouth Watering Chicken Seekh Kebab. Per Plate Contains 04 Seekh Kebab. ', '318701609_Seekh Kebab.jpg', 'non-veg', 1, '2021-01-06 03:06:49'),
(14, 12, 'Beef Kebab', 'Mouth Watering Beef Kebab. Per Plate Contains 04 Beef Kebab.', '506455027_Beef Kebab.jpg', 'non-veg', 1, '2021-01-06 03:11:25'),
(15, 12, 'Beef Karahi', 'Mouth Watering Beef Karahi.', '635943657_Beef Karahi.jpg', 'non-veg', 1, '2021-01-06 03:21:23'),
(16, 30, 'Lassi (Sweet)', 'Punjabi Meethi Lassi.', '292646116_Sweet Lassi.jpg', 'veg', 1, '2021-01-06 03:27:03'),
(17, 30, 'Lassi (Saltish)', 'Punjabi Namkeen Lassi.', '121467218_Saltish Lassi Crop01.jpg', 'veg', 1, '2021-01-06 03:29:25'),
(18, 30, 'Fresh Lime', 'Chilled Fresh Lime With Sprite ', '357085271_Fresh Lime.jpg', 'veg', 1, '2021-01-06 06:14:22'),
(19, 30, 'Tea', 'Normal Tea & Elaichi Tea', '841339558_Tea.jpg', 'veg', 1, '2021-01-06 06:17:55'),
(20, 30, 'Coffee', 'Milky Coffee & Black Coffee', '161967228_Coffee.jpg', 'veg', 1, '2021-01-06 06:21:12'),
(21, 30, 'Mineral Water', 'Nestle Water Bottles', '858951694_Nestle Mineral Water.jpg', 'veg', 1, '2021-01-06 06:29:23'),
(22, 33, 'Dahi Pulkiyaan ', 'Fresh Dahi Phulkiyaan', '457049258_Dahi Pulkiyaan Chaat.jpg', 'veg', 1, '2021-01-06 06:37:12'),
(23, 33, 'Fruit Chaat', 'Fresh Fruit Chaat', '168895076_Fruit Chaat.jpg', 'veg', 1, '2021-01-06 06:40:19'),
(24, 33, 'Cream Chaat', 'Fresh Creamy Fruit Chaat', '239920903_Cream Chaat.jpg', 'veg', 1, '2021-01-06 06:41:10'),
(25, 10, 'Chicken Karahi', 'Chicken Karahi Red Pepper & Black Pepper ', '223295068_Chicken Karahi.jpg', 'non-veg', 1, '2021-01-06 07:25:04'),
(26, 10, 'Chicken Badami Handi', '', '193766154_Chicken Badami Handi.jpg', 'non-veg', 1, '2021-01-06 07:27:02'),
(27, 10, 'Chicken Steam Roast', '', '947484896_Chicken Steam Roast.jpg', 'non-veg', 1, '2021-01-06 07:28:56'),
(28, 15, 'Chicken Manchurian', 'Sizzling Chicken Manchurian', '293127210_Chicken Manchurian.jpg', 'non-veg', 1, '2021-01-06 07:51:46'),
(29, 15, 'Finger Chicken', '', '825125227_Finger Chicken.png', 'non-veg', 1, '2021-01-06 07:53:57'),
(30, 27, 'Sabat Masar Daal', '', '307821635_Sabat Masar Daal.jpg', 'veg', 1, '2021-01-06 08:02:58'),
(31, 27, 'Masoor Daal', '', '254262986_Masoor Daal.jpg', 'veg', 1, '2021-01-06 08:03:32'),
(32, 27, 'Chana Daal', '', '356963188_Chanay Ki Daal.jpg', 'veg', 1, '2021-01-06 08:04:25'),
(33, 27, 'Maash Daal', '', '846887006_Daal Maash.jpg', 'veg', 1, '2021-01-06 08:04:51'),
(34, 29, 'Chocolate Brownie With Icecream', '', '298343413_Chocolate Brownie With Icecream.jpg', 'veg', 1, '2021-01-06 08:16:02'),
(35, 29, 'Gulaab Jamun', '', '594486720_Gulaab Jamun.jpg', 'veg', 1, '2021-01-06 08:16:42'),
(36, 29, 'Fresh Seasonal Halwa Jaat', '', '942869975_Seasonal Halwa Jaat.jpg', 'veg', 1, '2021-01-06 08:18:40'),
(37, 25, 'Chicken Fillet Burger (With Fries & Coke)', '', '613624720_Chicken Fillet Burger.jpg', 'non-veg', 1, '2021-01-06 08:37:03'),
(38, 25, 'Pizza', '', '705674580_Pizza.jpg', 'non-veg', 1, '2021-01-06 08:39:26'),
(39, 25, 'Paratha Roll', '', '439730648_Paratha Roll.jpg', 'non-veg', 1, '2021-01-06 08:40:26'),
(40, 25, 'Chicken Shawarma', '', '966821842_Shawarma.png', 'veg', 1, '2021-01-06 08:40:55'),
(41, 23, 'Seasonal Fresh Juices', '', '372997321_Seasonal Fresh Juice.jpg', 'non-veg', 1, '2021-01-06 08:43:58'),
(42, 26, 'Spaghetti', '', '562402026_Spaghetti.jpg', 'non-veg', 1, '2021-01-06 08:49:01'),
(43, 26, 'Pasta', '', '141646659_Pasta.jpg', 'non-veg', 1, '2021-01-06 08:49:24'),
(44, 26, 'Lasagna', '', '648235090_Lasagna.jpg', 'non-veg', 1, '2021-01-06 08:50:05'),
(45, 24, 'Seasonal Milk Shakes', '', '984509784_Seasonal Milkshakes.jpg', 'veg', 1, '2021-01-06 08:52:30'),
(46, 11, 'Mutton Karahi', '', '570392145_Mutton Karahi.jpg', 'non-veg', 1, '2021-01-06 08:54:50'),
(47, 19, 'Roghni Naan', '', '854812997_Roghni Naan.jpg', 'veg', 1, '2021-01-06 09:27:44'),
(48, 19, 'Roti', '', '374674383_Roti.jpg', 'veg', 1, '2021-01-06 09:28:29'),
(49, 19, 'Paratha ', '', '793553327_Paratha.jpg', 'veg', 1, '2021-01-06 09:29:05'),
(50, 22, 'Mint Raita', '', '894107953_Raita.jpg', 'veg', 1, '2021-01-06 09:37:45'),
(51, 22, 'Mint Chatni', '', '596484412_Mint Chatni.jpg', 'veg', 1, '2021-01-06 09:38:10'),
(52, 8, 'Chicken Biryani', '', '408766309_Chicken Biryani.jpg', 'non-veg', 1, '2021-01-06 09:45:39'),
(53, 8, 'Chicken Palao', '', '624065054_Chicken Palao.jpg', 'non-veg', 1, '2021-01-06 09:46:06'),
(54, 8, 'Boiled Rice', '', '742848117_Safaid Chaawal.jpg', 'veg', 1, '2021-01-06 09:46:30'),
(55, 8, 'Tarkay Rice', '', '327845756_Tarkay Rice.jpg', 'veg', 1, '2021-01-06 09:47:05'),
(56, 21, 'Fresh Green Salad', '', '177147814_Fresh Green Salad.jpg', 'veg', 1, '2021-01-06 10:06:36'),
(57, 21, 'Kachumar Salad', '', '219738804_Kachumar Salad.jpg', 'veg', 1, '2021-01-06 10:07:20'),
(58, 21, 'Ceasar Salad', '', '582349989_Caaesar Salad.jpg', 'veg', 1, '2021-01-06 10:08:00'),
(59, 16, 'Fried Chicken  Breast Sandwich', '', '232898376_Chicken Sandwich.jpg', 'non-veg', 1, '2021-01-06 10:23:08'),
(60, 16, 'Cheese Sandwich', '', '269649080_Cheese Sandwich.jpg', 'veg', 1, '2021-01-06 10:23:44'),
(61, 16, 'Club Sandwich', '', '283387317_Club Sandwich.png', 'non-veg', 1, '2021-01-06 10:24:11'),
(62, 14, 'Baesan Fried Fish', '', '274709671_Baesan Fried Fish.jpg', 'non-veg', 1, '2021-01-06 10:35:10'),
(63, 14, 'Finger Fish', '', '508343524_Finger Fish.JPG', 'non-veg', 1, '2021-01-06 10:36:43'),
(64, 14, 'Masala Fish', '', '807802424_Fish Masala.jpg', 'non-veg', 1, '2021-01-06 10:38:36'),
(65, 34, 'French Fries', '', '916274544_French Fries.jpg', 'veg', 1, '2021-01-06 10:43:51'),
(66, 34, 'Baked Potato (With Cheese)', '', '374699501_Baked Potato With Cheese.jpg', 'veg', 1, '2021-01-06 10:44:35'),
(67, 34, 'Baked Potato (With Sour Cream)', '', '792556824_Baked Potato With Sour Cream.jpg', 'veg', 1, '2021-01-06 10:46:33'),
(68, 13, 'Chicken Corn Soup', '', '186738559_Chicken Corn Soup.jpeg', 'non-veg', 1, '2021-01-06 10:49:09'),
(69, 17, 'Chicken Steak (With Sour Cream)', '', '768039179_Chicken Steak With Sour Cream.jpg', 'non-veg', 1, '2021-01-06 10:55:11'),
(70, 17, 'Chicken Steak (With Bar B. Q Sauce)', '', '267267742_Chicken Steak With Bar B. Q Sauce.jpg', 'non-veg', 1, '2021-01-06 10:55:57'),
(71, 17, 'Stuff Chicken With Pineapple Sauce', '', '980499621_Stuff Chicken With Pineapple Sauce.jpg', 'non-veg', 1, '2021-01-06 10:57:34'),
(72, 28, 'Mix Sabzi', '', '949586465_Mix Sabzi.jpg', 'veg', 1, '2021-01-06 11:01:11'),
(73, 28, 'Saag (With Makhan)', '', '490498883_Saag.png', 'veg', 1, '2021-01-06 11:01:50'),
(74, 28, 'Aloo Gobi', '', '670257806_Aloo Goobi.jpg', 'veg', 1, '2021-01-06 11:02:35'),
(75, 28, 'Aloo Methi', '', '385512344_Aloo Methi.jpg', 'veg', 1, '2021-01-06 11:03:03'),
(76, 10, 'Tawa Chicken', '', '258503036_Tawa Chicken.jpg', 'non-veg', 1, '2021-01-06 11:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `dish_cart`
--

CREATE TABLE `dish_cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dish_detail_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dish_details`
--

CREATE TABLE `dish_details` (
  `id` int(11) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `attribute` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish_details`
--

INSERT INTO `dish_details` (`id`, `dish_id`, `attribute`, `price`, `status`, `added_on`) VALUES
(14, 7, 'One Pound', 600, 1, '2021-01-06 02:32:05'),
(15, 8, 'Per Piece', 100, 1, '2021-01-06 02:35:08'),
(16, 7, 'Two Pound', 1200, 1, '2021-01-06 02:36:26'),
(17, 9, 'Per Piece', 60, 1, '2021-01-06 02:38:53'),
(18, 10, 'Per Piece', 25, 1, '2021-01-06 02:45:30'),
(19, 11, 'Per Seekh ', 100, 1, '2021-01-06 02:59:04'),
(20, 12, 'Per Seekh ', 150, 1, '2021-01-06 03:02:49'),
(21, 13, 'Per Plate', 300, 1, '2021-01-06 03:06:49'),
(22, 14, 'Per Plate', 450, 1, '2021-01-06 03:11:25'),
(23, 15, 'Half', 800, 1, '2021-01-06 03:21:23'),
(24, 15, 'Full', 1600, 1, '2021-01-06 03:21:23'),
(25, 16, 'Per Glass', 200, 1, '2021-01-06 03:27:03'),
(26, 17, 'Per Glass', 200, 1, '2021-01-06 03:29:25'),
(27, 18, 'Per Glass', 70, 1, '2021-01-06 06:14:22'),
(28, 19, 'Per Cup (Normal Tea)', 100, 1, '2021-01-06 06:17:55'),
(29, 19, 'Per Cup (Elaichi Tea)', 120, 1, '2021-01-06 06:17:55'),
(30, 20, 'Per Cup (Milky Coffee)', 200, 1, '2021-01-06 06:21:12'),
(31, 20, 'Per Cup (Black Coffee)', 200, 1, '2021-01-06 06:21:12'),
(32, 21, 'Small ', 60, 1, '2021-01-06 06:29:23'),
(33, 21, 'Large', 80, 1, '2021-01-06 06:32:16'),
(34, 22, 'Per Plate', 100, 1, '2021-01-06 06:37:12'),
(35, 23, 'Per Plate', 150, 1, '2021-01-06 06:40:19'),
(36, 24, 'Per Plate', 200, 1, '2021-01-06 06:41:10'),
(37, 25, 'Half', 400, 1, '2021-01-06 07:25:04'),
(38, 25, 'Full', 700, 1, '2021-01-06 07:25:04'),
(39, 26, 'Half', 450, 1, '2021-01-06 07:27:02'),
(40, 26, 'Full', 750, 1, '2021-01-06 07:27:29'),
(41, 27, 'Half', 450, 1, '2021-01-06 07:28:56'),
(42, 27, 'Large', 900, 1, '2021-01-06 07:28:56'),
(43, 28, 'Per Plate', 500, 1, '2021-01-06 07:51:46'),
(44, 29, 'Per Plate', 500, 1, '2021-01-06 07:53:57'),
(45, 30, 'Per Plate', 150, 1, '2021-01-06 08:02:58'),
(46, 31, 'Per Plate', 150, 1, '2021-01-06 08:03:32'),
(47, 32, 'Per Plate', 150, 1, '2021-01-06 08:04:25'),
(48, 33, 'Per Plate', 150, 1, '2021-01-06 08:04:51'),
(49, 34, 'Per Piece', 300, 1, '2021-01-06 08:16:02'),
(50, 35, 'Pair', 120, 1, '2021-01-06 08:16:42'),
(51, 36, 'Per Katori', 250, 1, '2021-01-06 08:18:40'),
(52, 37, 'Per Deal (Without Fries & Coke )', 200, 1, '2021-01-06 08:37:03'),
(53, 37, 'Per Deal', 500, 1, '2021-01-06 08:37:03'),
(54, 38, 'Small', 250, 1, '2021-01-06 08:39:26'),
(55, 38, 'Medium', 400, 1, '2021-01-06 08:39:26'),
(56, 38, 'Large', 900, 1, '2021-01-06 08:39:26'),
(57, 39, 'Per Piece', 170, 1, '2021-01-06 08:40:26'),
(58, 40, 'Per Piece', 150, 1, '2021-01-06 08:40:55'),
(59, 41, 'Per Glass', 150, 1, '2021-01-06 08:43:58'),
(60, 42, 'Per Plate', 200, 1, '2021-01-06 08:49:01'),
(61, 43, 'Per Plate', 200, 1, '2021-01-06 08:49:24'),
(62, 44, 'Per Plate', 300, 1, '2021-01-06 08:50:05'),
(63, 45, 'Per Glass', 200, 1, '2021-01-06 08:52:30'),
(64, 46, 'Half', 900, 1, '2021-01-06 08:54:50'),
(65, 46, 'Full', 1700, 1, '2021-01-06 08:54:50'),
(66, 47, 'Per Piece', 45, 1, '2021-01-06 09:27:44'),
(67, 48, 'Per Piece', 20, 1, '2021-01-06 09:28:29'),
(68, 49, 'Per Piece', 50, 1, '2021-01-06 09:29:05'),
(69, 50, 'Per Piece', 100, 1, '2021-01-06 09:37:45'),
(70, 51, 'Per Piece', 100, 1, '2021-01-06 09:38:10'),
(71, 52, 'Per Plate', 450, 1, '2021-01-06 09:45:39'),
(72, 53, 'Per Plate', 450, 1, '2021-01-06 09:46:06'),
(73, 54, 'Per Plate', 250, 1, '2021-01-06 09:46:30'),
(74, 55, 'Per Plate', 250, 1, '2021-01-06 09:47:05'),
(75, 56, 'Per Bowl', 150, 1, '2021-01-06 10:06:36'),
(76, 57, 'Per Bowl', 150, 1, '2021-01-06 10:07:20'),
(77, 58, 'Per Bowl', 250, 1, '2021-01-06 10:08:00'),
(78, 59, 'Per Plate', 390, 1, '2021-01-06 10:23:08'),
(79, 60, 'Per Plate', 400, 1, '2021-01-06 10:23:44'),
(80, 61, 'Per Plate', 350, 1, '2021-01-06 10:24:11'),
(81, 62, 'Per Plate', 1000, 1, '2021-01-06 10:35:10'),
(83, 63, 'Per Plate', 750, 1, '2021-01-06 10:36:43'),
(84, 64, 'Half', 750, 1, '2021-01-06 10:38:36'),
(85, 64, 'Full', 1500, 1, '2021-01-06 10:38:36'),
(86, 65, 'Per Plate', 325, 1, '2021-01-06 10:43:51'),
(87, 66, 'Per Piece', 150, 1, '2021-01-06 10:44:35'),
(88, 67, 'Per Piece', 180, 1, '2021-01-06 10:46:33'),
(89, 68, 'Single', 250, 1, '2021-01-06 10:49:09'),
(90, 68, 'Family', 500, 1, '2021-01-06 10:49:09'),
(91, 69, 'Per Plate', 560, 1, '2021-01-06 10:55:11'),
(92, 70, 'Per Plate', 560, 1, '2021-01-06 10:55:57'),
(93, 71, 'Per Plate', 550, 1, '2021-01-06 10:57:34'),
(94, 72, 'Per Plate', 200, 1, '2021-01-06 11:01:11'),
(95, 73, 'Per Plate', 400, 1, '2021-01-06 11:01:50'),
(96, 74, 'Per Plate', 250, 1, '2021-01-06 11:02:35'),
(97, 75, 'Per Plate', 300, 1, '2021-01-06 11:03:03'),
(98, 76, 'Per Plate', 450, 1, '2021-01-06 11:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `dish_details_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `dish_details_id`, `price`, `qty`) VALUES
(10, 10, 62, 300, 2),
(11, 11, 92, 560, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE `order_master` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `total_price` float NOT NULL,
  `coupon_code` varchar(20) NOT NULL,
  `final_price` float NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `delivery_boy_id` int(11) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `payment_type` varchar(10) NOT NULL,
  `payment_id` varchar(100) NOT NULL,
  `order_status` int(11) NOT NULL,
  `cancel_by` enum('user','admin') NOT NULL,
  `cancel_at` datetime NOT NULL,
  `added_on` datetime NOT NULL,
  `delivered_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`id`, `user_id`, `name`, `email`, `mobile`, `address`, `total_price`, `coupon_code`, `final_price`, `zipcode`, `delivery_boy_id`, `payment_status`, `payment_type`, `payment_id`, `order_status`, `cancel_by`, `cancel_at`, `added_on`, `delivered_on`) VALUES
(10, 10, 'Ayda Shahbaz', 'ayda.mughal1997@gmail.com', '03415298071', 'House # 31 Saadat Street Muhallaw Nafeerabad Shalimar Town Lahore Cantt Zilah Lahore.', 600, 'NewYearFC2021', 595, '54000', 5, 'success', 'wallet', '', 4, 'user', '0000-00-00 00:00:00', '2021-01-06 11:25:17', '0000-00-00 00:00:00'),
(11, 10, 'Ayda Shahbaz', 'ayda.mughal1997@gmail.com', '03415298071', 'House # 31 Saadat Street Muhallaw Nafeerabad Shalimar Town Lahore Cantt Zilah Lahore.', 560, '', 560, '54000', 5, 'success', 'wallet', '', 4, 'user', '0000-00-00 00:00:00', '2021-01-06 11:42:00', '2021-01-06 11:44:36');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `order_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `order_status`) VALUES
(1, 'Pending'),
(2, 'Cooking '),
(3, 'On the Way'),
(4, 'Delivered'),
(5, 'Cancel');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `dish_detail_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `user_id`, `order_id`, `dish_detail_id`, `rating`) VALUES
(1, 1, 6, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `cart_min_price` int(11) NOT NULL,
  `cart_min_price_msg` varchar(250) NOT NULL,
  `website_close` int(11) NOT NULL,
  `wallet_amt` int(11) NOT NULL,
  `website_close_msg` varchar(250) NOT NULL,
  `referral_amt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `cart_min_price`, `cart_min_price_msg`, `website_close`, `wallet_amt`, `website_close_msg`, `referral_amt`) VALUES
(1, 100, 'Cart min price will be 50 rs', 0, 0, 'Website Closed for today', 50);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `email_verify` int(11) NOT NULL,
  `rand_str` varchar(20) NOT NULL,
  `referral_code` varchar(20) NOT NULL,
  `from_referral_code` varchar(20) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `mobile`, `password`, `status`, `email_verify`, `rand_str`, `referral_code`, `from_referral_code`, `added_on`) VALUES
(2, 'Roshaan Rao ', 'roshaanrao.official@gmail.com', '03020402352', '$2y$10$zdSTkPZHs2EjR2S4DpTEp.XtjossB/wp1A1XQ.G3Cp8zfp6.unj8.', 1, 1, 'lmkaetixyrzqoqy', 'lmkaetixyrzqoqds', '', '2020-07-18 05:11:37'),
(10, 'Ayda Shahbaz', 'ayda.mughal1997@gmail.com', '03415298071', '$2y$10$x4qKOKA1X/PAKmYLT7o.weNhbol4kIxFY29OEvOC4cOp8fUcZexkO', 1, 1, 'nulpydjpldjrcix', 'viygauxctzrqjme', '', '2021-01-06 12:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amt` int(11) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `type` enum('in','out') NOT NULL,
  `payment_id` varchar(50) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `user_id`, `amt`, `msg`, `type`, `payment_id`, `added_on`) VALUES
(2, 2, 50, 'Registration', 'in', '', '2020-07-18 05:11:38'),
(4, 2, 50, 'Shoping', 'out', '', '0000-00-00 00:00:00'),
(5, 2, 100, 'Added', 'in', '', '0000-00-00 00:00:00'),
(7, 2, 100, 'Added', 'in', '', '2020-07-18 05:58:29'),
(8, 2, 20, 'Added', 'in', '', '2020-07-18 05:59:02'),
(9, 2, 15, 'Added', 'in', '', '2020-07-18 06:00:35'),
(10, 2, 30, 'Added', 'in', '', '2020-07-18 06:01:17'),
(11, 2, 10, 'Added', 'in', '20200718111212800110168602301710786', '2020-07-18 06:04:04'),
(13, 2, 160, 'Order Id-2', 'out', '', '2020-07-18 06:09:59'),
(14, 2, 800, 'Added', 'in', '20200718111212800110168644701732407', '2020-07-18 06:17:19'),
(15, 3, 0, 'Register', 'in', '', '2020-07-18 08:00:53'),
(16, 2, 200, 'Order Id-3', 'out', '', '2020-07-19 04:29:04'),
(17, 2, 200, 'Order Id-4', 'out', '', '2020-07-19 04:30:51'),
(18, 3, 100, 'Test msg', 'in', '', '2020-07-21 08:22:33'),
(19, 2, 200, 'Test Msg', 'in', '', '2020-07-21 08:22:46'),
(22, 2, 50, 'Referral Amt from phpvishal@gmail.com', 'in', '', '2020-07-23 09:12:28'),
(23, 2, 40, 'Order Id-4', 'out', '', '2020-12-25 03:56:25'),
(24, 2, 40, 'Order Id-5', 'out', '', '2020-12-25 04:00:34'),
(25, 2, 40, 'Order Id-6', 'out', '', '2020-12-25 04:34:25'),
(26, 5, 100, 'abc', 'in', '', '2020-12-25 04:39:44'),
(27, 2, 100, 'abc', 'in', '', '2020-12-25 04:40:04'),
(28, 2, 80, 'Order Id-7', 'out', '', '2020-12-25 10:49:37'),
(29, 9, 1000, '', 'in', '', '2021-01-03 05:54:51'),
(30, 9, 500, 'Order Id-8', 'out', '', '2021-01-03 06:06:35'),
(31, 9, 500, 'Order Id-9', 'out', '', '2021-01-03 06:15:13'),
(33, 10, 5000, 'Your Amount Successfully Added In Wallet. Thank You For Submitting Money!!!', 'in', '', '2021-01-06 11:19:52'),
(34, 10, 595, 'Order Id-10', 'out', '', '2021-01-06 11:25:17'),
(35, 0, 50, 'Referral Amt from ayda.mughal1997@gmail.com', 'in', '', '2021-01-06 11:31:04'),
(36, 10, 560, 'Order Id-11', 'out', '', '2021-01-06 11:42:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_code`
--
ALTER TABLE `coupon_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish`
--
ALTER TABLE `dish`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish_cart`
--
ALTER TABLE `dish_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish_details`
--
ALTER TABLE `dish_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_master`
--
ALTER TABLE `order_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
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
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupon_code`
--
ALTER TABLE `coupon_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dish`
--
ALTER TABLE `dish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `dish_cart`
--
ALTER TABLE `dish_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dish_details`
--
ALTER TABLE `dish_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_master`
--
ALTER TABLE `order_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
