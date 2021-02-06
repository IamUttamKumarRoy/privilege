-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2021 at 07:19 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weberp_2021`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `department` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank_id` tinyint(4) DEFAULT NULL,
  `rank_shortname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `employees` (`id`, `employee_name`, `date_of_birth`, `department`, `rank_id`, `rank_shortname`, `current_post`, `joining_date`, `prl_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Debdulal Roy', '1971-03-31', 'ISDD', 1, 'ED', 'ED', '1997-06-16', '2030-09-11', 1, '2021-01-30 06:15:52', '2021-01-30 06:15:52'),
(2, 'Mohammed Ishaque Miah', '1969-02-02', 'Information Systems Development and Support Department', 2, NULL, 'Systems Manager (GM)', '1997-06-16', '2028-02-01', NULL, '2020-01-05 16:55:18', '2020-01-05 16:55:18'),
(3, 'Chandan Saha', '1968-08-28', 'Bangladesh Bank Training Academy', 2, NULL, 'Systems Manager (GM)', '1997-06-16', '2027-08-27', NULL, '2020-01-05 16:57:54', '2020-01-05 16:57:54'),
(4, 'Amir Hossain Pathan', '1970-01-01', 'Information Systems Development and Support Department', 2, NULL, 'Systems Manager (GM)', '1997-06-16', '2028-12-31', NULL, '2020-01-05 16:59:45', '2021-02-06 05:28:11'),
(5, 'Abdur Razzaq', '1967-11-30', 'Information Systems Development and Support Department', 3, NULL, 'Senior Systems Analyst (DGM)', '1997-06-16', '2026-11-29', NULL, '2020-01-05 17:12:26', '2021-02-06 05:28:11'),
(6, 'Wahidul Islam Sarker', '1973-12-25', 'Information Systems Development and Support Department', 3, NULL, 'Senior Systems Analyst (DGM)', '2001-06-21', '2032-12-24', NULL, '2020-01-05 17:21:57', '2021-02-06 05:28:11'),
(7, 'Motior Rahman', '1974-10-30', 'Information Systems Development and Support Department', 3, NULL, 'Senior Systems Analyst (DGM)', '2001-06-21', '2033-10-29', NULL, '2020-01-05 17:23:54', '2021-02-06 05:28:11'),
(8, 'Mohammad Rahat Uddin', '1974-10-31', 'Motijheel Office', 3, NULL, 'Senior Systems Analyst (DGM)', '2001-06-21', '2033-10-30', NULL, '2020-01-05 17:26:40', '2021-02-06 05:28:11'),
(9, 'Al-mehedi Hasan', '1977-01-01', 'Credit Information Bureau', 3, NULL, 'Senior Systems Analyst (DGM)', '2001-06-21', '2035-12-31', NULL, '2020-01-05 17:29:33', '2021-02-06 05:28:11'),
(10, 'Nasrin Sultana', '1973-08-01', 'Information Systems Development and Support Department', 3, NULL, 'Senior Systems Analyst (DGM)', '2001-06-21', '2032-07-31', NULL, '2020-01-05 17:32:15', '2021-02-06 05:28:11'),
(11, 'Mosiuzzaman Khan', '1968-08-28', 'Information Systems Development and Support Department', 3, NULL, 'Senior Systems Analyst (DGM)', '2004-04-01', '2037-12-01', NULL, '2020-01-06 16:32:54', '2021-02-06 05:28:11'),
(12, 'Bisnu Pada Biswas', '1974-07-06', 'Internal Audit Department', 3, NULL, 'Senior Systems Analyst (DGM)', '2004-04-01', '2033-07-05', NULL, '2020-01-06 16:35:09', '2021-02-06 05:28:11'),
(13, 'Nurul Amin', '1978-02-25', 'Information Systems Development and Support Department', 3, NULL, 'Senior Systems Analyst (DGM)', '2004-01-08', '2037-02-24', NULL, '2020-01-06 16:38:16', '2021-02-06 05:28:11'),
(14, 'Masud Anwar', '1974-08-31', 'Information Systems Development and Support Department', 3, NULL, 'Senior Systems Analyst (DGM)', '2004-01-08', '2033-08-30', NULL, '2020-01-06 16:46:55', '2021-02-06 05:28:11'),
(15, 'Munira Jahan', '1976-10-20', 'Information Systems Development and Support Department', 3, NULL, 'Senior Systems Analyst (DGM)', '2004-01-08', '2035-10-19', NULL, '2020-01-06 16:50:22', '2021-02-06 05:28:11'),
(16, 'Jayanta Kumar Bhowmick', '1976-10-20', 'Payment Systems Department', 3, NULL, 'Senior Systems Analyst (DGM)', '2004-01-08', '2036-09-10', NULL, '2020-01-06 16:53:43', '2021-02-06 05:28:11'),
(17, 'Imtiaz Kabir', '1977-07-01', 'Information Systems Development and Support Department', 3, NULL, 'Senior Systems Analyst (DGM)', '2004-01-08', '2036-06-30', NULL, '2020-01-06 16:55:37', '2021-02-06 05:28:11'),
(18, 'Himadri Shekhar Sarder', '1978-11-30', 'Motijheel Office', 4, NULL, 'Systems Analyst (JD)', '2004-01-08', '2037-11-29', NULL, '2020-01-06 17:06:50', '2021-02-06 05:28:11'),
(19, 'Masuma Begum', '1976-03-08', 'Information Systems Development and Support Department', 4, NULL, 'Systems Analyst (JD)', '2004-01-08', '2035-03-07', NULL, '2020-01-06 17:22:00', '2021-02-06 05:28:11'),
(20, 'Hasina Begum', '1963-04-15', 'Information Systems Development and Support Department', 4, NULL, 'Systems Analyst (JD)', '1983-08-29', '2022-04-14', NULL, '2020-01-07 11:07:51', '2021-02-06 05:28:11'),
(21, 'Hasan Al Mamun', '1977-01-01', 'Information Systems Development and Support Department', 4, NULL, 'Systems Analyst (JD)', '2005-09-01', '2035-10-31', NULL, '2020-01-07 11:14:19', '2021-02-06 05:28:11'),
(22, 'Zakiul Alam Sarker', '1977-07-06', 'Human Resources Department 1', 4, NULL, 'Systems Analyst (JD)', '2009-05-14', '2035-07-05', NULL, '2020-01-07 11:18:07', '2021-02-06 05:28:12'),
(23, 'Ahmad Jamal Azizi', '1974-01-01', 'Information Systems Development and Support Department', 4, NULL, 'Systems Analyst (JD)', '2009-08-20', '2032-12-31', NULL, '2020-01-07 11:20:07', '2021-02-06 05:28:12'),
(24, 'Nasim Adnan', '1979-12-17', 'Internal Audit Department', 4, NULL, 'Systems Analyst (JD)', '2005-09-01', '2038-12-16', NULL, '2020-01-07 11:22:31', '2021-02-06 05:28:12'),
(25, 'Shahriar Habib', '1976-09-17', 'Credit Information Bureau', 4, NULL, 'Systems Analyst (JD)', '2005-09-01', '2035-09-16', NULL, '2020-01-07 11:24:44', '2021-02-06 05:28:12'),
(26, 'Zannatul Ferdaus', '1979-12-30', 'Mymensingh Office', 4, NULL, 'Systems Analyst (JD)', '2005-09-01', '2035-12-29', NULL, '2020-01-07 11:26:56', '2021-02-06 05:28:12'),
(27, 'Ashiqur Rahman', '1981-12-03', 'Credit Information Bureau', 4, NULL, 'Systems Analyst (JD)', '2005-09-01', '2040-12-02', NULL, '2020-01-07 11:29:17', '2021-02-06 05:28:12'),
(28, 'Biswajit Kumar Dey', '1981-07-05', 'Internal Audit Department', 4, NULL, 'Systems Analyst (JD)', '2005-11-02', '2040-07-04', NULL, '2020-01-07 11:31:23', '2021-02-06 05:28:12'),
(29, 'Bozlul Karim', '1977-08-15', 'Information Systems Development and Support Department', 4, NULL, 'Systems Analyst (JD)', '2005-12-05', '2036-08-14', NULL, '2020-01-07 11:33:22', '2021-02-06 05:28:12'),
(30, 'Niazur Rahman', '1982-08-01', 'Khulna Office', 4, NULL, 'Systems Analyst (JD)', '2005-08-01', '2036-07-31', NULL, '2020-01-07 11:35:48', '2021-02-06 05:28:12'),
(31, 'S. M. Tofayel Ahmad', '1979-08-20', 'Information Systems Development and Support Department', 4, NULL, 'Systems Analyst (JD)', '2008-06-19', '2038-08-19', NULL, '2020-01-07 11:38:32', '2021-02-06 05:28:12'),
(32, 'Sharmin Jahan', '1979-01-01', 'Information Systems Development and Support Department', 4, NULL, 'Systems Analyst (JD)', '2008-06-19', '2037-12-31', NULL, '2020-01-07 11:40:25', '2021-02-06 05:28:12'),
(33, 'Rejaul Karim', '1980-11-19', 'Information Systems Development and Support Department', 4, NULL, 'Systems Analyst (JD)', '2008-06-19', '2039-11-18', NULL, '2020-01-07 11:46:57', '2021-02-06 05:28:12'),
(34, 'Serazam Monira', '1984-02-01', 'Bankers´ Selection Committee Secretariat', 4, NULL, 'Systems Analyst (JD)', '2008-06-19', '2043-01-31', NULL, '2020-01-07 11:49:48', '2021-02-06 05:28:12'),
(35, 'Ahdabul Islam', '1977-03-01', 'Bankers´ Selection Committee Secretariat', 4, NULL, 'Systems Analyst (JD)', '2008-06-19', '2036-02-28', NULL, '2020-01-07 11:53:12', '2021-02-06 05:28:12'),
(36, 'Pritish Chandra Biswas', '1979-08-01', 'Forex Reserve & Treasury Management Department', 4, NULL, 'Systems Analyst (JD)', '2008-06-19', '2038-07-31', NULL, '2020-01-07 11:55:14', '2021-02-06 05:28:12'),
(37, 'Ayasha Noor', '1979-12-18', 'Information Systems Development and Support Department', 4, NULL, 'Systems Analyst (JD)', '2008-06-19', '2038-12-17', NULL, '2020-01-07 11:56:57', '2021-02-06 05:28:12'),
(38, 'Kamrul Hasan', '1983-01-01', 'Information Systems Development and Support Department', 4, NULL, 'Systems Analyst (JD)', '2008-06-19', '2041-12-31', NULL, '2020-01-07 12:05:38', '2021-02-06 05:28:12'),
(39, 'Shakil Pervez', '1979-09-30', 'Credit Information Bureau', 4, NULL, 'Systems Analyst (JD)', '2008-06-19', '2038-09-28', NULL, '2020-01-07 12:11:05', '2021-02-06 05:28:12'),
(40, 'Shariful Islam', '1980-07-25', 'Payment Systems Department', 4, NULL, 'Systems Analyst (JD)', '2008-06-19', '2039-07-24', NULL, '2020-01-07 12:12:23', '2021-02-06 05:28:12'),
(41, 'Amirul Islam', '1986-01-06', 'Information Systems Development and Support Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2010-12-30', '2045-01-05', NULL, '2020-01-07 13:13:23', '2021-02-06 05:28:12'),
(42, 'Ziaul Hoque', '1980-12-30', 'Information Systems Development and Support Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2010-12-30', '2039-12-29', NULL, '2020-01-07 13:16:37', '2021-02-06 05:28:13'),
(43, 'A.K.M. Zikrul Hasan', '1983-01-01', 'Information Systems Development and Support Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2010-12-30', '2041-12-31', NULL, '2020-01-07 13:18:09', '2021-02-06 05:28:13'),
(44, 'Sonia Rahnuma', '1984-09-19', 'Information Systems Development and Support Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2010-12-30', '2043-09-18', NULL, '2020-01-07 13:23:55', '2021-02-06 05:28:13'),
(45, 'Sonjib Kumer Singha', '1980-12-01', 'Information Systems Development and Support Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2010-12-30', '2039-01-30', NULL, '2020-01-07 13:26:59', '2021-02-06 05:28:13'),
(46, 'Prakash Chandra Mondal', '1982-01-01', 'Information Systems Development and Support Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2010-04-08', '2040-12-31', NULL, '2020-01-07 13:29:17', '2021-02-06 05:28:13'),
(47, 'Abu Sadat Mohammed Yasin', '1985-01-01', 'Motijheel Office', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2012-02-09', '2043-12-31', NULL, '2020-01-07 13:31:51', '2021-02-06 05:28:13'),
(48, 'Jahirul Islam', '1985-12-14', 'Credit Information Bureau', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2012-02-09', '2044-12-13', NULL, '2020-01-07 13:33:11', '2021-02-06 05:28:13'),
(49, 'Majharul Haque', '1983-01-01', 'Information Systems Development and Support Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2012-02-09', '2041-12-31', NULL, '2020-01-07 13:35:44', '2021-02-06 05:28:13'),
(50, 'Golam Mahmud', '1985-01-04', 'Information Systems Development and Support Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2012-02-09', '2044-01-03', NULL, '2020-01-07 13:37:25', '2021-02-06 05:28:13'),
(51, 'Kamrul Islam', '1982-12-31', 'Bangladesh Financial Intelligence Unit', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2012-02-09', '2041-12-30', NULL, '2020-01-07 13:38:52', '2021-02-06 05:28:13'),
(52, 'B.K.M. Mezbahuddin', '1983-10-01', 'Credit Information Bureau', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2012-02-09', '2042-09-29', NULL, '2020-01-07 13:40:12', '2021-02-06 05:28:13'),
(53, 'Shafiqul Islam', '1981-10-24', 'Credit Information Bureau', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2012-02-09', '2040-10-23', NULL, '2020-01-07 13:41:53', '2021-02-06 05:28:13'),
(54, 'Shafi Zaman', '1986-12-31', 'Internal Audit Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2012-04-17', '2045-12-30', NULL, '2020-01-07 13:44:33', '2021-02-06 05:28:13'),
(55, 'Prasun Kanti Howlader', '1982-06-30', 'Information Systems Development and Support Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2012-06-10', '2041-06-29', NULL, '2020-01-07 13:50:06', '2021-02-06 05:28:13'),
(56, 'Nirupam Chandra Modak', '1987-07-29', 'Bogura Office', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2046-07-28', NULL, '2020-01-07 13:52:20', '2021-02-06 05:28:13'),
(57, 'Jakir Hossain', '1986-05-10', 'Information Systems Development and Support Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2045-05-09', NULL, '2020-01-07 13:54:05', '2021-02-06 05:28:13'),
(58, 'Shuvankar Halder', '1984-12-01', 'Credit Information Bureau', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2045-11-30', NULL, '2020-01-07 13:55:06', '2021-02-06 05:28:13'),
(59, 'Masud Rana', '1987-05-25', 'Information Systems Development and Support Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2046-05-24', NULL, '2020-01-07 13:56:47', '2021-02-06 05:28:13'),
(60, 'Lutfatun Nesa', '1984-02-20', 'Credit Information Bureau', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2043-02-19', NULL, '2020-01-07 13:58:16', '2021-02-06 05:28:13'),
(61, 'S.M. Shohel', '1986-12-15', 'Barishal Office', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2045-12-15', NULL, '2020-01-07 14:05:10', '2021-02-06 05:28:13'),
(62, 'Sheikh Ibney Masud', '1985-04-05', 'Payment Systems Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2044-04-04', NULL, '2020-01-07 14:07:38', '2021-02-06 05:28:13'),
(63, 'Chayan Biswas', '1987-06-12', 'Payment Systems Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2046-06-12', NULL, '2020-01-07 14:09:13', '2021-02-06 05:28:13'),
(64, 'Nabila Arfeen', '1987-05-13', 'Credit Information Bureau', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2046-05-13', NULL, '2020-01-07 14:10:11', '2021-02-06 05:28:13'),
(65, 'Mehedi Hasan', '1985-01-22', 'Information Systems Development and Support Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2044-01-22', NULL, '2020-01-07 14:11:45', '2021-02-06 05:28:13'),
(66, 'Debashish Biswas', '1984-06-30', 'Khulna Office', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2043-06-30', NULL, '2020-01-07 14:13:21', '2021-02-06 05:28:14'),
(67, 'Hasan Mohammed Faisal', '1984-09-10', 'Information Systems Development and Support Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2043-09-10', NULL, '2020-01-07 14:14:32', '2021-02-06 05:28:14'),
(68, 'Habibur Rahman', '1984-02-02', 'Credit Information Bureau', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2013-03-11', '2043-02-02', NULL, '2020-01-07 14:15:55', '2021-02-06 05:28:14'),
(69, 'Sohel Ahmed', '1984-11-30', 'Internal Audit Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2014-06-01', '2043-11-30', NULL, '2020-01-07 14:37:37', '2021-02-06 05:28:14'),
(70, 'Rubel', '1986-12-30', 'Information Systems Development and Support Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2014-06-01', '2045-12-30', NULL, '2020-01-07 14:39:13', '2021-02-06 05:28:14'),
(71, 'Mahfuzur Rahman Bosunia', '1987-01-01', 'Information Systems Development and Support Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2014-06-01', '2046-01-01', NULL, '2020-01-07 14:40:28', '2021-02-06 05:28:14'),
(72, 'Sharmi Mazumder', '1986-01-01', 'Chattogram Office', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2014-09-04', '2045-01-01', NULL, '2020-01-07 14:42:03', '2021-02-06 05:28:14'),
(73, 'Belal Hossain', '1982-10-27', 'Human Resources Department 1', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2014-10-13', '2041-10-27', NULL, '2020-01-07 14:43:49', '2021-02-06 05:28:14'),
(74, 'Mithun Sarkar', '1988-02-22', 'Information Systems Development and Support Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2014-10-13', '2047-02-22', NULL, '2020-01-07 14:44:50', '2021-02-06 05:28:14'),
(75, 'Rafiqul Islam', '1986-09-26', 'Information Systems Development and Support Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2014-10-13', '2045-09-26', NULL, '2020-01-07 14:46:58', '2021-02-06 05:28:14'),
(76, 'Masud Rana', '1987-10-20', 'Motijheel Office', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2014-10-13', '2045-10-20', NULL, '2020-01-07 14:48:53', '2021-02-06 05:28:14'),
(77, 'Tanzima Azad', '1989-06-17', 'Information Systems Development and Support Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2017-06-08', '2048-06-17', NULL, '2020-01-07 14:50:33', '2021-02-06 05:28:14'),
(78, 'Shamim-Al-Mamun', '1988-04-03', 'Information Systems Development and Support Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2017-06-08', '2047-04-03', NULL, '2020-01-07 14:52:51', '2021-02-06 05:28:14'),
(79, 'Mizanur Rahman', '1992-12-25', 'Information Systems Development and Support Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2017-06-08', '2051-12-25', NULL, '2020-01-07 14:54:24', '2021-02-06 05:28:14'),
(80, 'Subrata Barman', '1988-08-22', 'Information Systems Development and Support Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2017-06-08', '2047-08-22', NULL, '2020-01-07 14:56:11', '2021-02-06 05:28:14'),
(81, 'Aminur Rahman', '1989-02-28', 'Accounts and Budgeting Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2017-06-08', '2048-02-28', NULL, '2020-01-07 14:57:43', '2021-02-06 05:28:14'),
(82, 'Amit Biswas', '1987-10-22', 'Information Systems Development and Support Department', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2017-06-08', '2046-10-22', NULL, '2020-01-07 14:59:00', '2021-02-06 05:28:14'),
(83, 'Ifthekhar Mahmood', '1992-11-15', 'Bangladesh Financial Intelligence Unit', 5, NULL, 'Programmer/Asst.Systems Analyst (DD)', '2017-06-08', '2051-11-15', NULL, '2020-01-07 15:01:00', '2021-02-06 05:28:14'),
(84, 'Uttam Kumar Roy', '1990-06-25', 'Credit Information Bureau', 6, NULL, 'Assistant Programmer (AD)', '2017-06-08', '2049-06-25', NULL, '2020-01-07 15:02:55', '2021-02-06 05:28:14'),
(85, 'Nurul Islam Molla', '1983-10-15', 'Motijheel Office', 6, NULL, 'Assistant Programmer (AD)', '2017-06-08', '2042-10-15', NULL, '2020-01-07 15:04:31', '2021-02-06 05:28:14');

-- --------------------------------------------------------

--
-- Table structure for table `post_ranks`
--

CREATE TABLE `post_ranks` (
  `id` int(11) NOT NULL,
  `rank_value` tinyint(3) UNSIGNED DEFAULT NULL,
  `rank_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rank_shortname` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_ranks`
--

INSERT INTO `post_ranks` (`id`, `rank_value`, `rank_name`, `rank_shortname`, `status`) VALUES
(1, 1, 'ED', 'ED', 1),
(2, 2, 'Systems Manager (GM)', 'GM', 1),
(3, 3, 'Senior Systems Analyst (DGM)', 'DGM', 1),
(4, 4, 'Systems Analyst (JD)', 'JD', 1),
(5, 5, 'Programmer/Asst.Systems Analyst (DD)', 'DD', 1),
(6, 6, 'Assistant Programmer (AD)', 'AD', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_ranks`
--
ALTER TABLE `post_ranks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `post_ranks`
--
ALTER TABLE `post_ranks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
