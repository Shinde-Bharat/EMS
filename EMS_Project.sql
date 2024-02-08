-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2021 at 08:34 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `EMS_Project`
--

-- --------------------------------------------------------
--
-- Table structure for table `alogin`
--

CREATE TABLE `alogin` (
  `id` int(11) NOT NULL,
  `email` tinytext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alogin`
--

INSERT INTO `alogin` (`id`, `email`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dept` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `salary` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `firstName`, `lastName`, `email`, `birthday`, `gender`, `contact`, `address`, `dept`, `degree`,`salary`) VALUES
(101, 'Om', 'Shete', 'om@xyz.com', '2003-05-28', 'Male', '1234567890', 'Ghodegaon', 'IT', 'Head',9000),
(102, 'Test', 'Pilot', 'testpilot@gmail.com', '2018-01-01', 'Male', '0202',  'Ad_______', 'CSE', 'CSE',7000),
(103, 'Steven', 'Wilson', 'wilson@xyz.corp', '1990-02-02', 'Male', '5252', 'Thames, UK', 'Creative', 'MSc',8000),
(104, 'Guthrie', 'Govan', 'guthrie@xyz.corp', '1971-12-01', 'Male', '9595','Chemsford, USA', 'Creative', 'MSc', 6000);

-- --------------------------------------------------------
-- --------------------------------------------------------


ALTER TABLE `alogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for table `alogin`
--
ALTER TABLE `alogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
  
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

COMMIT;