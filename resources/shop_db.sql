-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 23, 2015 at 11:02 AM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_list`
--

CREATE TABLE IF NOT EXISTS `admin_list` (
  `admin_id` int(11) NOT NULL,
  `admin_email` text COLLATE utf8_bin NOT NULL,
  `admin_password` text COLLATE utf8_bin NOT NULL,
  `admin_pic` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `bill_address`
--

CREATE TABLE IF NOT EXISTS `bill_address` (
  `bill_id` int(11) NOT NULL,
  `bill_fname` text COLLATE utf8_bin NOT NULL,
  `bill_lname` text COLLATE utf8_bin NOT NULL,
  `bill_email` text COLLATE utf8_bin NOT NULL,
  `bill_address` text COLLATE utf8_bin NOT NULL,
  `bill_floor` text COLLATE utf8_bin NOT NULL,
  `bill_unit` text COLLATE utf8_bin NOT NULL,
  `bill_road` text COLLATE utf8_bin NOT NULL,
  `bill_country` text COLLATE utf8_bin NOT NULL,
  `bill_postcode` int(11) NOT NULL,
  `bill_tel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `bill_address`
--

INSERT INTO `bill_address` (`bill_id`, `bill_fname`, `bill_lname`, `bill_email`, `bill_address`, `bill_floor`, `bill_unit`, `bill_road`, `bill_country`, `bill_postcode`, `bill_tel`) VALUES
(1, 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 1, 1),
(2, 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 1231, 123123);

-- --------------------------------------------------------

--
-- Table structure for table `bill_info`
--

