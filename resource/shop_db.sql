-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2015 at 10:34 AM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

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
-- Table structure for table `bill_done`
--

CREATE TABLE IF NOT EXISTS `bill_done` (
  `bill_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `bill_quility` int(11) NOT NULL,
  `bill_done_date` date NOT NULL,
  `bill_address` text COLLATE utf8_bin NOT NULL,
  `bill_city` text COLLATE utf8_bin NOT NULL,
  `bill_province` text COLLATE utf8_bin NOT NULL,
  `bill_country` text COLLATE utf8_bin NOT NULL,
  `bill_postcode` text COLLATE utf8_bin NOT NULL,
  `bill_tel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `bill_on`
--

CREATE TABLE IF NOT EXISTS `bill_on` (
  `bill_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `bill_quiltiy` int(11) NOT NULL,
  `bill_state` int(11) NOT NULL,
  `bill_address` text COLLATE utf8_bin NOT NULL,
  `bill_city` text COLLATE utf8_bin NOT NULL,
  `bill_province` text COLLATE utf8_bin NOT NULL,
  `bill_country` text COLLATE utf8_bin NOT NULL,
  `bill_postcode` int(11) NOT NULL,
  `bill_tel` int(11) NOT NULL
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
  `item_material` text COLLATE utf8_bin NOT NULL,
  `item_color` text COLLATE utf8_bin NOT NULL,
  `item_size` text COLLATE utf8_bin NOT NULL,
  `item_sample_pic` text COLLATE utf8_bin NOT NULL,
  `item_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `item_info`
--

INSERT INTO `item_info` (`item_id`, `item_material`, `item_color`, `item_size`, `item_sample_pic`, `item_quantity`) VALUES
(123, 'gg', 'red', 'xxl', '', 12);

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
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review_title` text COLLATE utf8_bin NOT NULL,
  `review_date` date NOT NULL,
  `review_value` int(11) NOT NULL,
  `review_price` int(11) NOT NULL,
  `review_quality` int(11) NOT NULL,
  `review_text` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` int(11) NOT NULL,
  `user_address` text COLLATE utf8_bin NOT NULL,
  `user_road` text COLLATE utf8_bin NOT NULL,
  `user_city` text COLLATE utf8_bin NOT NULL,
  `user_province` text COLLATE utf8_bin NOT NULL,
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
