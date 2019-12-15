-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2019 at 12:23 PM
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
(7, '2019_06_13_055516_create_user_role_privilege_menu_table', 2),
(8, '2019_06_13_064201_create_user_privilege_menu_table', 2),
(9, '2019_11_28_065315_create_user_roles_table', 2);

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
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `id` smallint(5) UNSIGNED NOT NULL,
  `user_role_id` smallint(5) UNSIGNED NOT NULL,
  `privilege_menu_id` smallint(5) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_role_privilege_menu`
--
ALTER TABLE `user_role_privilege_menu`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
