-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2017 at 03:17 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_level` varchar(50) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_level`, `admin_email`, `admin_pass`) VALUES
(24, 'nurul', '', 'nurul', ''),
(25, 'nurul', '', 'nurul', ''),
(26, 'eee', '', 'ee', ''),
(27, 'eee', '', 'ee', ''),
(28, 'eee', '', 'ee', ''),
(29, 'eee', '', 'ee', '');

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `serial_num` varchar(20) NOT NULL,
  `user_ic` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `timestamp`
--

CREATE TABLE `timestamp` (
  `time_id` int(11) NOT NULL,
  `serial_num` varchar(15) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_name` varchar(150) NOT NULL,
  `user_ic` varchar(15) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_address` varchar(200) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_name`, `user_ic`, `user_email`, `user_address`, `user_phone`, `user_pass`) VALUES
('ed', '2', 'a@w', '12', '12', 'w'),
('KHADIJAH', '8887777', 'khadijah@yahoo.com', 'KAJANG', '099918', 'khadijah'),
('Nurul Iktifariah', '970726', 'iktifariah@gmail.com', 'impian ehsan', '01123281465', 'iktifariah');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `plat_num` varchar(10) NOT NULL,
  `user_ic` varchar(15) NOT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `vehicle_model` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`plat_num`, `user_ic`, `vehicle_type`, `vehicle_model`) VALUES
('98989', '970726', 'Car', 'bezza'),
('GSGASFAGS', '970726', 'Motorcycle', 'ADADADDA'),
('SFES', '970726', 'Car', 'MXCDJ'),
('WUH7777', '970726', 'Motorcycle', 'Yamaha');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`serial_num`),
  ADD KEY `user_ic` (`user_ic`);

--
-- Indexes for table `timestamp`
--
ALTER TABLE `timestamp`
  ADD PRIMARY KEY (`time_id`),
  ADD KEY `user_ic` (`user_ic`,`serial_num`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_ic`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`plat_num`),
  ADD KEY `user_ic` (`user_ic`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `timestamp`
--
ALTER TABLE `timestamp`
  MODIFY `time_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
