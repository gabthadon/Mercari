-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 22, 2022 at 05:42 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mercari`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(29, NULL, 1, 'Women', 'women', '2022-05-21 09:34:09', '2022-05-21 09:34:09'),
(30, NULL, 2, 'Men', 'male', '2022-05-21 09:34:52', '2022-05-22 20:37:45'),
(31, NULL, 3, 'Kids', 'kids', '2022-05-21 09:35:10', '2022-05-21 09:35:10'),
(52, 29, 1, 'Gown & Tops', 'gown-and-tops', '2022-05-22 20:39:21', '2022-05-22 20:39:21'),
(53, 29, 1, 'Underwears', 'underwears', '2022-05-22 20:39:45', '2022-05-22 20:39:45'),
(54, 29, 1, 'Trousers & Skirt', 'trousers-and-skirt', '2022-05-22 20:40:10', '2022-05-22 20:40:10'),
(55, 29, 1, 'Jewelry', 'jewelry', '2022-05-22 20:40:48', '2022-05-22 20:40:48'),
(56, 29, 1, 'Accessories', 'accessories', '2022-05-22 20:41:13', '2022-05-22 20:41:13'),
(57, 30, 1, 'Top', 'top', '2022-05-22 20:41:57', '2022-05-22 20:41:57'),
(58, 30, 1, 'Trousers', 'trousers', '2022-05-22 20:42:25', '2022-05-22 20:42:25'),
(59, 30, 1, 'Underwears', 'underwears-men', '2022-05-22 20:43:11', '2022-05-22 20:43:11'),
(60, 30, 1, 'Jewels', 'jewels', '2022-05-22 20:43:53', '2022-05-22 20:43:53'),
(61, 30, 1, 'Accessories', 'accessories-men', '2022-05-22 20:44:28', '2022-05-22 20:44:28'),
(62, 31, 1, 'Top', 'top-kids', '2022-05-22 20:45:13', '2022-05-22 20:45:13'),
(63, 31, 1, 'pants', 'pants-kids', '2022-05-22 20:46:14', '2022-05-22 20:46:14'),
(64, 31, 1, 'Underwears', 'underwear-kids', '2022-05-22 20:46:53', '2022-05-22 20:46:53'),
(65, 31, 1, 'Jewelry', 'jewelry-kids', '2022-05-22 20:47:58', '2022-05-22 20:47:58'),
(66, 31, 1, 'Accessories', 'accessories-kids', '2022-05-22 20:48:32', '2022-05-22 20:48:32'),
(67, NULL, 1, 'Shoes', 'shoes', '2022-05-22 20:49:07', '2022-05-22 20:49:07'),
(68, NULL, 1, 'Beauty', 'beauty', '2022-05-22 20:49:35', '2022-05-22 20:49:35');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fb_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `email`, `email_verified_at`, `username`, `password`, `phone`, `extra_phone`, `address`, `remember_token`, `_token`, `created_at`, `updated_at`, `fb_id`) VALUES
(6, 'dzangalist1@gmail.com', NULL, 'gabito', '$2y$10$1V2wxai1MsvkBIVSLlqS0.I0GoMjKBLfEZPRAd3SDYmhT6uM7a7ly', NULL, NULL, NULL, NULL, '', '2022-05-18 23:32:34', '2022-05-18 23:32:34', NULL),
(24, 'info@gadgedup.com', NULL, 'gabthadon', '$2y$10$oEXRxlbYyLxthzbO3i/ZXe.u9cgmwsMj6X1IkA.18q3aItMUWP/JK', NULL, NULL, NULL, NULL, 'QltheCeFK4CBgBXd7w79vocBCU6G2FDqurUx8f9O', '2022-06-09 00:16:39', '2022-06-09 00:16:39', NULL),
(25, 'dzangalist@gmail.com', NULL, 'dzangalist', '$2y$10$xsNBFJxJmlfdEN5frIQFsumjhw3mItgFFZ8iGvjzW1.sR0gMlmksK', NULL, NULL, NULL, NULL, '9MxYH0ADxqznlZ8A2t0UQClFOOC96YZPtTCpr9ur', '2022-06-17 14:04:10', '2022-06-17 14:04:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, '{}', 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 15),
(91, 5, 'price', 'number', 'Price', 0, 1, 1, 1, 1, 1, '{}', 16),
(93, 5, 'images', 'multiple_images', 'Images', 0, 0, 0, 0, 0, 0, '{}', 17);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-05-17 14:46:28', '2022-05-17 14:46:28'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-05-17 14:46:28', '2022-05-17 14:46:28'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-05-17 14:46:28', '2022-05-17 14:46:28'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2022-05-17 14:46:40', '2022-05-17 14:46:40'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-05-17 14:46:42', '2022-05-28 01:10:43');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(10) UNSIGNED NOT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `ext_delivery` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `state`, `cost`, `ext_delivery`, `created_at`, `updated_at`) VALUES
(1, 'Abia', 2500, 12, '2022-05-22 23:42:43', '2022-05-22 23:42:43'),
(2, 'Adamawa', 4000, 12, '2022-05-22 23:43:00', '2022-05-22 23:48:49'),
(3, 'Akwa Ibom', 2500, 12, '2022-05-22 23:44:00', '2022-05-22 23:44:51'),
(4, 'Anambra', 2500, 12, '2022-05-22 23:45:00', '2022-05-22 23:51:27'),
(5, 'Bauchi', 4000, 12, '2022-05-22 23:46:00', '2022-05-22 23:48:09'),
(6, 'Bayelsa', 2500, 12, '2022-05-22 23:47:09', '2022-05-22 23:47:09'),
(7, 'Benue', 2500, 12, '2022-05-22 23:47:40', '2022-05-22 23:47:40'),
(8, 'Borno', 4000, 12, '2022-05-22 23:49:00', '2022-05-22 23:50:10'),
(9, 'Cross River', 2500, 12, '2022-05-22 23:52:14', '2022-05-22 23:52:14'),
(10, 'Delta', 2500, 12, '2022-05-22 23:52:34', '2022-05-22 23:52:34'),
(11, 'Ebonyi', 2500, 12, '2022-05-22 23:53:13', '2022-05-22 23:53:13'),
(12, 'Edo', 2500, 12, '2022-05-22 23:53:43', '2022-05-22 23:53:43'),
(13, 'Ekiti', 2500, 12, '2022-05-22 23:54:16', '2022-05-22 23:54:16'),
(14, 'Enugu', 2500, 12, '2022-05-22 23:54:35', '2022-05-22 23:54:35'),
(15, 'Gombe', 4000, 12, '2022-05-22 23:55:00', '2022-05-22 23:55:00'),
(16, 'Imo', 2500, 12, '2022-05-22 23:55:20', '2022-05-22 23:55:20'),
(17, 'Jigawa State', 4000, 12, '2022-05-22 23:55:51', '2022-05-22 23:55:51'),
(18, 'Kaduna', 4000, 12, '2022-05-22 23:56:10', '2022-05-22 23:56:10'),
(20, 'Kano', 4000, 12, '2022-05-22 23:58:35', '2022-05-22 23:58:35'),
(21, 'Katsina', 4000, 12, '2022-05-22 23:59:05', '2022-05-22 23:59:05'),
(22, 'Kebbi', 4000, 12, '2022-05-22 23:59:26', '2022-05-22 23:59:26'),
(23, 'Kogi', 2500, 12, '2022-05-22 23:59:50', '2022-05-22 23:59:50'),
(24, 'Kwara', 2500, 12, '2022-05-23 00:00:28', '2022-05-23 00:00:28'),
(25, 'Lagos (mainland)', 1500, 10, '2022-05-23 00:02:22', '2022-05-23 00:02:22'),
(26, 'Lagos (Island)', 2000, 10, '2022-05-23 00:03:12', '2022-05-23 00:03:12'),
(27, 'Nasarawa', 4000, 12, '2022-05-23 00:04:10', '2022-05-23 00:04:10'),
(28, 'Niger', 4000, 12, '2022-05-23 00:04:56', '2022-05-23 00:04:56'),
(29, 'Ogun', 2500, 12, '2022-05-23 00:05:51', '2022-05-23 00:05:51'),
(30, 'Ondo', 2500, 12, '2022-05-23 00:06:22', '2022-05-23 00:06:22'),
(31, 'Osun', 2500, 12, '2022-05-23 00:06:45', '2022-05-23 00:06:45'),
(32, 'Oyo', 2500, 12, '2022-05-23 00:07:11', '2022-05-23 00:07:11'),
(33, 'Plateau', 4000, 12, '2022-05-23 00:07:00', '2022-05-23 00:08:20'),
(34, 'Rivers', 2500, 12, '2022-05-23 00:09:53', '2022-05-23 00:09:53'),
(35, 'Sokoto', 4000, 12, '2022-05-23 00:10:21', '2022-05-23 00:10:21'),
(36, 'Taraba', 4000, 12, '2022-05-23 00:10:48', '2022-05-23 00:10:48'),
(37, 'Yobe', 4000, 12, '2022-05-23 00:11:10', '2022-05-23 00:11:10'),
(38, 'Zamfara', 4000, 12, '2022-05-23 00:11:50', '2022-05-23 00:11:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-05-17 14:46:30', '2022-05-17 14:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-05-17 14:46:30', '2022-05-17 14:46:30', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2022-05-17 14:46:30', '2022-05-28 00:04:14', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 4, '2022-05-17 14:46:30', '2022-05-28 00:04:14', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2022-05-17 14:46:30', '2022-05-17 14:46:30', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2022-05-17 14:46:30', '2022-05-28 00:04:15', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-05-17 14:46:30', '2022-05-22 11:32:08', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-05-17 14:46:30', '2022-05-22 11:32:08', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-05-17 14:46:30', '2022-05-22 11:32:08', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-05-17 14:46:30', '2022-05-22 11:32:08', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2022-05-17 14:46:30', '2022-05-28 00:04:15', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2022-05-17 14:46:41', '2022-05-28 00:04:15', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2022-05-17 14:46:43', '2022-05-28 00:04:14', 'voyager.posts.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(29, '2022_05_17_222239_customers', 3),
(30, '2014_10_12_200000_add_two_factor_columns_to_users_table', 4),
(31, '2022_05_20_000850_create_sessions_table', 4),
(33, '2022_05_20_023541_add_fb_id_column_in_users_table', 5),
(34, '2016_06_01_000001_create_oauth_auth_codes_table', 6),
(35, '2016_06_01_000002_create_oauth_access_tokens_table', 6),
(36, '2016_06_01_000003_create_oauth_refresh_tokens_table', 6),
(37, '2016_06_01_000004_create_oauth_clients_table', 6),
(38, '2016_06_01_000005_create_oauth_personal_access_clients_table', 6),
(39, '2022_06_10_220326_create_orders_table', 7),
(40, '2022_06_15_163459_create_ratings_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ref`, `customer_id`, `name`, `amount`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(2, '3496803', '25', '\"Women Puff Sleeve Boyfriend Shirt Dress Ladies Button Loose Formal OL Blouse\"', '17000', '1', '1', '2022-06-18 13:32:54', '2022-06-18 13:32:54'),
(3, '3496803', '25', '\"Men Lace-Up Brown Corporate Shoe\"', '27000', '2', '1', '2022-06-18 13:32:54', '2022-06-18 13:32:54'),
(4, 'flw_165557985862ae24d286ba5', '25', '\"Ladies Fashion Mid Heel Slippers\"', '11500', '1', '1', '2022-06-18 18:18:45', '2022-06-18 18:18:45'),
(5, 'flw_165557985862ae24d286ba5', '25', '\"Quality Ladies Short-Sleeve Top-Blue\"', '3999', '2', '1', '2022-06-18 18:18:45', '2022-06-18 18:18:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-05-17 14:46:31', '2022-05-17 14:46:31'),
(2, 'browse_bread', NULL, '2022-05-17 14:46:31', '2022-05-17 14:46:31'),
(3, 'browse_database', NULL, '2022-05-17 14:46:31', '2022-05-17 14:46:31'),
(4, 'browse_media', NULL, '2022-05-17 14:46:31', '2022-05-17 14:46:31'),
(5, 'browse_compass', NULL, '2022-05-17 14:46:31', '2022-05-17 14:46:31'),
(6, 'browse_menus', 'menus', '2022-05-17 14:46:31', '2022-05-17 14:46:31'),
(7, 'read_menus', 'menus', '2022-05-17 14:46:31', '2022-05-17 14:46:31'),
(8, 'edit_menus', 'menus', '2022-05-17 14:46:31', '2022-05-17 14:46:31'),
(9, 'add_menus', 'menus', '2022-05-17 14:46:31', '2022-05-17 14:46:31'),
(10, 'delete_menus', 'menus', '2022-05-17 14:46:31', '2022-05-17 14:46:31'),
(11, 'browse_roles', 'roles', '2022-05-17 14:46:31', '2022-05-17 14:46:31'),
(12, 'read_roles', 'roles', '2022-05-17 14:46:32', '2022-05-17 14:46:32'),
(13, 'edit_roles', 'roles', '2022-05-17 14:46:32', '2022-05-17 14:46:32'),
(14, 'add_roles', 'roles', '2022-05-17 14:46:32', '2022-05-17 14:46:32'),
(15, 'delete_roles', 'roles', '2022-05-17 14:46:32', '2022-05-17 14:46:32'),
(16, 'browse_users', 'users', '2022-05-17 14:46:32', '2022-05-17 14:46:32'),
(17, 'read_users', 'users', '2022-05-17 14:46:32', '2022-05-17 14:46:32'),
(18, 'edit_users', 'users', '2022-05-17 14:46:32', '2022-05-17 14:46:32'),
(19, 'add_users', 'users', '2022-05-17 14:46:32', '2022-05-17 14:46:32'),
(20, 'delete_users', 'users', '2022-05-17 14:46:32', '2022-05-17 14:46:32'),
(21, 'browse_settings', 'settings', '2022-05-17 14:46:32', '2022-05-17 14:46:32'),
(22, 'read_settings', 'settings', '2022-05-17 14:46:32', '2022-05-17 14:46:32'),
(23, 'edit_settings', 'settings', '2022-05-17 14:46:32', '2022-05-17 14:46:32'),
(24, 'add_settings', 'settings', '2022-05-17 14:46:32', '2022-05-17 14:46:32'),
(25, 'delete_settings', 'settings', '2022-05-17 14:46:32', '2022-05-17 14:46:32'),
(26, 'browse_categories', 'categories', '2022-05-17 14:46:41', '2022-05-17 14:46:41'),
(27, 'read_categories', 'categories', '2022-05-17 14:46:41', '2022-05-17 14:46:41'),
(28, 'edit_categories', 'categories', '2022-05-17 14:46:41', '2022-05-17 14:46:41'),
(29, 'add_categories', 'categories', '2022-05-17 14:46:41', '2022-05-17 14:46:41'),
(30, 'delete_categories', 'categories', '2022-05-17 14:46:41', '2022-05-17 14:46:41'),
(31, 'browse_posts', 'posts', '2022-05-17 14:46:43', '2022-05-17 14:46:43'),
(32, 'read_posts', 'posts', '2022-05-17 14:46:43', '2022-05-17 14:46:43'),
(33, 'edit_posts', 'posts', '2022-05-17 14:46:43', '2022-05-17 14:46:43'),
(34, 'add_posts', 'posts', '2022-05-17 14:46:43', '2022-05-17 14:46:43'),
(35, 'delete_posts', 'posts', '2022-05-17 14:46:43', '2022-05-17 14:46:43');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`, `price`) VALUES
(7, 2, 67, 'SHARE THIS PRODUCT   Men Lace-Up Brown Corporate Shoe', NULL, NULL, '<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">NORMAL FITTING&nbsp;</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">SOLE FOR COMFORTADD VALUE TO YOUR COLLECTIONFOR OFFICE AND FORMAL OCCASIONS: WEDDING, SOCIAL MEETINGS ETCWORN WITH DENIMS, SENATORS, ANKARA ETC</span></p>', 'posts/May2022/IWKzGAdSYH4e4wBMfoYa.jpg', 'share-this-product-men-lace-up-brown-corporate-shoe', NULL, NULL, 'PUBLISHED', 0, '2022-05-28 00:14:21', '2022-05-28 00:14:21', 6800),
(8, 2, 31, 'Jiaduowang Princess School Shoe', NULL, NULL, '<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">This is a perfect blend of style. It\'s made of good leather material and very durable. This pair of back to school shoe is comfortable, stylish and trendy. Due to the fact that our kids deserve the best, this shoe is stylishly designed for them.</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">It a durable shoe made from good and quality material that is easy to clean. It is rugged and comfortable, adjustable for fitting, easy to wear and take off shoe.It is very strong and elegant because every child deserves a quality and suitable foot wear.It rugged and adjustable. It made up of a high padded material for effective grip and a non slip rubber sole which make it suitable for school and everyday wear. A suitable and durable shoe made of quality material that is very easy to clean and polish.&nbsp;</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Suitable as back to school, wedding and other occasions. It comprises of good and smooth PU leather, good rubber sole. Durable for all occasions.Comfortable and long lasting sole with velcro. It sticks perfectly to the legs and come with a trendy look.&nbsp;</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">A good product that is uniquely designed to value your money. It makes your girl stand out in the mist of the crowd. It very comfortable and unique with design which makes this shoe very attractive.</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">This shoe was made to last and built with all creativity you can get. A perfect match with all attire. There are more quality products in the shop for you to choose from ,because your comfort and beauty....our concern.</span></p>', 'posts/May2022/5cBxgtyZbNxkD5LMc4bd.jpg', 'jiaduowang-princess-school-shoe', NULL, NULL, 'PUBLISHED', 0, '2022-05-28 00:18:53', '2022-05-28 00:18:53', 7699),
(9, 2, 31, '2021 New Children\'s Shoes Breathable Sport Shoes', NULL, NULL, '<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Dear friend, thank you for browsing our products,I hope you can enjoy shopping.</span>&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;<span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Inside the shop there are more good Brands productWelcome you into the store browsing</span>&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;<span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">US 3&nbsp; &nbsp;=&nbsp; EU 35&nbsp; =foot length 22 - 22.5&nbsp; &nbsp;cmUS 4&nbsp; &nbsp;=&nbsp; EU 36&nbsp; =foot length 22.5 - 23&nbsp; &nbsp;cmUS 5&nbsp; &nbsp;=&nbsp; EU 37&nbsp; =foot length 23 - 23.5&nbsp; &nbsp;cmUS 6&nbsp; &nbsp;=&nbsp; EU 38&nbsp; =foot length 23.5 - 24&nbsp; &nbsp;cm&nbsp;US 6.5 =&nbsp; EU 39&nbsp; =foot length 24&nbsp; &nbsp;- 24.5 cm&nbsp;US 7&nbsp; &nbsp;=&nbsp; EU 40&nbsp; =foot length 24.5 - 25&nbsp; &nbsp;cm&nbsp;US 8&nbsp; &nbsp;=&nbsp; EU 41&nbsp; =foot length 25&nbsp; &nbsp;- 25.5 cm&nbsp;US 8.5 =&nbsp; EU 42&nbsp; =foot length 25.5 - 26&nbsp; &nbsp;cm&nbsp;US 9.5 =&nbsp; EU 43&nbsp; =foot length 26&nbsp; &nbsp;- 26.5 cm&nbsp;US 10&nbsp; =&nbsp; EU 44&nbsp; =foot length 26.5 - 27&nbsp; &nbsp;cmUS 11&nbsp; =&nbsp; EU 45&nbsp; =foot length 27&nbsp; &nbsp;- 27.5 cm&nbsp;US 12&nbsp; =&nbsp; EU 46&nbsp; =foot length 27.5 - 28&nbsp; &nbsp;cm&nbsp;US 13&nbsp; =&nbsp; EU 47&nbsp; =foot length 28&nbsp; &nbsp;- 28.5 cm&nbsp; &nbsp;</span>&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;<span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">All measurement in cm and please note 1cm=0.39inch</span>&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;<span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">For Example,If your foot length is 25.3cm,You should choose US size 8 or EU size 41.Kindly Reminder:The shoes size is based on European size and the real foot length.If you are not sure your foot length,please measure your foot length according to follow methods.</span>&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;<span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Tips: Measurements are the maximum size,please allow 0.5-1cm tolerance. Compare the chart size with your feet length carefully before ordering.</span>&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;<span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">We will be shipped within 24 hours after receipt of order.</span></p>', 'posts/May2022/m86GwWd0QKMSBnzW4EeO.jpg', '2021-new-children-s-shoes-breathable-sport-shoes', NULL, NULL, 'PUBLISHED', 0, '2022-05-28 00:26:13', '2022-05-28 00:48:46', 5900),
(10, 2, 30, 'SHARE THIS PRODUCT   Fasfion Men\'s Business Dress Shoes Pointed Shiny Shoes-black', NULL, NULL, '<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Whether formally dressed or in casuals, your style should always be topnotch. This high quality footwear gives just the right amount of swag you need. It is very comfortable and uniquely designed. The pair is well crafted and detailed while giving your feet great comfort. It is versatile and pairs well with different outfits for your occasions.The soft, comfortable and breathable material gives your leg room to breathe. It is soft and protective to cushion your every step.It is also an ideal gift for your loved ones. They\'d especially love it for the brillant colour and sharp design. The footwear is easy to maintain, lightweight with an excellent bounce- back super- strong sole excellent for long wear.&nbsp;It is definitely a smart and excellent addition to your wardrobe.</span></p>\r\n<ul style=\"box-sizing: border-box; padding: 0px 0px 0px 16px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">\r\n<li style=\"box-sizing: border-box; padding: 0px; margin: 0px;\">The size of this shoe is a bit too small,please buy a size larger than the usual shoes.</li>\r\n</ul>', 'posts/May2022/y6W7yii9Dh8RYiyRYpWT.jpg', 'share-this-product-fasfion-men-s-business-dress-shoes-pointed-shiny-shoes-black', NULL, NULL, 'PUBLISHED', 1, '2022-05-28 00:52:26', '2022-05-28 00:52:26', 5635),
(11, 2, 29, 'Men\'s Shoe-white', NULL, NULL, '<p>zszxc</p>', 'posts/May2022/ipNkBBT4HQwBLkpXlB1T.jpg', 'men-s-shoe-white', NULL, NULL, 'PUBLISHED', 0, '2022-05-28 01:00:49', '2022-05-28 01:05:30', 6800),
(12, 2, 30, 'Men Lace-Up Brown Corporate Shoe', NULL, NULL, '<p><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">NORMAL FITTING&nbsp;</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">SOLE FOR COMFORTADD VALUE TO YOUR COLLECTIONFOR OFFICE AND FORMAL OCCASIONS: WEDDING, SOCIAL MEETINGS ETCWORN WITH DENIMS, SENATORS, ANKARA ETC</span></p>', 'posts/May2022/PpQBtEp5pBkJ8aGGTVac.jpg', 'men-lace-up-brown-corporate-shoe', NULL, NULL, 'PUBLISHED', 1, '2022-05-28 01:15:44', '2022-05-28 01:15:44', 6800),
(13, 2, 29, 'Ladies Fashion Mid Heel Slippers', NULL, NULL, '<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px 0px 0.0001pt; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff; line-height: normal;\"><strong style=\"box-sizing: border-box;\">Stand out from the crowd</strong>&nbsp;in this amazing and attractive high quality foot wear. It is made with the buyer\'s&nbsp;comfort and elegance&nbsp;in mind. This is the footwear to go for whenever you are thinking of getting that perfect finishing touch for your outfit. It comes in different sizes. It is designed for comfort and uniqueness. Your cabinet would not be complete without this particular foot wear in it. Get this foot wear today and you will be forever thankful you did.</p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px 0px 0.0001pt; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; line-height: normal; background: white;\">&nbsp;It is very durable and also highly affordable. It speaks simplicity and uniqueness combined.</p>\r\n<ul style=\"box-sizing: border-box; padding: 0px 0px 0px 16px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff; list-style-type: decimal;\">\r\n<li class=\"MsoNormal\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; color: #333333; line-height: normal;\">High quality</li>\r\n<li class=\"MsoNormal\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; color: #333333; line-height: normal;\">Comfortable to wear</li>\r\n<li class=\"MsoNormal\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; color: #333333; line-height: normal;\">Very classy</li>\r\n<li class=\"MsoNormal\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; color: #333333; line-height: normal;\">Highly affordable</li>\r\n<li class=\"MsoNormal\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; color: #333333; line-height: normal;\">Very durable</li>\r\n<li class=\"MsoNormal\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; color: #333333; line-height: normal;\">Great for all occasions</li>\r\n<li>&nbsp;</li>\r\n</ul>', 'posts/May2022/KBI70TsHxF9MwxZPeHCJ.jpg', 'ladies-fashion-mid-heel-slippers', NULL, NULL, 'PUBLISHED', 0, '2022-05-28 01:19:31', '2022-05-28 01:19:31', 11500),
(14, 2, 29, 'Ladies Fashion Mid Heel Slippers-Black', NULL, NULL, '<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px 0px 0.0001pt; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff; line-height: normal;\"><strong style=\"box-sizing: border-box;\">Stand out from the crowd</strong>&nbsp;in this amazing and attractive high quality foot wear. It is made with the buyer\'s&nbsp;comfort and elegance&nbsp;in mind. This is the footwear to go for whenever u are thinking of getting that perfect finishing touch for your outfit. It comes in different sizes. It is designed for comfort and uniqueness. Your cabinet would not be complete without this particular foot wear in it. Get this foot wear today and you will be forever thankful you did.</p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px 0px 0.0001pt; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; line-height: normal; background: white;\">&nbsp;It is very durable and also highly affordable for both low income and high income earners. It speaks simplicity and uniqueness combined.</p>\r\n<ul style=\"box-sizing: border-box; padding: 0px 0px 0px 16px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff; list-style-type: decimal;\">\r\n<li class=\"MsoNormal\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; color: #333333; line-height: normal;\">High quality</li>\r\n<li class=\"MsoNormal\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; color: #333333; line-height: normal;\">Comfortable to wear</li>\r\n<li class=\"MsoNormal\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; color: #333333; line-height: normal;\">Very classy</li>\r\n<li class=\"MsoNormal\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; color: #333333; line-height: normal;\">Highly affordable</li>\r\n<li class=\"MsoNormal\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; color: #333333; line-height: normal;\">Very durable</li>\r\n<li class=\"MsoNormal\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; color: #333333; line-height: normal;\">Great for all occasions</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff; text-indent: -18pt; line-height: normal;\">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Very attractive and trendy</p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px 0px 0px 18pt; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff; line-height: normal;\">Unique and matured, Its an official and unofficial outing and event foot wear, Latest design quality version, Occasions lovely foot wear, Cool and nice, Easy to wear with nice fitting. Fashion charm: the stylish personality of the women\'s foot wear, women\'s foot wear, the indispensable pair of wear, let you be fashionable, temperament &amp; style.</p>', 'posts/May2022/RRcrXh2d3CfuhWWR3U4X.jpg', 'ladies-fashion-mid-heel-slippers-black', NULL, NULL, 'PUBLISHED', 0, '2022-05-28 01:21:31', '2022-05-28 01:21:31', 15500),
(15, 2, 29, 'Shipped from abroad Bigtree Ladies Bowknot Heels Wedding Pumps Dress Party Shoes Crimson', NULL, NULL, '<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Dear Customers, Welcome to our store !&nbsp;</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /></p>\r\n<p><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><strong style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Dear Customers, Welcome to our store !&nbsp;</strong><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /></p>\r\n<p><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /></p>\r\n<p><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Please choose the size follow your Foot Length (1 cm=0.394 inch).</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /></p>\r\n<p><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /></p>\r\n<p><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Size chart--- Men Size (38-48)&nbsp; ---Women Size(35-42)</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /></p>\r\n<p><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /></p>\r\n<p><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /></p>\r\n<p><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 35 = 22.5cm (bare feet length) = 8.86 inch</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 36 = 23.0cm (bare feet length) = 9.06 inch</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 37 = 23.5cm (bare feet length) = 9.25 inch</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 38 = 24.0cm (bare feet length) = 9.45 inch</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 39 = 24.5cm (bare feet length) = 9.65 inch</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 40 = 25.0cm (bare feet length) = 9.84 inch</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 41 = 25.5cm (bare feet length) =10.04 inch</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 42 = 26.0cm (bare feet length) =10.24 inch</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 43 = 26.5cm (bare feet length) =10.43 inch</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 44 = 27.0cm (bare feet length) =10.63 inch</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 45 = 27.5cm (bare feet length) =10.83 inch</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 46 = 28.0cm (bare feet length) =11.02 inch</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 47 = 28.5cm (bare feet length) =11.22 inch</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 48 = 29.0cm (bare feet length) =11.42 inch&nbsp;</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;</span></p>', 'posts/May2022/qAaRcQ4FpNBo44VEKKJS.jpg', 'shipped-from-abroad-bigtree-ladies-bowknot-heels-wedding-pumps-dress-party-shoes-crimson', NULL, NULL, 'PUBLISHED', 0, '2022-05-28 01:23:29', '2022-06-09 14:48:55', 27300);
INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`, `price`) VALUES
(16, 2, 29, 'Bigtree Ladies Pointed Pumps Satin Thin Sexy Nightclub Shoes Green', NULL, NULL, '<p><strong style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Dear Customers, Welcome to our store !</strong><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Please choose the size follow your Foot Length (1 cm=0.394 inch).</span>&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;<span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Size chart--- Men Size (38-48)&nbsp; ---Women Size(35-42)</span>&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;<span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 35 = 22.5cm (bare feet length) = 8.86 inch</span>&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;<span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 36 = 23.0cm (bare feet length) = 9.06 inch</span>&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;<span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 37 = 23.5cm (bare feet length) = 9.25 inch</span>&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;<span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 38 = 24.0cm (bare feet length) = 9.45 inch</span>&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;<span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 39 = 24.5cm (bare feet length) = 9.65 inch</span>&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;<span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 40 = 25.0cm (bare feet length) = 9.84 inch</span>&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;<span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 41 = 25.5cm (bare feet length) =10.04 inch</span>&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;<span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 42 = 26.0cm (bare feet length) =10.24 inch</span>&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;<span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 43 = 26.5cm (bare feet length) =10.43 inch</span>&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;<span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 44 = 27.0cm (bare feet length) =10.63 inch</span>&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;<span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 45 = 27.5cm (bare feet length) =10.83 inch</span>&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;<span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 46 = 28.0cm (bare feet length) =11.02 inch</span>&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;<span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 47 = 28.5cm (bare feet length) =11.22 inch</span>&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;<span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EUR size 48 = 29.0cm (bare feet length) =11.42 inch&nbsp;</span>&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;&lt;br segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;</p>\r\n<p>&lt;p segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;<strong style=\"box-sizing: border-box;\">Note:&nbsp;</strong>&lt;table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"border-spacing: 0px; border: 2px solid rgb(199, 199, 205); width: 840px; margin-top: 8px; margin-bottom: 8px; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;&lt;ul segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; padding: 0px 0px 0px 16px; margin: 0px; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"&gt;</p>\r\n<ul>\r\n<li style=\"box-sizing: border-box; padding: 0px; margin: 0px;\">Please purchase the shoes according to the actual foot length.</li>\r\n<li style=\"box-sizing: border-box; padding: 0px; margin: 0px;\">if your feet thick, relatively wide please buy one size larger shoe size;</li>\r\n<li style=\"box-sizing: border-box; padding: 0px; margin: 0px;\">To maintain quality control we do personally inspect for each item prior to shipment .All items are 100% new and inspected.</li>\r\n</ul>', 'posts/May2022/CqfKRwKZdqzhkyCTVpAh.jpg', 'bigtree-ladies-pointed-pumps-satin-thin-sexy-nightclub-shoes-green', NULL, NULL, 'PUBLISHED', 1, '2022-05-28 01:25:48', '2022-05-28 01:25:48', 19980),
(17, 2, 52, 'Quality Ladies Short-Sleeve Top-Blue', NULL, NULL, '<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;Ladies Quality Short-Sleeve Top is a good top that every ladies need to wear. Gives you comfort and balance .&nbsp;It makes you look unique ,special and attractive in every occasions.</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Go for it and you will smile&nbsp;</span></p>', 'posts/May2022/5KWnDUjvZ5fiOekRi8Tb.jpg', 'quality-ladies-short-sleeve-top-blue', NULL, NULL, 'PUBLISHED', 1, '2022-05-28 13:04:03', '2022-05-28 13:52:40', 3999);
INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`, `price`) VALUES
(18, 2, 52, 'Women Puff Sleeve Boyfriend Shirt Dress Ladies Button Loose Formal OL Blouse', NULL, NULL, '<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Hello there! Welcome to our store! The preferential price and the quality of the upper level are our top priority.</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Dear Customer: To avoid choosing the wrong size, please read the size label carefully.</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Note: Our size is Asian size, Asian size is smaller than European size and US size.</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">1 inch = 2.54 cm, 1 cm = 0.394 inches.</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">About Size: China size is smaller than the UK/US size. If your US standard size is L, it is recommended to choose 2XL in our store; if your US standard size is XL, it is recommended to choose 3XL;</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Such as: United States (S) = China (L); United States (M) = China (XL); United States (L) = China (2XL); United States (XL) = China (3XL); United States (2XL) = China (4XL ); United States (3XL) = China (5XL)Women Puff Sleeve Boyfriend Shirt Dress Ladies Button Loose Formal OL Top Blouse</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Please check the Size Chart before order. If you are not sure the size, please send message to us</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">　</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Specifications:</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Gender:Women</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Material:Polyester</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Clothing Length:Regular</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Pattern Type:Print</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Sleeve Style:Regular</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Style:Fashion</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Closure Type:Button&amp;Lace Up</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Sleeve Length:Long Sleeve</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Package include:1PC Blouse</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Please note that slight color difference should be acceptable due to the light and screen.</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Size</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">US Size</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">UK Size</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EU Size</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Bust</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Sleeve</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Length</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">S</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">2</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">6</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">32</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">90cm/35.43\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">59cm/23.23\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">65cm/25.59\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">M</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">4</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">8</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">34</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">94cm/37.01\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">60cm/23.62\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">66cm/25.98\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">L</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">6</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">10</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">36</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">98cm/38.58\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">61cm/24.02\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">67cm/26.38\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">XL</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">8</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">12</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">38</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">102cm/40.16\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">62cm/24.41\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">68cm/26.77\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">XXL</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">10</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">14</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">40</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">106cm/41.73\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">63cm/24.80\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">69cm/27.17\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Size:S</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">US Size:2</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">UK Size:6</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EU Size:32</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Bust:90cm/35.43\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Sleeve:59cm/23.23\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Length:65cm/25.59\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Size:M</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">US Size:4</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">UK Size:8</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EU Size:34</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Bust:94cm/37.01\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Sleeve:60cm/23.62\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Length:66cm/25.98\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Size:L</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">US Size:6</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">UK Size:10</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EU Size:36</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Bust:98cm/38.58\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Sleeve:61cm/24.02\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Length:67cm/26.38\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Size:XL</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">US Size:8</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">UK Size:12</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EU Size:38</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Bust:102cm/40.16\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Sleeve:62cm/24.41\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Length:68cm/26.77\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Size:XXL</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">US Size:10</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">UK Size:14</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">EU Size:40</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Bust:106cm/41.73\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Sleeve:63cm/24.80\'\'</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Length:69cm/27.17\'\'</span></p>', 'posts/May2022/FryNT1LofwYiFpvox3Oj.jpg', 'women-puff-sleeve-boyfriend-shirt-dress-ladies-button-loose-formal-ol-blouse', NULL, NULL, 'PUBLISHED', 1, '2022-05-28 13:08:05', '2022-05-28 13:52:15', 6652),
(19, 2, 52, 'Shipped from abroad Women Hoodies Casual Sweatshirt Winter Ladies Baggy Cat Blouse Top - Gray', NULL, NULL, '<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Hello there! Welcome to our store! The preferential price and the quality of the upper level are our top priority.</p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Dear Customer: To avoid choosing the wrong size, please read the size label carefully.</p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Note: Our size is Asian size, Asian size is smaller than European size and US size.</p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">1 inch = 2.54 cm, 1 cm = 0.394 inches.</p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">About Size: China size is smaller than the UK/US size. If your US standard size is L, it is recommended to choose 2XL in our store; if your US standard size is XL, it is recommended to choose 3XL;</p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Such as: United States (S) = China (L); United States (M) = China (XL); United States (L) = China (2XL); United States (XL) = China (3XL); United States (2XL) = China (4XL ); United States (3XL) = China (5XL)&nbsp;</p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">【Size Chart】</p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\"><br style=\"box-sizing: border-box;\" />Size:M US: 8 UK: 12 EU: 38 Bust: 110cm/43.31\'\' Sleeve: 44cm/17.32\'\' Length: 58cm/22.8\"<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />Size:L US: 10 UK: 12 EU: 40 Bust: 114cm/44.88\'\' Sleeve: 45cm/17.72\'\' Length: 59cm/23.2\"<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />Size:XL US: 10 UK: 12 EU: 40 Bust: 116cm/45.67\'\' Sleeve: 46cm/18.11\'\' Length: 60cm/23.6\"<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />Size:XXL US: 12 UK: 16 EU: 42 Bust: 120cm/47.24\'\' Sleeve: 47cm/18.50\'\' Length: 61cm/24.0\"<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />【Product Details】Women Hoodies Casual Sweatshirt Winter Ladies Baggy Cat Jumper Pullover Tops<br style=\"box-sizing: border-box;\" />Please check the Size Chart before order. If you are not sure the size, please send message to us.<br style=\"box-sizing: border-box;\" />Features:<br style=\"box-sizing: border-box;\" />Material Lightweight,ultra soft could keep you warm all day but stay cool<br style=\"box-sizing: border-box;\" />Occasion: Daily wear, vocation, Christmas, dates, sports, school, working, street wear,etc. Easy to pair with boots, jeans, skinny leggings for a trendy look in spring, autumn and winter.<br style=\"box-sizing: border-box;\" />Clothes perfect to match you favorite jeans,pants etc. Clothing care: low temperature hand wash / machine wash, do not bleach, avoid exposure, hanging to dry.<br style=\"box-sizing: border-box;\" />Features: Casual style showing your unique charm and vitality, add a sense of elegance and style. The casual long-sleeved pullover feels soft and comfortable, and You will love it when you receive it.<br style=\"box-sizing: border-box;\" />Kindly note size details vary among different colors. Please check product description for more size information.<br style=\"box-sizing: border-box;\" />Product information:<br style=\"box-sizing: border-box;\" />Season:Autumn And Winter<br style=\"box-sizing: border-box;\" />Gender:Women Occasion:Casual<br style=\"box-sizing: border-box;\" />Material:Polyester<br style=\"box-sizing: border-box;\" />Style:Casual<br style=\"box-sizing: border-box;\" />Length:Regular<br style=\"box-sizing: border-box;\" />Fit:Fits ture to size<br style=\"box-sizing: border-box;\" />How to wash:Hand wash Cold,Hang or Line Dry<br style=\"box-sizing: border-box;\" />What you get:1XWomen Blouse</p>', 'posts/May2022/Xgiyv43yQNNYFLF9U6BN.jpg', 'shipped-from-abroad-women-hoodies-casual-sweatshirt-winter-ladies-baggy-cat-blouse-top-gray', NULL, NULL, 'PUBLISHED', 1, '2022-05-28 13:18:31', '2022-06-09 14:49:12', 5232);
INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`, `price`) VALUES
(20, 2, 52, 'Christmas Women\'s Long Sleeve Ladies Sweatshirts Tops Blouse Top - Black', NULL, NULL, '<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Hello there! Welcome to our store! The preferential price and the quality of the upper level are our top priority.</p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Dear Customer: To avoid choosing the wrong size, please read the size label carefully.</p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Note: Our size is Asian size, Asian size is smaller than European size and US size.</p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">1 inch = 2.54 cm, 1 cm = 0.394 inches.</p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">About Size: China size is smaller than the UK/US size. If your US standard size is L, it is recommended to choose 2XL in our store; if your US standard size is XL, it is recommended to choose 3XL;</p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Such as: United States (S) = China (L); United States (M) = China (XL); United States (L) = China (2XL); United States (XL) = China (3XL); United States (2XL) = China (4XL ); United States (3XL) = China (5XL)&nbsp;</p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">【Size Chart】</p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\"><br style=\"box-sizing: border-box;\" />Size:S US: 4 UK: 8 EU: 34 Bust: 108cm/42.52\'\' Shoulder: 59cm/23.23\'\' Sleeve: 54cm/21.26\'\' Length: 59cm/23.23\'\'<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />Size:M US: 6 UK: 10 EU: 36 Bust: 112cm/44.09\'\' Shoulder: 60cm/23.62\'\' Sleeve: 55cm/21.65\'\' Length: 60cm/23.62\'\'<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />Size:L US: 8 UK: 12 EU: 38 Bust: 116cm/45.67\'\' Shoulder: 61cm/24.02\'\' Sleeve: 56cm/22.05\'\' Length: 61cm/24.02\'\'<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />Size:XL US: 10 UK: 14 EU: 40 Bust: 120cm/47.24\'\' Shoulder: 62cm/24.41\'\' Sleeve: 57cm/22.44\'\' Length: 62cm/24.41\'\'<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />Size:XXL US: 12 UK: 16 EU: 42 Bust: 124cm/48.82\'\' Shoulder: 63cm/24.80\'\' Sleeve: 58cm/22.83\'\' Length: 63cm/24.80\'\'<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />【Product Details】 Christmas Women\'s Long Sleeve Ladies Sweatshirts Tops Tunics Blouse Shirt 　 Please check the Size Chart before order. If you are not sure the size, please send message to us.<br style=\"box-sizing: border-box;\" />Features: 1.It is made of high quality materials,durable enought for your daily wearing<br style=\"box-sizing: border-box;\" />2.Very cool to wear ,New Look,New You<br style=\"box-sizing: border-box;\" />3.This lightweight, Straps top is perfect for those happy days!<br style=\"box-sizing: border-box;\" />Product information:<br style=\"box-sizing: border-box;\" />Season:Winter<br style=\"box-sizing: border-box;\" />Gender:Women Occasion:Casual<br style=\"box-sizing: border-box;\" />Material:Polyester<br style=\"box-sizing: border-box;\" />Pattern Type:Solid<br style=\"box-sizing: border-box;\" />Style:Casual<br style=\"box-sizing: border-box;\" />Sleeve length:Long Sleeve<br style=\"box-sizing: border-box;\" />Collar:O-Neck<br style=\"box-sizing: border-box;\" />Length:Regular<br style=\"box-sizing: border-box;\" />Fit:Fits ture to size<br style=\"box-sizing: border-box;\" />Thickness:Standard<br style=\"box-sizing: border-box;\" />How to wash:Hand wash Cold,Hang or Line Dry<br style=\"box-sizing: border-box;\" />What you get:1&times;Women Blouse</p>', 'posts/May2022/y2Nv3kuKO5RbuAM2ju6t.jpg', 'christmas-women-s-long-sleeve-ladies-sweatshirts-tops-blouse-top-black', NULL, NULL, 'PUBLISHED', 1, '2022-05-28 13:21:01', '2022-05-28 13:51:39', 5601),
(21, 2, 52, 'Emfed Yellow Long Sleeve V Neck Casual Top', NULL, NULL, '<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Long sleeves and v neckline define this topSoft cozy fabric made, fine quality guaranteedWear this casual top work to weekend with skinnies or a pencil skirt</span></p>', 'posts/May2022/VXJbmMpPYEiSr3aUZtm9.jpg', 'emfed-yellow-long-sleeve-v-neck-casual-top', NULL, NULL, 'PUBLISHED', 1, '2022-05-28 13:26:01', '2022-05-28 13:51:13', 2500),
(22, 2, 52, 'Defacto Woman Woven Shacket Shirt Neck Long Sleeve Tunic - Pink', NULL, NULL, '<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Founded in 2003, DEFACTO is today one of the most popular fashion brands in Turkey and around the world with over 500 stores. It is positioned as a pioneering brand of fashion throughout the Mediterranean world. As DeFacto, we started an excitement journey in 2005. In this journey we set off to bring a fresh new perspective to Turkish fashion and bring together our brand new, quality and unique designs with consumers at four corners of the World, we put our signature under very important Works and achievements. Most important of all; we were born in Turkey and realized our purpose to become a global brand. We have adopted innovation and renewal as a corporate culture. In this line, we have created sub-brands aimed to needs of everyone. Today, we touch lives of our consumers in more than 100 countries at more than 500 stores. We made room for DeFacto brand which we placed as the founder of &ldquo;Accessible Fashion&rdquo; concept and Pioneer of innovation, in wardrobes in everyone. With our experienced, innovative design team and important cooperation, we offer range of products which will allow our consumers to feel the change with quality product and affordable prices and we work hard to ensure that this mission is sustainable. We dedicate ourselves to delivering a fashion concept where everyone feels comfortable and well together with our more than 14,000 happy employees. While running in the pace of daily life, while spending the sweetest days of the holiday with your loved ones, while you sail to brand new beginnings for the most beautiful days you have dreamed of, every time you are refreshed and have fun, we will be with you. Now is the time to reflect, embrace, celebrate and announce the feeling of renewal within you! We invite everyone to say &ldquo;Renew. Be Merry. Continue!&rdquo;.</span></p>', 'posts/May2022/RiCYGoYPLSf8dTZ9WL9m.jpg', 'defacto-woman-woven-shacket-shirt-neck-long-sleeve-tunic-pink', NULL, NULL, 'PUBLISHED', 1, '2022-05-28 13:31:04', '2022-05-28 13:50:57', 3370),
(23, 2, 52, 'Christmas New Vintage Tops Ladies Casual Short Sleeve Sequin T-shirts Grey T023', NULL, NULL, '<p>&lt;h1 segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" center;\"=\"\" style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; font-weight: 400; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; background-color: rgb(255, 255, 255);\"&gt;My Dearest Customers, Welcome to Our Store!&lt;h1 segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" center;\"=\"\" style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; font-weight: 400; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; background-color: rgb(255, 255, 255);\"&gt;We aim to provide great quality of products and excellent services to you all.&lt;h1 segoe=\"\" ui\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" center;\"=\"\" style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; font-weight: 400; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, sans-serif; background-color: rgb(255, 255, 255);\"&gt;Hope you enjoy shopping with us!</p>\r\n<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp; Solid color T shirts combine vivid printed, catch more eyes when you are in crowd.Crew neck design help you take it on or out quickly, save you time before outside. &nbsp;</span></p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">A T-shirt could match Jeans, casual pants, sports pants and so on, you could accord to your request to choose it.<img style=\"box-sizing: border-box; border-style: none; display: block; max-width: 100%; margin: 0px auto; background: 50% center / 25% no-repeat #ededed;\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7\" alt=\"image\" data-src=\"https://seikim.com/i/2022/02/16/r4p0xm.jpg\" data-lazy-error=\"true\" /><img style=\"box-sizing: border-box; border-style: none; display: block; max-width: 100%; margin: 0px auto; background: 50% center / 25% no-repeat #ededed;\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7\" alt=\"image\" data-src=\"https://seikim.com/i/2022/02/16/r4p3xo.jpg\" data-lazy-error=\"true\" /><img style=\"box-sizing: border-box; border-style: none; display: block; max-width: 100%; margin: 0px auto; background: 50% center / 25% no-repeat #ededed;\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7\" alt=\"image\" data-src=\"https://seikim.com/i/2022/02/16/r4p019.jpg\" data-lazy-error=\"true\" /><img style=\"box-sizing: border-box; border-style: none; display: block; max-width: 100%; margin: 0px auto; background: 50% center / 25% no-repeat #ededed;\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7\" alt=\"image\" data-src=\"https://seikim.com/i/2022/02/16/r4p1ar.jpg\" data-lazy-error=\"true\" /><img style=\"box-sizing: border-box; border-style: none; display: block; max-width: 100%; margin: 0px auto; background: 50% center / 25% no-repeat #ededed;\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7\" alt=\"image\" data-src=\"null\" data-lazy-error=\"true\" /><img style=\"box-sizing: border-box; border-style: none; display: block; max-width: 100%; margin: 0px auto; background: 50% center / 25% no-repeat #ededed;\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7\" alt=\"image\" data-src=\"https://seikim.com/i/2022/02/16/r4oshm.jpg\" data-lazy-error=\"true\" /></p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Note:&nbsp;</p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">1.All the T-shirts are Asian Size, it may be 2 sizes smaller than EU, UK, US, AU&nbsp;</p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">2.Please allow 1-3cm(0.39-1.18 inches) difference due to manual measurement.</p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">3. Please double-check the size chart and choose the suitable one.</p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">If you have any difficulty choosing a size please feel free to contact me.</p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Feiyuan is always online for the support:)</p>', 'posts/May2022/nZVZ5y5pAaM2PnKvz1pd.jpg', 'christmas-new-vintage-tops-ladies-casual-short-sleeve-sequin-t-shirts-grey-t023', NULL, NULL, 'PUBLISHED', 1, '2022-05-28 13:35:49', '2022-05-28 13:50:32', 1190),
(24, 2, 52, 'Zanzea Women Casual Rufles Sleeve See Through Tops', NULL, NULL, '<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\"><strong style=\"box-sizing: border-box;\">About SMARTEST:</strong></p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\"><strong style=\"box-sizing: border-box;\">Believe in youself , Believe in partners! SMARTEST!</strong></p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\"><strong style=\"box-sizing: border-box;\">The exclusive promotion period is for the last five months of 2019. On the 8th,18th and 28th of each month are the only sales days for this month\'s flagship products or the user reviews the highest rated products.</strong></p>\r\n<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Please not only reference the Size Guide provided by JUMIA but also have to reference ours, which shows in the product detail pictures.</p>', 'posts/May2022/GJQIM3htyoU1Nw8F9P1s.jpg', 'zanzea-women-casual-rufles-sleeve-see-through-tops', NULL, NULL, 'PUBLISHED', 1, '2022-05-28 13:38:27', '2022-05-28 13:49:41', 1700),
(25, 2, 52, 'Emfed Lace Trim Cold Shoulder Royal Blue Long Sleeve Top', NULL, NULL, '<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Edge and bold cold shoulder design complete with delicate lace accents. This long sleeve top new season must be the next fashion trend icon for women worldwide. It has round neckline, beautiful floral lace trim the cold shoulder and cutout around elbows, cuff banded at the end of long sleeves and hemline. Made of soft stretchy fabric, suitable for most ladies!</span></p>', 'posts/May2022/KA9y0CAZVWvowIUfJFAN.jpg', 'emfed-lace-trim-cold-shoulder-royal-blue-long-sleeve-top', NULL, NULL, 'PUBLISHED', 0, '2022-05-28 13:40:41', '2022-05-28 13:49:25', 2999),
(26, 2, 52, 'SHARE THIS PRODUCT   Emfed Burgundy Long Sleeve Colorblock Diamond Top', NULL, NULL, '<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Casual style with diamonds designLoose fit to elongate a Slim figureMade from quality fabric, it comfortable to wearPerfect to pair with skinny jeans to create a street style</span></p>', 'posts/May2022/AxSLWr969DX3mXKLBkh8.jpg', 'share-this-product-emfed-burgundy-long-sleeve-colorblock-diamond-top', NULL, NULL, 'PUBLISHED', 1, '2022-05-28 13:43:48', '2022-05-28 13:49:06', 3500);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_id` int(15) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `product_id`, `user_id`, `customer_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(1, 13, 2, 25, 5, 'Gabito', '2022-06-21 10:47:47', '2022-06-21 10:47:47'),
(2, 13, 2, 25, 3, 'Another Comment', '2022-06-21 11:34:27', '2022-06-21 11:34:27'),
(3, 13, 2, 25, 4, 'This is Gabriel\'s Comment', '2022-06-21 11:40:33', '2022-06-21 11:40:33'),
(4, 13, 2, 25, 5, 'sddsd', '2022-06-21 11:49:56', '2022-06-21 11:49:56'),
(5, 20, 2, 25, 1, 'Yes Its Gabi', '2022-06-21 14:38:03', '2022-06-21 14:38:03'),
(6, 15, 2, 25, 1, 'Just The Best', '2022-06-22 02:26:08', '2022-06-22 02:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-05-17 14:46:30', '2022-05-17 14:46:30'),
(2, 'user', 'Normal User', '2022-05-17 14:46:30', '2022-05-17 14:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Gadgedup', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'We are the best Ecommerce Website In Town', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/May2022/lI7JDZUU52kRoS3Z8Smc.jpg', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/May2022/Aj9znhD9IQLD3weZM2DE.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Gadgedup', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Gadgedup Ecommerce Website', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/May2022/6nBJ4M35BQlAgVMUMcHx.jpg', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-05-17 14:46:45', '2022-05-17 14:46:45'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-05-17 14:46:45', '2022-05-17 14:46:45'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-05-17 14:46:45', '2022-05-17 14:46:45'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-05-17 14:46:45', '2022-05-17 14:46:45'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-05-17 14:46:45', '2022-05-17 14:46:45'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-05-17 14:46:45', '2022-05-17 14:46:45'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-05-17 14:46:46', '2022-05-17 14:46:46'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-05-17 14:46:46', '2022-05-17 14:46:46'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-05-17 14:46:46', '2022-05-17 14:46:46'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-05-17 14:46:46', '2022-05-17 14:46:46'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-05-17 14:46:46', '2022-05-17 14:46:46'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-05-17 14:46:46', '2022-05-17 14:46:46'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-05-17 14:46:46', '2022-05-17 14:46:46'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-05-17 14:46:46', '2022-05-17 14:46:46'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-05-17 14:46:46', '2022-05-17 14:46:46'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-05-17 14:46:46', '2022-05-17 14:46:46'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-05-17 14:46:46', '2022-05-17 14:46:46'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-05-17 14:46:46', '2022-05-17 14:46:46'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-05-17 14:46:46', '2022-05-17 14:46:46'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-05-17 14:46:46', '2022-05-17 14:46:46'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-05-17 14:46:46', '2022-05-17 14:46:46'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-05-17 14:46:46', '2022-05-17 14:46:46'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-05-17 14:46:46', '2022-05-17 14:46:46'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-05-17 14:46:47', '2022-05-17 14:46:47'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-05-17 14:46:47', '2022-05-17 14:46:47'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-05-17 14:46:47', '2022-05-17 14:46:47'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-05-17 14:46:47', '2022-05-17 14:46:47'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-05-17 14:46:47', '2022-05-17 14:46:47'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-05-17 14:46:47', '2022-05-17 14:46:47'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-05-17 14:46:47', '2022-05-17 14:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(2, 1, 'admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$ND7HsFXC9tbWH/X1DmMuQeCCmlA4NBuPJSojv/n0wXjJ3J5Z5kYdi', 'vvYjRdWlpisRGtBvrJEDzUWIEDFk8axvRo9Z67SIikaEz0VVoYlb3AHoyXmZ', '{\"locale\":\"en\"}', '2022-05-18 23:45:00', '2022-06-14 07:16:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
