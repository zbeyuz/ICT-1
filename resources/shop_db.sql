-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 17, 2015 at 05:44 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `bill_info`
--

CREATE TABLE IF NOT EXISTS `bill_info` (
  `bill_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `bill_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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

-- --------------------------------------------------------

--
-- Table structure for table `item_best`
--

CREATE TABLE IF NOT EXISTS `item_best` (
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `item_deal`
--

CREATE TABLE IF NOT EXISTS `item_deal` (
  `item_id` int(11) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `item_feature`
--

CREATE TABLE IF NOT EXISTS `item_feature` (
  `item_id` int(11) NOT NULL,
  `item_state` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `item_info`
--

CREATE TABLE IF NOT EXISTS `item_info` (
  `item_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_material` text COLLATE utf8_bin NOT NULL,
  `item_color` text COLLATE utf8_bin NOT NULL,
  `item_size` text COLLATE utf8_bin NOT NULL,
  `item_sample_pic` text COLLATE utf8_bin NOT NULL,
  `item_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `item_info`
--

INSERT INTO `item_info` (`item_id`, `product_id`, `item_material`, `item_color`, `item_size`, `item_sample_pic`, `item_quantity`) VALUES
(123, 0, 'gg', 'red', 'xxl', '', 12),
(122, 1, 'asd', 'red', 'xxl', '', 10),
(122, 2, 'asd', 'red', 'xl', '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `item_list`
--

CREATE TABLE IF NOT EXISTS `item_list` (
  `item_id` int(11) NOT NULL,
  `item_name` text COLLATE utf8_bin NOT NULL,
  `item_price` int(11) NOT NULL,
  `item_discount` int(11) NOT NULL,
  `item_gender` text COLLATE utf8_bin NOT NULL,
  `item_type` text COLLATE utf8_bin NOT NULL,
  `item_manufacture` text COLLATE utf8_bin NOT NULL,
  `item_info` text COLLATE utf8_bin NOT NULL,
  `item_description` text COLLATE utf8_bin NOT NULL,
  `item_profile_pic` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `item_list`
--

INSERT INTO `item_list` (`item_id`, `item_name`, `item_price`, `item_discount`, `item_gender`, `item_type`, `item_manufacture`, `item_info`, `item_description`, `item_profile_pic`) VALUES
(123, 'asd', 12, 1, '', '', 'asda', 'aasdasd', '', ''),
(122, 'asd', 12, 0, '', '', 'qwe', 'asdad', '', ''),
(121, '123', 112, 0, 'm', 'wallet', 'asd', 'qwe', '', ''),
(111, 'qwe', 13, 0, 'm', 'wallet', 'asd', 'qwe', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `item_new`
--

CREATE TABLE IF NOT EXISTS `item_new` (
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `item_pic`
--

CREATE TABLE IF NOT EXISTS `item_pic` (
  `item_id` int(11) NOT NULL,
  `pic_num` int(11) NOT NULL,
  `pic_location` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `item_pic`
--

INSERT INTO `item_pic` (`item_id`, `pic_num`, `pic_location`) VALUES
(123, 1, 'asdasd'),
(123, 2, 'asdff'),
(121, 1, 'asdff'),
(121, 2, 'asdfdf');

-- --------------------------------------------------------

--
-- Table structure for table `item_review`
--

CREATE TABLE IF NOT EXISTS `item_review` (
  `review_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review_title` text COLLATE utf8_bin NOT NULL,
  `review_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `review_value` int(11) NOT NULL,
  `review_price` int(11) NOT NULL,
  `review_quality` int(11) NOT NULL,
  `review_text` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `item_review`
--

INSERT INTO `item_review` (`review_id`, `item_id`, `user_id`, `review_title`, `review_date`, `review_value`, `review_price`, `review_quality`, `review_text`) VALUES
(1, 123, 123, '123', '2015-08-12 15:06:53', 1, 1, 1, '123'),
(2, 123, 123, '123', '2015-08-12 15:07:17', 1, 1, 1, '123'),
(3, 123, 123, '123', '0000-00-00 00:00:00', 1, 1, 1, '123'),
(4, 0, 0, 'title', '2015-08-12 15:15:18', 1, 2, 3, 'content');

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
(1, 's@s', '123', '', ''),
(2, 'u@u', '123', '', ''),
(3, 'g@g', '123', 'qwe', 'qwe'),
(4, 'a@a', '123', 'qwe', 'qwe');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item_review`
--
ALTER TABLE `item_review`
  ADD PRIMARY KEY (`review_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item_review`
--
ALTER TABLE `item_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
