-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2020 at 06:41 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogposts`
--

CREATE TABLE `blogposts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Office Chairs', NULL, '2019-12-25 23:58:56', '2019-12-25 23:58:56'),
(2, 'Modern Chairs', NULL, '2019-12-25 23:58:56', '2019-12-25 23:58:56'),
(3, 'Home Chairs', NULL, '2019-12-25 23:58:57', '2019-12-25 23:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `category_id`, `product_id`) VALUES
(1, 2, 1),
(2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `department` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_post` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `joining_date` date DEFAULT NULL,
  `prl_date` date DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_name`, `date_of_birth`, `department`, `current_post`, `joining_date`, `prl_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mohammed Ishaque Miah', '1969-02-02', 'Information Systems Development and Support Department', 'Systems Manager (GM)', '1997-06-16', '2028-02-01', NULL, '2020-01-06 04:55:18', '2020-01-06 04:55:18'),
(2, 'Chandan Saha', '1968-08-28', 'Bangladesh Bank Training Academy', 'Systems Manager (GM)', '1997-06-16', '2027-08-27', NULL, '2020-01-06 04:57:54', '2020-01-06 04:57:54'),
(3, 'Amir Hossain Pathan', '1970-01-01', 'Information Systems Development and Support Department', 'Systems Manager (GM)', '1997-06-16', '2028-12-31', NULL, '2020-01-06 04:59:45', '2020-01-06 04:59:45'),
(4, 'Abdur Razzaq', '1967-11-30', 'Information Systems Development and Support Department', 'Senior Systems Analyst (DGM)', '1997-06-16', '2026-11-29', NULL, '2020-01-06 05:12:26', '2020-01-06 05:12:26'),
(5, 'Wahidul Islam Sarker', '1973-12-25', 'Information Systems Development and Support Department', 'Senior Systems Analyst (DGM)', '2001-06-21', '2032-12-24', NULL, '2020-01-06 05:21:57', '2020-01-06 05:21:57'),
(6, 'Motior Rahman', '1974-10-30', 'Information Systems Development and Support Department', 'Senior Systems Analyst (DGM)', '2001-06-21', '2033-10-29', NULL, '2020-01-06 05:23:54', '2020-01-06 05:23:54'),
(7, 'Mohammad Rahat Uddin', '1974-10-31', 'Motijheel Office', 'Senior Systems Analyst (DGM)', '2001-06-21', '2033-10-30', NULL, '2020-01-06 05:26:40', '2020-01-06 05:26:40'),
(8, 'Al-mehedi Hasan', '1977-01-01', 'Credit Information Bureau', 'Senior Systems Analyst (DGM)', '2001-06-21', '2035-12-31', NULL, '2020-01-06 05:29:33', '2020-01-06 05:29:33'),
(9, 'Nasrin Sultana', '1973-08-01', 'Information Systems Development and Support Department', 'Senior Systems Analyst (DGM)', '2001-06-21', '2032-07-31', NULL, '2020-01-06 05:32:15', '2020-01-06 05:32:15'),
(10, 'Mosiuzzaman Khan', '1968-08-28', 'Information Systems Development and Support Department', 'Senior Systems Analyst (DGM)', '2004-04-01', '2037-12-01', NULL, '2020-01-07 04:32:54', '2020-01-07 04:32:54'),
(11, 'Bisnu Pada Biswas', '1974-07-06', 'Internal Audit Department', 'Senior Systems Analyst (DGM)', '2004-04-01', '2033-07-05', NULL, '2020-01-07 04:35:09', '2020-01-07 04:35:09'),
(12, 'Nurul Amin', '1978-02-25', 'Information Systems Development and Support Department', 'Senior Systems Analyst (DGM)', '2004-01-08', '2037-02-24', NULL, '2020-01-07 04:38:16', '2020-01-07 04:38:16'),
(13, 'Masud Anwar', '1974-08-31', 'Information Systems Development and Support Department', 'Systems Analyst (JD)', '2004-01-08', '2033-08-30', NULL, '2020-01-07 04:46:55', '2020-01-07 04:46:55'),
(14, 'Munira Jahan', '1976-10-20', 'Information Systems Development and Support Department', 'Systems Analyst (JD)', '2004-01-08', '2035-10-19', NULL, '2020-01-07 04:50:22', '2020-01-07 04:50:22'),
(15, 'Jayanta Kumar Bhowmick', '1976-10-20', 'Payment Systems Department', 'Systems Analyst (JD)', '2004-01-08', '2036-09-10', NULL, '2020-01-07 04:53:43', '2020-01-07 04:53:43'),
(16, 'Imtiaz Kabir', '1977-07-01', 'Information Systems Development and Support Department', 'Systems Analyst (JD)', '2004-01-08', '2036-06-30', NULL, '2020-01-07 04:55:37', '2020-01-07 04:55:37'),
(17, 'Himadri Shekhar Sarder', '1978-11-30', 'Motijheel Office', 'Systems Analyst (JD)', '2004-01-08', '2037-11-29', NULL, '2020-01-07 05:06:50', '2020-01-07 05:06:50'),
(18, 'Masuma Begum', '1976-03-08', 'Information Systems Development and Support Department', 'Systems Analyst (JD)', '2004-01-08', '2035-03-07', NULL, '2020-01-07 05:22:00', '2020-01-07 05:22:00'),
(19, 'Hasina Begum', '1963-04-15', 'Information Systems Development and Support Department', 'Systems Analyst (JD)', '1983-08-29', '2022-04-14', NULL, '2020-01-07 23:07:51', '2020-01-07 23:07:51'),
(20, 'Hasan Al Mamun', '1977-01-01', 'Information Systems Development and Support Department', 'Systems Analyst (JD)', '2005-09-01', '2035-10-31', NULL, '2020-01-07 23:14:19', '2020-01-07 23:14:19'),
(21, 'Zakiul Alam Sarker', '1977-07-06', 'Human Resources Department 1', 'Systems Analyst (JD)', '2009-05-14', '2035-07-05', NULL, '2020-01-07 23:18:07', '2020-01-07 23:18:07'),
(22, 'Ahmad Jamal Azizi', '1974-01-01', 'Information Systems Development and Support Department', 'Systems Analyst (JD)', '2009-08-20', '2032-12-31', NULL, '2020-01-07 23:20:07', '2020-01-07 23:20:07'),
(23, 'Nasim Adnan', '1979-12-17', 'Internal Audit Department', 'Systems Analyst (JD)', '2005-09-01', '2038-12-16', NULL, '2020-01-07 23:22:31', '2020-01-07 23:22:31'),
(24, 'Shahriar Habib', '1976-09-17', 'Credit Information Bureau', 'Systems Analyst (JD)', '2005-09-01', '2035-09-16', NULL, '2020-01-07 23:24:44', '2020-01-07 23:24:44'),
(25, 'Zannatul Ferdaus', '1979-12-30', 'Mymensingh Office', 'Systems Analyst (JD)', '2005-09-01', '2035-12-29', NULL, '2020-01-07 23:26:56', '2020-01-07 23:26:56'),
(26, 'Ashiqur Rahman', '1981-12-03', 'Credit Information Bureau', 'Systems Analyst (JD)', '2005-09-01', '2040-12-02', NULL, '2020-01-07 23:29:17', '2020-01-07 23:29:17'),
(27, 'Biswajit Kumar Dey', '1981-07-05', 'Internal Audit Department', 'Systems Analyst (JD)', '2005-11-02', '2040-07-04', NULL, '2020-01-07 23:31:23', '2020-01-07 23:31:23'),
(28, 'Bozlul Karim', '1977-08-15', 'Information Systems Development and Support Department', 'Systems Analyst (JD)', '2005-12-05', '2036-08-14', NULL, '2020-01-07 23:33:22', '2020-01-07 23:33:22'),
(29, 'Niazur Rahman', '1982-08-01', 'Khulna Office', 'Systems Analyst (JD)', '2005-08-01', '2036-07-31', NULL, '2020-01-07 23:35:48', '2020-01-07 23:35:48'),
(30, 'S. M. Tofayel Ahmad', '1979-08-20', 'Information Systems Development and Support Department', 'Systems Analyst (JD)', '2008-06-19', '2038-08-19', NULL, '2020-01-07 23:38:32', '2020-01-07 23:38:32'),
(31, 'Sharmin Jahan', '1979-01-01', 'Information Systems Development and Support Department', 'Systems Analyst (JD)', '2008-06-19', '2037-12-31', NULL, '2020-01-07 23:40:25', '2020-01-07 23:40:25'),
(32, 'Rejaul Karim', '1980-11-19', 'Information Systems Development and Support Department', 'Systems Analyst (JD)', '2008-06-19', '2039-11-18', NULL, '2020-01-07 23:46:57', '2020-01-07 23:46:57'),
(33, 'Serazam Monira', '1984-02-01', 'Bankers´ Selection Committee Secretariat', 'Systems Analyst (JD)', '2008-06-19', '2043-01-31', NULL, '2020-01-07 23:49:48', '2020-01-07 23:49:48'),
(34, 'Ahdabul Islam', '1977-03-01', 'Bankers´ Selection Committee Secretariat', 'Systems Analyst (JD)', '2008-06-19', '2036-02-28', NULL, '2020-01-07 23:53:12', '2020-01-07 23:53:12'),
(35, 'Pritish Chandra Biswas', '1979-08-01', 'Forex Reserve & Treasury Management Department', 'Systems Analyst (JD)', '2008-06-19', '2038-07-31', NULL, '2020-01-07 23:55:14', '2020-01-07 23:55:14'),
(36, 'Ayasha Noor', '1979-12-18', 'Information Systems Development and Support Department', 'Systems Analyst (JD)', '2008-06-19', '2038-12-17', NULL, '2020-01-07 23:56:57', '2020-01-07 23:56:57'),
(37, 'Kamrul Hasan', '1983-01-01', 'Information Systems Development and Support Department', 'Systems Analyst (JD)', '2008-06-19', '2041-12-31', NULL, '2020-01-08 00:05:38', '2020-01-08 00:05:38'),
(38, 'Shakil Pervez', '1979-09-30', 'Credit Information Bureau', 'Systems Analyst (JD)', '2008-06-19', '2038-09-28', NULL, '2020-01-08 00:11:05', '2020-01-08 00:11:05'),
(39, 'Shariful Islam', '1980-07-25', 'Payment Systems Department', 'Systems Analyst (JD)', '2008-06-19', '2039-07-24', NULL, '2020-01-08 00:12:23', '2020-01-08 00:12:23'),
(40, 'Amirul Islam', '1986-01-06', 'Information Systems Development and Support Department', 'Programmer/Asst.Systems Analyst (DD)', '2010-12-30', '2045-01-05', NULL, '2020-01-08 01:13:23', '2020-01-08 01:13:23'),
(41, 'Ziaul Hoque', '1980-12-30', 'Information Systems Development and Support Department', 'Programmer/Asst.Systems Analyst (DD)', '2010-12-30', '2039-12-29', NULL, '2020-01-08 01:16:37', '2020-01-08 01:16:37'),
(42, 'A.K.M. Zikrul Hasan', '1983-01-01', 'Information Systems Development and Support Department', 'Programmer/Asst.Systems Analyst (DD)', '2010-12-30', '2041-12-31', NULL, '2020-01-08 01:18:09', '2020-01-08 01:18:09'),
(43, 'Sonia Rahnuma', '1984-09-19', 'Information Systems Development and Support Department', 'Programmer/Asst.Systems Analyst (DD)', '2010-12-30', '2043-09-18', NULL, '2020-01-08 01:23:55', '2020-01-08 01:23:55'),
(44, 'Sonjib Kumer Singha', '1980-12-01', 'Information Systems Development and Support Department', 'Programmer/Asst.Systems Analyst (DD)', '2010-12-30', '2039-01-30', NULL, '2020-01-08 01:26:59', '2020-01-08 01:26:59'),
(45, 'Prakash Chandra Mondal', '1982-01-01', 'Information Systems Development and Support Department', 'Programmer/Asst.Systems Analyst (DD)', '2010-04-08', '2040-12-31', NULL, '2020-01-08 01:29:17', '2020-01-08 01:29:17'),
(46, 'Abu Sadat Mohammed Yasin', '1985-01-01', 'Motijheel Office', 'Programmer/Asst.Systems Analyst (DD)', '2012-02-09', '2043-12-31', NULL, '2020-01-08 01:31:51', '2020-01-08 01:31:51'),
(47, 'Jahirul Islam', '1985-12-14', 'Credit Information Bureau', 'Programmer/Asst.Systems Analyst (DD)', '2012-02-09', '2044-12-13', NULL, '2020-01-08 01:33:11', '2020-01-08 01:33:11'),
(48, 'Majharul Haque', '1983-01-01', 'Information Systems Development and Support Department', 'Programmer/Asst.Systems Analyst (DD)', '2012-02-09', '2041-12-31', NULL, '2020-01-08 01:35:44', '2020-01-08 01:35:44'),
(49, 'Golam Mahmud', '1985-01-04', 'Information Systems Development and Support Department', 'Programmer/Asst.Systems Analyst (DD)', '2012-02-09', '2044-01-03', NULL, '2020-01-08 01:37:25', '2020-01-08 01:37:25'),
(50, 'Kamrul Islam', '1982-12-31', 'Bangladesh Financial Intelligence Unit', 'Programmer/Asst.Systems Analyst (DD)', '2012-02-09', '2041-12-30', NULL, '2020-01-08 01:38:52', '2020-01-08 01:38:52'),
(51, 'B.K.M. Mezbahuddin', '1983-10-01', 'Credit Information Bureau', 'Programmer/Asst.Systems Analyst (DD)', '2012-02-09', '2042-09-29', NULL, '2020-01-08 01:40:12', '2020-01-08 01:40:12'),
(52, 'Shafiqul Islam', '1981-10-24', 'Credit Information Bureau', 'Programmer/Asst.Systems Analyst (DD)', '2012-02-09', '2040-10-23', NULL, '2020-01-08 01:41:53', '2020-01-08 01:41:53'),
(53, 'Shafi Zaman', '1986-12-31', 'Internal Audit Department', 'Programmer/Asst.Systems Analyst (DD)', '2012-04-17', '2045-12-30', NULL, '2020-01-08 01:44:33', '2020-01-08 01:44:33'),
(54, 'Prasun Kanti Howlader', '1982-06-30', 'Information Systems Development and Support Department', 'Programmer/Asst.Systems Analyst (DD)', '2012-06-10', '2041-06-29', NULL, '2020-01-08 01:50:06', '2020-01-08 01:50:06'),
(55, 'Nirupam Chandra Modak', '1987-07-29', 'Bogura Office', 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2046-07-28', NULL, '2020-01-08 01:52:20', '2020-01-08 01:52:20'),
(56, 'Jakir Hossain', '1986-05-10', 'Information Systems Development and Support Department', 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2045-05-09', NULL, '2020-01-08 01:54:05', '2020-01-08 01:54:05'),
(57, 'Shuvankar Halder', '1984-12-01', 'Credit Information Bureau', 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2045-11-30', NULL, '2020-01-08 01:55:06', '2020-01-08 01:55:06'),
(58, 'Masud Rana', '1987-05-25', 'Information Systems Development and Support Department', 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2046-05-24', NULL, '2020-01-08 01:56:47', '2020-01-08 01:56:47'),
(59, 'Lutfatun Nesa', '1984-02-20', 'Credit Information Bureau', 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2043-02-19', NULL, '2020-01-08 01:58:16', '2020-01-08 01:58:16'),
(60, 'S.M. Shohel', '1986-12-15', 'Barishal Office', 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2045-12-15', NULL, '2020-01-08 02:05:10', '2020-01-08 02:05:10'),
(61, 'Sheikh Ibney Masud', '1985-04-05', 'Payment Systems Department', 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2044-04-04', NULL, '2020-01-08 02:07:38', '2020-01-08 02:07:38'),
(62, 'Chayan Biswas', '1987-06-12', 'Payment Systems Department', 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2046-06-12', NULL, '2020-01-08 02:09:13', '2020-01-08 02:09:13'),
(63, 'Nabila Arfeen', '1987-05-13', 'Credit Information Bureau', 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2046-05-13', NULL, '2020-01-08 02:10:11', '2020-01-08 02:10:11'),
(64, 'Mehedi Hasan', '1985-01-22', 'Information Systems Development and Support Department', 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2044-01-22', NULL, '2020-01-08 02:11:45', '2020-01-08 02:11:45'),
(65, 'Debashish Biswas', '1984-06-30', 'Khulna Office', 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2043-06-30', NULL, '2020-01-08 02:13:21', '2020-01-08 02:13:21'),
(66, 'Hasan Mohammed Faisal', '1984-09-10', 'Information Systems Development and Support Department', 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2043-09-10', NULL, '2020-01-08 02:14:32', '2020-01-08 02:14:32'),
(67, 'Habibur Rahman', '1984-02-02', 'Credit Information Bureau', 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2043-02-02', NULL, '2020-01-08 02:15:55', '2020-01-08 02:15:55'),
(68, 'Sohel Ahmed', '1984-11-30', 'Internal Audit Department', 'Programmer/Asst.Systems Analyst (DD)', '2014-06-01', '2043-11-30', NULL, '2020-01-08 02:37:37', '2020-01-08 02:37:37'),
(69, 'Rubel', '1986-12-30', 'Information Systems Development and Support Department', 'Programmer/Asst.Systems Analyst (DD)', '2014-06-01', '2045-12-30', NULL, '2020-01-08 02:39:13', '2020-01-08 02:39:13'),
(70, 'Mahfuzur Rahman Bosunia', '1987-01-01', 'Information Systems Development and Support Department', 'Programmer/Asst.Systems Analyst (DD)', '2014-06-01', '2046-01-01', NULL, '2020-01-08 02:40:28', '2020-01-08 02:40:28'),
(71, 'Sharmi Mazumder', '1986-01-01', 'Chattogram Office', 'Programmer/Asst.Systems Analyst (DD)', '2014-09-04', '2045-01-01', NULL, '2020-01-08 02:42:03', '2020-01-08 02:42:03'),
(72, 'Belal Hossain', '1982-10-27', 'Human Resources Department 1', 'Programmer/Asst.Systems Analyst (DD)', '2014-10-13', '2041-10-27', NULL, '2020-01-08 02:43:49', '2020-01-08 02:43:49'),
(73, 'Mithun Sarkar', '1988-02-22', 'Information Systems Development and Support Department', 'Programmer/Asst.Systems Analyst (DD)', '2014-10-13', '2047-02-22', NULL, '2020-01-08 02:44:50', '2020-01-08 02:44:50'),
(74, 'Rafiqul Islam', '1986-09-26', 'Information Systems Development and Support Department', 'Programmer/Asst.Systems Analyst (DD)', '2014-10-13', '2045-09-26', NULL, '2020-01-08 02:46:58', '2020-01-08 02:46:58'),
(75, 'Masud Rana', '1987-10-20', 'Motijheel Office', 'Assistant Programmer (AD)', '2014-10-13', '2045-10-20', NULL, '2020-01-08 02:48:53', '2020-01-08 02:48:53'),
(76, 'Tanzima Azad', '1989-06-17', 'Information Systems Development and Support Department', 'Assistant Programmer (AD)', '2017-06-08', '2048-06-17', NULL, '2020-01-08 02:50:33', '2020-01-08 02:50:33'),
(77, 'Shamim-Al-Mamun', '1988-04-03', 'Information Systems Development and Support Department', 'Assistant Programmer (AD)', '2017-06-08', '2047-04-03', NULL, '2020-01-08 02:52:51', '2020-01-08 02:52:51'),
(78, 'Mizanur Rahman', '1992-12-25', 'Information Systems Development and Support Department', 'Assistant Programmer (AD)', '2017-06-08', '2051-12-25', NULL, '2020-01-08 02:54:24', '2020-01-08 02:54:24'),
(79, 'Subrata Barman', '1988-08-22', 'Information Systems Development and Support Department', 'Assistant Programmer (AD)', '2017-06-08', '2047-08-22', NULL, '2020-01-08 02:56:11', '2020-01-08 02:56:11'),
(80, 'Aminur Rahman', '1989-02-28', 'Accounts and Budgeting Department', 'Assistant Programmer (AD)', '2017-06-08', '2048-02-28', NULL, '2020-01-08 02:57:43', '2020-01-08 02:57:43'),
(81, 'Amit Biswas', '1987-10-22', 'Information Systems Development and Support Department', 'Assistant Programmer (AD)', '2017-06-08', '2046-10-22', NULL, '2020-01-08 02:59:00', '2020-01-08 02:59:00'),
(82, 'Ifthekhar Mahmood', '1992-11-15', 'Bangladesh Financial Intelligence Unit', 'Assistant Programmer (AD)', '2017-06-08', '2051-11-15', NULL, '2020-01-08 03:01:00', '2020-01-08 03:01:00'),
(83, 'Uttam Kumar Roy', '1990-06-25', 'Credit Information Bureau', 'Assistant Programmer (AD)', '2017-06-08', '2049-06-25', NULL, '2020-01-08 03:02:55', '2020-01-08 03:02:55'),
(84, 'Nurul Islam Molla', '1983-10-15', 'Motijheel Office', 'Assistant Programmer (AD)', '2017-06-08', '2042-10-15', NULL, '2020-01-08 03:04:31', '2020-01-08 03:04:31');

-- --------------------------------------------------------

--
-- Table structure for table `employee_postings`
--

CREATE TABLE `employee_postings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `department_from` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_to` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_post` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_post` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promotion_date` date DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_04_06_040940_create_settings_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_06_04_164426_create_privilege_menu_categories_table', 2),
(6, '2019_06_04_174153_create_privilege_menus_table', 2),
(8, '2019_06_13_064201_create_user_privilege_menu_table', 2),
(9, '2019_11_28_065315_create_user_roles_table', 2),
(13, '2019_06_13_055516_create_user_role_privilege_menu_table', 3),
(14, '2019_12_18_112335_create_blogposts_table', 4),
(15, '2019_12_26_054734_create_categories_table', 4),
(16, '2019_12_26_054834_create_products_table', 4),
(17, '2019_12_26_055241_create_category_product_table', 5),
(20, '2020_01_06_095839_create_employees_table', 6),
(21, '2020_01_06_101438_create_employee_postings_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privilege_menus`
--

CREATE TABLE `privilege_menus` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `privilege_menu_category_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `privilege_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `methods` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` smallint(5) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privilege_menus`
--

INSERT INTO `privilege_menus` (`id`, `privilege_menu_category_id`, `privilege_name`, `uri`, `route_name`, `methods`, `action`, `controller`, `ordering`, `status`, `created_at`, `updated_at`) VALUES
(6, 5, 'User Role Listing', 'user_roles', 'user_roles', 'GET', 'user_roles.index', 'UserRoleController', 1, NULL, '2019-12-02 04:17:34', '2019-12-02 04:29:35'),
(7, 5, 'User Role View', 'user_roles/{user_role}', 'user_roles', 'GET', 'user_roles.view', 'UserRoleController', 2, NULL, '2019-12-02 04:28:35', '2019-12-02 04:30:00'),
(8, 5, 'User Role Create', 'user_roles/create', 'user_roles/create', 'get', 'user_roles.create', 'UserRoleController', 3, NULL, '2019-12-02 04:33:08', '2019-12-02 04:33:08'),
(9, 4, 'Settings listing', 'settings', 'settings', 'GET', 'index', 'SettingController', 1, NULL, '2019-12-15 04:28:12', '2019-12-15 04:28:12'),
(10, 4, 'Settings Create', 'settings/create', 'settings/create', 'GET', 'settings.create', 'SettingController', 2, NULL, '2019-12-15 04:29:47', '2019-12-15 04:29:47'),
(11, 4, 'Settings View', 'settings /{settings }', 'settings /{settings }', 'GET', 'settings .show', 'SettingController', 3, NULL, '2019-12-15 04:31:07', '2019-12-15 04:31:07');

-- --------------------------------------------------------

--
-- Table structure for table `privilege_menu_categories`
--

CREATE TABLE `privilege_menu_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precedence` tinyint(3) UNSIGNED DEFAULT NULL,
  `ordering` tinyint(3) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privilege_menu_categories`
--

INSERT INTO `privilege_menu_categories` (`id`, `category_name`, `precedence`, `ordering`, `status`, `created_at`, `updated_at`) VALUES
(4, 'User Information', 1, NULL, 1, '2019-12-01 04:04:16', '2019-12-01 04:04:16'),
(5, 'User Privilege', 2, NULL, 1, '2019-12-01 04:05:29', '2019-12-01 04:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Home Brixton Faux Leather Armchair', 199.99, NULL, '2019-12-26 00:00:24', '2019-12-26 00:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `input_type_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `variable_group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variable_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variable_display_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variable_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_singular` tinyint(3) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `terminal` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `input_type_id`, `variable_group`, `variable_name`, `variable_display_title`, `variable_value`, `is_singular`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`, `terminal`) VALUES
(2, NULL, 'site_setting', 'site_name', NULL, 'my_portfolio', NULL, NULL, NULL, '2019-11-27 01:28:42', NULL, '2019-11-27 01:28:42', NULL),
(3, NULL, 'site_setting', 'site_url', NULL, 'http://localhost:8080/laravel_projects/my_portfolio', NULL, NULL, NULL, '2019-11-27 01:29:03', NULL, '2019-11-27 01:29:03', NULL),
(4, NULL, 'site_setting', 'web_admin', NULL, 'uttam', NULL, NULL, NULL, '2019-11-27 01:32:24', NULL, '2019-11-27 01:32:24', NULL),
(5, NULL, 'basic_setting', 'username', NULL, 'ukroy', NULL, NULL, NULL, '2019-11-27 04:23:55', NULL, '2019-11-27 04:23:55', NULL),
(6, NULL, 'basic_setting', 'password', NULL, '        //', NULL, NULL, NULL, '2019-11-27 04:23:56', NULL, '2019-11-27 04:23:56', NULL),
(7, NULL, 'basic_setting', 'name', NULL, 'Uttam Kumar Roy', NULL, NULL, NULL, '2019-11-27 04:23:56', NULL, '2019-11-27 04:23:56', NULL),
(8, NULL, 'basic_setting', 'user_age', NULL, '3', NULL, NULL, NULL, '2019-11-27 04:23:56', NULL, '2019-11-27 04:23:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_privilege_menu`
--

CREATE TABLE `user_privilege_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` smallint(5) UNSIGNED NOT NULL,
  `privilege_menu_id` smallint(5) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `role_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precedence` tinyint(3) UNSIGNED DEFAULT NULL,
  `ordering` tinyint(3) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `role_name`, `precedence`, `ordering`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Super Admin', 1, NULL, 1, '2019-11-28 03:18:37', '2019-11-28 03:18:37'),
(3, 'Admin', 2, NULL, 1, '2019-11-28 03:18:50', '2019-11-28 03:18:50'),
(4, 'Contributor', 3, NULL, 1, '2019-11-28 03:19:04', '2019-11-28 03:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_role_privilege_menu`
--

CREATE TABLE `user_role_privilege_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_role_id` smallint(5) UNSIGNED NOT NULL,
  `privilege_menu_id` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_role_privilege_menu`
--

INSERT INTO `user_role_privilege_menu` (`id`, `user_role_id`, `privilege_menu_id`) VALUES
(1, 2, 9),
(2, 2, 10),
(3, 2, 11),
(4, 2, 6),
(5, 2, 7),
(6, 2, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogposts`
--
ALTER TABLE `blogposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_postings`
--
ALTER TABLE `employee_postings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_postings_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `privilege_menus`
--
ALTER TABLE `privilege_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privilege_menu_categories`
--
ALTER TABLE `privilege_menu_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_privilege_menu`
--
ALTER TABLE `user_privilege_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role_privilege_menu`
--
ALTER TABLE `user_role_privilege_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogposts`
--
ALTER TABLE `blogposts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `employee_postings`
--
ALTER TABLE `employee_postings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `privilege_menus`
--
ALTER TABLE `privilege_menus`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `privilege_menu_categories`
--
ALTER TABLE `privilege_menu_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_privilege_menu`
--
ALTER TABLE `user_privilege_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_role_privilege_menu`
--
ALTER TABLE `user_role_privilege_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_postings`
--
ALTER TABLE `employee_postings`
  ADD CONSTRAINT `employee_postings_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
