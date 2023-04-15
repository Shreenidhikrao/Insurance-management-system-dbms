-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 03:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `insurancedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_details`
--

CREATE TABLE `address_details` (
  `address_id` int(11) NOT NULL,
  `h_no` varchar(6) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `addressline1` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `pin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address_details`
--

INSERT INTO `address_details` (`address_id`, `h_no`, `city`, `addressline1`, `state`, `pin`) VALUES
(1, '6-21', 'hyderabad', 'kphb', 'andhra pradesh', '1254'),
(2, '7-81', 'chennai', 'seruseri', 'tamilnadu', '16354'),
(3, '3-71', 'lucknow', 'street', 'uttarpradesh', '86451'),
(4, '4-81', 'mumbai', 'iroli', 'maharashtra', '51246'),
(5, '5-81', 'bangalore', 'mgroad', 'karnataka', '125465'),
(6, '6-81', 'ahamadabad', 'street2', 'gujarat', '125423'),
(7, '9-21', 'chennai', 'sholinganur', 'tamilnadu', '654286');

-- --------------------------------------------------------

--
-- Table structure for table `policy_payments`
--

CREATE TABLE `policy_payments` (
  `receipno` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `policy_no` varchar(20) DEFAULT NULL,
  `dateofpayment` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `fine` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `policy_payments`
--

INSERT INTO `policy_payments` (`receipno`, `user_id`, `policy_no`, `dateofpayment`, `amount`, `fine`) VALUES
(96, 1111, '689314', '1997-04-18', 50000, 200),
(100, 1111, '689314', '1995-04-10', 50000, NULL),
(101, 1111, '689314', '1998-04-09', 50000, NULL),
(105, 1111, '689314', '1999-04-08', 50000, NULL),
(120, 1111, '689314', '2000-04-05', 50000, NULL),
(121, 4444, '689420', '2012-04-09', 50000, NULL),
(128, 1111, '689314', '1996-04-11', 50000, NULL),
(225, 1111, '689316', '2012-05-18', 20000, NULL),
(227, 1111, '689314', '1994-04-18', 50000, NULL),
(298, 3333, '689320', '2012-06-18', 20000, NULL),
(300, 1111, '689317', '2012-06-20', 20000, NULL),
(345, 4444, '689420', '2013-04-09', 50000, NULL),
(367, 2222, '689318', '2012-06-21', 20000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `policy_sub_types`
--

CREATE TABLE `policy_sub_types` (
  `policy_type_id` varchar(10) NOT NULL,
  `policy_type_code` varchar(10) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `yearsofpayements` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `maturityperiod` int(11) DEFAULT NULL,
  `maturityamount` double DEFAULT NULL,
  `validity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `policy_sub_types`
--

INSERT INTO `policy_sub_types` (`policy_type_id`, `policy_type_code`, `description`, `yearsofpayements`, `amount`, `maturityperiod`, `maturityamount`, `validity`) VALUES
('6893', '58934', 'theft', 1, 5000, NULL, 200000, 1),
('6894', '58934', 'accident', 1, 20000, NULL, 200000, 3),
('6895', '58539', 'fire', 1, 50000, NULL, 500000, 3),
('6896', '58683', 'anandhlife', 7, 50000, 15, 1500000, NULL),
('6897', '58683', 'sukhlife', 10, 5000, 13, 300000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_policy_types`
--

CREATE TABLE `ref_policy_types` (
  `policy_type_code` varchar(10) NOT NULL,
  `policy_type_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_policy_types`
--

INSERT INTO `ref_policy_types` (`policy_type_code`, `policy_type_name`) VALUES
('58539', 'home'),
('58683', 'life'),
('58934', 'car');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobileno` varchar(50) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `firstname`, `lastname`, `email`, `mobileno`, `address_id`, `dob`) VALUES
(1111, 'raju', 'reddy', 'raju@gmail.com', '9854261456', 4, '1986-04-11'),
(2222, 'vamsi', 'krishna', 'vamsi@gmail.com', '9854261463', 1, '1990-04-11'),
(3333, 'naveen', 'reddy', 'naveen@gmail.com', '9854261496', 4, '1985-03-14'),
(4444, 'raghava', 'rao', 'raghava@gmail.com', '9854261412', 4, '1985-09-21'),
(5555, 'harsha', 'vardhan', 'harsha@gmail.com', '9854261445', 4, '1992-10-11');

-- --------------------------------------------------------

--
-- Table structure for table `user_policies`
--

CREATE TABLE `user_policies` (
  `policy_no` varchar(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date_registered` date DEFAULT NULL,
  `policy_type_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_policies`
--

INSERT INTO `user_policies` (`policy_no`, `user_id`, `date_registered`, `policy_type_id`) VALUES
('689314', 1111, '1994-04-18', '6896'),
('689316', 1111, '2012-05-18', '6895'),
('689317', 1111, '2012-06-20', '6894'),
('689318', 2222, '2012-06-21', '6894'),
('689320', 3333, '2012-06-18', '6894'),
('689420', 4444, '2012-04-09', '6896');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_details`
--
ALTER TABLE `address_details`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `policy_payments`
--
ALTER TABLE `policy_payments`
  ADD PRIMARY KEY (`receipno`);

--
-- Indexes for table `policy_sub_types`
--
ALTER TABLE `policy_sub_types`
  ADD PRIMARY KEY (`policy_type_id`);

--
-- Indexes for table `ref_policy_types`
--
ALTER TABLE `ref_policy_types`
  ADD PRIMARY KEY (`policy_type_code`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_policies`
--
ALTER TABLE `user_policies`
  ADD PRIMARY KEY (`policy_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
