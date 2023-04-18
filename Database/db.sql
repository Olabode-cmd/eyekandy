-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2023 at 07:32 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eyekandybrand`
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
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

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
(3, 'Men', '', '2017-01-24 19:17:37', '04-04-2023 05:19:41 PM'),
(4, 'Women', '', '2017-01-24 19:19:32', '04-04-2023 05:19:56 PM'),
(5, 'Kids', '', '2017-01-24 19:19:54', '04-04-2023 05:20:16 PM'),
(6, 'Frames', '', '2017-02-20 19:18:52', '04-04-2023 05:20:56 PM'),
(7, 'Lens', '', '2023-04-04 11:51:06', NULL);

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
(1, 4, '18', 1, '2023-04-05 05:29:00', 'Debit / Credit card', NULL);

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
(1, 3, 1, 'Vintage Luxx Designer Glasses With Case : Clear', 'Luxx', 7500, 7500, 'Vintage Luxx Designer Glasses With Case : Clear', '1.png', '1.png', '', 0, 'In Stock', '2023-04-05 04:33:28', NULL),
(2, 3, 1, 'Anti Blue Rays Radiation Computer Glasses - Black', 'Comp', 9000, 9000, 'Anti Blue Rays Radiation Computer Glasses - Black', '2.jpg', '2.jpg', '', 0, 'In Stock', '2023-04-05 04:35:05', NULL),
(3, 3, 1, 'Korean Rectangle Eyeglasses Optical Eyewear Frames For Men', 'Korean', 2750, 2750, 'Korean Rectangle Eyeglasses Optical Eyewear Frames For Men', '3.jpg', '3.jpg', '', 0, 'In Stock', '2023-04-05 04:36:44', NULL),
(4, 3, 1, 'Photochromic Anit Blue Light Glasses Rectangle Eyewear Frame', 'Photochromic', 5801, 5801, 'Photochromic Anit Blue Light Glasses Rectangle Eyewear Frame', '4.jpg', '4.jpg', '', 0, 'In Stock', '2023-04-05 04:38:18', NULL),
(5, 3, 1, 'Half Rimless Metal Frame Mens Anti-blue Ray Computer Glasses', 'Ray', 4150, 4300, 'Half Rimless Metal Frame Mens Anti-blue Ray Computer Glasses', '5.jpg', '5.jpg', '', 0, 'In Stock', '2023-04-05 04:39:43', NULL),
(6, 4, 2, 'Classic Designer Glasses - For Ladies With Free Zipper Black Case', 'Zipper', 9230, 9800, 'Classic Designer Glasses - For Ladies With Free Zipper Black Case', '6.jpg', '6.jpg', '', 0, 'In Stock', '2023-04-05 04:44:03', NULL),
(7, 4, 2, 'Retro Box Frame Anti-blue Light Glasses', 'Retro', 5550, 5700, 'Retro Box Frame Anti-blue Light Glasses', '7.jpg', '7.jpg', '', 0, 'In Stock', '2023-04-05 04:45:27', NULL),
(8, 4, 2, 'Classic Clear Frame Glass - For Ladies With Zipper Black Hard Case', 'Zipper', 4670, 5690, 'Classic Clear Frame Glass - For Ladies With Zipper Black Hard Case', '8.jpg', '8.jpg', '', 0, 'In Stock', '2023-04-05 04:46:43', NULL),
(9, 4, 2, 'Classic Designer Sunshade - For Ladies And With Free Zipper Black', 'Zipper', 7900, 7900, 'Classic Designer Sunshade - For Ladies And With Free Zipper Black', '9.jpg', '9.jpg', '', 0, 'In Stock', '2023-04-05 04:48:09', NULL),
(10, 4, 2, 'Classic Clear Frame Glass - For Ladies With Zipper Black Hard Case', 'Hard', 11700, 12500, 'Classic Clear Frame Glass - For Ladies With Zipper Black Hard Case', '10.jpg', '10.jpg', '', 0, 'In Stock', '2023-04-05 04:49:26', NULL),
(11, 5, 3, 'Protection Anti Eyestrain Light Blocking Computer Glasses Kids Blue', 'Block', 3400, 3400, 'Protection Anti Eyestrain Light Blocking Computer Glasses Kids Blue', '11.jpg', '11.jpg', '', 0, 'In Stock', '2023-04-05 04:56:22', NULL),
(12, 5, 3, 'Anti Blue Light Kids Computer Flexible Frame Eyeglasses Black Red Leg', 'Flex', 2856, 2927, 'Anti Blue Light Kids Computer Flexible Frame Eyeglasses Black Red Leg', '12.jpg', '12.jpg', '', 0, 'In Stock', '2023-04-05 04:59:16', NULL),
(13, 5, 3, 'Blue Light Blocking Glasses Gaming Glasses For Kids', 'Block', 1470, 1650, 'Blue Light Blocking Glasses Gaming Glasses For Kids', '13.jpg', '13.jpg', '', 0, 'In Stock', '2023-04-05 05:01:13', NULL),
(14, 6, 4, 'Anti Blue Ray Computer Glasses Metal Frame', 'Metal', 2605, 2699, 'Anti Blue Ray Computer Glasses Metal Frame', '14.jpg', '14.jpg', '', 0, 'In Stock', '2023-04-05 05:03:02', NULL),
(15, 6, 4, 'Anti Blue Ray Light Glasses For Screens Black-Gold Frame', 'Ray', 3400, 3450, 'Anti Blue Ray Light Glasses For Screens Black-Gold Frame', '15.jpg', '15.jpg', '', 0, 'In Stock', '2023-04-05 05:04:28', NULL),
(16, 6, 4, 'Flat Anti Blue Ray Computer Eyeglasses - Off -White', 'Ray', 2900, 2900, 'Flat Anti Blue Ray Computer Eyeglasses - Off -White', '16.jpg', '16.jpg', '', 0, 'In Stock', '2023-04-05 05:06:07', NULL),
(17, 6, 4, 'Anti Blue Light Cat Eye Eyeglasses', 'Cat', 4999, 4999, 'Anti Blue Light Cat Eye Eyeglasses', '17.jpg', '17.jpg', '', 0, 'In Stock', '2023-04-05 05:07:21', NULL),
(18, 7, 5, 'Motorcycle Protection Dirt Bike Glasses Flying Colorful', 'Dirt', 5760, 5789, 'Motorcycle Protection Dirt Bike Glasses Flying Colorful', '18.jpg', '18.jpg', '', 0, 'In Stock', '2023-04-05 05:09:34', NULL),
(19, 7, 5, 'Ski Women Men Snowboard Over Glasses For Skating Red', 'Ski', 8700, 9800, 'Ski Women Men Snowboard Over Glasses For Skating Red', '19.jpg', '19.jpg', '', 0, 'In Stock', '2023-04-05 05:10:28', NULL),
(20, 7, 5, 'Safety Lab Eye Protector Clear Protective Glasses UV Black', 'UV', 1320, 1363, 'Safety Lab Eye Protector Clear Protective Glasses UV Black', '20.jpg', '20.jpg', '', 0, 'In Stock', '2023-04-05 05:11:18', NULL);

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
(1, 3, 'All', '2023-04-05 04:19:40', NULL),
(2, 4, 'All', '2023-04-05 04:19:46', NULL),
(3, 5, 'All', '2023-04-05 04:19:51', NULL),
(4, 6, 'All', '2023-04-05 04:19:57', NULL),
(5, 7, 'All', '2023-04-05 04:20:04', NULL);

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
(1, 'frauntezic@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 05:24:25', NULL, 1);

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
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'New Delhi', 'New Delhi', 'Delhi', 110092, '2017-02-04 19:30:50', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', ''),
(4, 'Chekwube Obele', 'frauntezic@gmail.com', 7061675728, '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-04 07:23:34', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
