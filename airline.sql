-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2019 at 03:50 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `id` int(50) NOT NULL,
  `from1` varchar(50) NOT NULL,
  `to1` varchar(50) NOT NULL,
  `date1` varchar(50) NOT NULL,
  `bc` varchar(20) NOT NULL,
  `ec` varchar(20) NOT NULL,
  `time1` varchar(20) NOT NULL,
  `availability` int(50) NOT NULL,
  `b_availabilty` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`id`, `from1`, `to1`, `date1`, `bc`, `ec`, `time1`, `availability`, `b_availabilty`) VALUES
(1, 'surat', 'ahmedabad', '10/10/2019', '1500', '1000', '6:00pm', 25, 10),
(2, 'surat', 'mumbai', '05/04/2019', '4000', '2500', '10:00am', 60, 15),
(3, 'surat', 'ahmedabad', '10/10/2019', '3000', '2000', '3:00pm', 50, 5),
(4, 'surat', 'mumbai', '05/04/2019', '4500', '3000', '05:00pm', 50, 7),
(5, 'surat', 'jaipur', '06/04/2019', '3500', '2000', '09:00am', 45, 12),
(6, 'surat', 'jaipur', '07/04/2019', '4000', '3000', '12:00pm', 33, 14);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `password`, `mobile`) VALUES
('deep', 'deep', '7096275115'),
('abhishek', 'abhishek', '7998855660'),
('amul', 'amul', '8320012345'),
('nikhil', 'nikhil', '8758585395'),
('sagar', 'sagar', '8866345678'),
('divyesh', 'divyesh', '9426131900'),
('saurabh', 'saurabh', '9427793278'),
('dharmesh', 'dharmesh', '9979966872');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`mobile`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
