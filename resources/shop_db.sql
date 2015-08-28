-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2015-08-27 16:51:19
-- 服务器版本： 5.6.25
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
-- 表的结构 `admin_list`
--

CREATE TABLE IF NOT EXISTS `admin_list` (
  `admin_id` int(11) NOT NULL,
  `admin_email` text COLLATE utf8_bin NOT NULL,
  `admin_password` text COLLATE utf8_bin NOT NULL,
  `admin_pic` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `bill_address`
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
-- 转存表中的数据 `bill_address`
--

INSERT INTO `bill_address` (`bill_id`, `bill_fname`, `bill_lname`, `bill_email`, `bill_address`, `bill_floor`, `bill_unit`, `bill_road`, `bill_country`, `bill_postcode`, `bill_tel`) VALUES
(1, 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 1, 1),
(2, 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 1231, 123123);

-- --------------------------------------------------------

--
-- 表的结构 `bill_info`
--

CREATE TABLE IF NOT EXISTS `bill_info` (
  `bill_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `bill_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `bill_info`
--

INSERT INTO `bill_info` (`bill_id`, `product_id`, `item_id`, `bill_quantity`) VALUES
(1, 222, 1, 2),
(1, 222, 2, 2);

-- --------------------------------------------------------

--
-- 表的结构 `bill_list`
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
-- 转存表中的数据 `bill_list`
--

INSERT INTO `bill_list` (`bill_id`, `user_id`, `bill_state`, `bill_done_date`, `bill_shipping_type`, `bill_shipping_price`) VALUES
(1, 5, 1, '2015-08-17 13:15:49', 'ok', 10),
(2, 5, 2, '1970-01-01 00:00:01', 'ok', 10);

-- --------------------------------------------------------

--
-- 表的结构 `item_info`
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
-- 转存表中的数据 `item_info`
--

INSERT INTO `item_info` (`product_id`, `item_id`, `item_material`, `item_color`, `item_size`, `item_sample_pic`, `item_quantity`) VALUES
(101001, 1, 'Cotton', 'Red', 'S', 'NA', 11),
(101001, 2, 'Cotton', 'Red', 'M', 'NA', 11),
(101001, 3, 'Cotton', 'Red', 'L', 'NA', 11),
(101001, 4, 'Cotton', 'Red', 'XL', 'NA', 11),
(101001, 5, 'Cotton', 'Blue', 'S', 'NA', 11),
(101001, 6, 'Cotton', 'Blue', 'M', 'NA', 11),
(101001, 7, 'Cotton', 'Blue', 'L', 'NA', 11),
(101001, 8, 'Cotton', 'Blue', 'XL', 'NA', 11),
(101001, 9, 'Cotton', 'Green', 'S', 'NA', 11),
(101001, 10, 'Cotton', 'Green', 'M', 'NA', 11),
(101001, 11, 'Cotton', 'Green', 'L', 'NA', 11),
(101001, 12, 'Cotton', 'Green', 'XL', 'NA', 11),
(101002, 1, 'Cotton', 'White', 'Free Size', 'NA', 11),
(101002, 2, 'Cotton', 'Black', 'Free Size', 'NA', 11),
(101002, 3, 'Cotton', 'White', 'Free Size', 'NA', 11),
(101002, 5, 'Cotton', 'Red', 'Free Size', 'NA', 11),
(101002, 6, 'Cotton', 'Green', 'Free Size', 'NA', 11),
(101002, 7, 'Cotton', 'Blue', 'Free Size', 'NA', 11),
(101003, 1, 'Cotton', 'White', 'S', 'NA', 11),
(101003, 2, 'Cotton', 'White', 'M', 'NA', 11),
(101003, 3, 'Cotton', 'White', 'L', 'NA', 11),
(101003, 5, 'Cotton', 'Black', 'S', 'NA', 11),
(101003, 6, 'Cotton', 'Black', 'M', 'NA', 11),
(101003, 7, 'Cotton', 'Black', 'L', 'NA', 11),
(101004, 1, 'Cotton', 'Red', 'S', 'NA', 11),
(101004, 2, 'Cotton', 'Red', 'M', 'NA', 11),
(101004, 3, 'Cotton', 'Red', 'L', 'NA', 11),
(101004, 4, 'Cotton', 'Red', 'XL', 'NA', 11),
(101004, 5, 'Cotton', 'Blue', 'S', 'NA', 11),
(101004, 6, 'Cotton', 'Blue', 'M', 'NA', 11),
(101004, 7, 'Cotton', 'Blue', 'L', 'NA', 11),
(101004, 8, 'Cotton', 'Blue', 'XL', 'NA', 11),
(101004, 9, 'Cotton', 'Green', 'S', 'NA', 11),
(101004, 10, 'Cotton', 'Green', 'M', 'NA', 11),
(101004, 11, 'Cotton', 'Green', 'L', 'NA', 11),
(101004, 12, 'Cotton', 'Green', 'XL', 'NA', 11),
(101005, 1, 'Cotton', 'Red', 'S', 'NA', 11),
(101005, 2, 'Cotton', 'Red', 'M', 'NA', 11),
(101005, 3, 'Cotton', 'Red', 'L', 'NA', 11),
(101005, 4, 'Cotton', 'Red', 'XL', 'NA', 11),
(101005, 5, 'Cotton', 'Blue', 'S', 'NA', 11),
(101005, 6, 'Cotton', 'Blue', 'M', 'NA', 11),
(101005, 7, 'Cotton', 'Blue', 'L', 'NA', 11),
(101005, 8, 'Cotton', 'Blue', 'XL', 'NA', 11),
(101005, 9, 'Cotton', 'Green', 'S', 'NA', 11),
(101005, 10, 'Cotton', 'Green', 'M', 'NA', 11),
(101005, 11, 'Cotton', 'Green', 'L', 'NA', 11),
(101005, 12, 'Cotton', 'Green', 'XL', 'NA', 11),
(101006, 1, 'Cotton', 'White', 'S', 'NA', 11),
(101006, 2, 'Cotton', 'White', 'M', 'NA', 11),
(101006, 3, 'Cotton', 'White', 'L', 'NA', 11),
(101006, 5, 'Cotton', 'Black', 'S', 'NA', 11),
(101006, 6, 'Cotton', 'Black', 'M', 'NA', 11),
(101006, 7, 'Cotton', 'Black', 'L', 'NA', 11),
(101007, 1, 'Cotton', 'White', 'S', 'NA', 11),
(101007, 2, 'Cotton', 'White', 'M', 'NA', 11),
(101007, 3, 'Cotton', 'White', 'L', 'NA', 11),
(101007, 5, 'Cotton', 'Black', 'S', 'NA', 11),
(101007, 6, 'Cotton', 'Black', 'M', 'NA', 11),
(101007, 7, 'Cotton', 'Black', 'L', 'NA', 11),
(101008, 1, 'Cotton', 'White', 'Free Size', 'NA', 11),
(101008, 2, 'Cotton', 'Black', 'Free Size', 'NA', 11),
(101008, 3, 'Cotton', 'White', 'Free Size', 'NA', 11),
(101008, 5, 'Cotton', 'Red', 'Free Size', 'NA', 11),
(101008, 6, 'Cotton', 'Green', 'Free Size', 'NA', 11),
(101008, 7, 'Cotton', 'Blue', 'Free Size', 'NA', 11),
(101009, 1, 'Cotton', 'White', 'Free Size', 'NA', 11),
(101009, 2, 'Cotton', 'Black', 'Free Size', 'NA', 11),
(101009, 3, 'Cotton', 'White', 'Free Size', 'NA', 11),
(101009, 5, 'Cotton', 'Red', 'Free Size', 'NA', 11),
(101009, 6, 'Cotton', 'Green', 'Free Size', 'NA', 11),
(101009, 7, 'Cotton', 'Blue', 'Free Size', 'NA', 11),
(101010, 1, 'Cotton', 'White', 'S', 'NA', 11),
(101010, 2, 'Cotton', 'White', 'M', 'NA', 11),
(101010, 3, 'Cotton', 'White', 'L', 'NA', 11),
(101010, 5, 'Cotton', 'Black', 'S', 'NA', 11),
(101010, 6, 'Cotton', 'Black', 'M', 'NA', 11),
(101010, 7, 'Cotton', 'Black', 'L', 'NA', 11),
(102001, 1, 'Cotton', 'Red', 'S', 'NA', 11),
(102001, 2, 'Cotton', 'Red', 'M', 'NA', 11),
(102001, 3, 'Cotton', 'Red', 'L', 'NA', 11),
(102001, 4, 'Cotton', 'Red', 'XL', 'NA', 11),
(102001, 5, 'Cotton', 'Blue', 'S', 'NA', 11),
(102001, 6, 'Cotton', 'Blue', 'M', 'NA', 11),
(102001, 7, 'Cotton', 'Blue', 'L', 'NA', 11),
(102001, 8, 'Cotton', 'Blue', 'XL', 'NA', 11),
(102001, 9, 'Cotton', 'Green', 'S', 'NA', 11),
(102001, 10, 'Cotton', 'Green', 'M', 'NA', 11),
(102001, 11, 'Cotton', 'Green', 'L', 'NA', 11),
(102001, 12, 'Cotton', 'Green', 'XL', 'NA', 11),
(102002, 1, 'Cotton', 'White', 'Free Size', 'NA', 11),
(102002, 2, 'Cotton', 'Black', 'Free Size', 'NA', 11),
(102002, 3, 'Cotton', 'White', 'Free Size', 'NA', 11),
(102002, 5, 'Cotton', 'Red', 'Free Size', 'NA', 11),
(102002, 6, 'Cotton', 'Green', 'Free Size', 'NA', 11),
(102002, 7, 'Cotton', 'Blue', 'Free Size', 'NA', 11),
(102003, 1, 'Cotton', 'White', 'S', 'NA', 11),
(102003, 2, 'Cotton', 'White', 'M', 'NA', 11),
(102003, 3, 'Cotton', 'White', 'L', 'NA', 11),
(102003, 5, 'Cotton', 'Black', 'S', 'NA', 11),
(102003, 6, 'Cotton', 'Black', 'M', 'NA', 11),
(102003, 7, 'Cotton', 'Black', 'L', 'NA', 11),
(102004, 1, 'Cotton', 'Red', 'S', 'NA', 11),
(102004, 2, 'Cotton', 'Red', 'M', 'NA', 11),
(102004, 3, 'Cotton', 'Red', 'L', 'NA', 11),
(102004, 4, 'Cotton', 'Red', 'XL', 'NA', 11),
(102004, 5, 'Cotton', 'Blue', 'S', 'NA', 11),
(102004, 6, 'Cotton', 'Blue', 'M', 'NA', 11),
(102004, 7, 'Cotton', 'Blue', 'L', 'NA', 11),
(102004, 8, 'Cotton', 'Blue', 'XL', 'NA', 11),
(102004, 9, 'Cotton', 'Green', 'S', 'NA', 11),
(102004, 10, 'Cotton', 'Green', 'M', 'NA', 11),
(102004, 11, 'Cotton', 'Green', 'L', 'NA', 11),
(102004, 12, 'Cotton', 'Green', 'XL', 'NA', 11),
(102005, 1, 'Cotton', 'Red', 'S', 'NA', 11),
(102005, 2, 'Cotton', 'Red', 'M', 'NA', 11),
(102005, 3, 'Cotton', 'Red', 'L', 'NA', 11),
(102005, 4, 'Cotton', 'Red', 'XL', 'NA', 11),
(102005, 5, 'Cotton', 'Blue', 'S', 'NA', 11),
(102005, 6, 'Cotton', 'Blue', 'M', 'NA', 11),
(102005, 7, 'Cotton', 'Blue', 'L', 'NA', 11),
(102005, 8, 'Cotton', 'Blue', 'XL', 'NA', 11),
(102005, 9, 'Cotton', 'Green', 'S', 'NA', 11),
(102005, 10, 'Cotton', 'Green', 'M', 'NA', 11),
(102005, 11, 'Cotton', 'Green', 'L', 'NA', 11),
(102005, 12, 'Cotton', 'Green', 'XL', 'NA', 11),
(102006, 1, 'Cotton', 'White', 'S', 'NA', 11),
(102006, 2, 'Cotton', 'White', 'M', 'NA', 11),
(102006, 3, 'Cotton', 'White', 'L', 'NA', 11),
(102006, 5, 'Cotton', 'Black', 'S', 'NA', 11),
(102006, 6, 'Cotton', 'Black', 'M', 'NA', 11),
(102006, 7, 'Cotton', 'Black', 'L', 'NA', 11),
(102007, 1, 'Cotton', 'White', 'S', 'NA', 11),
(102007, 2, 'Cotton', 'White', 'M', 'NA', 11),
(102007, 3, 'Cotton', 'White', 'L', 'NA', 11),
(102007, 5, 'Cotton', 'Black', 'S', 'NA', 11),
(102007, 6, 'Cotton', 'Black', 'M', 'NA', 11),
(102007, 7, 'Cotton', 'Black', 'L', 'NA', 11),
(102008, 1, 'Cotton', 'White', 'Free Size', 'NA', 11),
(102008, 2, 'Cotton', 'Black', 'Free Size', 'NA', 11),
(102008, 3, 'Cotton', 'White', 'Free Size', 'NA', 11),
(102008, 5, 'Cotton', 'Red', 'Free Size', 'NA', 11),
(102008, 6, 'Cotton', 'Green', 'Free Size', 'NA', 11),
(102008, 7, 'Cotton', 'Blue', 'Free Size', 'NA', 11),
(102009, 1, 'Cotton', 'White', 'Free Size', 'NA', 11),
(102009, 2, 'Cotton', 'Black', 'Free Size', 'NA', 11),
(102009, 3, 'Cotton', 'White', 'Free Size', 'NA', 11),
(102009, 5, 'Cotton', 'Red', 'Free Size', 'NA', 11),
(102009, 6, 'Cotton', 'Green', 'Free Size', 'NA', 11),
(102009, 7, 'Cotton', 'Blue', 'Free Size', 'NA', 11),
(102010, 1, 'Cotton', 'White', 'S', 'NA', 11),
(102010, 2, 'Cotton', 'White', 'M', 'NA', 11),
(102010, 3, 'Cotton', 'White', 'L', 'NA', 11),
(102010, 5, 'Cotton', 'Black', 'S', 'NA', 11),
(102010, 6, 'Cotton', 'Black', 'M', 'NA', 11),
(102010, 7, 'Cotton', 'Black', 'L', 'NA', 11),
(103001, 1, 'Leather', 'White', 'NA', 'NA', 11),
(103001, 2, 'Leather', 'Black', 'NA', 'NA', 11),
(103001, 3, 'Leather', 'White', 'NA', 'NA', 11),
(103001, 4, 'Leather', 'Blue', 'NA', 'NA', 11),
(104001, 1, 'Cotton', 'White', 'Free Size', 'NA', 11),
(104001, 2, 'Cotton', 'Black', 'Free Size', 'NA', 11),
(104001, 3, 'Cotton', 'White', 'Free Size', 'NA', 11),
(104001, 5, 'Cotton', 'Red', 'Free Size', 'NA', 11),
(104001, 6, 'Cotton', 'Green', 'Free Size', 'NA', 11),
(104001, 7, 'Cotton', 'Blue', 'Free Size', 'NA', 11),
(105001, 1, 'Cotton', 'White', 'NA', 'NA', 11),
(105001, 2, 'Cotton', 'Black', 'NA', 'NA', 11),
(105001, 3, 'Cotton', 'White', 'NA', 'NA', 11),
(105001, 5, 'Cotton', 'Red', 'NA', 'NA', 11),
(105001, 6, 'Cotton', 'Green', 'NA', 'NA', 11),
(105001, 7, 'Cotton', 'Blue', 'NA', 'NA', 11),
(106001, 1, 'Plastic', 'White', 'NA', 'NA', 11),
(106001, 2, 'Propionate', 'Black', 'NA', 'NA', 11),
(107001, 1, 'Cotton', 'White', 'Free Size', 'NA', 11),
(107001, 2, 'Cotton', 'Black', 'Free Size', 'NA', 11),
(107001, 3, 'Cotton', 'White', 'Free Size', 'NA', 11),
(107001, 5, 'Cotton', 'Red', 'Free Size', 'NA', 11),
(107001, 6, 'Cotton', 'Green', 'Free Size', 'NA', 11),
(107001, 7, 'Cotton', 'Blue', 'Free Size', 'NA', 11),
(108001, 1, 'Leather', 'White', 'NA', 'NA', 11),
(108001, 2, 'Leather', 'Black', 'NA', 'NA', 11),
(108001, 3, 'Leather', 'White', 'NA', 'NA', 11),
(108001, 4, 'Leather', 'Blue', 'NA', 'NA', 11),
(201001, 1, 'Cotton', 'Red', 'S', 'NA', 11),
(201001, 2, 'Cotton', 'Red', 'M', 'NA', 11),
(201001, 3, 'Cotton', 'Red', 'L', 'NA', 11),
(201001, 4, 'Cotton', 'Red', 'XL', 'NA', 11),
(201001, 5, 'Cotton', 'Blue', 'S', 'NA', 11),
(201001, 6, 'Cotton', 'Blue', 'M', 'NA', 11),
(201001, 7, 'Cotton', 'Blue', 'L', 'NA', 11),
(201001, 8, 'Cotton', 'Blue', 'XL', 'NA', 11),
(201001, 9, 'Cotton', 'Green', 'S', 'NA', 11),
(201001, 10, 'Cotton', 'Green', 'M', 'NA', 11),
(201001, 11, 'Cotton', 'Green', 'L', 'NA', 11),
(201001, 12, 'Cotton', 'Green', 'XL', 'NA', 11),
(201002, 1, 'Cotton', 'White', 'Free Size', 'NA', 11),
(201002, 2, 'Cotton', 'Black', 'Free Size', 'NA', 11),
(201002, 3, 'Cotton', 'White', 'Free Size', 'NA', 11),
(201002, 5, 'Cotton', 'Red', 'Free Size', 'NA', 11),
(201002, 6, 'Cotton', 'Green', 'Free Size', 'NA', 11),
(201002, 7, 'Cotton', 'Blue', 'Free Size', 'NA', 11),
(201003, 1, 'Cotton', 'White', 'S', 'NA', 11),
(201003, 2, 'Cotton', 'White', 'M', 'NA', 11),
(201003, 3, 'Cotton', 'White', 'L', 'NA', 11),
(201003, 5, 'Cotton', 'Black', 'S', 'NA', 11),
(201003, 6, 'Cotton', 'Black', 'M', 'NA', 11),
(201003, 7, 'Cotton', 'Black', 'L', 'NA', 11),
(201004, 1, 'Cotton', 'Red', 'S', 'NA', 11),
(201004, 2, 'Cotton', 'Red', 'M', 'NA', 11),
(201004, 3, 'Cotton', 'Red', 'L', 'NA', 11),
(201004, 4, 'Cotton', 'Red', 'XL', 'NA', 11),
(201004, 5, 'Cotton', 'Blue', 'S', 'NA', 11),
(201004, 6, 'Cotton', 'Blue', 'M', 'NA', 11),
(201004, 7, 'Cotton', 'Blue', 'L', 'NA', 11),
(201004, 8, 'Cotton', 'Blue', 'XL', 'NA', 11),
(201004, 9, 'Cotton', 'Green', 'S', 'NA', 11),
(201004, 10, 'Cotton', 'Green', 'M', 'NA', 11),
(201004, 11, 'Cotton', 'Green', 'L', 'NA', 11),
(201004, 12, 'Cotton', 'Green', 'XL', 'NA', 11),
(201005, 1, 'Cotton', 'Red', 'S', 'NA', 11),
(201005, 2, 'Cotton', 'Red', 'M', 'NA', 11),
(201005, 3, 'Cotton', 'Red', 'L', 'NA', 11),
(201005, 4, 'Cotton', 'Red', 'XL', 'NA', 11),
(201005, 5, 'Cotton', 'Blue', 'S', 'NA', 11),
(201005, 6, 'Cotton', 'Blue', 'M', 'NA', 11),
(201005, 7, 'Cotton', 'Blue', 'L', 'NA', 11),
(201005, 8, 'Cotton', 'Blue', 'XL', 'NA', 11),
(201005, 9, 'Cotton', 'Green', 'S', 'NA', 11),
(201005, 10, 'Cotton', 'Green', 'M', 'NA', 11),
(201005, 11, 'Cotton', 'Green', 'L', 'NA', 11),
(201005, 12, 'Cotton', 'Green', 'XL', 'NA', 11),
(201006, 1, 'Cotton', 'White', 'S', 'NA', 11),
(201006, 2, 'Cotton', 'White', 'M', 'NA', 11),
(201006, 3, 'Cotton', 'White', 'L', 'NA', 11),
(201006, 5, 'Cotton', 'Black', 'S', 'NA', 11),
(201006, 6, 'Cotton', 'Black', 'M', 'NA', 11),
(201006, 7, 'Cotton', 'Black', 'L', 'NA', 11),
(201007, 1, 'Cotton', 'White', 'S', 'NA', 11),
(201007, 2, 'Cotton', 'White', 'M', 'NA', 11),
(201007, 3, 'Cotton', 'White', 'L', 'NA', 11),
(201007, 5, 'Cotton', 'Black', 'S', 'NA', 11),
(201007, 6, 'Cotton', 'Black', 'M', 'NA', 11),
(201007, 7, 'Cotton', 'Black', 'L', 'NA', 11),
(201008, 1, 'Cotton', 'White', 'Free Size', 'NA', 11),
(201008, 2, 'Cotton', 'Black', 'Free Size', 'NA', 11),
(201008, 3, 'Cotton', 'White', 'Free Size', 'NA', 11),
(201008, 5, 'Cotton', 'Red', 'Free Size', 'NA', 11),
(201008, 6, 'Cotton', 'Green', 'Free Size', 'NA', 11),
(201008, 7, 'Cotton', 'Blue', 'Free Size', 'NA', 11),
(201009, 1, 'Cotton', 'White', 'Free Size', 'NA', 11),
(201009, 2, 'Cotton', 'Black', 'Free Size', 'NA', 11),
(201009, 3, 'Cotton', 'White', 'Free Size', 'NA', 11),
(201009, 5, 'Cotton', 'Red', 'Free Size', 'NA', 11),
(201009, 6, 'Cotton', 'Green', 'Free Size', 'NA', 11),
(201009, 7, 'Cotton', 'Blue', 'Free Size', 'NA', 11),
(201010, 1, 'Cotton', 'White', 'S', 'NA', 11),
(201010, 2, 'Cotton', 'White', 'M', 'NA', 11),
(201010, 3, 'Cotton', 'White', 'L', 'NA', 11),
(201010, 5, 'Cotton', 'Black', 'S', 'NA', 11),
(201010, 6, 'Cotton', 'Black', 'M', 'NA', 11),
(201010, 7, 'Cotton', 'Black', 'L', 'NA', 11),
(202001, 1, 'Cotton', 'Red', 'S', 'NA', 11),
(202001, 2, 'Cotton', 'Red', 'M', 'NA', 11),
(202001, 3, 'Cotton', 'Red', 'L', 'NA', 11),
(202001, 4, 'Cotton', 'Red', 'XL', 'NA', 11),
(202001, 5, 'Cotton', 'Blue', 'S', 'NA', 11),
(202001, 6, 'Cotton', 'Blue', 'M', 'NA', 11),
(202001, 7, 'Cotton', 'Blue', 'L', 'NA', 11),
(202001, 8, 'Cotton', 'Blue', 'XL', 'NA', 11),
(202001, 9, 'Cotton', 'Green', 'S', 'NA', 11),
(202001, 10, 'Cotton', 'Green', 'M', 'NA', 11),
(202001, 11, 'Cotton', 'Green', 'L', 'NA', 11),
(202001, 12, 'Cotton', 'Green', 'XL', 'NA', 11),
(202002, 1, 'Cotton', 'White', 'Free Size', 'NA', 11),
(202002, 2, 'Cotton', 'Black', 'Free Size', 'NA', 11),
(202002, 3, 'Cotton', 'White', 'Free Size', 'NA', 11),
(202002, 5, 'Cotton', 'Red', 'Free Size', 'NA', 11),
(202002, 6, 'Cotton', 'Green', 'Free Size', 'NA', 11),
(202002, 7, 'Cotton', 'Blue', 'Free Size', 'NA', 11),
(202003, 1, 'Cotton', 'White', 'S', 'NA', 11),
(202003, 2, 'Cotton', 'White', 'M', 'NA', 11),
(202003, 3, 'Cotton', 'White', 'L', 'NA', 11),
(202003, 5, 'Cotton', 'Black', 'S', 'NA', 11),
(202003, 6, 'Cotton', 'Black', 'M', 'NA', 11),
(202003, 7, 'Cotton', 'Black', 'L', 'NA', 11),
(202004, 1, 'Cotton', 'Red', 'S', 'NA', 11),
(202004, 2, 'Cotton', 'Red', 'M', 'NA', 11),
(202004, 3, 'Cotton', 'Red', 'L', 'NA', 11),
(202004, 4, 'Cotton', 'Red', 'XL', 'NA', 11),
(202004, 5, 'Cotton', 'Blue', 'S', 'NA', 11),
(202004, 6, 'Cotton', 'Blue', 'M', 'NA', 11),
(202004, 7, 'Cotton', 'Blue', 'L', 'NA', 11),
(202004, 8, 'Cotton', 'Blue', 'XL', 'NA', 11),
(202004, 9, 'Cotton', 'Green', 'S', 'NA', 11),
(202004, 10, 'Cotton', 'Green', 'M', 'NA', 11),
(202004, 11, 'Cotton', 'Green', 'L', 'NA', 11),
(202004, 12, 'Cotton', 'Green', 'XL', 'NA', 11),
(202005, 1, 'Cotton', 'Red', 'S', 'NA', 11),
(202005, 2, 'Cotton', 'Red', 'M', 'NA', 11),
(202005, 3, 'Cotton', 'Red', 'L', 'NA', 11),
(202005, 4, 'Cotton', 'Red', 'XL', 'NA', 11),
(202005, 5, 'Cotton', 'Blue', 'S', 'NA', 11),
(202005, 6, 'Cotton', 'Blue', 'M', 'NA', 11),
(202005, 7, 'Cotton', 'Blue', 'L', 'NA', 11),
(202005, 8, 'Cotton', 'Blue', 'XL', 'NA', 11),
(202005, 9, 'Cotton', 'Green', 'S', 'NA', 11),
(202005, 10, 'Cotton', 'Green', 'M', 'NA', 11),
(202005, 11, 'Cotton', 'Green', 'L', 'NA', 11),
(202005, 12, 'Cotton', 'Green', 'XL', 'NA', 11),
(202006, 1, 'Cotton', 'White', 'S', 'NA', 11),
(202006, 2, 'Cotton', 'White', 'M', 'NA', 11),
(202006, 3, 'Cotton', 'White', 'L', 'NA', 11),
(202006, 5, 'Cotton', 'Black', 'S', 'NA', 11),
(202006, 6, 'Cotton', 'Black', 'M', 'NA', 11),
(202006, 7, 'Cotton', 'Black', 'L', 'NA', 11),
(202007, 1, 'Cotton', 'White', 'S', 'NA', 11),
(202007, 2, 'Cotton', 'White', 'M', 'NA', 11),
(202007, 3, 'Cotton', 'White', 'L', 'NA', 11),
(202007, 5, 'Cotton', 'Black', 'S', 'NA', 11),
(202007, 6, 'Cotton', 'Black', 'M', 'NA', 11),
(202007, 7, 'Cotton', 'Black', 'L', 'NA', 11),
(202008, 1, 'Cotton', 'White', 'Free Size', 'NA', 11),
(202008, 2, 'Cotton', 'Black', 'Free Size', 'NA', 11),
(202008, 3, 'Cotton', 'White', 'Free Size', 'NA', 11),
(202008, 5, 'Cotton', 'Red', 'Free Size', 'NA', 11),
(202008, 6, 'Cotton', 'Green', 'Free Size', 'NA', 11),
(202008, 7, 'Cotton', 'Blue', 'Free Size', 'NA', 11),
(202009, 1, 'Cotton', 'White', 'Free Size', 'NA', 11),
(202009, 2, 'Cotton', 'Black', 'Free Size', 'NA', 11),
(202009, 3, 'Cotton', 'White', 'Free Size', 'NA', 11),
(202009, 5, 'Cotton', 'Red', 'Free Size', 'NA', 11),
(202009, 6, 'Cotton', 'Green', 'Free Size', 'NA', 11),
(202009, 7, 'Cotton', 'Blue', 'Free Size', 'NA', 11),
(202010, 1, 'Cotton', 'White', 'S', 'NA', 11),
(202010, 2, 'Cotton', 'White', 'M', 'NA', 11),
(202010, 3, 'Cotton', 'White', 'L', 'NA', 11),
(202010, 5, 'Cotton', 'Black', 'S', 'NA', 11),
(202010, 6, 'Cotton', 'Black', 'M', 'NA', 11),
(202010, 7, 'Cotton', 'Black', 'L', 'NA', 11),
(203001, 1, 'Leather', 'White', 'NA', 'NA', 11),
(203001, 2, 'Leather', 'Black', 'NA', 'NA', 11),
(203001, 3, 'Leather', 'White', 'NA', 'NA', 11),
(203001, 4, 'Leather', 'Blue', 'NA', 'NA', 11),
(204001, 1, 'Cotton', 'White', 'Free Size', 'NA', 11),
(204001, 2, 'Cotton', 'Black', 'Free Size', 'NA', 11),
(204001, 3, 'Cotton', 'White', 'Free Size', 'NA', 11),
(204001, 5, 'Cotton', 'Red', 'Free Size', 'NA', 11),
(204001, 6, 'Cotton', 'Green', 'Free Size', 'NA', 11),
(204001, 7, 'Cotton', 'Blue', 'Free Size', 'NA', 11),
(209001, 1, 'Plastic', 'White', 'NA', 'NA', 11),
(209001, 2, 'Propionate', 'Black', 'NA', 'NA', 11),
(205001, 1, 'Cotton', 'Red', 'S', 'NA', 11),
(205001, 2, 'Cotton', 'Red', 'M', 'NA', 11),
(205001, 3, 'Cotton', 'Red', 'L', 'NA', 11),
(205001, 4, 'Cotton', 'Red', 'XL', 'NA', 11),
(205001, 5, 'Cotton', 'Blue', 'S', 'NA', 11),
(205001, 6, 'Cotton', 'Blue', 'M', 'NA', 11),
(205001, 7, 'Cotton', 'Blue', 'L', 'NA', 11),
(205001, 8, 'Cotton', 'Blue', 'XL', 'NA', 11),
(205001, 9, 'Cotton', 'Green', 'S', 'NA', 11),
(205001, 10, 'Cotton', 'Green', 'M', 'NA', 11),
(205001, 11, 'Cotton', 'Green', 'L', 'NA', 11),
(205001, 12, 'Cotton', 'Green', 'XL', 'NA', 11),
(206002, 1, 'Cotton', 'Red', 'S', 'NA', 11),
(206002, 2, 'Cotton', 'Red', 'M', 'NA', 11),
(206002, 3, 'Cotton', 'Red', 'L', 'NA', 11),
(206002, 4, 'Cotton', 'Red', 'XL', 'NA', 11),
(206002, 5, 'Cotton', 'Blue', 'S', 'NA', 11),
(206002, 6, 'Cotton', 'Blue', 'M', 'NA', 11),
(206002, 7, 'Cotton', 'Blue', 'L', 'NA', 11),
(206002, 8, 'Cotton', 'Blue', 'XL', 'NA', 11),
(206002, 9, 'Cotton', 'Green', 'S', 'NA', 11),
(206002, 10, 'Cotton', 'Green', 'M', 'NA', 11),
(206002, 11, 'Cotton', 'Green', 'L', 'NA', 11),
(206002, 12, 'Cotton', 'Green', 'XL', 'NA', 11),
(207001, 1, 'Silver', 'NA', 'NA', 'NA', 11),
(207001, 2, 'Gold', 'NA', 'NA', 'NA', 11),
(208001, 1, 'NA', 'NA', 'NA', 'NA', 11),
(210001, 1, 'Leather', 'White', 'NA', 'NA', 11),
(210001, 2, 'Leather', 'Black', 'NA', 'NA', 11),
(210001, 3, 'Leather', 'White', 'NA', 'NA', 11),
(210001, 4, 'Leather', 'Blue', 'NA', 'NA', 11),
(207001, 1, 'Steel', 'NA', 'NA', 'NA', 11),
(207001, 2, 'Resin', 'NA', 'NA', 'NA', 11);

-- --------------------------------------------------------

--
-- 表的结构 `product_best`
--

CREATE TABLE IF NOT EXISTS `product_best` (
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `product_best`
--

INSERT INTO `product_best` (`product_id`) VALUES
(101002),
(101005),
(101007),
(101009),
(102009),
(102002),
(102001),
(201002),
(201007),
(202001);

-- --------------------------------------------------------

--
-- 表的结构 `product_deal`
--

CREATE TABLE IF NOT EXISTS `product_deal` (
  `product_id` int(11) NOT NULL,
  `date_start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_end` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `product_deal`
--

INSERT INTO `product_deal` (`product_id`, `date_start`, `date_end`) VALUES
(104001, '2015-08-23 12:06:00', '2015-08-23 12:06:00'),
(107001, '2015-08-23 12:06:00', '2015-08-23 12:06:00'),
(102008, '2015-08-23 12:06:00', '2015-08-23 12:06:00'),
(101004, '2015-08-23 12:06:00', '2015-08-23 12:06:00'),
(101001, '2015-08-23 12:06:00', '2015-08-23 12:06:00'),
(101010, '2015-08-23 12:06:00', '2015-08-23 12:06:00'),
(201006, '2015-08-23 12:06:00', '2015-08-23 12:06:00'),
(202006, '2015-08-23 12:06:00', '2015-08-23 12:06:00'),
(204005, '2015-08-23 12:06:00', '2015-08-23 12:06:00'),
(211001, '2015-08-23 12:06:04', '2015-08-23 12:06:04');

-- --------------------------------------------------------

--
-- 表的结构 `product_feature`
--

CREATE TABLE IF NOT EXISTS `product_feature` (
  `product_id` int(11) NOT NULL,
  `product_state` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `product_feature`
--

INSERT INTO `product_feature` (`product_id`, `product_state`) VALUES
(108001, 'new'),
(102006, 'hot'),
(102003, 'new'),
(201001, 'new'),
(203001, 'hot'),
(209001, 'new'),
(101001, 'hot'),
(201005, 'hot'),
(206002, 'new'),
(105001, 'hot');

-- --------------------------------------------------------

--
-- 表的结构 `product_list`
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
-- 转存表中的数据 `product_list`
--

INSERT INTO `product_list` (`product_id`, `product_name`, `product_price`, `product_discount`, `product_gender`, `product_type`, `product_manufacture`, `product_info`, `product_description`, `product_profile_pic`) VALUES
(103001, 'Leather Look Satchel', 74, 10, 'Men', 'Bags', 'TOPMAN', 'Pack your essentials in this suave TOPMAN satchel.', 'Pack your essentials in this suave TOPMAN satchel. This bag is the perfect accessory to complete your dapper ensemble. ', 'images/Men/Bags/103001/img_Profile.jpg'),
(104001, 'Cotton Twill Harrington Jacket', 79, 40, 'Men', 'Coats', 'BELLFIELD', 'Marine Cotton Twill Harrington Jacket by Bellfield.', 'Marine Cotton Twill Harrington Jacket by Bellfield features a contrast inner, Be comfy and stylish in this jacket.', 'images/Men/Coats/104001/img_Profile.jpg'),
(105001, 'Color Block Scarf', 15, 10, 'Men', 'Scarves', '24:01', 'Stay warm with this scarf from 24:01.', 'Stay warm with this scarf from 24:01. Styled with colour block design, we love the softness of the fabric that promises lasting comfort from day to night. ', 'images/Men/Scarves/105001/img_Profile.jpg'),
(106001, 'Jawbreaker Sport Injected Man ', 429, 0, 'Men', 'Sunglasses', 'OAKLEY', 'Slip on a pair of these masculine Oakley sunglasses and start your weekend of fun-filled adventure.', 'Slip on a pair of these masculine Oakley sunglasses and start your weekend of fun-filled adventure. Lightweight and fully UV protected, you would not even notice you are wearing this sleek sunnies that gives your eyes full protection.', 'images/Men/Sunglasses/106001/img_Profile.jpg'),
(107001, 'Neoprene Foil SweatShirts', 109, 50, 'Men', 'Sweats', 'ESCLUSIVI', 'For cooler days, opt for this Esclusivi sweatShirts.', 'For cooler days, opt for this Esclusivi sweatShirts. Mimicking the neoprene texture, this sweatShirts features minimal appearance with a slash of foil that doubles as a front pouch.', 'images/Men/Sweats/107001/img_Profile.jpg'),
(108001, 'RI Plaque Wallet', 40, 5, 'Men', 'Wallets', 'RIVER ISLAND', 'Keep your cards and cash close to you with this stylish wallet from River Island. ', 'Keep your cards and cash close to you with this stylish wallet from River Island. Crafted from genuine leather, it comes with multiple slots to keep your belongings secure and organised.', 'images/Men/Wallets/108001/img_Profile.jpg'),
(102001, 'Modern Slim Check Shirts', 89, 10, 'Men', 'Shirts', 'MANGO MAN', 'A classic check Shirts is an essential piece in every man is wardrobe.', 'A classic check Shirts is an essential piece in every man is wardrobe, this number by MANGO Man features subtle checks with opaque buttons.', 'images/Men/Shirts/102001/img_Profile.jpg'),
(102002, 'Polka Dotted Long Sleeve Shirts', 28, 0, 'Men', 'Shirts', 'ZALORA', 'Stay calm, cool and collected in ZALORA.', 'Stay calm, cool and collected in ZALORA. Designed for the modern, dapper stud, this long-sleeved Shirts features polka dot prints all over - roll up the sleeves for extra style measure.', 'images/Men/Shirts/102002/img_Profile.jpg'),
(102003, 'Coated Ikat Denim Sleeve Insert Shirts', 35, 0, 'Men', 'Shirts', '24:01', 'Channel style and sophistication in this 24:01 Shirts.', 'Channel style and sophistication in this 24:01 Shirts. This neatly tailored number carries a solid-coloured bodice for versatility and an unexpected ikat print along the sleeves. ', 'images/Men/Shirts/102003/img_Profile.jpg'),
(102004, 'Printed Short Sleeve Shirts', 40, 0, 'Men', 'Shirts', 'ALCOTT', 'Fresh and interesting prints are sure-fire ways to update your wardrobe.', 'Fresh and interesting prints are sure-fire ways to update your wardrobe. Alcott does it right with multi-coloured botanic within the frame of comfort. Button up or down, turn a gloomy day around with this printed number.', 'images/Men/Shirts/102004/img_Profile.jpg'),
(102005, 'The Denim Shirts', 45, 0, 'Men', 'Shirts', 'FACTORIE', 'Denim Shirts could only mean serious fun, and Factorie knows it.', 'Denim Shirts could only mean serious fun, and Factorie knows it. Featuring contrasting stitching details on the body with curved hem, this one-of-a-kind Shirts is sure to steal a few glances.', 'images/Men/Shirts/102005/img_Profile.jpg'),
(102006, 'Block Print Short Sleeve Shirts', 40, 0, 'Men', 'Shirts', 'NEW LOOK', 'If you want to achieve a laid-back yet dapper look, a handsome Shirts is definitely the answer to your problem.', 'If you want to achieve a laid-back yet dapper look, a handsome Shirts is definitely the answer to your problem. Pick up this number from New Look- its clean, crisp lines, cotton rich material and relaxed seams make the perfect combination for a stylishly casual package.', 'images/Men/Shirts/102006/img_Profile.jpg'),
(102007, 'Aqua Blue Tailored Fit Smart Shirts', 89, 10, 'Men', 'Shirts', 'BURTON MENSWEAR LONDON', 'Cut an impressive image with this handsome Shirts from Burton Menswear London.', 'Cut an impressive image with this handsome Shirts from Burton Menswear London. A dapper design that is perfectly imbued with an old time classic charm, it features an overall minimal look, smooth fabric and relaxed seams.', 'images/Men/Shirts/102007/img_Profile.jpg'),
(102008, 'Denim Shirts With Knit Sleeves', 89, 10, 'Men', 'Shirts', 'ZALORA', 'Channel style and sophistication in this denim Shirts from ZALORA MEN.', 'Channel style and sophistication in this denim Shirts from ZALORA MEN. The brand brings their modern take on the denim staple by incorporating soft knitted sleeves for further definition.', 'images/Men/Shirts/102008/img_Profile.jpg'),
(102009, 'Slim-Fit Chambray Cotton Shirts', 69, 0, 'Men', 'Shirts', 'MANGO MAN', 'A universal style staple, the denim Shirts is not going anywhere.', 'A universal style staple, the denim Shirts is not going anywhere. MANGO Man crafts the perfect denim Shirts with soft, comfortable cotton fabric and a flattering slim fit.', 'images/Men/Shirts/102009/img_Profile.jpg'),
(102010, 'Bleach Wash Denim Stand Collar Long Sleeve Casual Shirts', 74, 0, 'Men', 'Shirts', 'TOPMAN', 'Nothing says classic like a dapper denim Shirts.', 'Nothing says classic like a dapper denim Shirts. TOPMAN styles the timeless design with a stand collar and light bleach wash, giving you the perfect smart casual staple.', 'images/Men/Shirts/102010/img_Profile.jpg'),
(101001, 'Belin T-Shirt With Diamond Print', 49, 15, 'Men', 'T-Shirt', 'SEVEN7', 'Update your weekend essentials by employing the help of Seven7', 'Made of soft and comfortable material, this loose-fitting design is especially ideal for an easy day', 'images/Men/T-Shirt/101001/img_Profile.jpg'),
(101002, 'Double Washed T-Shirt', 39, 0, 'Men', 'T-Shirt', 'TOPMAN', 'Get your hippie vibe on when you slip into this double washed tee by TOPMAN', 'With rolled up sleeves for a touch of edgy grunge, this top is perfect for upgrading your T-Shirt collection', 'images/Men/T-Shirt/101002/img_Profile.jpg'),
(101003, 'Wave All Over Print Tee', 15, 0, 'Men', 'T-Shirt', 'ZALORA', 'Upgrade your casual look with this ZALORA MEN tee', 'The everyday staple is given the brand treatment through its wave motion print for a dash of contrast', 'images/Men/T-Shirt/101003/img_Profile.jpg'),
(101004, 'Brush Print Panelled Tee', 20, 5, 'Men', 'T-Shirt', 'ZALORA', 'Kick your tee game with this ZALORA tee', 'Kick your tee game with this ZALORA tee, which features eye-catching metallic panel against solid body with slim ribbed neck.', 'images/Men/T-Shirt/101004/img_Profile.jpg'),
(101005, 'Mono Wild & Free', 34, 0, 'Men', 'T-Shirt', 'BURTON MENSWEAR LONDON', 'Burton Menswear London want you to keep your cool even on a normal day, out with friends', 'Burton Menswear London want you to keep your cool even on a normal day, out with friends. This T-Shirt is the perfect combination of laid back and trendy with its stylised print', 'images/Men/T-Shirt/101005/img_Profile.jpg'),
(101006, 'Basic Logo T-Shirt', 45, 0, 'Men', 'T-Shirt', 'STUSSY', 'When you have nothing else to wear, put this on.', 'When you have nothing else to wear, put this on. Featuring a soft material with a cool Stussy branding print on the back, this T-Shirt by Stussy combines comfort and style ', 'images/Men/T-Shirt/101006/img_Profile.jpg'),
(101007, 'The Five Strikes T-Shirt', 49, 0, 'Men', 'T-Shirt', 'UNDEFEATED', 'Enlist in team Undefeated when you wear this Five Strikes tee.', 'Enlist in team Undefeated when you wear this Five Strikes tee. Its urban street style design in the athletic sprint spirit offers versatility to pll off with just about any type of outfits', 'images/Men/T-Shirt/101007/img_Profile.jpg'),
(101008, 'Cut And Sew Stripes Tree', 19, 0, 'Men', 'T-Shirt', 'ZALORA', 'Update your weekend essentials- starting with this casual tee by ZALORA.', 'Update your weekend essentials- starting with this casual tee by ZALORA. Soft, comfortable and bearing a laid-back silhouette, this is particularly ideal when you’re looking forward to an easy day.', 'images/Men/T-Shirt/101008/img_Profile.jpg'),
(101009, 'Slubby LA Ringer T-Shirt', 39, 0, 'Men', 'T-Shirt', 'TOPMAN', 'Dreaming of Los Angeles?', 'Dreaming of Los Angeles?TOPMAN channels the city’s vibes onto a laidback slub cotton tee with contrasting trims and typography print - the perfect number for an effortlessly cool weekend look', 'images/Men/T-Shirt/101009/img_Profile.jpg'),
(101010, 'Stepped Hem T-Shirt', 39, 8, 'Men', 'T-Shirt', 'RIVER ISLAND', 'Tone down your look for the weekend with this River island T-Shirt.', 'Tone down your look for the weekend with this River island T-Shirt. The minimalist in you would appreciate the basic design of the cotton blend tee that works well with any wardrobe pieces', 'images/Men/T-Shirt/101010/img_Profile.jpg'),
(201001, 'Love Side Slit Bodycon Mini Skirt', 25, 0, 'Women', 'Skirts', 'ZALORA', 'Designed for the style star in you, this gorgeous mini skirt by ZALORA features an edgy leatherette finish with stunning embossed details.', 'Designed for the style star in you, this gorgeous mini skirt by ZALORA features an edgy leatherette finish with stunning embossed details. The side slits complement the figure-flattering silhouette perfectly.', 'images/Women/Skirts/201001/img_Profile.jpg'),
(201002, 'Zipper A Line Skirt', 57, 0, 'Women', 'Skirts', 'SOMETHING BORROWED', 'Looking for the perfect skirt that will finish off any ensemble effortlessly?', 'Looking for the perfect skirt that will finish off any ensemble effortlessly? Something Borrowed got you covered. Apart from being made from soft fabric, the zipper trims also infuse some edginess to the piece.', 'images/Women/Skirts/201002/img_Profile.jpg'),
(201003, 'Black Workwear Pencil Skirt', 40, 0, 'Women', 'Skirts', 'DOROTHY PERKINS', 'Embrace the element of corporate chic with this pencil skirt from Dorothy Perkins.', 'Embrace the element of corporate chic with this pencil skirt from Dorothy Perkins. Well-darted for figure definition, the brand amps up its versatility by giving it a solid hue to mix and match.', 'images/Women/Skirts/201003/img_Profile.jpg'),
(201004, 'PU Drawstring Skirt', 40, 0, 'Women', 'Skirts', 'SOMETHING BORROWED', 'Something Borrowed gives you an edgy yet laidback number in this PU mini skirt.', 'Something Borrowed gives you an edgy yet laidback number in this PU mini skirt. Comfortable with its elasticised waistband and drawstring fastening, time to channel your inner rocker chick with this unique skirt.', 'images/Women/Skirts/201004/img_Profile.jpg'),
(201005, 'Denim Pleated Skirt', 40, 0, 'Women', 'Skirts', 'KLEEAISONS', 'For a wisp of denim definition, look no further than this KLeeaisons skirt.', 'For a wisp of denim definition, look no further than this KLeeaisons skirt. Perfect for day to night transition, the brand elevates the mini skirt with flirty pleats for a look that is steeped in feminine flair. ', 'images/Women/Skirts/201005/img_Profile.jpg'),
(201006, 'Ditsy Floral Print Skater Skirt', 40, 10, 'Women', 'Skirts', 'NEW LOOK', 'Indulge your free spirit with this cosy carefree skirt from New Look.', 'Indulge your free spirit with this cosy carefree skirt from New Look. It features soft material with a floral-inspired design illustrated on it.', 'images/Women/Skirts/201006/img_Profile.jpg'),
(201007, 'Chevron Pleat Midi Skirt', 100, 0, 'Women', 'Skirts', 'TOPSHOP', 'For easy elegance, team your weekend look with this flattering midi skirt from TOPSHOP.', 'For easy elegance, team your weekend look with this flattering midi skirt from TOPSHOP. Steeped in a bright blue shade, the brand combines chevron pleats and modest midi hemline for style definition.', 'images/Women/Skirts/201007/img_Profile.jpg'),
(201008, 'Printed Midi Skirt', 40, 0, 'Women', 'Skirts', 'ZALORA', 'Add a print or two to your wardrobe and watch it liven things up.', 'Add a print or two to your wardrobe and watch it liven things up. ZALORA brings to you a swishy creation that is both understated and lively. Invest in one today.', 'images/Women/Skirts/201008/img_Profile.jpg'),
(201009, 'Limestone Pavement Wrap Skirt', 40, 0, 'Women', 'Skirts', 'INNER CIRCLE', 'Inject some zest into your look with this stunning wrapped skirt from Inner Circle.', 'Inject some zest into your look with this stunning wrapped skirt from Inner Circle. It boasts an enchanting cracked-like pattern on the surface for that added style.', 'images/Women/Skirts/201009/img_Profile.jpg'),
(201010, 'Petite Zigzag Maxi Skirt', 40, 0, 'Women', 'Skirts', 'DOROTHY PERKINS', 'Mix it up by bringing in a bohemian style skirt from Dorothy Perkins.', 'Mix it up by bringing in a bohemian style skirt from Dorothy Perkins. This particular number features cosy soft material and a zigzag print in black and neutral tones for a slightly ethnic look.', 'images/Women/Skirts/201010/img_Profile.jpg'),
(202001, 'Pleated Blouse', 103, 0, 'Women', 'Tops', 'WAREHOUSE', 'If you are one who never shy away from sheerness, this WAREHOUSE blouse will be your new best friend.', 'If you are one who never shy away from sheerness, this WAREHOUSE blouse will be your new best friend. The brand takes on the art of laid-back silhouette and elevates the minimal-esque look with pleated yoke panel and a quick bow.', 'images/Women/Tops/202001/img_Profile.jpg'),
(202002, 'Polka-Dot Top', 59, 0, 'Women', 'Tops', 'MANGO', 'A feminine, sophisticated take on the classic polka-dot print', 'A feminine, sophisticated take on the classic polka-dot print, this lovely top by Mango flaunts a subtle peplum silhouette. It is crafted with soft, comfy fabric, making it a fast weekend favourite.', 'images/Women/Tops/202002/img_Profile.jpg'),
(202003, 'Grey Asymmetric Top', 40, 0, 'Women', 'Tops', 'MAXQULLO', 'Immerse yourself in the chicness of this exquisite top by Maxqullo', 'Immerse yourself in the chicness of this exquisite top by Maxqullo which features an edgy wrap-over design at the front while crafted from a slightly structured yet supple material. It is the perfect piece to heighten your style for this season.', 'images/Women/Tops/202003/img_Profile.jpg'),
(202004, 'Collection Oversized Denim Shirts', 30, 0, 'Women', 'Tops', 'ZALORA', 'Designed for the stylishly rugged at heart, this chic denim Shirts by ZALORA exudes a hint of masculinity', 'Designed for the stylishly rugged at heart, this chic denim Shirts by ZALORA exudes a hint of masculinity while still maintaining a feminine cut that is equipped with one pragmatic pocket on the chest.', 'images/Women/Tops/202004/img_Profile.jpg'),
(202005, 'Ivory 3/4 Sleeve Top', 70, 0, 'Women', 'Tops', 'MAXQULLO', 'Immerse yourself in the decadence of this exquisite top by Maxqullo which features a unique layered design on the surface ', 'Immerse yourself in the decadence of this exquisite top by Maxqullo which features a unique layered design on the surface while crafted from a crisp and lightweight material. It is the perfect piece to heighten your style for this season.', 'images/Women/Tops/202005/img_Profile.jpg'),
(202006, 'Bette Back Cut-Out Top', 50, 50, 'Women', 'Tops', 'YACHT 21', 'Exude a lovely feminine charm in this beautiful sleeveless top by YACHT 21.', 'Exude a lovely feminine charm in this beautiful sleeveless top by YACHT 21. The sweet pleated hem is complemented by a bold cut-out design to the back.', 'images/Women/Tops/202006/img_Profile.jpg'),
(202007, '3.3 Field Trip Banded Top', 40, 0, 'Women', 'Tops', 'ALAND', 'Made for off-duty stylistas, give your ensemble a solid impact with this 3.3 Field Trip by ALAND top.', 'Made for off-duty stylistas, give your ensemble a solid impact with this 3.3 Field Trip by ALAND top. The brand tunes up the style meter of this solid-coloured tee with ribbed edges for added definition. ', 'images/Women/Tops/202007/img_Profile.jpg'),
(202008, 'Love Handkerchief Hem Top', 20, 0, 'Women', 'Tops', 'ZALORA', 'Let is head back to basics with this chic minimal design from ZALORA.', 'Let is head back to basics with this chic minimal design from ZALORA. Soft and smooth, it also features a dipped hem and a loose-fitting silhouette, further cementing its effortlessly stylish look.', 'images/Women/Tops/202008/img_Profile.jpg'),
(202009, 'Poise Peplum Top', 35, 0, 'Women', 'Tops', 'INNER CIRCLE', 'Brighten up your look with this pop of colour from Inner Circle.', 'Brighten up your look with this pop of colour from Inner Circle. Featuring a playful overskirt and material dyed in citrusy goodness, this lively number is exactly what you need for a cheerful vibe.', 'images/Women/Tops/202009/img_Profile.jpg'),
(202010, 'Navy Flutter Sleeve Top', 40, 0, 'Women', 'Tops', 'DOROTHY PERKINS', 'We think it is about time you update your basics with this Dorothy Perkins top.', 'We think it is about time you update your basics with this Dorothy Perkins top. Beautiful ruffled sleeves complement the clean, minimal bodice to make an effortless sartorialist statement.', 'images/Women/Tops/202010/img_Profile.jpg'),
(203001, 'Soft Casual Holdall', 89, 0, 'Women', 'Bags', 'TOPSHOP', 'For most, multitasking seems messy even if it gets things done faster.', 'For most, multitasking seems messy even if it gets things done faster.Never mind the clutter when you have this tote by TOPSHOP, you can still look smart and chic while handling the mess', 'images/Women/Bags/203001/img_Profile.jpg'),
(204001, 'Twisted Line Coat', 89, 44, 'Women', 'Coats', 'INNER CIRCLE', 'Elevate your look with this unconventional coat by Inner Circle.', 'Elevate your look with this unconventional coat by Inner Circle, featuring contrasting zig zag patterns with bold buttons with wooden design', 'images/Women/Coats/204001/img_Profile.jpg'),
(209001, 'Goldie Catear', 14, 0, 'Women', 'Sunglasses', 'RUBI', 'Your reign at the top of the style pack will be cemented with these retro cool sunnies by Rubi', 'Your reign at the top of the style pack will be cemented with these retro cool sunnies by Rubi. These cat-eye shades are complete with adorable round-shaped lenses.', 'images/Women/Sunglasses/209001/img_Profile.jpg'),
(205001, 'Premium V Neck Belted Dress', 49, 0, 'Women', 'Dresses', 'ZALORA', 'Save this ZALORA Premium dress for date nights and evening affairs.', 'Save this ZALORA Premium dress for date nights and evening affairs. The brand incorporates the sultry combination of leatherette and front slit for a look that is visually stunning.', 'images/Women/Dresses/205001/img_Profile.jpg'),
(206002, 'Space Love Ballerina Flats', 145, 0, 'Women', 'Shoes', 'MELISSA', 'You do not have to be a ballerina to wear these beautiful flats by Melissa.', 'You do not have to be a ballerina to wear these beautiful flats by Melissa. Known for their sturdy yet flexible design, embrace your inner carioca and dance away in comfort and style.', 'images/Women/Shoes/206002/img_Profile.jpg'),
(207001, 'Triangle Stud Earrings', 15, 0, 'Women', 'Jewellery', 'RIVER ISLAND', 'Express your love for geometries with this pair of earrings by River Island.', 'Express your love for geometries with this pair of earrings by River Island. Engraved with bits of diamonds around the edges, this pair of earrings are truly classy with a touch of modernity.', 'images/Women/Jewellery/207001/img_Profile.jpg'),
(208001, 'Rouge Artist Lip Palette Red 5', 72, 0, 'Women', 'Make-Up', 'MAKE UP FOR EVER', 'Tote all of your favorite lipstick shades in one convenient palette.', 'Tote all of your favorite lipstick shades in one convenient palette. Make Up For Ever is Rouge Artist Lip Palette features five Rouge Artist Intense and Rouge Artist Natural lipsticks for vivid color and endless lip looks. Easy to blend into an even, consistent color.', 'images/Women/Make-Up/208001/img_Profile.jpg'),
(210001, 'Badada Wallet', 59, 0, 'Women', 'Wallets', 'ALDO', 'Have all of your treasures kept safe in this textured wallet from ALDO.', 'Have all of your treasures kept safe in this textured wallet from ALDO. Chic and functional, simply reach for what you need, pay and go. You will never have to experience one of those embarrassing cashier moments anymore. ', 'images/Women/Wallets/210001/img_Profile.jpg'),
(211001, 'Angel Japan Quartz 2-Hand Watch', 165, 40, 'Women', 'Watches', 'KLAUS KOBEC', 'Exude effortless class and elegance with Klaus Kobec.', 'Exude effortless class and elegance with Klaus Kobec. This stunning timepiece features a petite solid gold plated stainless steel case with Swarovski stones and faceted crystal combined with a classic red patent leather strap and mother of pearl dial for a lovely shine.', 'images/Women/Watches/211001/img_Profile.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `product_new`
--

CREATE TABLE IF NOT EXISTS `product_new` (
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `product_new`
--

INSERT INTO `product_new` (`product_id`) VALUES
(103001),
(102005),
(102007),
(102002),
(102006),
(102010),
(109001),
(202002),
(202007),
(201001);

-- --------------------------------------------------------

--
-- 表的结构 `product_pic`
--

CREATE TABLE IF NOT EXISTS `product_pic` (
  `product_id` int(11) NOT NULL,
  `pic_num` int(11) NOT NULL,
  `pic_location` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `product_pic`
--

INSERT INTO `product_pic` (`product_id`, `pic_num`, `pic_location`) VALUES
(101001, 1, 'images/Men/T-Shirt/101001/img_1.jpg'),
(101001, 2, 'images/Men/T-Shirt/101001/img_2.jpg'),
(101001, 3, 'images/Men/T-Shirt/101001/img_3.jpg'),
(101001, 4, 'images/Men/T-Shirt/101001/img_4.jpg'),
(101002, 1, 'images/Men/T-Shirt/101002/img_1.jpg'),
(101002, 2, 'images/Men/T-Shirt/101002/img_2.jpg'),
(101002, 3, 'images/Men/T-Shirt/101002/img_3.jpg'),
(101002, 4, 'images/Men/T-Shirt/101002/img_4.jpg'),
(101003, 1, 'images/Men/T-Shirt/101003/img_1.jpg'),
(101003, 2, 'images/Men/T-Shirt/101003/img_2.jpg'),
(101003, 3, 'images/Men/T-Shirt/101003/img_3.jpg'),
(101003, 4, 'images/Men/T-Shirt/101003/img_4.jpg'),
(101004, 1, 'images/Men/T-Shirt/101004/img_1.jpg'),
(101004, 2, 'images/Men/T-Shirt/101004/img_2.jpg'),
(101004, 3, 'images/Men/T-Shirt/101004/img_3.jpg'),
(101004, 4, 'images/Men/T-Shirt/101004/img_4.jpg'),
(101005, 1, 'images/Men/T-Shirt/101005/img_1.jpg'),
(101005, 2, 'images/Men/T-Shirt/101005/img_2.jpg'),
(101005, 3, 'images/Men/T-Shirt/101005/img_3.jpg'),
(101005, 4, 'images/Men/T-Shirt/101005/img_4.jpg'),
(101006, 1, 'images/Men/T-Shirt/101006/img_1.jpg'),
(101006, 2, 'images/Men/T-Shirt/101006/img_2.jpg'),
(101006, 3, 'images/Men/T-Shirt/101006/img_3.jpg'),
(101006, 4, 'images/Men/T-Shirt/101006/img_4.jpg'),
(101007, 1, 'images/Men/T-Shirt/101007/img_1.jpg'),
(101007, 2, 'images/Men/T-Shirt/101007/img_2.jpg'),
(101007, 3, 'images/Men/T-Shirt/101007/img_3.jpg'),
(101007, 4, 'images/Men/T-Shirt/101007/img_4.jpg'),
(101008, 1, 'images/Men/T-Shirt/101008/img_1.jpg'),
(101008, 2, 'images/Men/T-Shirt/101008/img_2.jpg'),
(101008, 3, 'images/Men/T-Shirt/101008/img_3.jpg'),
(101008, 4, 'images/Men/T-Shirt/101008/img_4.jpg'),
(101009, 1, 'images/Men/T-Shirt/101009/img_1.jpg'),
(101009, 2, 'images/Men/T-Shirt/101009/img_2.jpg'),
(101009, 3, 'images/Men/T-Shirt/101009/img_3.jpg'),
(101009, 4, 'images/Men/T-Shirt/101009/img_4.jpg'),
(101010, 1, 'images/Men/T-Shirt/101010/img_1.jpg'),
(101010, 2, 'images/Men/T-Shirt/101010/img_2.jpg'),
(101010, 3, 'images/Men/T-Shirt/101010/img_3.jpg'),
(101010, 4, 'images/Men/T-Shirt/101010/img_4.jpg'),
(102001, 1, 'images/Men/Shirts/102001/img_1.jpg'),
(102001, 2, 'images/Men/Shirts/102001/img_2.jpg'),
(102001, 3, 'images/Men/Shirts/102001/img_3.jpg'),
(102001, 4, 'images/Men/Shirts/102001/img_4.jpg'),
(102002, 1, 'images/Men/Shirts/102002/img_1.jpg'),
(102002, 2, 'images/Men/Shirts/102002/img_2.jpg'),
(102002, 3, 'images/Men/Shirts/102002/img_3.jpg'),
(102002, 4, 'images/Men/Shirts/102002/img_4.jpg'),
(102003, 1, 'images/Men/Shirts/102003/img_1.jpg'),
(102003, 2, 'images/Men/Shirts/102003/img_2.jpg'),
(102003, 3, 'images/Men/Shirts/102003/img_3.jpg'),
(102003, 4, 'images/Men/Shirts/102003/img_4.jpg'),
(102004, 1, 'images/Men/Shirts/102004/img_1.jpg'),
(102004, 2, 'images/Men/Shirts/102004/img_2.jpg'),
(102004, 3, 'images/Men/Shirts/102004/img_3.jpg'),
(102004, 4, 'images/Men/Shirts/102004/img_4.jpg'),
(102005, 1, 'images/Men/Shirts/102005/img_1.jpg'),
(102005, 2, 'images/Men/Shirts/102005/img_2.jpg'),
(102005, 3, 'images/Men/Shirts/102005/img_3.jpg'),
(102005, 4, 'images/Men/Shirts/102005/img_4.jpg'),
(102006, 1, 'images/Men/Shirts/102006/img_1.jpg'),
(102006, 2, 'images/Men/Shirts/102006/img_2.jpg'),
(102006, 3, 'images/Men/Shirts/102006/img_3.jpg'),
(102006, 4, 'images/Men/Shirts/102006/img_4.jpg'),
(102007, 1, 'images/Men/Shirts/102007/img_1.jpg'),
(102007, 2, 'images/Men/Shirts/102007/img_2.jpg'),
(102007, 3, 'images/Men/Shirts/102007/img_3.jpg'),
(102007, 4, 'images/Men/Shirts/102007/img_4.jpg'),
(102008, 1, 'images/Men/Shirts/102008/img_1.jpg'),
(102008, 2, 'images/Men/Shirts/102008/img_2.jpg'),
(102008, 3, 'images/Men/Shirts/102008/img_3.jpg'),
(102008, 4, 'images/Men/Shirts/102008/img_4.jpg'),
(102009, 1, 'images/Men/Shirts/102009/img_1.jpg'),
(102009, 2, 'images/Men/Shirts/102009/img_2.jpg'),
(102009, 3, 'images/Men/Shirts/102009/img_3.jpg'),
(102009, 4, 'images/Men/Shirts/102009/img_4.jpg'),
(102010, 1, 'images/Men/Shirts/102010/img_1.jpg'),
(102010, 2, 'images/Men/Shirts/102010/img_2.jpg'),
(102010, 3, 'images/Men/Shirts/102010/img_3.jpg'),
(102010, 4, 'images/Men/Shirts/102010/img_4.jpg'),
(103001, 1, 'images/Men/Bags/103001/img_1.jpg'),
(103001, 2, 'images/Men/Bags/103001/img_2.jpg'),
(103001, 3, 'images/Men/Bags/103001/img_3.jpg'),
(103001, 4, 'images/Men/Bags/103001/img_4.jpg'),
(104001, 1, 'images/Men/Coats/104001/img_1.jpg'),
(104001, 2, 'images/Men/Coats/104001/img_2.jpg'),
(104001, 3, 'images/Men/Coats/104001/img_3.jpg'),
(104001, 4, 'images/Men/Coats/104001/img_4.jpg'),
(105001, 1, 'images/Men/Scarves/105001/img_1.jpg'),
(105001, 2, 'images/Men/Scarves/105001/img_2.jpg'),
(106001, 1, 'images/Men/Sunglasses/106001/img_1.jpg'),
(106001, 2, 'images/Men/Sunglasses/106001/img_2.jpg'),
(106001, 3, 'images/Men/Sunglasses/106001/img_3.jpg'),
(106001, 4, 'images/Men/Sunglasses/106001/img_4.jpg'),
(107001, 1, 'images/Men/Sweats/107001/img_1.jpg'),
(107001, 2, 'images/Men/Sweats/107001/img_2.jpg'),
(107001, 3, 'images/Men/Sweats/107001/img_3.jpg'),
(107001, 4, 'images/Men/Sweats/107001/img_4.jpg'),
(108001, 1, 'images/Men/Wallets/108001/img_1.jpg'),
(108001, 2, 'images/Men/Wallets/108001/img_2.jpg'),
(108001, 3, 'images/Men/Wallets/108001/img_3.jpg'),
(108001, 4, 'images/Men/Wallets/108001/img_4.jpg'),
(201001, 1, 'images/Women/Skirts/201001/img_1.jpg'),
(201001, 2, 'images/Women/Skirts/201001/img_2.jpg'),
(201001, 3, 'images/Women/Skirts/201001/img_3.jpg'),
(201001, 4, 'images/Women/Skirts/201001/img_4.jpg'),
(201002, 1, 'images/Women/Skirts/201002/img_1.jpg'),
(201002, 2, 'images/Women/Skirts/201002/img_2.jpg'),
(201002, 3, 'images/Women/Skirts/201002/img_3.jpg'),
(201002, 4, 'images/Women/Skirts/201002/img_4.jpg'),
(201003, 1, 'images/Women/Skirts/201003/img_1.jpg'),
(201003, 2, 'images/Women/Skirts/201003/img_2.jpg'),
(201003, 3, 'images/Women/Skirts/201003/img_3.jpg'),
(201003, 4, 'images/Women/Skirts/201003/img_4.jpg'),
(201004, 1, 'images/Women/Skirts/201004/img_1.jpg'),
(201004, 2, 'images/Women/Skirts/201004/img_2.jpg'),
(201004, 3, 'images/Women/Skirts/201004/img_3.jpg'),
(201004, 4, 'images/Women/Skirts/201004/img_4.jpg'),
(201005, 1, 'images/Women/Skirts/201005/img_1.jpg'),
(201005, 2, 'images/Women/Skirts/201005/img_2.jpg'),
(201005, 3, 'images/Women/Skirts/201005/img_3.jpg'),
(201005, 4, 'images/Women/Skirts/201005/img_4.jpg'),
(201006, 1, 'images/Women/Skirts/201006/img_1.jpg'),
(201006, 2, 'images/Women/Skirts/201006/img_2.jpg'),
(201006, 3, 'images/Women/Skirts/201006/img_3.jpg'),
(201006, 4, 'images/Women/Skirts/201006/img_4.jpg'),
(201007, 1, 'images/Women/Skirts/201007/img_1.jpg'),
(201007, 2, 'images/Women/Skirts/201007/img_2.jpg'),
(201007, 3, 'images/Women/Skirts/201007/img_3.jpg'),
(201007, 4, 'images/Women/Skirts/201007/img_4.jpg'),
(201008, 1, 'images/Women/Skirts/201008/img_1.jpg'),
(201008, 2, 'images/Women/Skirts/201008/img_2.jpg'),
(201008, 3, 'images/Women/Skirts/201008/img_3.jpg'),
(201008, 4, 'images/Women/Skirts/201008/img_4.jpg'),
(201009, 1, 'images/Women/Skirts/201009/img_1.jpg'),
(201009, 2, 'images/Women/Skirts/201009/img_2.jpg'),
(201009, 3, 'images/Women/Skirts/201009/img_3.jpg'),
(201009, 4, 'images/Women/Skirts/201009/img_4.jpg'),
(201010, 1, 'images/Women/Skirts/201010/img_1.jpg'),
(201010, 2, 'images/Women/Skirts/201010/img_2.jpg'),
(201010, 3, 'images/Women/Skirts/201010/img_3.jpg'),
(201010, 4, 'images/Women/Skirts/201010/img_4.jpg'),
(202001, 1, 'images/Women/Tops/202001/img_1.jpg'),
(202001, 2, 'images/Women/Tops/202001/img_2.jpg'),
(202001, 3, 'images/Women/Tops/202001/img_3.jpg'),
(202001, 4, 'images/Women/Tops/202001/img_4.jpg'),
(202002, 1, 'images/Women/Tops/202002/img_1.jpg'),
(202002, 2, 'images/Women/Tops/202002/img_2.jpg'),
(202002, 3, 'images/Women/Tops/202002/img_3.jpg'),
(202002, 4, 'images/Women/Tops/202002/img_4.jpg'),
(202003, 1, 'images/Women/Tops/202003/img_1.jpg'),
(202003, 2, 'images/Women/Tops/202003/img_2.jpg'),
(202003, 3, 'images/Women/Tops/202003/img_3.jpg'),
(202003, 4, 'images/Women/Tops/202003/img_4.jpg'),
(202004, 1, 'images/Women/Tops/202004/img_1.jpg'),
(202004, 2, 'images/Women/Tops/202004/img_2.jpg'),
(202004, 3, 'images/Women/Tops/202004/img_3.jpg'),
(202004, 4, 'images/Women/Tops/202004/img_4.jpg'),
(202005, 1, 'images/Women/Tops/202005/img_1.jpg'),
(202005, 2, 'images/Women/Tops/202005/img_2.jpg'),
(202005, 3, 'images/Women/Tops/202005/img_3.jpg'),
(202005, 4, 'images/Women/Tops/202005/img_4.jpg'),
(202006, 1, 'images/Women/Tops/202006/img_1.jpg'),
(202006, 2, 'images/Women/Tops/202006/img_2.jpg'),
(202006, 3, 'images/Women/Tops/202006/img_3.jpg'),
(202006, 4, 'images/Women/Tops/202006/img_4.jpg'),
(202007, 1, 'images/Women/Tops/202007/img_1.jpg'),
(202007, 2, 'images/Women/Tops/202007/img_2.jpg'),
(202007, 3, 'images/Women/Tops/202007/img_3.jpg'),
(202007, 4, 'images/Women/Tops/202007/img_4.jpg'),
(202008, 1, 'images/Women/Tops/202008/img_1.jpg'),
(202008, 2, 'images/Women/Tops/202008/img_2.jpg'),
(202008, 3, 'images/Women/Tops/202008/img_3.jpg'),
(202008, 4, 'images/Women/Tops/202008/img_4.jpg'),
(202009, 1, 'images/Women/Tops/202009/img_1.jpg'),
(202009, 2, 'images/Women/Tops/202009/img_2.jpg'),
(202009, 3, 'images/Women/Tops/202009/img_3.jpg'),
(202009, 4, 'images/Women/Tops/202009/img_4.jpg'),
(202010, 1, 'images/Women/Tops/202010/img_1.jpg'),
(202010, 2, 'images/Women/Tops/202010/img_2.jpg'),
(202010, 3, 'images/Women/Tops/202010/img_3.jpg'),
(202010, 4, 'images/Women/Tops/202010/img_4.jpg'),
(203001, 1, 'images/Women/Bags/203001/img_1.jpg'),
(203001, 2, 'images/Women/Bags/203001/img_2.jpg'),
(203001, 3, 'images/Women/Bags/203001/img_3.jpg'),
(203001, 4, 'images/Women/Bags/203001/img_4.jpg'),
(204001, 1, 'images/Women/Coats/204001/img_1.jpg'),
(204001, 2, 'images/Women/Coats/204001/img_2.jpg'),
(204001, 3, 'images/Women/Coats/204001/img_3.jpg'),
(204001, 4, 'images/Women/Coats/204001/img_4.jpg'),
(205001, 1, 'images/Women/Dresses/205001/img_1.jpg'),
(205001, 2, 'images/Women/Dresses/205001/img_2.jpg'),
(205001, 3, 'images/Women/Dresses/205001/img_3.jpg'),
(205001, 4, 'images/Women/Dresses/205001/img_4.jpg'),
(206002, 1, 'images/Women/Shoes/206002/img_1.jpg'),
(206002, 2, 'images/Women/Shoes/206002/img_2.jpg'),
(206002, 3, 'images/Women/Shoes/206002/img_3.jpg'),
(206002, 4, 'images/Women/Shoes/206002/img_4.jpg'),
(207001, 1, 'images/Women/Jewellery/207001/img_1.jpg'),
(207001, 2, 'images/Women/Jewellery/207001/img_2.jpg'),
(207001, 3, 'images/Women/Jewellery/207001/img_3.jpg'),
(208001, 1, 'images/Women/Make-Up/208001/img_1.jpg'),
(208001, 2, 'images/Women/Make-Up/208001/img_2.jpg'),
(208001, 3, 'images/Women/Make-Up/208001/img_3.jpg'),
(209001, 1, 'images/Women/Sunglasses/209001/img_1.jpg'),
(209001, 2, 'images/Women/Sunglasses/209001/img_2.jpg'),
(209001, 3, 'images/Women/Sunglasses/209001/img_3.jpg'),
(209001, 4, 'images/Women/Sunglasses/209001/img_4.jpg'),
(210001, 1, 'images/Women/Wallets/210001/img_1.jpg'),
(210001, 2, 'images/Women/Wallets/210001/img_2.jpg'),
(210001, 3, 'images/Women/Wallets/210001/img_3.jpg'),
(210001, 4, 'images/Women/Wallets/210001/img_4.jpg'),
(211001, 1, 'images/Women/Watches/211001/img_1.jpg'),
(211001, 2, 'images/Women/Watches/211001/img_2.jpg'),
(211001, 3, 'images/Women/Watches/211001/img_3.jpg'),
(211001, 4, 'images/Women/Watches/211001/img_4.jpg'),
(101001, 1, 'images/Men/T-Shirt/101001/img_1_Large.jpg'),
(101001, 2, 'images/Men/T-Shirt/101001/img_2_Large.jpg'),
(101001, 3, 'images/Men/T-Shirt/101001/img_3_Large.jpg'),
(101001, 4, 'images/Men/T-Shirt/101001/img_4_Large.jpg'),
(101002, 1, 'images/Men/T-Shirt/101002/img_1_Large.jpg'),
(101002, 2, 'images/Men/T-Shirt/101002/img_2_Large.jpg'),
(101002, 3, 'images/Men/T-Shirt/101002/img_3_Large.jpg'),
(101002, 4, 'images/Men/T-Shirt/101002/img_4_Large.jpg'),
(101003, 1, 'images/Men/T-Shirt/101003/img_1_Large.jpg'),
(101003, 2, 'images/Men/T-Shirt/101003/img_2_Large.jpg'),
(101003, 3, 'images/Men/T-Shirt/101003/img_3_Large.jpg'),
(101003, 4, 'images/Men/T-Shirt/101003/img_4_Large.jpg'),
(101004, 1, 'images/Men/T-Shirt/101004/img_1_Large.jpg'),
(101004, 2, 'images/Men/T-Shirt/101004/img_2_Large.jpg'),
(101004, 3, 'images/Men/T-Shirt/101004/img_3_Large.jpg'),
(101004, 4, 'images/Men/T-Shirt/101004/img_4_Large.jpg'),
(101005, 1, 'images/Men/T-Shirt/101005/img_1_Large.jpg'),
(101005, 2, 'images/Men/T-Shirt/101005/img_2_Large.jpg'),
(101005, 3, 'images/Men/T-Shirt/101005/img_3_Large.jpg'),
(101005, 4, 'images/Men/T-Shirt/101005/img_4_Large.jpg'),
(101006, 1, 'images/Men/T-Shirt/101006/img_1_Large.jpg'),
(101006, 2, 'images/Men/T-Shirt/101006/img_2_Large.jpg'),
(101006, 3, 'images/Men/T-Shirt/101006/img_3_Large.jpg'),
(101006, 4, 'images/Men/T-Shirt/101006/img_4_Large.jpg'),
(101007, 1, 'images/Men/T-Shirt/101007/img_1_Large.jpg'),
(101007, 2, 'images/Men/T-Shirt/101007/img_2_Large.jpg'),
(101007, 3, 'images/Men/T-Shirt/101007/img_3_Large.jpg'),
(101007, 4, 'images/Men/T-Shirt/101007/img_4_Large.jpg'),
(101008, 1, 'images/Men/T-Shirt/101008/img_1_Large.jpg'),
(101008, 2, 'images/Men/T-Shirt/101008/img_2_Large.jpg'),
(101008, 3, 'images/Men/T-Shirt/101008/img_3_Large.jpg'),
(101008, 4, 'images/Men/T-Shirt/101008/img_4_Large.jpg'),
(101009, 1, 'images/Men/T-Shirt/101009/img_1_Large.jpg'),
(101009, 2, 'images/Men/T-Shirt/101009/img_2_Large.jpg'),
(101009, 3, 'images/Men/T-Shirt/101009/img_3_Large.jpg'),
(101009, 4, 'images/Men/T-Shirt/101009/img_4_Large.jpg'),
(101010, 1, 'images/Men/T-Shirt/101010/img_1_Large.jpg'),
(101010, 2, 'images/Men/T-Shirt/101010/img_2_Large.jpg'),
(101010, 3, 'images/Men/T-Shirt/101010/img_3_Large.jpg'),
(101010, 4, 'images/Men/T-Shirt/101010/img_4_Large.jpg'),
(102001, 1, 'images/Men/Shirts/102001/img_1_Large.jpg'),
(102001, 2, 'images/Men/Shirts/102001/img_2_Large.jpg'),
(102001, 3, 'images/Men/Shirts/102001/img_3_Large.jpg'),
(102001, 4, 'images/Men/Shirts/102001/img_4_Large.jpg'),
(102002, 1, 'images/Men/Shirts/102002/img_1_Large.jpg'),
(102002, 2, 'images/Men/Shirts/102002/img_2_Large.jpg'),
(102002, 3, 'images/Men/Shirts/102002/img_3_Large.jpg'),
(102002, 4, 'images/Men/Shirts/102002/img_4_Large.jpg'),
(102003, 1, 'images/Men/Shirts/102003/img_1_Large.jpg'),
(102003, 2, 'images/Men/Shirts/102003/img_2_Large.jpg'),
(102003, 3, 'images/Men/Shirts/102003/img_3_Large.jpg'),
(102003, 4, 'images/Men/Shirts/102003/img_4_Large.jpg'),
(102004, 1, 'images/Men/Shirts/102004/img_1_Large.jpg'),
(102004, 2, 'images/Men/Shirts/102004/img_2_Large.jpg'),
(102004, 3, 'images/Men/Shirts/102004/img_3_Large.jpg'),
(102004, 4, 'images/Men/Shirts/102004/img_4_Large.jpg'),
(102005, 1, 'images/Men/Shirts/102005/img_1_Large.jpg'),
(102005, 2, 'images/Men/Shirts/102005/img_2_Large.jpg'),
(102005, 3, 'images/Men/Shirts/102005/img_3_Large.jpg'),
(102005, 4, 'images/Men/Shirts/102005/img_4_Large.jpg'),
(102006, 1, 'images/Men/Shirts/102006/img_1_Large.jpg'),
(102006, 2, 'images/Men/Shirts/102006/img_2_Large.jpg'),
(102006, 3, 'images/Men/Shirts/102006/img_3_Large.jpg'),
(102006, 4, 'images/Men/Shirts/102006/img_4_Large.jpg'),
(102007, 1, 'images/Men/Shirts/102007/img_1_Large.jpg'),
(102007, 2, 'images/Men/Shirts/102007/img_2_Large.jpg'),
(102007, 3, 'images/Men/Shirts/102007/img_3_Large.jpg'),
(102007, 4, 'images/Men/Shirts/102007/img_4_Large.jpg'),
(102008, 1, 'images/Men/Shirts/102008/img_1_Large.jpg'),
(102008, 2, 'images/Men/Shirts/102008/img_2_Large.jpg'),
(102008, 3, 'images/Men/Shirts/102008/img_3_Large.jpg'),
(102008, 4, 'images/Men/Shirts/102008/img_4_Large.jpg'),
(102009, 1, 'images/Men/Shirts/102009/img_1_Large.jpg'),
(102009, 2, 'images/Men/Shirts/102009/img_2_Large.jpg'),
(102009, 3, 'images/Men/Shirts/102009/img_3_Large.jpg'),
(102009, 4, 'images/Men/Shirts/102009/img_4_Large.jpg'),
(102010, 1, 'images/Men/Shirts/102010/img_1_Large.jpg'),
(102010, 2, 'images/Men/Shirts/102010/img_2_Large.jpg'),
(102010, 3, 'images/Men/Shirts/102010/img_3_Large.jpg'),
(102010, 4, 'images/Men/Shirts/102010/img_4_Large.jpg'),
(103001, 1, 'images/Men/Bags/103001/img_1_Large.jpg'),
(103001, 2, 'images/Men/Bags/103001/img_2_Large.jpg'),
(103001, 3, 'images/Men/Bags/103001/img_3_Large.jpg'),
(103001, 4, 'images/Men/Bags/103001/img_4_Large.jpg'),
(104001, 1, 'images/Men/Coats/104001/img_1_Large.jpg'),
(104001, 2, 'images/Men/Coats/104001/img_2_Large.jpg'),
(104001, 3, 'images/Men/Coats/104001/img_3_Large.jpg'),
(104001, 4, 'images/Men/Coats/104001/img_4_Large.jpg'),
(105001, 1, 'images/Men/Scarves/105001/img_1_Large.jpg'),
(105001, 2, 'images/Men/Scarves/105001/img_2_Large.jpg'),
(106001, 1, 'images/Men/Sunglasses/106001/img_1_Large.jpg'),
(106001, 2, 'images/Men/Sunglasses/106001/img_2_Large.jpg'),
(106001, 3, 'images/Men/Sunglasses/106001/img_3_Large.jpg'),
(106001, 4, 'images/Men/Sunglasses/106001/img_4_Large.jpg'),
(107001, 1, 'images/Men/Sweats/107001/img_1_Large.jpg'),
(107001, 2, 'images/Men/Sweats/107001/img_2_Large.jpg'),
(107001, 3, 'images/Men/Sweats/107001/img_3_Large.jpg'),
(107001, 4, 'images/Men/Sweats/107001/img_4_Large.jpg'),
(108001, 1, 'images/Men/Wallets/108001/img_1_Large.jpg'),
(108001, 2, 'images/Men/Wallets/108001/img_2_Large.jpg'),
(108001, 3, 'images/Men/Wallets/108001/img_3_Large.jpg'),
(108001, 4, 'images/Men/Wallets/108001/img_4_Large.jpg'),
(201001, 1, 'images/Women/Skirts/201001/img_1_Large.jpg'),
(201001, 2, 'images/Women/Skirts/201001/img_2_Large.jpg'),
(201001, 3, 'images/Women/Skirts/201001/img_3_Large.jpg'),
(201001, 4, 'images/Women/Skirts/201001/img_4_Large.jpg'),
(201002, 1, 'images/Women/Skirts/201002/img_1_Large.jpg'),
(201002, 2, 'images/Women/Skirts/201002/img_2_Large.jpg'),
(201002, 3, 'images/Women/Skirts/201002/img_3_Large.jpg'),
(201002, 4, 'images/Women/Skirts/201002/img_4_Large.jpg'),
(201003, 1, 'images/Women/Skirts/201003/img_1_Large.jpg'),
(201003, 2, 'images/Women/Skirts/201003/img_2_Large.jpg'),
(201003, 3, 'images/Women/Skirts/201003/img_3_Large.jpg'),
(201003, 4, 'images/Women/Skirts/201003/img_4_Large.jpg'),
(201004, 1, 'images/Women/Skirts/201004/img_1_Large.jpg'),
(201004, 2, 'images/Women/Skirts/201004/img_2_Large.jpg'),
(201004, 3, 'images/Women/Skirts/201004/img_3_Large.jpg'),
(201004, 4, 'images/Women/Skirts/201004/img_4_Large.jpg'),
(201005, 1, 'images/Women/Skirts/201005/img_1_Large.jpg'),
(201005, 2, 'images/Women/Skirts/201005/img_2_Large.jpg'),
(201005, 3, 'images/Women/Skirts/201005/img_3_Large.jpg'),
(201005, 4, 'images/Women/Skirts/201005/img_4_Large.jpg'),
(201006, 1, 'images/Women/Skirts/201006/img_1_Large.jpg'),
(201006, 2, 'images/Women/Skirts/201006/img_2_Large.jpg'),
(201006, 3, 'images/Women/Skirts/201006/img_3_Large.jpg'),
(201006, 4, 'images/Women/Skirts/201006/img_4_Large.jpg'),
(201007, 1, 'images/Women/Skirts/201007/img_1_Large.jpg'),
(201007, 2, 'images/Women/Skirts/201007/img_2_Large.jpg'),
(201007, 3, 'images/Women/Skirts/201007/img_3_Large.jpg'),
(201007, 4, 'images/Women/Skirts/201007/img_4_Large.jpg'),
(201008, 1, 'images/Women/Skirts/201008/img_1_Large.jpg'),
(201008, 2, 'images/Women/Skirts/201008/img_2_Large.jpg'),
(201008, 3, 'images/Women/Skirts/201008/img_3_Large.jpg'),
(201008, 4, 'images/Women/Skirts/201008/img_4_Large.jpg'),
(201009, 1, 'images/Women/Skirts/201009/img_1_Large.jpg'),
(201009, 2, 'images/Women/Skirts/201009/img_2_Large.jpg'),
(201009, 3, 'images/Women/Skirts/201009/img_3_Large.jpg'),
(201009, 4, 'images/Women/Skirts/201009/img_4_Large.jpg'),
(201010, 1, 'images/Women/Skirts/201010/img_1_Large.jpg'),
(201010, 2, 'images/Women/Skirts/201010/img_2_Large.jpg'),
(201010, 3, 'images/Women/Skirts/201010/img_3_Large.jpg'),
(201010, 4, 'images/Women/Skirts/201010/img_4_Large.jpg'),
(202001, 1, 'images/Women/Tops/202001/img_1_Large.jpg'),
(202001, 2, 'images/Women/Tops/202001/img_2_Large.jpg'),
(202001, 3, 'images/Women/Tops/202001/img_3_Large.jpg'),
(202001, 4, 'images/Women/Tops/202001/img_4_Large.jpg'),
(202002, 1, 'images/Women/Tops/202002/img_1_Large.jpg'),
(202002, 2, 'images/Women/Tops/202002/img_2_Large.jpg'),
(202002, 3, 'images/Women/Tops/202002/img_3_Large.jpg'),
(202002, 4, 'images/Women/Tops/202002/img_4_Large.jpg'),
(202003, 1, 'images/Women/Tops/202003/img_1_Large.jpg'),
(202003, 2, 'images/Women/Tops/202003/img_2_Large.jpg'),
(202003, 3, 'images/Women/Tops/202003/img_3_Large.jpg'),
(202003, 4, 'images/Women/Tops/202003/img_4_Large.jpg'),
(202004, 1, 'images/Women/Tops/202004/img_1_Large.jpg'),
(202004, 2, 'images/Women/Tops/202004/img_2_Large.jpg'),
(202004, 3, 'images/Women/Tops/202004/img_3_Large.jpg'),
(202004, 4, 'images/Women/Tops/202004/img_4_Large.jpg'),
(202005, 1, 'images/Women/Tops/202005/img_1_Large.jpg'),
(202005, 2, 'images/Women/Tops/202005/img_2_Large.jpg'),
(202005, 3, 'images/Women/Tops/202005/img_3_Large.jpg'),
(202005, 4, 'images/Women/Tops/202005/img_4_Large.jpg'),
(202006, 1, 'images/Women/Tops/202006/img_1_Large.jpg'),
(202006, 2, 'images/Women/Tops/202006/img_2_Large.jpg'),
(202006, 3, 'images/Women/Tops/202006/img_3_Large.jpg'),
(202006, 4, 'images/Women/Tops/202006/img_4_Large.jpg'),
(202007, 1, 'images/Women/Tops/202007/img_1_Large.jpg'),
(202007, 2, 'images/Women/Tops/202007/img_2_Large.jpg'),
(202007, 3, 'images/Women/Tops/202007/img_3_Large.jpg'),
(202007, 4, 'images/Women/Tops/202007/img_4_Large.jpg'),
(202008, 1, 'images/Women/Tops/202008/img_1_Large.jpg'),
(202008, 2, 'images/Women/Tops/202008/img_2_Large.jpg'),
(202008, 3, 'images/Women/Tops/202008/img_3_Large.jpg'),
(202008, 4, 'images/Women/Tops/202008/img_4_Large.jpg'),
(202009, 1, 'images/Women/Tops/202009/img_1_Large.jpg'),
(202009, 2, 'images/Women/Tops/202009/img_2_Large.jpg'),
(202009, 3, 'images/Women/Tops/202009/img_3_Large.jpg'),
(202009, 4, 'images/Women/Tops/202009/img_4_Large.jpg'),
(202010, 1, 'images/Women/Tops/202010/img_1_Large.jpg'),
(202010, 2, 'images/Women/Tops/202010/img_2_Large.jpg'),
(202010, 3, 'images/Women/Tops/202010/img_3_Large.jpg'),
(202010, 4, 'images/Women/Tops/202010/img_4_Large.jpg'),
(203001, 1, 'images/Women/Bags/203001/img_1_Large.jpg'),
(203001, 2, 'images/Women/Bags/203001/img_2_Large.jpg'),
(203001, 3, 'images/Women/Bags/203001/img_3_Large.jpg'),
(203001, 4, 'images/Women/Bags/203001/img_4_Large.jpg'),
(204001, 1, 'images/Women/Coats/204001/img_1_Large.jpg'),
(204001, 2, 'images/Women/Coats/204001/img_2_Large.jpg'),
(204001, 3, 'images/Women/Coats/204001/img_3_Large.jpg'),
(204001, 4, 'images/Women/Coats/204001/img_4_Large.jpg'),
(205001, 1, 'images/Women/Dresses/205001/img_1_Large.jpg'),
(205001, 2, 'images/Women/Dresses/205001/img_2_Large.jpg'),
(205001, 3, 'images/Women/Dresses/205001/img_3_Large.jpg'),
(205001, 4, 'images/Women/Dresses/205001/img_4_Large.jpg'),
(206002, 1, 'images/Women/Shoes/206002/img_1_Large.jpg'),
(206002, 2, 'images/Women/Shoes/206002/img_2_Large.jpg'),
(206002, 3, 'images/Women/Shoes/206002/img_3_Large.jpg'),
(206002, 4, 'images/Women/Shoes/206002/img_4_Large.jpg'),
(207001, 1, 'images/Women/Jewellery/207001/img_1_Large.jpg'),
(207001, 2, 'images/Women/Jewellery/207001/img_2_Large.jpg'),
(207001, 3, 'images/Women/Jewellery/207001/img_3_Large.jpg'),
(208001, 1, 'images/Women/Make-Up/208001/img_1_Large.jpg'),
(208001, 2, 'images/Women/Make-Up/208001/img_2_Large.jpg'),
(208001, 3, 'images/Women/Make-Up/208001/img_3_Large.jpg'),
(209001, 1, 'images/Women/Sunglasses/209001/img_1_Large.jpg'),
(209001, 2, 'images/Women/Sunglasses/209001/img_2_Large.jpg'),
(209001, 3, 'images/Women/Sunglasses/209001/img_3_Large.jpg'),
(209001, 4, 'images/Women/Sunglasses/209001/img_4_Large.jpg'),
(210001, 1, 'images/Women/Wallets/210001/img_1_Large.jpg'),
(210001, 2, 'images/Women/Wallets/210001/img_2_Large.jpg'),
(210001, 3, 'images/Women/Wallets/210001/img_3_Large.jpg'),
(210001, 4, 'images/Women/Wallets/210001/img_4_Large.jpg'),
(211001, 1, 'images/Women/Watches/211001/img_1_Large.jpg'),
(211001, 2, 'images/Women/Watches/211001/img_2_Large.jpg'),
(211001, 3, 'images/Women/Watches/211001/img_3_Large.jpg'),
(211001, 4, 'images/Women/Watches/211001/img_4_Large.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `product_review`
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `product_review`
--

INSERT INTO `product_review` (`review_id`, `product_id`, `user_id`, `review_title`, `review_date`, `review_value`, `review_price`, `review_quality`, `review_text`) VALUES
(1, 123, 123, '123', '2015-08-12 15:06:53', 1, 1, 1, '123'),
(2, 123, 123, '123', '2015-08-12 15:07:17', 1, 1, 1, '123'),
(3, 123, 123, '123', '0000-00-00 00:00:00', 1, 1, 1, '123'),
(4, 0, 0, 'title', '2015-08-12 15:15:18', 1, 2, 3, 'content'),
(5, 122, 5, 'kk', '1970-01-01 00:00:55', 3, 3, 3, 'kk'),
(6, 122, 6, 'kk', '1970-01-01 00:00:55', 3, 3, 3, 'kk'),
(7, 107001, 1, 'Zen', '2015-08-27 11:23:49', 5, 5, 5, '123 Good');

-- --------------------------------------------------------

--
-- 表的结构 `user_info`
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
-- 转存表中的数据 `user_info`
--

INSERT INTO `user_info` (`user_id`, `user_address`, `user_floor`, `user_unit`, `user_road`, `user_country`, `user_postcode`, `user_tel`, `user_pic`) VALUES
(1, '#05-12', '5', '211', 'Ang Mo Kio road', 'Singapore', 211321, 81188118, 'null'),
(2, '#02-02', '2', '111', 'Geylang road', 'Singapore', 111321, 81111118, 'null'),
(3, 'null', 'null', 'null', 'null', 'null', 0, 0, 'null'),
(3, 'null', 'null', 'null', 'null', 'null', 0, 0, 'null');

-- --------------------------------------------------------

--
-- 表的结构 `user_list`
--

CREATE TABLE IF NOT EXISTS `user_list` (
  `user_id` int(11) NOT NULL,
  `user_email` text COLLATE utf8_bin NOT NULL,
  `user_password` text COLLATE utf8_bin NOT NULL,
  `user_fname` text COLLATE utf8_bin NOT NULL,
  `user_lname` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `user_list`
--

INSERT INTO `user_list` (`user_id`, `user_email`, `user_password`, `user_fname`, `user_lname`) VALUES
(1, 'zen@yahoo.com', '1234', 'Le', 'Tuan'),
(2, 'fou@gmail.com', '1234', 'Fu', 'Fu'),
(3, 'a@a', '123', '123', '123');

-- --------------------------------------------------------

--
-- 表的结构 `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `wishlist`
--

INSERT INTO `wishlist` (`user_id`, `product_id`) VALUES
(1, 123),
(1, 122),
(3, 102003);

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
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
