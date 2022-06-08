-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 13, 2022 at 12:11 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brandsg3_EVI_DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `rso_requests`
--

CREATE TABLE `rso_requests` (
  `id` int(11) NOT NULL,
  `super_admin_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `university` varchar(128) NOT NULL,
  `admin_name` varchar(128) NOT NULL,
  `admin_email` varchar(128) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `member_one` varchar(128) NOT NULL,
  `member_two` varchar(128) NOT NULL,
  `member_three` varchar(128) NOT NULL,
  `member_four` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rso_requests`
--

INSERT INTO `rso_requests` (`id`, `super_admin_id`, `name`, `university`, `admin_name`, `admin_email`, `description`, `member_one`, `member_two`, `member_three`, `member_four`) VALUES
(38, 22, 'Korean Culture Association ', 'University of Central Florida', 'Alfred Yoo', 'alfy001118@gmail.com', 'Learn Korean Culture at the KCA!', 'falfy001118@gmail.com', 'brandonspangler2@gmail.com', 'zacharyebaugh3@gmail.com', 'someone@gmail.com'),
(39, 22, 'KPOP Association ', 'University of Central Florida', 'Alfred Yoo', 'alfy001118@gmail.com', 'Learn KPOP at KPOP Association!', 'falfy001118@gmail.com', 'brandonspangler2@gmail.com', 'zacharyebaugh3@gmail.com', 'someone@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rso_requests`
--
ALTER TABLE `rso_requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rso_requests`
--
ALTER TABLE `rso_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
