-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2019 at 01:16 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `listing`
--

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `list_type` tinyint(3) UNSIGNED DEFAULT NULL,
  `list_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `list_body` text COLLATE utf8mb4_unicode_ci,
  `list_thumb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` smallint(5) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `parent_id`, `user_id`, `list_type`, `list_title`, `list_body`, `list_thumb`, `ordering`, `status`, `created_at`, `updated_at`) VALUES
(3, NULL, 1, 1, 'Section', 'Section Desc', NULL, NULL, 1, '2019-09-16 23:41:58', '2019-09-16 23:41:58'),
(4, NULL, 1, 1, 'Portfolio Management', 'Portfolio Management Desc', NULL, NULL, 1, '2019-09-19 00:37:34', '2019-09-19 00:37:34');

-- --------------------------------------------------------

--
-- Table structure for table `list_categories`
--

CREATE TABLE `list_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `ordering` smallint(5) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `list_categories`
--

INSERT INTO `list_categories` (`id`, `parent_id`, `user_id`, `category_name`, `description`, `ordering`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'First Category', 'First Category Desc', 1, 1, '2019-09-16 23:35:14', '2019-09-16 23:35:14'),
(2, NULL, 1, 'Second Category', 'Second Category Desc', 1, 1, '2019-09-16 23:35:26', '2019-09-16 23:35:26'),
(3, NULL, 1, 'Third Category', 'Third Category Desc', 1, 1, '2019-09-16 23:37:17', '2019-09-16 23:37:17');

-- --------------------------------------------------------

--
-- Table structure for table `list_items`
--

CREATE TABLE `list_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `listing_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_type` tinyint(3) UNSIGNED DEFAULT NULL,
  `item_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_body` text COLLATE utf8mb4_unicode_ci,
  `item_thumb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` smallint(5) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `list_items`
--

INSERT INTO `list_items` (`id`, `parent_id`, `user_id`, `listing_id`, `item_type`, `item_title`, `item_body`, `item_thumb`, `ordering`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 3, 1, 'Item Title 11', 'Item Title 11 B', NULL, NULL, NULL, '2019-09-19 05:09:15', '2019-09-19 05:09:15'),
(2, NULL, 1, 3, 2, 'Item Title 22', 'Item Title 22 B', NULL, NULL, NULL, '2019-09-19 05:09:15', '2019-09-19 05:09:15');

-- --------------------------------------------------------

--
-- Table structure for table `list_item_fields`
--

CREATE TABLE `list_item_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `list_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `list_item_field_type` tinyint(3) UNSIGNED DEFAULT NULL,
  `field_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_value` text COLLATE utf8mb4_unicode_ci,
  `ordering` smallint(5) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `list_item_progresses`
--

CREATE TABLE `list_item_progresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `list_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `progress_status` tinyint(3) UNSIGNED DEFAULT NULL,
  `progress_note` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2019_08_22_155410_create_list_categories_table', 1),
(19, '2019_08_24_144204_create_listings_table', 1),
(20, '2019_08_24_160133_create_list_items_table', 1),
(21, '2019_08_24_162431_create_list_item_fields_table', 1),
(22, '2019_08_24_165353_create_list_item_progresses_table', 1),
(23, '2019_09_14_080051_add_google_id_column', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `provider`, `provider_id`, `remember_token`, `created_at`, `updated_at`, `google_id`) VALUES
(1, 'Uttam Kumar Roy', 'cseuttamiu@gmail.com', NULL, '$2y$10$GevUwzVjepdw00vQKicr7evx23Ymrcd/lCBToK/ovJ8k5CGj4.J32', NULL, NULL, 'D4Scix7HOHjBBUuORSYpSVf1EHiAZLKNil4yPibpvV7Rjq7zVbzZFtf65Y1t', '2019-09-16 23:34:54', '2019-09-16 23:34:54', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_categories`
--
ALTER TABLE `list_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_items`
--
ALTER TABLE `list_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_item_fields`
--
ALTER TABLE `list_item_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_item_progresses`
--
ALTER TABLE `list_item_progresses`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `list_categories`
--
ALTER TABLE `list_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `list_items`
--
ALTER TABLE `list_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `list_item_fields`
--
ALTER TABLE `list_item_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `list_item_progresses`
--
ALTER TABLE `list_item_progresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
