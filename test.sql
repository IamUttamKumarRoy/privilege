-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2019 at 08:40 PM
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
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `hinduism_by_country`
--

CREATE TABLE `hinduism_by_country` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `region` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `percentage` varchar(50) DEFAULT NULL,
  `total_population` varchar(50) DEFAULT NULL,
  `hindu_total` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hinduism_by_region`
--

CREATE TABLE `hinduism_by_region` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `region` varchar(50) DEFAULT NULL,
  `total_population` varchar(50) DEFAULT NULL,
  `hindus` varchar(50) DEFAULT NULL,
  `percentage_of_hindus` varchar(50) DEFAULT NULL,
  `percentage_of_hindu_total` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hinduism_by_country`
--
ALTER TABLE `hinduism_by_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hinduism_by_region`
--
ALTER TABLE `hinduism_by_region`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hinduism_by_country`
--
ALTER TABLE `hinduism_by_country`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hinduism_by_region`
--
ALTER TABLE `hinduism_by_region`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