CREATE TABLE IF NOT EXISTS `bill_info` (
  `bill_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `bill_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `bill_info`
--

INSERT INTO `bill_info` (`bill_id`, `product_id`, `item_id`, `bill_quantity`) VALUES
(1, 222, 1, 2),
(1, 222, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `bill_list`
--

CREATE TABLE IF NOT EXISTS `bill_list` (
  `bill_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bill_state` int(11) NOT NULL,
  `bill_done_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bill_shipping_type` text COLLATE utf8_bin NOT NULL,
  `bill_shipping_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `bill_list`
--

INSERT INTO `bill_list` (`bill_id`, `user_id`, `bill_state`, `bill_done_date`, `bill_shipping_type`, `bill_shipping_price`) VALUES
(1, 5, 1, '2015-08-17 13:15:49', 'ok', 10),
(2, 5, 2, '1970-01-01 00:00:01', 'ok', 10);

-- --------------------------------------------------------

--
-- Table structure for table `item_info`
--

CREATE TABLE IF NOT EXISTS `item_info` (
  `product_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_material` text COLLATE utf8_bin NOT NULL,
  `item_color` text COLLATE utf8_bin NOT NULL,
  `item_size` text COLLATE utf8_bin NOT NULL,
  `item_sample_pic` text COLLATE utf8_bin NOT NULL,
  `item_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `item_info`
--

INSERT INTO `item_info` (`product_id`, `item_id`, `item_material`, `item_color`, `item_size`, `item_sample_pic`, `item_quantity`) VALUES
(222, 1, 'as', 'asd', 'asd', 'asd', 11),
(222, 2, 'ii', 'ii', 'ii', 'ii', 4);

-- --------------------------------------------------------

--
-- Table structure for table `product_best`
--

CREATE TABLE IF NOT EXISTS `product_best` (
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `product_deal`
--

CREATE TABLE IF NOT EXISTS `product_deal` (
  `product_id` int(11) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `product_feature`
--

CREATE TABLE IF NOT EXISTS `product_feature` (
  `product_id` int(11) NOT NULL,
  `product_state` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE IF NOT EXISTS `product_list` (
  `product_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8_bin NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_discount` int(11) NOT NULL,
  `product_gender` text COLLATE utf8_bin NOT NULL,
  `product_type` text COLLATE utf8_bin NOT NULL,
  `product_manufacture` text COLLATE utf8_bin NOT NULL,
  `product_info` text COLLATE utf8_bin NOT NULL,
  `product_description` text COLLATE utf8_bin NOT NULL,
  `product_profile_pic` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`product_id`, `product_name`, `product_price`, `product_discount`, `product_gender`, `product_type`, `product_manufacture`, `product_info`, `product_description`, `product_profile_pic`) VALUES
(123, 'asd', 12, 1, '', '', 'asda', 'aasdasd', '', ''),
(122, 'asd', 12, 0, '', '', 'qwe', 'asdad', '', ''),
(121, '123', 112, 0, 'm', 'wallet', 'asd', 'qwe', '', ''),
(111, 'qwe', 13, 0, 'm', 'wallet', 'asd', 'qwe', '', ''),
(222, 'ada', 11, 1, 'ads', 'asd', 'asd', 'asd', 'asda', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `product_new`
--

CREATE TABLE IF NOT EXISTS `product_new` (
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `product_pic`
--

CREATE TABLE IF NOT EXISTS `product_pic` (
  `product_id` int(11) NOT NULL,
  `pic_num` int(11) NOT NULL,
  `pic_location` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE IF NOT EXISTS `product_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review_title` text COLLATE utf8_bin NOT NULL,
  `review_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `review_value` int(11) NOT NULL,
  `review_price` int(11) NOT NULL,
  `review_quality` int(11) NOT NULL,
  `review_text` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `product_review`
--

INSERT INTO `product_review` (`review_id`, `product_id`, `user_id`, `review_title`, `review_date`, `review_value`, `review_price`, `review_quality`, `review_text`) VALUES
(1, 123, 123, '123', '2015-08-12 15:06:53', 1, 1, 1, '123'),
(2, 123, 123, '123', '2015-08-12 15:07:17', 1, 1, 1, '123'),
(3, 123, 123, '123', '0000-00-00 00:00:00', 1, 1, 1, '123'),
(4, 0, 0, 'title', '2015-08-12 15:15:18', 1, 2, 3, 'content'),
(5, 122, 5, 'kk', '1970-01-01 00:00:55', 3, 3, 3, 'kk'),
(6, 122, 6, 'kk', '1970-01-01 00:00:55', 3, 3, 3, 'kk');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` int(11) NOT NULL,
  `user_address` text COLLATE utf8_bin NOT NULL,
  `user_floor` text COLLATE utf8_bin NOT NULL,
  `user_unit` text COLLATE utf8_bin NOT NULL,
  `user_road` text COLLATE utf8_bin NOT NULL,
  `user_country` text COLLATE utf8_bin NOT NULL,
  `user_postcode` int(11) NOT NULL,
  `user_tel` int(11) NOT NULL,
  `user_pic` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `user_address`, `user_floor`, `user_unit`, `user_road`, `user_country`, `user_postcode`, `user_tel`, `user_pic`) VALUES
(5, 'ok', 'ok', 'ok', 'ok', 'ok', 123, 123, 'ok'),
(6, 'ok', 'ok', 'ok', 'ok', 'ok', 1234, 1234, 'ok'),
(1, 'ok', 'ok', 'ok', 'ok', 'ok', 123, 12312, 'ok'),
(2, 'ok', 'ok', 'ok', 'ok', 'ok', 123, 12312, 'ok'),
(3, 'ok', 'ok', 'ok', 'ok', 'ok', 123, 12312, 'ok'),
(4, 'ok', 'ok', 'ok', 'ok', 'ok', 123, 12312, 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `user_list`
--

CREATE TABLE IF NOT EXISTS `user_list` (
  `user_id` int(11) NOT NULL,
  `user_email` text COLLATE utf8_bin NOT NULL,
  `user_password` text COLLATE utf8_bin NOT NULL,
  `user_fname` text COLLATE utf8_bin NOT NULL,
  `user_lname` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_list`
--

INSERT INTO `user_list` (`user_id`, `user_email`, `user_password`, `user_fname`, `user_lname`) VALUES
(5, 'a@a', '12', 'jkas', 'qwe'),
(6, 'pl@pp', '122', 'jkas', 'qwe'),
(1, 'q@q', '123', 'asd', 'asd'),
(2, 'w@w', '123', 'asd', 'asd'),
(3, 'r@r', '123', 'qaza', 'qaza'),
(4, 'e@e', '123', 'qaza', 'qaza');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`user_id`, `product_id`) VALUES
(1, 123),
(1, 122);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`review_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_review`
--
ALTER TABLE `product_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
