-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 27, 2022 at 03:27 AM
-- Server version: 5.7.33
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `influanco_laundryDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `additional_items`
--

CREATE TABLE `additional_items` (
  `id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `additional_items`
--

INSERT INTO `additional_items` (`id`, `item_name`, `created_at`, `updated_at`) VALUES
(1, 'Cloth+', '2021-06-11 07:43:40', '2021-07-06 18:17:14'),
(2, 'Blanket+', '2021-06-11 07:46:20', '2021-06-11 07:46:20'),
(3, 'Curtains+', '2021-06-11 07:46:38', '2021-06-11 07:46:38');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `door_no` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `customer_id`, `address`, `door_no`, `latitude`, `longitude`, `pincode`, `status`, `created_at`, `updated_at`) VALUES
(4, 13, 'C/71, Block C, Sector 8 Dwarka, Dwarka, New Delhi, Delhi 110077, India', 'Door number 18 ,', '28.57013269142383', '77.07488419488072', '110077', 1, '2021-04-24 12:44:02', '2021-04-29 11:19:22'),
(6, 13, '482, Phase III, Jacobpura, Sector 19, Gurugram, Haryana 122016, India', 'Gurugram hrayana updated address', '28.45949615948365', '77.02663796022534', '122016', 1, '2021-04-24 12:59:00', '2021-04-26 08:56:56'),
(9, 16, 'A104, Block A, Sector 8 Dwarka, Dwarka, New Delhi, Delhi 110077, India', 'Sector 55 gurgaon', '28.574299628160333', '77.07159982994199', '110077', 1, '2021-04-29 06:32:25', NULL),
(10, 16, 'Unnamed Road, Ghatta Kanarpur, Sector 58, Ghata, Haryana 122102, India', 'House no 106', '28.418584400793655', '77.1139951609075', '122102', 1, '2021-04-29 06:33:32', NULL),
(19, 14, '906/7, Block F, Raj Nagar Extension, Raj Nagar, New Delhi, Delhi 110045, India', 'Delhi dwarka', '28.5770844345815', '77.07913281396031', '110059', 1, '2021-04-30 13:23:11', '2021-05-28 13:16:25'),
(23, 22, 'Unnamed Road, Dwarka Sector 9, Dwarka, New Delhi, Delhi 110077, India', 'New', '28.577964779279796', '77.06459758803248', '110077', 1, '2021-05-17 08:33:38', '2021-05-17 08:33:50'),
(24, 16, '26B, Block E, Om Vihar, Uttam Nagar, New Delhi, Delhi 110059, India', 'Plot 7c near Shiv mandir', '28.62853926035602', '77.0524431578815', '110059', 1, '2021-05-20 07:15:43', NULL),
(25, 13, 'Uttam Nagar East, shish ram park A-62/3, Chatrapati, Shivaji Marg, Block D, JJ Colony, Uttam Nagar, New Delhi, Delhi 110059, India', 'Thanks 😘', '28.62480497150005', '77.06530602648854', '110059', 1, '2021-06-04 07:20:04', NULL),
(26, 24, 'A104, Block A, Sector 8 Dwarka, Dwarka, New Delhi, Delhi 110077, India', 'Vansh Apartment Block 1 Sec 72 Fazilpur', '28.574299737476515', '77.07159982994199', '122018', 1, '2021-07-04 08:59:55', NULL),
(27, 24, 'A104, Block A, Sector 8 Dwarka, Dwarka, New Delhi, Delhi 110077, India', 'Vansh Apartment Block 1 Sec 72 Fazilpur', '28.574299737476515', '77.07159982994199', '122018', 1, '2021-07-04 08:59:58', NULL),
(28, 16, 'A104, Block A, Sector 8 Dwarka, Dwarka, New Delhi, Delhi 110077, India', 'Plot 7c near Shiv mandir', '28.574299737476515', '77.07159982994199', '110059', 1, '2021-07-24 09:23:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, '2021-06-22 04:09:34'),
(8, 29, 21, 'Faqs', 'fa-question-circle', 'faqs', NULL, '2019-07-23 03:37:04', '2021-06-22 06:48:16'),
(10, 25, 4, 'Services', 'fa-align-justify', 'services', NULL, '2019-07-23 03:37:44', '2021-06-22 04:09:34'),
(11, 29, 25, 'App Settings', 'fa-cog', 'app_settings', '*', '2019-07-23 03:38:09', '2021-06-22 06:48:16'),
(12, 39, 10, 'Promo Codes', 'fa-bookmark', 'promo_codes', NULL, '2019-07-23 03:38:54', '2021-06-22 04:09:34'),
(13, 25, 5, 'Categories', 'fa-bars', 'categories', NULL, '2019-07-26 10:36:06', '2021-06-22 04:09:34'),
(14, 40, 14, 'Customers', 'fa-users', 'customers', '*', '2019-08-20 02:12:07', '2021-06-22 04:09:34'),
(15, 40, 15, 'Delivery Boys', 'fa-user', 'delivery_boys', '*', '2019-08-20 02:12:32', '2021-06-22 04:09:34'),
(16, 29, 26, 'Privacy Policies', 'fa-file-pdf-o', 'privacy_policies', '*', '2019-08-22 14:34:52', '2021-06-22 06:48:16'),
(17, 25, 6, 'Products', 'fa-align-justify', 'products', '*', '2019-08-22 14:45:12', '2021-06-22 04:09:34'),
(19, 0, 8, 'Orders', 'fa-th-list', 'orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc', '*', '2019-08-25 07:47:04', '2021-06-22 06:45:48'),
(21, 42, 20, 'Payment Methods', 'fa-product-hunt', 'payment-methods', '*', '2020-06-09 13:43:09', '2021-06-22 06:48:16'),
(22, 29, 22, 'Units', 'fa-calculator', 'units', '*', '2021-04-22 09:28:59', '2021-06-22 06:48:16'),
(23, 39, 12, 'Home Banners', 'fa-image', 'banner-images', '*', '2021-04-22 09:45:18', '2021-06-22 04:09:34'),
(24, 0, 17, 'Time Slots', 'fa-calendar', 'time-slots', '*', '2021-04-26 12:05:40', '2021-06-22 05:43:25'),
(25, 0, 2, 'Management', 'fa-bars', '#', NULL, '2021-04-28 10:08:35', '2021-06-22 04:09:34'),
(27, 39, 11, 'Membership', 'fa-universal-access', 'memberships', '*', '2021-05-10 08:51:06', '2021-06-22 04:09:34'),
(28, 25, 3, 'Service areas', 'fa-location-arrow', 'service-areas', '*', '2021-05-12 11:59:21', '2021-06-22 04:09:34'),
(29, 0, 18, 'Settings', 'fa-cogs', '#', '*', '2021-05-14 10:39:09', '2021-06-22 05:43:25'),
(32, 0, 27, 'System management', 'fa-bank', '#', '*', '2021-05-17 05:39:09', '2021-06-22 06:48:16'),
(33, 32, 29, 'Admin users', 'fa-users', 'auth/users', '*', '2021-05-17 05:40:04', '2021-06-22 06:48:16'),
(34, 32, 28, 'Admin user roles', 'fa-hand-paper-o', 'auth/roles', NULL, '2021-05-17 05:46:39', '2021-06-22 06:48:16'),
(35, 32, 30, 'Side menus', 'fa-ellipsis-v', 'auth/menu', '*', '2021-05-17 05:54:36', '2021-06-22 06:48:16'),
(36, 25, 7, 'Additional items', 'fa-search-plus', 'additional-items', '*', '2021-06-11 07:48:04', '2021-06-22 04:09:34'),
(37, 29, 23, 'Feedbacks', 'fa-paper-plane', 'feedback', '*', '2021-06-12 07:41:48', '2021-06-22 06:48:16'),
(38, 29, 24, 'Barcodes', 'fa-barcode', 'bar-codes', '*', '2021-06-19 05:34:46', '2021-06-22 06:48:16'),
(39, 0, 9, 'Banners', 'fa-image', '#', '*', '2021-06-22 04:05:20', '2021-06-22 04:09:34'),
(40, 0, 13, 'Peoples', 'fa-users', '#', '*', '2021-06-22 04:08:07', '2021-06-22 04:09:34'),
(41, 40, 16, 'Leads', 'fa-user-plus', 'leads', '*', '2021-06-22 05:43:13', '2021-06-22 05:43:25'),
(42, 29, 19, 'Payment', 'fa-money', '#', '*', '2021-06-22 06:47:29', '2021-06-22 06:48:16'),
(43, 42, 0, 'Earnings', 'fa-paper-plane-o', 'payment-histories?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc', '*', '2021-06-22 06:49:42', '2021-06-22 06:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin/view_orders/23', 'GET', '47.31.222.20', '[]', '2021-06-05 11:16:59', '2021-06-05 11:16:59'),
(2, 1, 'admin/orders', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-05 11:17:24', '2021-06-05 11:17:24'),
(3, 1, 'admin/orders', 'GET', '47.31.222.20', '[]', '2021-06-05 12:01:42', '2021-06-05 12:01:42'),
(4, 1, 'admin/memberships', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-05 12:01:48', '2021-06-05 12:01:48'),
(5, 1, 'admin/memberships/1/edit', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-05 12:01:53', '2021-06-05 12:01:53'),
(6, 1, 'admin/memberships', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-05 12:02:02', '2021-06-05 12:02:02'),
(7, 1, 'admin/orders', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-05 12:28:32', '2021-06-05 12:28:32'),
(8, 1, 'admin/view_orders/23', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-05 12:28:35', '2021-06-05 12:28:35'),
(9, 1, 'admin/view_orders/23', 'GET', '47.31.222.20', '[]', '2021-06-05 12:37:40', '2021-06-05 12:37:40'),
(10, 1, 'admin/view_orders/23', 'GET', '47.31.222.20', '[]', '2021-06-05 12:37:59', '2021-06-05 12:37:59'),
(11, 1, 'admin/view_orders/23', 'GET', '47.31.222.20', '[]', '2021-06-05 12:41:54', '2021-06-05 12:41:54'),
(12, 1, 'admin/view_orders/23', 'GET', '47.31.222.20', '[]', '2021-06-05 12:42:34', '2021-06-05 12:42:34'),
(13, 1, 'admin/view_orders/23', 'GET', '47.31.222.20', '[]', '2021-06-05 12:42:45', '2021-06-05 12:42:45'),
(14, 1, 'admin/view_orders/23', 'GET', '47.31.222.20', '[]', '2021-06-05 12:47:19', '2021-06-05 12:47:19'),
(15, 1, 'admin/view_orders/23', 'GET', '47.31.222.20', '[]', '2021-06-05 12:49:28', '2021-06-05 12:49:28'),
(16, 1, 'admin/view_orders/23', 'GET', '47.31.222.20', '[]', '2021-06-05 12:50:55', '2021-06-05 12:50:55'),
(17, 1, 'admin/view_orders/23', 'GET', '47.31.222.20', '[]', '2021-06-05 12:51:07', '2021-06-05 12:51:07'),
(18, 1, 'admin/view_orders/23', 'GET', '47.31.222.20', '[]', '2021-06-05 12:51:47', '2021-06-05 12:51:47'),
(19, 1, 'admin/view_orders/23', 'GET', '47.31.222.20', '[]', '2021-06-05 12:52:05', '2021-06-05 12:52:05'),
(20, 1, 'admin/view_orders/23', 'GET', '47.31.222.20', '[]', '2021-06-05 12:55:18', '2021-06-05 12:55:18'),
(21, 1, 'admin/view_orders/23', 'GET', '47.31.222.20', '[]', '2021-06-05 12:56:20', '2021-06-05 12:56:20'),
(22, 1, 'admin/view_orders/23', 'GET', '47.31.222.20', '[]', '2021-06-05 13:04:15', '2021-06-05 13:04:15'),
(23, 1, 'admin/view_orders/23', 'GET', '47.31.222.20', '[]', '2021-06-05 13:04:46', '2021-06-05 13:04:46'),
(24, 1, 'admin/orders', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-05 13:13:38', '2021-06-05 13:13:38'),
(25, 1, 'admin/view_orders/18', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-05 13:13:40', '2021-06-05 13:13:40'),
(26, 1, 'admin/view_orders/18', 'GET', '47.31.222.20', '[]', '2021-06-05 13:14:36', '2021-06-05 13:14:36'),
(27, 1, 'admin/view_orders/18', 'GET', '47.31.222.20', '[]', '2021-06-05 13:14:38', '2021-06-05 13:14:38'),
(28, 1, 'admin/view_orders/18', 'GET', '47.31.222.20', '[]', '2021-06-05 13:14:45', '2021-06-05 13:14:45'),
(29, 1, 'admin/view_orders/18', 'GET', '47.31.222.20', '[]', '2021-06-05 13:15:09', '2021-06-05 13:15:09'),
(30, 1, 'admin/view_orders/18', 'GET', '47.31.222.20', '[]', '2021-06-05 13:15:16', '2021-06-05 13:15:16'),
(31, 1, 'admin/view_orders/18', 'GET', '47.31.222.20', '[]', '2021-06-05 13:15:27', '2021-06-05 13:15:27'),
(32, 1, 'admin/view_orders/18', 'GET', '47.31.222.20', '[]', '2021-06-05 13:15:29', '2021-06-05 13:15:29'),
(33, 1, 'admin/view_orders/18', 'GET', '47.31.222.20', '[]', '2021-06-05 13:15:29', '2021-06-05 13:15:29'),
(34, 1, 'admin/view_orders/18', 'GET', '47.31.222.20', '[]', '2021-06-05 13:15:29', '2021-06-05 13:15:29'),
(35, 1, 'admin/view_orders/18', 'GET', '47.31.222.20', '[]', '2021-06-05 13:15:29', '2021-06-05 13:15:29'),
(36, 1, 'admin/view_orders/18', 'GET', '47.31.222.20', '[]', '2021-06-05 13:16:11', '2021-06-05 13:16:11'),
(37, 1, 'admin/view_orders/18', 'GET', '47.31.222.20', '[]', '2021-06-05 13:16:23', '2021-06-05 13:16:23'),
(38, 1, 'admin/view_orders/18', 'GET', '47.31.222.20', '[]', '2021-06-05 13:16:31', '2021-06-05 13:16:31'),
(39, 1, 'admin', 'GET', '47.31.204.207', '[]', '2021-06-07 04:53:27', '2021-06-07 04:53:27'),
(40, 1, 'admin/memberships', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\"}', '2021-06-07 05:41:44', '2021-06-07 05:41:44'),
(41, 1, 'admin/service-areas', 'GET', '47.31.204.207', '[]', '2021-06-07 05:45:07', '2021-06-07 05:45:07'),
(42, 1, 'admin/services', 'GET', '47.31.204.207', '[]', '2021-06-07 05:45:17', '2021-06-07 05:45:17'),
(43, 1, 'admin/memberships', 'GET', '47.31.204.207', '[]', '2021-06-07 05:46:32', '2021-06-07 05:46:32'),
(44, 1, 'admin/memberships/1/edit', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\"}', '2021-06-07 05:46:36', '2021-06-07 05:46:36'),
(45, 1, 'admin/memberships', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\"}', '2021-06-07 05:46:46', '2021-06-07 05:46:46'),
(46, 1, 'admin/memberships/create', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\"}', '2021-06-07 05:46:49', '2021-06-07 05:46:49'),
(47, 1, 'admin/memberships', 'GET', '47.31.204.207', '[]', '2021-06-07 06:00:14', '2021-06-07 06:00:14'),
(48, 1, 'admin/memberships/1/edit', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\"}', '2021-06-07 06:00:19', '2021-06-07 06:00:19'),
(49, 1, 'admin/memberships/1', 'PUT', '47.31.204.207', '{\"service_id\":[\"1\",\"2\",null],\"title\":\"Basic\",\"price\":\"150\",\"discount\":\"10\",\"duration\":\"1\",\"desc_1\":\"Basic Plans for stater user\",\"desc_2\":\"10% discount on wash and dry cleaning services\",\"desc_3\":null,\"status\":\"1\",\"_token\":\"jMuRjxNF5sRb6EUAhDwsTpSm248EcTSRpKLErW4y\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-06-07 06:00:26', '2021-06-07 06:00:26'),
(50, 1, 'admin/memberships', 'GET', '47.31.204.207', '[]', '2021-06-07 06:00:27', '2021-06-07 06:00:27'),
(51, 1, 'admin/memberships/1/edit', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\"}', '2021-06-07 06:00:30', '2021-06-07 06:00:30'),
(52, 1, 'admin/memberships', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\"}', '2021-06-07 06:01:28', '2021-06-07 06:01:28'),
(53, 1, 'admin/memberships', 'GET', '47.31.204.207', '[]', '2021-06-07 06:01:30', '2021-06-07 06:01:30'),
(54, 1, 'admin/memberships/2/edit', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\"}', '2021-06-07 06:02:15', '2021-06-07 06:02:15'),
(55, 1, 'admin/memberships/2', 'PUT', '47.31.204.207', '{\"service_id\":[\"2\",\"3\",null],\"title\":\"professional\",\"price\":\"200\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"professional users are nice\",\"desc_2\":\"Get a 20% discount on all wash, wash & Iron services\",\"desc_3\":\"Starter pack\",\"status\":\"1\",\"_token\":\"jMuRjxNF5sRb6EUAhDwsTpSm248EcTSRpKLErW4y\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-06-07 06:02:25', '2021-06-07 06:02:25'),
(56, 1, 'admin/memberships/2/edit', 'GET', '47.31.204.207', '[]', '2021-06-07 06:02:25', '2021-06-07 06:02:25'),
(57, 1, 'admin/memberships/2', 'PUT', '47.31.204.207', '{\"service_id\":[\"2\",\"3\",null],\"title\":\"professional\",\"price\":\"200\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"professional users are nice\",\"desc_2\":\"Get a 20% discount on all wash, wash & Iron services\",\"desc_3\":\"Starter pack\",\"status\":\"1\",\"_token\":\"jMuRjxNF5sRb6EUAhDwsTpSm248EcTSRpKLErW4y\",\"_method\":\"PUT\"}', '2021-06-07 06:03:48', '2021-06-07 06:03:48'),
(58, 1, 'admin/memberships/2/edit', 'GET', '47.31.204.207', '[]', '2021-06-07 06:03:49', '2021-06-07 06:03:49'),
(59, 1, 'admin/memberships/2', 'PUT', '47.31.204.207', '{\"service_id\":[\"2\",\"3\",null],\"title\":\"professional\",\"price\":\"200\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"professional users are nice\",\"desc_2\":\"Get a 20% discount on all wash, wash & Iron services\",\"desc_3\":\"Starter pack\",\"status\":\"1\",\"_token\":\"jMuRjxNF5sRb6EUAhDwsTpSm248EcTSRpKLErW4y\",\"_method\":\"PUT\"}', '2021-06-07 06:06:46', '2021-06-07 06:06:46'),
(60, 1, 'admin/memberships', 'GET', '47.31.204.207', '[]', '2021-06-07 06:06:46', '2021-06-07 06:06:46'),
(61, 1, 'admin/memberships/3/edit', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\"}', '2021-06-07 06:07:36', '2021-06-07 06:07:36'),
(62, 1, 'admin/memberships/3', 'PUT', '47.31.204.207', '{\"service_id\":[\"1\",\"2\",\"3\",null],\"title\":\"Pro pack\",\"price\":\"400\",\"discount\":\"50\",\"duration\":\"2\",\"desc_1\":\"These are our premium user\",\"desc_2\":\"Get a big 50% discount on all services\",\"desc_3\":null,\"status\":\"1\",\"_token\":\"jMuRjxNF5sRb6EUAhDwsTpSm248EcTSRpKLErW4y\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-06-07 06:07:46', '2021-06-07 06:07:46'),
(63, 1, 'admin/memberships', 'GET', '47.31.204.207', '[]', '2021-06-07 06:07:47', '2021-06-07 06:07:47'),
(64, 1, 'admin/memberships', 'GET', '47.31.204.207', '[]', '2021-06-07 06:08:16', '2021-06-07 06:08:16'),
(65, 1, 'admin/memberships', 'GET', '47.31.204.207', '[]', '2021-06-07 06:08:24', '2021-06-07 06:08:24'),
(66, 1, 'admin/memberships', 'GET', '47.31.204.207', '[]', '2021-06-07 06:08:53', '2021-06-07 06:08:53'),
(67, 1, 'admin/memberships/1/edit', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\"}', '2021-06-07 06:11:06', '2021-06-07 06:11:06'),
(68, 1, 'admin/memberships/1/edit', 'GET', '47.31.204.207', '[]', '2021-06-07 06:11:33', '2021-06-07 06:11:33'),
(69, 1, 'admin/memberships', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\"}', '2021-06-07 06:11:46', '2021-06-07 06:11:46'),
(70, 1, 'admin/memberships/2/edit', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\"}', '2021-06-07 06:11:48', '2021-06-07 06:11:48'),
(71, 1, 'admin/memberships', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\"}', '2021-06-07 06:11:52', '2021-06-07 06:11:52'),
(72, 1, 'admin/orders', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\"}', '2021-06-07 07:19:02', '2021-06-07 07:19:02'),
(73, 1, 'admin/orders', 'GET', '47.31.204.207', '[]', '2021-06-07 07:52:08', '2021-06-07 07:52:08'),
(74, 1, 'admin/orders', 'GET', '47.31.204.207', '[]', '2021-06-07 07:53:01', '2021-06-07 07:53:01'),
(75, 1, 'admin/orders', 'GET', '47.31.204.207', '[]', '2021-06-07 07:53:10', '2021-06-07 07:53:10'),
(76, 1, 'admin/orders', 'GET', '47.31.204.207', '{\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":\"ORD31040688\",\"status\":null,\"expected_delivery_date\":null,\"_pjax\":\"#pjax-container\"}', '2021-06-07 07:53:22', '2021-06-07 07:53:22'),
(77, 1, 'admin/orders', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_delivery_date\":null}', '2021-06-07 07:54:28', '2021-06-07 07:54:28'),
(78, 1, 'admin/orders', 'GET', '47.31.204.207', '{\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_delivery_date\":null}', '2021-06-07 07:56:05', '2021-06-07 07:56:05'),
(79, 1, 'admin/orders', 'GET', '47.31.204.207', '{\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_delivery_date\":null}', '2021-06-07 07:56:24', '2021-06-07 07:56:24'),
(80, 1, 'admin/orders', 'GET', '47.31.204.207', '{\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"phone_number\":\"7678178911\",\"status\":null,\"expected_delivery_date\":null,\"_pjax\":\"#pjax-container\"}', '2021-06-07 07:56:31', '2021-06-07 07:56:31'),
(81, 1, 'admin/orders', 'GET', '47.31.204.207', '{\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"phone_number\":\"7678178911\",\"status\":null,\"expected_delivery_date\":null}', '2021-06-07 07:57:54', '2021-06-07 07:57:54'),
(82, 1, 'admin/orders', 'GET', '47.31.204.207', '{\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"phone_number\":\"7678178911\",\"status\":null,\"expected_delivery_date\":null}', '2021-06-07 07:59:45', '2021-06-07 07:59:45'),
(83, 1, 'admin/orders', 'GET', '47.31.204.207', '{\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_delivery_date\":null,\"_pjax\":\"#pjax-container\"}', '2021-06-07 07:59:47', '2021-06-07 07:59:47'),
(84, 1, 'admin/orders', 'GET', '47.31.204.207', '{\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_delivery_date\":null}', '2021-06-07 07:59:49', '2021-06-07 07:59:49'),
(85, 1, 'admin/orders', 'GET', '47.31.204.207', '{\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"phone_number\":\"13\",\"status\":null,\"expected_delivery_date\":null,\"_pjax\":\"#pjax-container\"}', '2021-06-07 07:59:56', '2021-06-07 07:59:56'),
(86, 1, 'admin/orders', 'GET', '47.31.204.207', '{\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_delivery_date\":null,\"_pjax\":\"#pjax-container\"}', '2021-06-07 08:00:16', '2021-06-07 08:00:16'),
(87, 1, 'admin/orders', 'GET', '47.31.204.207', '{\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_delivery_date\":null}', '2021-06-07 08:00:18', '2021-06-07 08:00:18'),
(88, 1, 'admin/orders', 'GET', '47.31.204.207', '{\"id\":null,\"customer_id\":\"13\",\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_delivery_date\":null,\"_pjax\":\"#pjax-container\"}', '2021-06-07 08:00:22', '2021-06-07 08:00:22'),
(89, 1, 'admin/orders', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"customer_id\":\"13\",\"delivered_by\":null,\"order_id\":\"ORD31040688\",\"status\":null,\"expected_delivery_date\":null}', '2021-06-07 08:01:03', '2021-06-07 08:01:03'),
(90, 1, 'admin/orders', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_delivery_date\":null}', '2021-06-07 08:02:02', '2021-06-07 08:02:02'),
(91, 1, 'admin/orders', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_delivery_date\":null}', '2021-06-07 08:02:07', '2021-06-07 08:02:07'),
(92, 1, 'admin/orders', 'GET', '47.31.204.207', '{\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_delivery_date\":null}', '2021-06-07 08:03:12', '2021-06-07 08:03:12'),
(93, 1, 'admin/orders', 'GET', '47.31.204.207', '{\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_pickup_date\":\"2021-06-05\",\"expected_delivery_date\":null,\"_pjax\":\"#pjax-container\"}', '2021-06-07 08:03:20', '2021-06-07 08:03:20'),
(94, 1, 'admin/orders', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\"}', '2021-06-07 08:03:26', '2021-06-07 08:03:26'),
(95, 1, 'admin/view_orders/13', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\"}', '2021-06-07 08:03:35', '2021-06-07 08:03:35'),
(96, 1, 'admin/orders', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\"}', '2021-06-07 08:03:42', '2021-06-07 08:03:42'),
(97, 1, 'admin/view_orders/23', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\"}', '2021-06-07 08:03:46', '2021-06-07 08:03:46'),
(98, 1, 'admin/orders', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\"}', '2021-06-07 08:18:59', '2021-06-07 08:18:59'),
(99, 1, 'admin/orders', 'GET', '47.31.204.207', '[]', '2021-06-07 08:19:19', '2021-06-07 08:19:19'),
(100, 1, 'admin/orders', 'GET', '47.31.204.207', '{\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_pickup_date\":null,\"expected_delivery_date\":\"2021-06-08\",\"_pjax\":\"#pjax-container\"}', '2021-06-07 08:19:28', '2021-06-07 08:19:28'),
(101, 1, 'admin/orders', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\"}', '2021-06-07 08:19:31', '2021-06-07 08:19:31'),
(102, 1, 'admin/customers', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\"}', '2021-06-07 08:19:39', '2021-06-07 08:19:39'),
(103, 1, 'admin', 'GET', '47.31.204.207', '{\"_pjax\":\"#pjax-container\"}', '2021-06-07 08:20:13', '2021-06-07 08:20:13'),
(104, 1, 'admin', 'GET', '47.31.210.39', '[]', '2021-06-07 09:57:48', '2021-06-07 09:57:48'),
(105, 1, 'admin', 'GET', '47.31.222.20', '[]', '2021-06-08 04:05:16', '2021-06-08 04:05:16'),
(106, 1, 'admin/orders', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-08 04:05:27', '2021-06-08 04:05:27'),
(107, 1, 'admin/orders/23/edit', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-08 04:05:38', '2021-06-08 04:05:38'),
(108, 1, 'admin/orders/23', 'PUT', '47.31.222.20', '{\"order_id\":\"ORD28048230\",\"delivered_by\":\"2\",\"status\":\"1\",\"payment_status\":\"1\",\"_token\":\"jl4xGRxAtktWyWyU0JcjHLWA48cNffKXJkrnzIDN\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-08 04:05:47', '2021-06-08 04:05:47'),
(109, 1, 'admin/orders/23/edit', 'GET', '47.31.222.20', '[]', '2021-06-08 04:05:52', '2021-06-08 04:05:52'),
(110, 1, 'admin/orders/23', 'PUT', '47.31.222.20', '{\"order_id\":\"ORD28048230\",\"delivered_by\":\"2\",\"status\":\"2\",\"payment_status\":\"1\",\"_token\":\"jl4xGRxAtktWyWyU0JcjHLWA48cNffKXJkrnzIDN\",\"_method\":\"PUT\"}', '2021-06-08 04:06:02', '2021-06-08 04:06:02'),
(111, 1, 'admin/orders', 'GET', '47.31.222.20', '[]', '2021-06-08 04:06:04', '2021-06-08 04:06:04'),
(112, 1, 'admin/services', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-08 04:13:26', '2021-06-08 04:13:26'),
(113, 1, 'admin/categories', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-08 04:13:34', '2021-06-08 04:13:34'),
(114, 1, 'admin/products', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-08 04:13:46', '2021-06-08 04:13:46'),
(115, 1, 'admin/products/create', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-08 04:13:51', '2021-06-08 04:13:51'),
(116, 1, 'admin', 'GET', '47.31.222.20', '[]', '2021-06-08 05:38:09', '2021-06-08 05:38:09'),
(117, 1, 'admin/orders', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-08 05:38:47', '2021-06-08 05:38:47'),
(118, 1, 'admin/services', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-08 05:38:56', '2021-06-08 05:38:56'),
(119, 1, 'admin/categories', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-08 05:38:57', '2021-06-08 05:38:57'),
(120, 1, 'admin/categories/1/edit', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-08 05:39:01', '2021-06-08 05:39:01'),
(121, 1, 'admin/categories', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-08 05:39:15', '2021-06-08 05:39:15'),
(122, 1, 'admin/categories/1/edit', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-08 05:39:20', '2021-06-08 05:39:20'),
(123, 1, 'admin/categories', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-08 05:39:26', '2021-06-08 05:39:26'),
(124, 1, 'admin/categories/2/edit', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-08 05:51:56', '2021-06-08 05:51:56'),
(125, 1, 'admin/categories', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-08 05:52:01', '2021-06-08 05:52:01'),
(126, 1, 'admin/products/create', 'GET', '47.31.222.20', '[]', '2021-06-08 06:38:17', '2021-06-08 06:38:17'),
(127, 1, 'admin/categories', 'GET', '47.31.222.20', '[]', '2021-06-08 06:38:17', '2021-06-08 06:38:17'),
(128, 1, 'admin/categories', 'GET', '47.31.222.20', '[]', '2021-06-08 06:42:38', '2021-06-08 06:42:38'),
(129, 1, 'admin/products', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-08 06:49:30', '2021-06-08 06:49:30'),
(130, 1, 'admin/products/5/edit', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-08 06:49:33', '2021-06-08 06:49:33'),
(131, 1, 'admin/products/5', 'PUT', '47.31.222.20', '{\"service_id\":\"3\",\"category_id\":\"2\",\"product_name\":\"product5\",\"price\":\"7\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"jl4xGRxAtktWyWyU0JcjHLWA48cNffKXJkrnzIDN\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-06-08 06:50:05', '2021-06-08 06:50:05'),
(132, 1, 'admin/products', 'GET', '47.31.222.20', '[]', '2021-06-08 06:50:14', '2021-06-08 06:50:14'),
(133, 1, 'admin/products', 'GET', '47.31.222.20', '[]', '2021-06-08 11:42:02', '2021-06-08 11:42:02'),
(134, 1, 'admin', 'GET', '47.31.222.20', '[]', '2021-06-09 07:43:25', '2021-06-09 07:43:25'),
(135, 1, 'admin/services', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-09 07:43:54', '2021-06-09 07:43:54'),
(136, 1, 'admin/services/create', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-09 07:44:07', '2021-06-09 07:44:07'),
(137, 1, 'admin/services', 'POST', '47.31.222.20', '{\"service_name\":\"service 1\",\"service_time\":\"10\",\"description\":\"dasfsdgpnasjidg\",\"status\":\"1\",\"_token\":\"Ql8H4LSsvAcQR3Lw60W0HfR7NZmcXzfU3JBrYCqD\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/services\"}', '2021-06-09 07:44:26', '2021-06-09 07:44:26'),
(138, 1, 'admin/services', 'GET', '47.31.222.20', '[]', '2021-06-09 07:44:27', '2021-06-09 07:44:27'),
(139, 1, 'admin/services/4', 'DELETE', '47.31.222.20', '{\"_method\":\"delete\",\"_token\":\"Ql8H4LSsvAcQR3Lw60W0HfR7NZmcXzfU3JBrYCqD\"}', '2021-06-09 07:51:20', '2021-06-09 07:51:20'),
(140, 1, 'admin/services', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-09 07:51:20', '2021-06-09 07:51:20'),
(141, 1, 'admin/services/create', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-09 07:53:13', '2021-06-09 07:53:13'),
(142, 1, 'admin/services', 'POST', '47.31.222.20', '{\"service_name\":\"service 1\",\"service_time\":\"10\",\"description\":\"wRAFDF\",\"status\":\"1\",\"_token\":\"Ql8H4LSsvAcQR3Lw60W0HfR7NZmcXzfU3JBrYCqD\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/services\"}', '2021-06-09 07:53:27', '2021-06-09 07:53:27'),
(143, 1, 'admin/services', 'GET', '47.31.222.20', '[]', '2021-06-09 07:53:30', '2021-06-09 07:53:30'),
(144, 1, 'admin/services/5', 'DELETE', '47.31.222.20', '{\"_method\":\"delete\",\"_token\":\"Ql8H4LSsvAcQR3Lw60W0HfR7NZmcXzfU3JBrYCqD\"}', '2021-06-09 07:53:57', '2021-06-09 07:53:57'),
(145, 1, 'admin/services', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-09 07:53:58', '2021-06-09 07:53:58'),
(146, 1, 'admin/services', 'GET', '47.31.222.20', '[]', '2021-06-09 09:15:31', '2021-06-09 09:15:31'),
(147, 1, 'admin/services', 'GET', '47.31.222.20', '[]', '2021-06-09 09:33:04', '2021-06-09 09:33:04'),
(148, 1, 'admin/services', 'GET', '47.31.222.20', '[]', '2021-06-09 09:48:29', '2021-06-09 09:48:29'),
(149, 1, 'admin/orders', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-09 10:38:53', '2021-06-09 10:38:53'),
(150, 1, 'admin/delivery_boys', 'GET', '47.31.222.20', '[]', '2021-06-09 10:39:14', '2021-06-09 10:39:14'),
(151, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-09 10:39:37', '2021-06-09 10:39:37'),
(152, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.222.20', '[]', '2021-06-09 11:28:43', '2021-06-09 11:28:43'),
(153, 1, 'admin/orders', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-09 11:28:46', '2021-06-09 11:28:46'),
(154, 1, 'admin/view_orders/23', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-09 11:28:54', '2021-06-09 11:28:54'),
(155, 1, 'admin/view_orders/23', 'GET', '47.31.222.20', '[]', '2021-06-09 11:46:54', '2021-06-09 11:46:54'),
(156, 1, 'admin/orders', 'GET', '47.31.222.20', '[]', '2021-06-09 11:46:55', '2021-06-09 11:46:55'),
(157, 1, 'admin/payment-methods', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-09 11:54:30', '2021-06-09 11:54:30'),
(158, 1, 'admin/view_orders/23', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-09 11:55:26', '2021-06-09 11:55:26'),
(159, 1, 'admin/view_orders/23', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-09 11:55:28', '2021-06-09 11:55:28'),
(160, 1, 'admin/view_orders/23', 'GET', '47.31.222.20', '[]', '2021-06-09 12:01:05', '2021-06-09 12:01:05'),
(161, 1, 'admin/orders', 'GET', '47.31.222.20', '[]', '2021-06-09 12:01:08', '2021-06-09 12:01:08'),
(162, 1, 'admin/view_orders/23', 'GET', '47.31.222.20', '[]', '2021-06-09 13:14:52', '2021-06-09 13:14:52'),
(163, 1, 'admin', 'GET', '223.225.3.120', '[]', '2021-06-10 06:01:16', '2021-06-10 06:01:16'),
(164, 1, 'admin/orders', 'GET', '223.225.3.120', '{\"_pjax\":\"#pjax-container\"}', '2021-06-10 06:02:03', '2021-06-10 06:02:03'),
(165, 1, 'admin/view_orders/23', 'GET', '223.225.3.120', '{\"_pjax\":\"#pjax-container\"}', '2021-06-10 06:02:16', '2021-06-10 06:02:16'),
(166, 1, 'admin/orders', 'GET', '223.225.3.120', '{\"_pjax\":\"#pjax-container\"}', '2021-06-10 06:02:23', '2021-06-10 06:02:23'),
(167, 1, 'admin/orders', 'GET', '223.225.3.120', '[]', '2021-06-10 06:04:45', '2021-06-10 06:04:45'),
(168, 1, 'admin/orders', 'GET', '47.31.222.20', '[]', '2021-06-10 06:14:05', '2021-06-10 06:14:05'),
(169, 1, 'admin/orders', 'GET', '47.31.222.20', '[]', '2021-06-10 06:14:05', '2021-06-10 06:14:05'),
(170, 1, 'admin/orders', 'GET', '47.31.222.20', '[]', '2021-06-10 08:18:49', '2021-06-10 08:18:49'),
(171, 1, 'admin/orders/23/edit', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-10 14:37:04', '2021-06-10 14:37:04'),
(172, 1, 'admin/orders/23', 'PUT', '47.31.222.20', '{\"order_id\":\"ORD28048230\",\"delivered_by\":\"2\",\"status\":\"3\",\"payment_status\":\"1\",\"_token\":\"soOiv5sbvREtlySD1W3pdhkE30VfPEWwAETXjahv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-10 14:37:23', '2021-06-10 14:37:23'),
(173, 1, 'admin/orders', 'GET', '47.31.222.20', '[]', '2021-06-10 14:37:24', '2021-06-10 14:37:24'),
(174, 1, 'admin/orders/13,14,15,16,17,18', 'DELETE', '47.31.222.20', '{\"_method\":\"delete\",\"_token\":\"soOiv5sbvREtlySD1W3pdhkE30VfPEWwAETXjahv\"}', '2021-06-10 14:37:34', '2021-06-10 14:37:34'),
(175, 1, 'admin/orders', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-10 14:37:34', '2021-06-10 14:37:34'),
(176, 1, 'admin/orders/23/edit', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-10 14:44:36', '2021-06-10 14:44:36'),
(177, 1, 'admin/orders/23', 'PUT', '47.31.222.20', '{\"order_id\":\"ORD28048230\",\"delivered_by\":\"2\",\"status\":\"5\",\"payment_status\":\"1\",\"_token\":\"soOiv5sbvREtlySD1W3pdhkE30VfPEWwAETXjahv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-10 14:44:42', '2021-06-10 14:44:42'),
(178, 1, 'admin/orders', 'GET', '47.31.222.20', '[]', '2021-06-10 14:44:43', '2021-06-10 14:44:43'),
(179, 1, 'admin/orders', 'GET', '47.31.222.20', '[]', '2021-06-10 14:45:07', '2021-06-10 14:45:07'),
(180, 1, 'admin', 'GET', '47.31.222.20', '[]', '2021-06-11 07:32:47', '2021-06-11 07:32:47'),
(181, 1, 'admin/orders', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-11 07:32:55', '2021-06-11 07:32:55'),
(182, 1, 'admin/view_orders/23', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-11 07:33:00', '2021-06-11 07:33:00'),
(183, 1, 'admin/orders', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-11 07:33:03', '2021-06-11 07:33:03'),
(184, 1, 'admin/additional-items', 'GET', '47.31.222.20', '[]', '2021-06-11 07:43:03', '2021-06-11 07:43:03'),
(185, 1, 'admin/additional-items', 'GET', '47.31.222.20', '[]', '2021-06-11 07:43:14', '2021-06-11 07:43:14'),
(186, 1, 'admin/additional-items/create', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-11 07:43:24', '2021-06-11 07:43:24'),
(187, 1, 'admin/additional-items', 'POST', '47.31.222.20', '{\"item_name\":\"Carpet+\",\"_token\":\"VGCR7JV3tDA9bo1EgjdPkoaa8V3XzEB2N8XFwTl3\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/additional-items\"}', '2021-06-11 07:43:38', '2021-06-11 07:43:38'),
(188, 1, 'admin/additional-items', 'GET', '47.31.222.20', '[]', '2021-06-11 07:43:40', '2021-06-11 07:43:40'),
(189, 1, 'admin/orders', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-11 07:44:02', '2021-06-11 07:44:02'),
(190, 1, 'admin/service-areas', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-11 07:44:08', '2021-06-11 07:44:08'),
(191, 1, 'admin/orders', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-11 07:44:50', '2021-06-11 07:44:50'),
(192, 1, 'admin/additional-items', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-11 07:44:52', '2021-06-11 07:44:52'),
(193, 1, 'admin/additional-items', 'GET', '47.31.222.20', '[]', '2021-06-11 07:44:54', '2021-06-11 07:44:54'),
(194, 1, 'admin/additional-items/1/edit', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-11 07:45:03', '2021-06-11 07:45:03'),
(195, 1, 'admin/additional-items/1/edit', 'GET', '47.31.222.20', '[]', '2021-06-11 07:45:44', '2021-06-11 07:45:44'),
(196, 1, 'admin/additional-items/1/edit', 'GET', '47.31.222.20', '[]', '2021-06-11 07:45:50', '2021-06-11 07:45:50'),
(197, 1, 'admin/additional-items/1/edit', 'GET', '47.31.222.20', '[]', '2021-06-11 07:45:58', '2021-06-11 07:45:58'),
(198, 1, 'admin/additional-items/1', 'PUT', '47.31.222.20', '{\"item_name\":\"Carpet+\",\"_token\":\"VGCR7JV3tDA9bo1EgjdPkoaa8V3XzEB2N8XFwTl3\",\"_method\":\"PUT\"}', '2021-06-11 07:46:03', '2021-06-11 07:46:03'),
(199, 1, 'admin/additional-items', 'GET', '47.31.222.20', '[]', '2021-06-11 07:46:03', '2021-06-11 07:46:03'),
(200, 1, 'admin/additional-items/create', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-11 07:46:05', '2021-06-11 07:46:05'),
(201, 1, 'admin/additional-items', 'POST', '47.31.222.20', '{\"item_name\":\"Blanket+\",\"_token\":\"VGCR7JV3tDA9bo1EgjdPkoaa8V3XzEB2N8XFwTl3\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/additional-items\"}', '2021-06-11 07:46:20', '2021-06-11 07:46:20'),
(202, 1, 'admin/additional-items', 'GET', '47.31.222.20', '[]', '2021-06-11 07:46:21', '2021-06-11 07:46:21'),
(203, 1, 'admin/additional-items/create', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-11 07:46:28', '2021-06-11 07:46:28'),
(204, 1, 'admin/additional-items', 'POST', '47.31.222.20', '{\"item_name\":\"Curtains+\",\"_token\":\"VGCR7JV3tDA9bo1EgjdPkoaa8V3XzEB2N8XFwTl3\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/additional-items\"}', '2021-06-11 07:46:36', '2021-06-11 07:46:36'),
(205, 1, 'admin/additional-items', 'GET', '47.31.222.20', '[]', '2021-06-11 07:46:39', '2021-06-11 07:46:39'),
(206, 1, 'admin/auth/menu', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-11 07:46:57', '2021-06-11 07:46:57'),
(207, 1, 'admin/auth/menu', 'POST', '47.31.222.20', '{\"parent_id\":\"0\",\"title\":\"Additional items\",\"icon\":\"fa-search-plus\",\"uri\":\"additional-items\",\"roles\":[\"2\",null],\"permission\":null,\"_token\":\"VGCR7JV3tDA9bo1EgjdPkoaa8V3XzEB2N8XFwTl3\"}', '2021-06-11 07:48:04', '2021-06-11 07:48:04'),
(208, 1, 'admin/auth/menu', 'GET', '47.31.222.20', '[]', '2021-06-11 07:48:04', '2021-06-11 07:48:04'),
(209, 1, 'admin/auth/menu/36/edit', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-11 07:48:12', '2021-06-11 07:48:12'),
(210, 1, 'admin/auth/menu/36', 'PUT', '47.31.222.20', '{\"parent_id\":\"25\",\"title\":\"Additional items\",\"icon\":\"fa-search-plus\",\"uri\":\"additional-items\",\"roles\":[\"2\",null],\"permission\":null,\"_token\":\"VGCR7JV3tDA9bo1EgjdPkoaa8V3XzEB2N8XFwTl3\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/auth\\/menu\"}', '2021-06-11 07:48:27', '2021-06-11 07:48:27'),
(211, 1, 'admin/auth/menu', 'GET', '47.31.222.20', '[]', '2021-06-11 07:48:28', '2021-06-11 07:48:28'),
(212, 1, 'admin/auth/menu', 'POST', '47.31.222.20', '{\"_token\":\"VGCR7JV3tDA9bo1EgjdPkoaa8V3XzEB2N8XFwTl3\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":28},{\\\"id\\\":25,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":13},{\\\"id\\\":17},{\\\"id\\\":36}]},{\\\"id\\\":19},{\\\"id\\\":27},{\\\"id\\\":24},{\\\"id\\\":23},{\\\"id\\\":32,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":33},{\\\"id\\\":35}]},{\\\"id\\\":14},{\\\"id\\\":15},{\\\"id\\\":12},{\\\"id\\\":22},{\\\"id\\\":8},{\\\"id\\\":29,\\\"children\\\":[{\\\"id\\\":11},{\\\"id\\\":21},{\\\"id\\\":16}]}]\"}', '2021-06-11 07:48:39', '2021-06-11 07:48:39'),
(213, 1, 'admin/auth/menu', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-11 07:48:40', '2021-06-11 07:48:40'),
(214, 1, 'admin/auth/menu', 'GET', '47.31.222.20', '[]', '2021-06-11 07:48:40', '2021-06-11 07:48:40'),
(215, 1, 'admin/additional-items', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-11 07:48:46', '2021-06-11 07:48:46'),
(216, 1, 'admin/auth/roles', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-11 07:49:00', '2021-06-11 07:49:00'),
(217, 1, 'admin/auth/permissions', 'GET', '47.31.222.20', '[]', '2021-06-11 07:49:10', '2021-06-11 07:49:10'),
(218, 1, 'admin/auth/permissions/create', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-11 07:49:12', '2021-06-11 07:49:12'),
(219, 1, 'admin/auth/permissions', 'POST', '47.31.222.20', '{\"slug\":\"additional-items\",\"name\":\"Additional items\",\"http_method\":[null],\"http_path\":\"\\/additional-items\",\"_token\":\"VGCR7JV3tDA9bo1EgjdPkoaa8V3XzEB2N8XFwTl3\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/auth\\/permissions\"}', '2021-06-11 07:50:13', '2021-06-11 07:50:13'),
(220, 1, 'admin/auth/permissions', 'GET', '47.31.222.20', '[]', '2021-06-11 07:50:13', '2021-06-11 07:50:13'),
(221, 1, 'admin/auth/permissions/21/edit', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-11 07:50:24', '2021-06-11 07:50:24'),
(222, 1, 'admin/auth/permissions/21', 'PUT', '47.31.222.20', '{\"slug\":\"service-areas\",\"name\":\"service areas\",\"http_method\":[null],\"http_path\":\"\\/service-areas\",\"_token\":\"VGCR7JV3tDA9bo1EgjdPkoaa8V3XzEB2N8XFwTl3\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/auth\\/permissions\"}', '2021-06-11 07:50:31', '2021-06-11 07:50:31'),
(223, 1, 'admin/auth/permissions', 'GET', '47.31.222.20', '[]', '2021-06-11 07:50:36', '2021-06-11 07:50:36'),
(224, 1, 'admin/auth/permissions', 'GET', '47.31.222.20', '[]', '2021-06-11 07:51:06', '2021-06-11 07:51:06'),
(225, 1, 'admin/additional-items', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-11 07:51:12', '2021-06-11 07:51:12'),
(226, 1, 'admin/additional-items', 'GET', '47.31.222.20', '[]', '2021-06-11 10:05:59', '2021-06-11 10:05:59'),
(227, 1, 'admin/feedback', 'GET', '47.31.222.20', '[]', '2021-06-11 10:11:32', '2021-06-11 10:11:32'),
(228, 1, 'admin/feedback', 'GET', '47.31.222.20', '[]', '2021-06-11 10:12:15', '2021-06-11 10:12:15'),
(229, 1, 'admin/feedback', 'GET', '47.31.222.20', '[]', '2021-06-11 11:09:30', '2021-06-11 11:09:30'),
(230, 1, 'admin/feedback', 'GET', '47.31.222.20', '[]', '2021-06-11 11:10:48', '2021-06-11 11:10:48'),
(231, 1, 'admin/feedback', 'GET', '47.31.222.20', '[]', '2021-06-11 11:19:40', '2021-06-11 11:19:40'),
(232, 1, 'admin/feedback/3,4,5', 'DELETE', '47.31.222.20', '{\"_method\":\"delete\",\"_token\":\"9g5DXf4FjzRsMXXd2TYkvs76xPhuuKhywnsALVOh\"}', '2021-06-11 11:19:51', '2021-06-11 11:19:51'),
(233, 1, 'admin/feedback', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-11 11:19:51', '2021-06-11 11:19:51'),
(234, 1, 'admin/feedback/1', 'DELETE', '47.31.222.20', '{\"_method\":\"delete\",\"_token\":\"9g5DXf4FjzRsMXXd2TYkvs76xPhuuKhywnsALVOh\"}', '2021-06-11 11:20:05', '2021-06-11 11:20:05'),
(235, 1, 'admin/feedback', 'GET', '47.31.222.20', '{\"_pjax\":\"#pjax-container\"}', '2021-06-11 11:20:06', '2021-06-11 11:20:06'),
(236, 1, 'admin/feedback', 'GET', '47.31.222.20', '[]', '2021-06-11 11:30:45', '2021-06-11 11:30:45'),
(237, 1, 'admin', 'GET', '47.31.209.46', '[]', '2021-06-12 07:40:09', '2021-06-12 07:40:09'),
(238, 1, 'admin/additional-items', 'GET', '47.31.209.46', '{\"_pjax\":\"#pjax-container\"}', '2021-06-12 07:40:23', '2021-06-12 07:40:23'),
(239, 1, 'admin/feedback', 'GET', '47.31.209.46', '[]', '2021-06-12 07:40:43', '2021-06-12 07:40:43'),
(240, 1, 'admin/auth/menu', 'GET', '47.31.209.46', '{\"_pjax\":\"#pjax-container\"}', '2021-06-12 07:40:58', '2021-06-12 07:40:58'),
(241, 1, 'admin/auth/menu', 'POST', '47.31.209.46', '{\"parent_id\":\"29\",\"title\":\"Feedbacks\",\"icon\":\"fa-paper-plane\",\"uri\":\"feedback\",\"roles\":[\"2\",null],\"permission\":null,\"_token\":\"dw0nNUXtgQBTH0OSjMWGz4u7gy7JsHv5ESmJvKQg\"}', '2021-06-12 07:41:47', '2021-06-12 07:41:47'),
(242, 1, 'admin/auth/menu', 'GET', '47.31.209.46', '[]', '2021-06-12 07:41:48', '2021-06-12 07:41:48'),
(243, 1, 'admin/auth/menu/37/edit', 'GET', '47.31.209.46', '{\"_pjax\":\"#pjax-container\"}', '2021-06-12 07:41:57', '2021-06-12 07:41:57'),
(244, 1, 'admin/auth/menu/37', 'PUT', '47.31.209.46', '{\"parent_id\":\"29\",\"title\":\"Feedbacks\",\"icon\":\"fa-paper-plane\",\"uri\":\"feedback\",\"roles\":[\"2\",null],\"permission\":\"*\",\"_token\":\"dw0nNUXtgQBTH0OSjMWGz4u7gy7JsHv5ESmJvKQg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/auth\\/menu\"}', '2021-06-12 07:42:03', '2021-06-12 07:42:03'),
(245, 1, 'admin/auth/menu', 'GET', '47.31.209.46', '[]', '2021-06-12 07:42:03', '2021-06-12 07:42:03'),
(246, 1, 'admin/auth/menu/36/edit', 'GET', '47.31.209.46', '{\"_pjax\":\"#pjax-container\"}', '2021-06-12 07:42:17', '2021-06-12 07:42:17'),
(247, 1, 'admin/auth/menu/36', 'PUT', '47.31.209.46', '{\"parent_id\":\"25\",\"title\":\"Additional items\",\"icon\":\"fa-search-plus\",\"uri\":\"additional-items\",\"roles\":[\"2\",null],\"permission\":\"*\",\"_token\":\"dw0nNUXtgQBTH0OSjMWGz4u7gy7JsHv5ESmJvKQg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/auth\\/menu\"}', '2021-06-12 07:42:26', '2021-06-12 07:42:26'),
(248, 1, 'admin/auth/menu', 'GET', '47.31.209.46', '[]', '2021-06-12 07:42:28', '2021-06-12 07:42:28'),
(249, 1, 'admin/auth/menu', 'GET', '47.31.209.46', '[]', '2021-06-12 07:42:36', '2021-06-12 07:42:36'),
(250, 1, 'admin/feedback', 'GET', '47.31.209.46', '{\"_pjax\":\"#pjax-container\"}', '2021-06-12 07:42:43', '2021-06-12 07:42:43'),
(251, 1, 'admin', 'GET', '47.31.232.17', '[]', '2021-06-15 08:34:13', '2021-06-15 08:34:13'),
(252, 1, 'admin/app_settings', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-15 08:54:00', '2021-06-15 08:54:00'),
(253, 1, 'admin/app_settings/1/edit', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-15 08:54:09', '2021-06-15 08:54:09'),
(254, 1, 'admin/app_settings/1/edit', 'GET', '47.31.232.17', '[]', '2021-06-15 10:08:12', '2021-06-15 10:08:12'),
(255, 1, 'admin/app_settings/1/edit', 'GET', '47.31.232.17', '[]', '2021-06-15 10:09:43', '2021-06-15 10:09:43'),
(256, 1, 'admin/app_settings/1', 'PUT', '47.31.232.17', '{\"application_name\":\"KRYCHE\",\"contact_number\":\"7678178911\",\"whatsapp_number\":\"7678178911\",\"email\":\"support@kryche.com\",\"address\":\"Block A, 2nd Floor, Plot No. 11, 12, 16, 17 Palam Extension, Sector 7 Dwarka, Dwarka, Delhi, 110075\",\"address_lat\":\"28.5851\",\"address_lng\":\"77.0713\",\"country\":\"India\",\"default_currency\":\"\\u20b9\",\"currency_short_code\":\"INR\",\"refer_earn_amt\":\"50\",\"about_us\":\"this Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam lacinia placerat nunc pretium efficitur. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nulla id eros tortor. Etiam ut porttitor dolor. Vivamus interdum, purus a eleifend condimentum, eros erat finibus ex, nec lacinia elit arcu eget neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean elementum quam magna, et ultrices orci dignissim ac. Integer eu viverra lacus. In metus augue, porta sed ullamcorper sit amet, semper a sapien. Etiam congue eu massa sed facilisis. Pellentesque scelerisque viverra rutrum. Maecenas fermentum vehicula tellus. Aliquam sit amet pretium mauris, quis mollis erat.\",\"fcm_server_key\":\"AAAA6CbcUU4:APA91bEjXcUD5QHo5eJ70JNWQYhbgmS24mDBwIIwn4sexCbT8mKThwddBoevcjOM8uOcZZ_5E_3MikmSmQgtNiVaeUDnHxKrvh9yY1wan673VZs4TBlpyNS4gK06bKP5C895CP6dNmcD\",\"_token\":\"xt0ruH3xf37RcBLvn2O8S19ogESh3KtvpJjB6BAH\",\"_method\":\"PUT\"}', '2021-06-15 10:09:53', '2021-06-15 10:09:53'),
(257, 1, 'admin/app_settings', 'GET', '47.31.232.17', '[]', '2021-06-15 10:09:55', '2021-06-15 10:09:55'),
(258, 1, 'admin/app_settings/1/edit', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-15 10:09:58', '2021-06-15 10:09:58'),
(259, 1, 'admin/app_settings/1/edit', 'GET', '47.31.232.17', '[]', '2021-06-15 10:10:16', '2021-06-15 10:10:16'),
(260, 1, 'admin', 'GET', '47.31.232.17', '[]', '2021-06-16 05:36:37', '2021-06-16 05:36:37'),
(261, 1, 'admin/orders', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-16 05:36:46', '2021-06-16 05:36:46'),
(262, 1, 'admin/orders/28/edit', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-16 05:37:10', '2021-06-16 05:37:10'),
(263, 1, 'admin/orders/28', 'PUT', '47.31.232.17', '{\"order_id\":\"ORD49942765\",\"delivered_by\":\"2\",\"status\":\"2\",\"payment_status\":\"1\",\"_token\":\"3o5MWyZ0BrsbJ51s2MDvddqnfOJvUbPcr74Pgjxa\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-16 05:37:22', '2021-06-16 05:37:22'),
(264, 1, 'admin/orders', 'GET', '47.31.232.17', '[]', '2021-06-16 05:37:23', '2021-06-16 05:37:23'),
(265, 1, 'admin/orders', 'GET', '47.31.232.17', '[]', '2021-06-16 08:19:38', '2021-06-16 08:19:38'),
(266, 1, 'admin/orders/28/edit', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-16 08:19:52', '2021-06-16 08:19:52'),
(267, 1, 'admin/orders/28', 'PUT', '47.31.232.17', '{\"order_id\":\"ORD49942765\",\"delivered_by\":\"2\",\"status\":\"3\",\"payment_status\":\"1\",\"_token\":\"twEcorkKxoLJ0a8Fs9Ln02isbDiruX5pFqdg0hBL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-16 08:20:00', '2021-06-16 08:20:00'),
(268, 1, 'admin/orders', 'GET', '47.31.232.17', '[]', '2021-06-16 08:20:00', '2021-06-16 08:20:00'),
(269, 1, 'admin', 'GET', '47.31.232.17', '[]', '2021-06-17 04:45:11', '2021-06-17 04:45:11'),
(270, 1, 'admin/orders', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-17 04:45:26', '2021-06-17 04:45:26'),
(271, 1, 'admin/orders/28/edit', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-17 04:45:50', '2021-06-17 04:45:50'),
(272, 1, 'admin/orders/28', 'PUT', '47.31.232.17', '{\"order_id\":\"ORD49942765\",\"delivered_by\":\"2\",\"status\":\"3\",\"payment_status\":\"1\",\"_token\":\"rvRJ8m2rkDNmGD2MhNdznDsSOUjCND85ENWEWJgo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-17 04:45:56', '2021-06-17 04:45:56'),
(273, 1, 'admin/orders', 'GET', '47.31.232.17', '[]', '2021-06-17 04:45:58', '2021-06-17 04:45:58'),
(274, 1, 'admin/delivery_boys', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-17 05:24:51', '2021-06-17 05:24:51'),
(275, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-17 05:25:54', '2021-06-17 05:25:54'),
(276, 1, 'admin/payment-methods', 'GET', '47.31.232.17', '[]', '2021-06-17 05:42:15', '2021-06-17 05:42:15'),
(277, 1, 'admin/payment-methods', 'GET', '47.31.232.17', '[]', '2021-06-17 05:51:17', '2021-06-17 05:51:17'),
(278, 1, 'admin/payment-methods', 'GET', '47.31.232.17', '[]', '2021-06-17 05:53:00', '2021-06-17 05:53:00'),
(279, 1, 'admin/payment-methods/4/edit', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-17 05:53:14', '2021-06-17 05:53:14'),
(280, 1, 'admin/payment-methods/4', 'PUT', '47.31.232.17', '{\"payment_mode\":\"Other\",\"status\":\"1\",\"_token\":\"rvRJ8m2rkDNmGD2MhNdznDsSOUjCND85ENWEWJgo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/payment-methods\"}', '2021-06-17 05:54:39', '2021-06-17 05:54:39'),
(281, 1, 'admin/payment-methods', 'GET', '47.31.232.17', '[]', '2021-06-17 05:54:39', '2021-06-17 05:54:39'),
(282, 1, 'admin/payment-methods', 'GET', '47.31.232.17', '[]', '2021-06-17 05:59:40', '2021-06-17 05:59:40'),
(283, 1, 'admin/payment-methods/6/edit', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-17 05:59:44', '2021-06-17 05:59:44'),
(284, 1, 'admin/payment-methods/6', 'PUT', '47.31.232.17', '{\"payment_mode\":\"wallet\",\"status\":\"1\",\"_token\":\"rvRJ8m2rkDNmGD2MhNdznDsSOUjCND85ENWEWJgo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/payment-methods\"}', '2021-06-17 05:59:52', '2021-06-17 05:59:52'),
(285, 1, 'admin/payment-methods', 'GET', '47.31.232.17', '[]', '2021-06-17 05:59:52', '2021-06-17 05:59:52'),
(286, 1, 'admin/payment-methods/2/edit', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-17 06:00:01', '2021-06-17 06:00:01'),
(287, 1, 'admin/payment-methods/2', 'PUT', '47.31.232.17', '{\"payment_mode\":\"Online\",\"status\":\"1\",\"_token\":\"rvRJ8m2rkDNmGD2MhNdznDsSOUjCND85ENWEWJgo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/payment-methods\"}', '2021-06-17 06:00:09', '2021-06-17 06:00:09'),
(288, 1, 'admin/payment-methods', 'GET', '47.31.232.17', '[]', '2021-06-17 06:00:09', '2021-06-17 06:00:09'),
(289, 1, 'admin/payment-methods', 'GET', '47.31.232.17', '[]', '2021-06-17 06:00:41', '2021-06-17 06:00:41'),
(290, 1, 'admin/orders', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-17 11:58:39', '2021-06-17 11:58:39'),
(291, 1, 'admin/orders', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-17 11:58:42', '2021-06-17 11:58:42'),
(292, 1, 'admin/orders/28/edit', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-17 11:58:49', '2021-06-17 11:58:49'),
(293, 1, 'admin/orders/28', 'PUT', '47.31.232.17', '{\"order_id\":\"ORD49942765\",\"delivered_by\":\"2\",\"status\":\"4\",\"payment_status\":\"1\",\"_token\":\"AWrOpX66tm6zZWN8mVUDmPTBkAOKzpxkatrMxTgi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-17 12:06:52', '2021-06-17 12:06:52'),
(294, 1, 'admin/orders', 'GET', '47.31.232.17', '[]', '2021-06-17 12:06:53', '2021-06-17 12:06:53'),
(295, 1, 'admin/orders/28/edit', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-17 12:06:57', '2021-06-17 12:06:57'),
(296, 1, 'admin/orders/28', 'PUT', '47.31.232.17', '{\"order_id\":\"ORD49942765\",\"delivered_by\":\"2\",\"status\":\"4\",\"payment_status\":\"4\",\"_token\":\"AWrOpX66tm6zZWN8mVUDmPTBkAOKzpxkatrMxTgi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-17 12:07:06', '2021-06-17 12:07:06'),
(297, 1, 'admin/orders', 'GET', '47.31.232.17', '[]', '2021-06-17 12:07:06', '2021-06-17 12:07:06'),
(298, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.232.17', '[]', '2021-06-17 13:57:26', '2021-06-17 13:57:26'),
(299, 1, 'admin/orders/28/edit', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-17 13:57:35', '2021-06-17 13:57:35'),
(300, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.232.17', '[]', '2021-06-17 14:12:33', '2021-06-17 14:12:33'),
(301, 1, 'admin/orders', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-17 14:12:49', '2021-06-17 14:12:49'),
(302, 1, 'admin', 'GET', '47.31.232.17', '[]', '2021-06-18 06:13:10', '2021-06-18 06:13:10'),
(303, 1, 'admin/orders', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-18 06:14:16', '2021-06-18 06:14:16'),
(304, 1, 'admin/orders/28/edit', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-18 06:19:13', '2021-06-18 06:19:13'),
(305, 1, 'admin/orders/28', 'PUT', '47.31.232.17', '{\"order_id\":\"ORD49942765\",\"delivered_by\":\"2\",\"status\":\"4\",\"payment_status\":\"1\",\"_token\":\"HdwLxzRAys4dD7QmF1nIU0BNpGHKHwLQzlclphaN\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-18 06:44:11', '2021-06-18 06:44:11'),
(306, 1, 'admin/orders', 'GET', '47.31.232.17', '[]', '2021-06-18 06:44:17', '2021-06-18 06:44:17'),
(307, 1, 'admin/orders/28/edit', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-18 06:44:53', '2021-06-18 06:44:53'),
(308, 1, 'admin/orders', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-18 06:44:57', '2021-06-18 06:44:57'),
(309, 1, 'admin/orders/28/edit', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-18 06:48:52', '2021-06-18 06:48:52'),
(310, 1, 'admin/orders/28', 'PUT', '47.31.232.17', '{\"order_id\":\"ORD49942765\",\"delivered_by\":\"2\",\"status\":\"4\",\"payment_status\":\"1\",\"_token\":\"HdwLxzRAys4dD7QmF1nIU0BNpGHKHwLQzlclphaN\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-18 06:49:02', '2021-06-18 06:49:02'),
(311, 1, 'admin/orders', 'GET', '47.31.232.17', '[]', '2021-06-18 06:49:07', '2021-06-18 06:49:07'),
(312, 1, 'admin', 'GET', '47.31.232.17', '[]', '2021-06-18 11:33:52', '2021-06-18 11:33:52'),
(313, 1, 'admin/orders', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-18 13:21:45', '2021-06-18 13:21:45'),
(314, 1, 'admin/orders', 'GET', '47.31.232.17', '[]', '2021-06-18 13:22:01', '2021-06-18 13:22:01'),
(315, 1, 'admin/orders/32/edit', 'GET', '47.31.232.17', '{\"_pjax\":\"#pjax-container\"}', '2021-06-18 13:22:15', '2021-06-18 13:22:15');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(316, 1, 'admin/orders/32', 'PUT', '47.31.232.17', '{\"order_id\":\"ORD13680444\",\"delivered_by\":\"6\",\"status\":\"2\",\"payment_status\":\"1\",\"_token\":\"aHzsSrK57h602ZQifQ8zU1twZiqkThWoaaWbrZja\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-18 13:22:24', '2021-06-18 13:22:24'),
(317, 1, 'admin/orders', 'GET', '47.31.232.17', '[]', '2021-06-18 13:22:26', '2021-06-18 13:22:26'),
(318, 1, 'admin', 'GET', '47.31.248.201', '[]', '2021-06-19 05:03:32', '2021-06-19 05:03:32'),
(319, 1, 'admin/delivery_boys', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 05:03:53', '2021-06-19 05:03:53'),
(320, 1, 'admin/delivery_boys/1/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 05:05:26', '2021-06-19 05:05:26'),
(321, 1, 'admin/categories', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 05:05:45', '2021-06-19 05:05:45'),
(322, 1, 'admin/categories/1/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 05:05:49', '2021-06-19 05:05:49'),
(323, 1, 'admin/bar-codes', 'GET', '47.31.248.201', '[]', '2021-06-19 05:26:35', '2021-06-19 05:26:35'),
(324, 1, 'admin/bar-codes/create', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 05:26:45', '2021-06-19 05:26:45'),
(325, 1, 'admin/bar-codes/create', 'GET', '47.31.248.201', '[]', '2021-06-19 05:29:55', '2021-06-19 05:29:55'),
(326, 1, 'admin/bar-codes/create', 'GET', '47.31.248.201', '[]', '2021-06-19 05:30:21', '2021-06-19 05:30:21'),
(327, 1, 'admin/bar-codes', 'POST', '47.31.248.201', '{\"title\":\"Paytm wallet\",\"description\":\"Scan this code in Paytm and pay\",\"_token\":\"uTOcIy1QDFevHat9q4uo5DazbOLF0AxudFafDZrz\"}', '2021-06-19 05:32:12', '2021-06-19 05:32:12'),
(328, 1, 'admin/bar-codes', 'GET', '47.31.248.201', '[]', '2021-06-19 05:32:13', '2021-06-19 05:32:13'),
(329, 1, 'admin/bar-codes', 'GET', '47.31.248.201', '[]', '2021-06-19 05:32:59', '2021-06-19 05:32:59'),
(330, 1, 'admin/bar-codes', 'GET', '47.31.248.201', '[]', '2021-06-19 05:33:14', '2021-06-19 05:33:14'),
(331, 1, 'admin/auth/menu', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 05:33:44', '2021-06-19 05:33:44'),
(332, 1, 'admin/auth/menu', 'POST', '47.31.248.201', '{\"parent_id\":\"29\",\"title\":\"Barcodes\",\"icon\":\"fa-barcode\",\"uri\":\"bar-codes\",\"roles\":[\"1\",\"2\",null],\"permission\":\"*\",\"_token\":\"uTOcIy1QDFevHat9q4uo5DazbOLF0AxudFafDZrz\"}', '2021-06-19 05:34:46', '2021-06-19 05:34:46'),
(333, 1, 'admin/auth/menu', 'GET', '47.31.248.201', '[]', '2021-06-19 05:34:47', '2021-06-19 05:34:47'),
(334, 1, 'admin/auth/menu', 'POST', '47.31.248.201', '{\"_token\":\"uTOcIy1QDFevHat9q4uo5DazbOLF0AxudFafDZrz\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":28},{\\\"id\\\":25,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":13},{\\\"id\\\":17},{\\\"id\\\":36}]},{\\\"id\\\":19},{\\\"id\\\":27},{\\\"id\\\":24},{\\\"id\\\":23},{\\\"id\\\":32,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":33},{\\\"id\\\":35}]},{\\\"id\\\":14},{\\\"id\\\":15},{\\\"id\\\":12},{\\\"id\\\":22},{\\\"id\\\":8},{\\\"id\\\":29,\\\"children\\\":[{\\\"id\\\":37},{\\\"id\\\":38},{\\\"id\\\":11},{\\\"id\\\":21},{\\\"id\\\":16}]}]\"}', '2021-06-19 05:35:06', '2021-06-19 05:35:06'),
(335, 1, 'admin/auth/menu', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 05:35:06', '2021-06-19 05:35:06'),
(336, 1, 'admin/auth/menu', 'GET', '47.31.248.201', '[]', '2021-06-19 05:35:07', '2021-06-19 05:35:07'),
(337, 1, 'admin/bar-codes', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 05:35:12', '2021-06-19 05:35:12'),
(338, 1, 'admin/bar-codes', 'GET', '47.31.248.201', '[]', '2021-06-19 05:35:41', '2021-06-19 05:35:41'),
(339, 1, 'admin/bar-codes', 'GET', '47.31.248.201', '[]', '2021-06-19 05:35:52', '2021-06-19 05:35:52'),
(340, 1, 'admin/bar-codes/create', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 05:36:37', '2021-06-19 05:36:37'),
(341, 1, 'admin/bar-codes', 'POST', '47.31.248.201', '{\"title\":\"Sample Pay\",\"description\":null,\"_token\":\"uTOcIy1QDFevHat9q4uo5DazbOLF0AxudFafDZrz\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/bar-codes\"}', '2021-06-19 05:36:52', '2021-06-19 05:36:52'),
(342, 1, 'admin/bar-codes', 'GET', '47.31.248.201', '[]', '2021-06-19 05:36:53', '2021-06-19 05:36:53'),
(343, 1, 'admin/delivery_boys', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 05:44:10', '2021-06-19 05:44:10'),
(344, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 05:44:17', '2021-06-19 05:44:17'),
(345, 1, 'admin/delivery_boys/2', 'PUT', '47.31.248.201', '{\"delivery_boy_name\":\"Deepak kumar\",\"phone_number\":\"7678178911\",\"email\":\"structlooper@gmail.com\",\"delivery_boy_type\":\"1\",\"commission\":\"10\",\"bar_codes\":[\"1\",\"2\",null],\"status\":\"1\",\"_token\":\"uTOcIy1QDFevHat9q4uo5DazbOLF0AxudFafDZrz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/delivery_boys\"}', '2021-06-19 05:44:34', '2021-06-19 05:44:34'),
(346, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 05:44:37', '2021-06-19 05:44:37'),
(347, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 06:09:47', '2021-06-19 06:09:47'),
(348, 1, 'admin/delivery_boys/2', 'PUT', '47.31.248.201', '{\"delivery_boy_name\":\"Deepak kumar\",\"phone_number\":\"7678178911\",\"email\":\"structlooper@gmail.com\",\"delivery_boy_type\":\"1\",\"commission\":\"10\",\"bar_codes\":[\"1\",null],\"status\":\"1\",\"_token\":\"uTOcIy1QDFevHat9q4uo5DazbOLF0AxudFafDZrz\",\"_method\":\"PUT\"}', '2021-06-19 06:09:57', '2021-06-19 06:09:57'),
(349, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 06:09:58', '2021-06-19 06:09:58'),
(350, 1, 'admin/products', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:11:22', '2021-06-19 06:11:22'),
(351, 1, 'admin/products/1/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:11:26', '2021-06-19 06:11:26'),
(352, 1, 'admin/services', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:11:30', '2021-06-19 06:11:30'),
(353, 1, 'admin/services/1/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:11:35', '2021-06-19 06:11:35'),
(354, 1, 'admin/additional-items', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:11:47', '2021-06-19 06:11:47'),
(355, 1, 'admin/services', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:11:55', '2021-06-19 06:11:55'),
(356, 1, 'admin/categories', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:12:00', '2021-06-19 06:12:00'),
(357, 1, 'admin/categories/1/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:12:05', '2021-06-19 06:12:05'),
(358, 1, 'admin/delivery_boys', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:13:53', '2021-06-19 06:13:53'),
(359, 1, 'admin/delivery_boys', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:13:55', '2021-06-19 06:13:55'),
(360, 1, 'admin/time-slots', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:13:56', '2021-06-19 06:13:56'),
(361, 1, 'admin/delivery_boys', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:13:59', '2021-06-19 06:13:59'),
(362, 1, 'admin/delivery_boys/1/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:14:01', '2021-06-19 06:14:01'),
(363, 1, 'admin/delivery_boys/1', 'PUT', '47.31.248.201', '{\"delivery_boy_name\":\"test Driver\",\"phone_number\":\"1234567892\",\"email\":\"test@test.com\",\"delivery_boy_type\":\"2\",\"salary\":\"5000\",\"bar_code\":[\"1\",null],\"status\":\"1\",\"_token\":\"uTOcIy1QDFevHat9q4uo5DazbOLF0AxudFafDZrz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/delivery_boys\"}', '2021-06-19 06:14:08', '2021-06-19 06:14:08'),
(364, 1, 'admin/delivery_boys/1/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 06:14:09', '2021-06-19 06:14:09'),
(365, 1, 'admin/delivery_boys/1', 'PUT', '47.31.248.201', '{\"delivery_boy_name\":\"test Driver\",\"phone_number\":\"1234567892\",\"email\":\"test@test.com\",\"delivery_boy_type\":\"2\",\"salary\":\"5000\",\"bar_code\":[\"1\",null],\"status\":\"1\",\"_token\":\"uTOcIy1QDFevHat9q4uo5DazbOLF0AxudFafDZrz\",\"_method\":\"PUT\"}', '2021-06-19 06:14:20', '2021-06-19 06:14:20'),
(366, 1, 'admin/delivery_boys', 'GET', '47.31.248.201', '[]', '2021-06-19 06:14:20', '2021-06-19 06:14:20'),
(367, 1, 'admin/delivery_boys/1/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:14:30', '2021-06-19 06:14:30'),
(368, 1, 'admin/delivery_boys/1', 'PUT', '47.31.248.201', '{\"delivery_boy_name\":\"test Driver\",\"phone_number\":\"1234567892\",\"email\":\"test@test.com\",\"delivery_boy_type\":\"2\",\"salary\":\"5000\",\"bar_codes\":[\"1\",\"2\",null],\"status\":\"1\",\"_token\":\"uTOcIy1QDFevHat9q4uo5DazbOLF0AxudFafDZrz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/delivery_boys\"}', '2021-06-19 06:14:39', '2021-06-19 06:14:39'),
(369, 1, 'admin/delivery_boys/1/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 06:14:41', '2021-06-19 06:14:41'),
(370, 1, 'admin/delivery_boys/1', 'PUT', '47.31.248.201', '{\"delivery_boy_name\":\"test Driver\",\"phone_number\":\"1234567892\",\"email\":\"test@test.com\",\"delivery_boy_type\":\"2\",\"salary\":\"5000\",\"bar_codes\":[\"1\",\"2\",null],\"status\":\"1\",\"_token\":\"uTOcIy1QDFevHat9q4uo5DazbOLF0AxudFafDZrz\",\"_method\":\"PUT\"}', '2021-06-19 06:15:05', '2021-06-19 06:15:05'),
(371, 1, 'admin/delivery_boys/1/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 06:15:05', '2021-06-19 06:15:05'),
(372, 1, 'admin/delivery_boys/1/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 06:16:51', '2021-06-19 06:16:51'),
(373, 1, 'admin/delivery_boys/1', 'PUT', '47.31.248.201', '{\"delivery_boy_name\":\"test Driver\",\"phone_number\":\"1234567892\",\"email\":\"test@test.com\",\"delivery_boy_type\":\"2\",\"salary\":\"5000\",\"bar_codes\":[\"1\",\"2\",null],\"status\":\"1\",\"_token\":\"uTOcIy1QDFevHat9q4uo5DazbOLF0AxudFafDZrz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/delivery_boys\\/2\\/edit\"}', '2021-06-19 06:16:58', '2021-06-19 06:16:58'),
(374, 1, 'admin/delivery_boys/1/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 06:16:58', '2021-06-19 06:16:58'),
(375, 1, 'admin/delivery_boys/1', 'GET', '47.31.248.201', '[]', '2021-06-19 06:18:16', '2021-06-19 06:18:16'),
(376, 1, 'admin/delivery_boys', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:18:35', '2021-06-19 06:18:35'),
(377, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:18:40', '2021-06-19 06:18:40'),
(378, 1, 'admin/delivery_boys/2', 'PUT', '47.31.248.201', '{\"delivery_boy_name\":\"Deepak kumar\",\"phone_number\":\"7678178911\",\"email\":\"structlooper@gmail.com\",\"delivery_boy_type\":\"1\",\"commission\":\"10\",\"bar_codes\":[\"1\",\"2\",null],\"status\":\"1\",\"_token\":\"uTOcIy1QDFevHat9q4uo5DazbOLF0AxudFafDZrz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/delivery_boys\"}', '2021-06-19 06:18:46', '2021-06-19 06:18:46'),
(379, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 06:18:48', '2021-06-19 06:18:48'),
(380, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 06:19:00', '2021-06-19 06:19:00'),
(381, 1, 'admin/delivery_boys/2', 'PUT', '47.31.248.201', '{\"delivery_boy_name\":\"Deepak kumar\",\"phone_number\":\"7678178911\",\"email\":\"structlooper@gmail.com\",\"delivery_boy_type\":\"1\",\"commission\":\"10\",\"bar_codes\":[\"1\",null],\"status\":\"1\",\"_token\":\"uTOcIy1QDFevHat9q4uo5DazbOLF0AxudFafDZrz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/delivery_boys\\/1\"}', '2021-06-19 06:19:08', '2021-06-19 06:19:08'),
(382, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 06:19:09', '2021-06-19 06:19:09'),
(383, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 06:20:06', '2021-06-19 06:20:06'),
(384, 1, 'admin/delivery_boys/2', 'PUT', '47.31.248.201', '{\"delivery_boy_name\":\"Deepak kumar\",\"phone_number\":\"7678178911\",\"email\":\"structlooper@gmail.com\",\"delivery_boy_type\":\"1\",\"commission\":\"10\",\"bar_codes\":[\"1\",\"2\",null],\"status\":\"1\",\"_token\":\"uTOcIy1QDFevHat9q4uo5DazbOLF0AxudFafDZrz\",\"_method\":\"PUT\"}', '2021-06-19 06:20:13', '2021-06-19 06:20:13'),
(385, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 06:20:15', '2021-06-19 06:20:15'),
(386, 1, 'admin/delivery_boys/2', 'GET', '47.31.248.201', '[]', '2021-06-19 06:20:20', '2021-06-19 06:20:20'),
(387, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:20:23', '2021-06-19 06:20:23'),
(388, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:20:29', '2021-06-19 06:20:29'),
(389, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:20:29', '2021-06-19 06:20:29'),
(390, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:20:30', '2021-06-19 06:20:30'),
(391, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:20:30', '2021-06-19 06:20:30'),
(392, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:20:31', '2021-06-19 06:20:31'),
(393, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:20:31', '2021-06-19 06:20:31'),
(394, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:20:31', '2021-06-19 06:20:31'),
(395, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:20:32', '2021-06-19 06:20:32'),
(396, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:20:32', '2021-06-19 06:20:32'),
(397, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:20:32', '2021-06-19 06:20:32'),
(398, 1, 'admin/delivery_boys/2', 'PUT', '47.31.248.201', '{\"delivery_boy_name\":\"Deepak kumar\",\"phone_number\":\"7678178911\",\"email\":\"structlooper@gmail.com\",\"delivery_boy_type\":\"1\",\"commission\":\"10\",\"bar_codes\":[\"1\",null],\"status\":\"1\",\"_token\":\"uTOcIy1QDFevHat9q4uo5DazbOLF0AxudFafDZrz\",\"_method\":\"PUT\"}', '2021-06-19 06:20:36', '2021-06-19 06:20:36'),
(399, 1, 'admin/delivery_boys/2', 'GET', '47.31.248.201', '[]', '2021-06-19 06:22:08', '2021-06-19 06:22:08'),
(400, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:22:12', '2021-06-19 06:22:12'),
(401, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 06:22:14', '2021-06-19 06:22:14'),
(402, 1, 'admin/delivery_boys/2', 'PUT', '47.31.248.201', '{\"delivery_boy_name\":\"Deepak kumar\",\"phone_number\":\"7678178911\",\"email\":\"structlooper@gmail.com\",\"delivery_boy_type\":\"1\",\"commission\":\"10\",\"bar_codes\":[\"1\",null],\"status\":\"1\",\"_token\":\"uTOcIy1QDFevHat9q4uo5DazbOLF0AxudFafDZrz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/delivery_boys\\/2\"}', '2021-06-19 06:22:22', '2021-06-19 06:22:22'),
(403, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 06:22:26', '2021-06-19 06:22:26'),
(404, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 06:24:19', '2021-06-19 06:24:19'),
(405, 1, 'admin/delivery_boys/2', 'PUT', '47.31.248.201', '{\"delivery_boy_name\":\"Deepak kumar\",\"phone_number\":\"7678178911\",\"email\":\"structlooper@gmail.com\",\"delivery_boy_type\":\"1\",\"commission\":\"10\",\"bar_codes\":[\"1\",null],\"status\":\"1\",\"_token\":\"uTOcIy1QDFevHat9q4uo5DazbOLF0AxudFafDZrz\",\"_method\":\"PUT\"}', '2021-06-19 06:24:24', '2021-06-19 06:24:24'),
(406, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 06:24:25', '2021-06-19 06:24:25'),
(407, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 06:26:04', '2021-06-19 06:26:04'),
(408, 1, 'admin/delivery_boys/2', 'PUT', '47.31.248.201', '{\"delivery_boy_name\":\"Deepak kumar\",\"phone_number\":\"7678178911\",\"email\":\"structlooper@gmail.com\",\"delivery_boy_type\":\"1\",\"commission\":\"10\",\"bar_codes\":[\"1\",\"2\",null],\"status\":\"1\",\"_token\":\"uTOcIy1QDFevHat9q4uo5DazbOLF0AxudFafDZrz\",\"_method\":\"PUT\"}', '2021-06-19 06:26:11', '2021-06-19 06:26:11'),
(409, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 06:26:11', '2021-06-19 06:26:11'),
(410, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 06:26:24', '2021-06-19 06:26:24'),
(411, 1, 'admin/delivery_boys/2', 'PUT', '47.31.248.201', '{\"delivery_boy_name\":\"Deepak kumar\",\"phone_number\":\"7678178911\",\"email\":\"structlooper@gmail.com\",\"delivery_boy_type\":\"1\",\"commission\":\"10\",\"bar_codes\":[\"1\",null],\"status\":\"1\",\"_token\":\"uTOcIy1QDFevHat9q4uo5DazbOLF0AxudFafDZrz\",\"_method\":\"PUT\"}', '2021-06-19 06:26:28', '2021-06-19 06:26:28'),
(412, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 06:26:28', '2021-06-19 06:26:28'),
(413, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 06:34:18', '2021-06-19 06:34:18'),
(414, 1, 'admin/delivery_boys/2', 'PUT', '47.31.248.201', '{\"delivery_boy_name\":\"Deepak kumar\",\"phone_number\":\"7678178911\",\"email\":\"structlooper@gmail.com\",\"delivery_boy_type\":\"1\",\"commission\":\"10\",\"bar_codes\":[\"1\",\"2\",null],\"status\":\"1\",\"_token\":\"uTOcIy1QDFevHat9q4uo5DazbOLF0AxudFafDZrz\",\"_method\":\"PUT\"}', '2021-06-19 06:34:28', '2021-06-19 06:34:28'),
(415, 1, 'admin/delivery_boys', 'GET', '47.31.248.201', '[]', '2021-06-19 06:34:28', '2021-06-19 06:34:28'),
(416, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:34:39', '2021-06-19 06:34:39'),
(417, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 06:36:37', '2021-06-19 06:36:37'),
(418, 1, 'admin/delivery_boys/2', 'PUT', '47.31.248.201', '{\"delivery_boy_name\":\"Deepak kumar\",\"phone_number\":\"7678178911\",\"email\":\"structlooper@gmail.com\",\"delivery_boy_type\":\"1\",\"commission\":\"10\",\"bar_codes\":[\"1\",\"2\",null],\"status\":\"1\",\"_token\":\"uTOcIy1QDFevHat9q4uo5DazbOLF0AxudFafDZrz\",\"_method\":\"PUT\"}', '2021-06-19 06:36:44', '2021-06-19 06:36:44'),
(419, 1, 'admin/delivery_boys', 'GET', '47.31.248.201', '[]', '2021-06-19 06:36:44', '2021-06-19 06:36:44'),
(420, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 06:37:04', '2021-06-19 06:37:04'),
(421, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 07:39:38', '2021-06-19 07:39:38'),
(422, 1, 'admin/bar-codes', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 07:39:49', '2021-06-19 07:39:49'),
(423, 1, 'admin/delivery_boys', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 07:40:05', '2021-06-19 07:40:05'),
(424, 1, 'admin/delivery_boys/3/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 07:40:10', '2021-06-19 07:40:10'),
(425, 1, 'admin/delivery_boys/3', 'PUT', '47.31.248.201', '{\"delivery_boy_name\":\"Dhiraj\",\"phone_number\":\"7632859600\",\"email\":\"dhirajchoudhary999@gmail.com\",\"delivery_boy_type\":\"1\",\"commission\":null,\"bar_codes\":[\"1\",null],\"status\":\"1\",\"_token\":\"uTOcIy1QDFevHat9q4uo5DazbOLF0AxudFafDZrz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/delivery_boys\"}', '2021-06-19 07:40:19', '2021-06-19 07:40:19'),
(426, 1, 'admin/delivery_boys/3/edit', 'GET', '47.31.248.201', '[]', '2021-06-19 07:40:20', '2021-06-19 07:40:20'),
(427, 1, 'admin/delivery_boys/3/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 07:40:28', '2021-06-19 07:40:28'),
(428, 1, 'admin/delivery_boys', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 07:40:32', '2021-06-19 07:40:32'),
(429, 1, 'admin/delivery_boys/2/edit', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 07:40:36', '2021-06-19 07:40:36'),
(430, 1, 'admin/orders', 'GET', '47.31.248.201', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 10:03:51', '2021-06-19 10:03:51'),
(431, 1, 'admin', 'GET', '106.212.184.248', '[]', '2021-06-19 10:18:06', '2021-06-19 10:18:06'),
(432, 1, 'admin/orders', 'GET', '106.212.184.248', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 10:18:12', '2021-06-19 10:18:12'),
(433, 1, 'admin/orders/32/edit', 'GET', '106.212.184.248', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 10:18:25', '2021-06-19 10:18:25'),
(434, 1, 'admin/orders/32', 'PUT', '106.212.184.248', '{\"order_id\":\"ORD13680444\",\"delivered_by\":\"6\",\"status\":\"2\",\"payment_status\":\"1\",\"_token\":\"5JoaudKHsoH0URhVbJtZFjTPP3keS0IEbaZXntbU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-19 10:18:37', '2021-06-19 10:18:37'),
(435, 1, 'admin/orders', 'GET', '106.212.184.248', '[]', '2021-06-19 10:18:38', '2021-06-19 10:18:38'),
(436, 1, 'admin/orders/27/edit', 'GET', '106.212.184.248', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 10:19:18', '2021-06-19 10:19:18'),
(437, 1, 'admin/orders/27', 'PUT', '106.212.184.248', '{\"order_id\":\"ORD51952650\",\"delivered_by\":\"4\",\"status\":\"1\",\"payment_status\":\"1\",\"_token\":\"5JoaudKHsoH0URhVbJtZFjTPP3keS0IEbaZXntbU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-19 10:19:26', '2021-06-19 10:19:26'),
(438, 1, 'admin/orders/27/edit', 'GET', '106.212.184.248', '[]', '2021-06-19 10:19:28', '2021-06-19 10:19:28'),
(439, 1, 'admin/orders/27', 'PUT', '106.212.184.248', '{\"order_id\":\"ORD51952650\",\"delivered_by\":null,\"status\":\"2\",\"payment_status\":\"1\",\"_token\":\"5JoaudKHsoH0URhVbJtZFjTPP3keS0IEbaZXntbU\",\"_method\":\"PUT\"}', '2021-06-19 10:19:45', '2021-06-19 10:19:45'),
(440, 1, 'admin/orders/27/edit', 'GET', '106.212.184.248', '[]', '2021-06-19 10:19:45', '2021-06-19 10:19:45'),
(441, 1, 'admin/orders/27', 'PUT', '106.212.184.248', '{\"order_id\":\"ORD51952650\",\"delivered_by\":\"4\",\"status\":\"2\",\"payment_status\":\"1\",\"_token\":\"5JoaudKHsoH0URhVbJtZFjTPP3keS0IEbaZXntbU\",\"_method\":\"PUT\"}', '2021-06-19 10:19:50', '2021-06-19 10:19:50'),
(442, 1, 'admin/orders', 'GET', '106.212.184.248', '[]', '2021-06-19 10:19:51', '2021-06-19 10:19:51'),
(443, 1, 'admin/view_orders/27', 'GET', '106.212.184.248', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 10:20:00', '2021-06-19 10:20:00'),
(444, 1, 'admin/orders', 'GET', '106.212.184.248', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 10:21:26', '2021-06-19 10:21:26'),
(445, 1, 'admin/orders/25/edit', 'GET', '106.212.184.248', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 10:21:30', '2021-06-19 10:21:30'),
(446, 1, 'admin/orders/25', 'PUT', '106.212.184.248', '{\"order_id\":\"ORD22384757\",\"delivered_by\":\"4\",\"status\":\"2\",\"payment_status\":\"1\",\"_token\":\"5JoaudKHsoH0URhVbJtZFjTPP3keS0IEbaZXntbU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-19 10:21:38', '2021-06-19 10:21:38'),
(447, 1, 'admin/orders', 'GET', '106.212.184.248', '[]', '2021-06-19 10:21:39', '2021-06-19 10:21:39'),
(448, 1, 'admin/orders/26/edit', 'GET', '106.212.184.248', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 10:21:45', '2021-06-19 10:21:45'),
(449, 1, 'admin/orders/26', 'PUT', '106.212.184.248', '{\"order_id\":\"ORD78420504\",\"delivered_by\":\"6\",\"status\":\"2\",\"payment_status\":\"1\",\"_token\":\"5JoaudKHsoH0URhVbJtZFjTPP3keS0IEbaZXntbU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-19 10:21:55', '2021-06-19 10:21:55'),
(450, 1, 'admin/orders', 'GET', '106.212.184.248', '[]', '2021-06-19 10:21:56', '2021-06-19 10:21:56'),
(451, 1, 'admin/orders/28/edit', 'GET', '106.212.184.248', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 10:23:15', '2021-06-19 10:23:15'),
(452, 1, 'admin/orders', 'GET', '47.31.248.201', '[]', '2021-06-19 10:23:16', '2021-06-19 10:23:16'),
(453, 1, 'admin/orders/28', 'PUT', '106.212.184.248', '{\"order_id\":\"ORD49942765\",\"delivered_by\":\"4\",\"status\":\"2\",\"payment_status\":\"1\",\"_token\":\"5JoaudKHsoH0URhVbJtZFjTPP3keS0IEbaZXntbU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-19 10:23:24', '2021-06-19 10:23:24'),
(454, 1, 'admin/orders', 'GET', '106.212.184.248', '[]', '2021-06-19 10:23:25', '2021-06-19 10:23:25'),
(455, 1, 'admin/orders/29/edit', 'GET', '106.212.184.248', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 10:25:54', '2021-06-19 10:25:54'),
(456, 1, 'admin/orders/29', 'PUT', '106.212.184.248', '{\"order_id\":\"ORD41474742\",\"delivered_by\":\"4\",\"status\":\"2\",\"payment_status\":\"1\",\"_token\":\"5JoaudKHsoH0URhVbJtZFjTPP3keS0IEbaZXntbU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-19 10:26:04', '2021-06-19 10:26:04'),
(457, 1, 'admin/orders', 'GET', '106.212.184.248', '[]', '2021-06-19 10:26:05', '2021-06-19 10:26:05'),
(458, 1, 'admin/orders', 'GET', '47.31.248.201', '[]', '2021-06-19 10:26:32', '2021-06-19 10:26:32'),
(459, 1, 'admin/orders', 'GET', '47.31.248.201', '[]', '2021-06-19 10:26:57', '2021-06-19 10:26:57'),
(460, 1, 'admin/orders/26/edit', 'GET', '106.212.184.248', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 10:28:50', '2021-06-19 10:28:50'),
(461, 1, 'admin/orders/26', 'PUT', '106.212.184.248', '{\"order_id\":\"ORD78420504\",\"delivered_by\":\"6\",\"status\":\"5\",\"payment_status\":\"1\",\"_token\":\"5JoaudKHsoH0URhVbJtZFjTPP3keS0IEbaZXntbU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-19 10:28:57', '2021-06-19 10:28:57'),
(462, 1, 'admin/orders', 'GET', '106.212.184.248', '[]', '2021-06-19 10:28:58', '2021-06-19 10:28:58'),
(463, 1, 'admin/orders', 'GET', '47.31.248.201', '[]', '2021-06-19 10:29:36', '2021-06-19 10:29:36'),
(464, 1, 'admin/orders', 'GET', '106.212.184.248', '{\"per_page\":\"30\",\"_pjax\":\"#pjax-container\"}', '2021-06-19 10:31:09', '2021-06-19 10:31:09'),
(465, 1, 'admin/orders', 'GET', '47.31.248.201', '[]', '2021-06-19 10:31:11', '2021-06-19 10:31:11'),
(466, 1, 'admin/orders', 'GET', '47.31.248.201', '[]', '2021-06-19 10:31:15', '2021-06-19 10:31:15'),
(467, 1, 'admin/orders/29/edit', 'GET', '106.212.184.248', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 10:31:19', '2021-06-19 10:31:19'),
(468, 1, 'admin/orders/29', 'PUT', '106.212.184.248', '{\"order_id\":\"ORD41474742\",\"delivered_by\":\"4\",\"status\":\"5\",\"payment_status\":\"1\",\"_token\":\"5JoaudKHsoH0URhVbJtZFjTPP3keS0IEbaZXntbU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?per_page=30\"}', '2021-06-19 10:31:26', '2021-06-19 10:31:26'),
(469, 1, 'admin/orders', 'GET', '106.212.184.248', '{\"per_page\":\"30\"}', '2021-06-19 10:31:27', '2021-06-19 10:31:27'),
(470, 1, 'admin/orders', 'GET', '47.31.248.201', '[]', '2021-06-19 10:31:38', '2021-06-19 10:31:38'),
(471, 1, 'admin/orders/29/edit', 'GET', '106.212.184.248', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 10:32:05', '2021-06-19 10:32:05'),
(472, 1, 'admin/orders', 'GET', '106.212.184.248', '{\"per_page\":\"30\",\"_pjax\":\"#pjax-container\"}', '2021-06-19 10:32:42', '2021-06-19 10:32:42'),
(473, 1, 'admin/orders/28/edit', 'GET', '106.212.184.248', '{\"_pjax\":\"#pjax-container\"}', '2021-06-19 10:32:55', '2021-06-19 10:32:55'),
(474, 1, 'admin/orders/28', 'PUT', '106.212.184.248', '{\"order_id\":\"ORD49942765\",\"delivered_by\":\"4\",\"status\":\"5\",\"payment_status\":\"1\",\"_token\":\"5JoaudKHsoH0URhVbJtZFjTPP3keS0IEbaZXntbU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?per_page=30\"}', '2021-06-19 10:33:04', '2021-06-19 10:33:04'),
(475, 1, 'admin/orders', 'GET', '106.212.184.248', '{\"per_page\":\"30\"}', '2021-06-19 10:33:05', '2021-06-19 10:33:05'),
(476, 1, 'admin/orders', 'GET', '47.31.248.201', '[]', '2021-06-19 10:48:07', '2021-06-19 10:48:07'),
(477, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-21 04:03:06', '2021-06-21 04:03:06'),
(478, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 05:48:36', '2021-06-21 05:48:36'),
(479, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-21 05:48:54', '2021-06-21 05:48:54'),
(480, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-21 05:55:40', '2021-06-21 05:55:40'),
(481, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-21 05:55:59', '2021-06-21 05:55:59'),
(482, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-21 05:58:00', '2021-06-21 05:58:00'),
(483, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-21 06:00:31', '2021-06-21 06:00:31'),
(484, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 06:01:47', '2021-06-21 06:01:47'),
(485, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-21 06:03:42', '2021-06-21 06:03:42'),
(486, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-21 06:03:48', '2021-06-21 06:03:48'),
(487, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 06:03:55', '2021-06-21 06:03:55'),
(488, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-21 06:04:19', '2021-06-21 06:04:19'),
(489, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 06:04:26', '2021-06-21 06:04:26'),
(490, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-21 06:04:30', '2021-06-21 06:04:30'),
(491, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 06:04:35', '2021-06-21 06:04:35'),
(492, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-21 06:04:38', '2021-06-21 06:04:38'),
(493, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-21 06:06:05', '2021-06-21 06:06:05'),
(494, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-21 06:06:09', '2021-06-21 06:06:09'),
(495, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-21 06:07:37', '2021-06-21 06:07:37'),
(496, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-21 06:07:50', '2021-06-21 06:07:50'),
(497, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 06:07:57', '2021-06-21 06:07:57'),
(498, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-21 06:08:03', '2021-06-21 06:08:03'),
(499, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 06:08:09', '2021-06-21 06:08:09'),
(500, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-21 06:08:17', '2021-06-21 06:08:17'),
(501, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-21 06:13:58', '2021-06-21 06:13:58'),
(502, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-21 06:14:05', '2021-06-21 06:14:05'),
(503, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-21 06:18:30', '2021-06-21 06:18:30'),
(504, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-21 06:18:52', '2021-06-21 06:18:52'),
(505, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-21 06:19:08', '2021-06-21 06:19:08'),
(506, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-21 06:20:21', '2021-06-21 06:20:21'),
(507, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-21 06:31:43', '2021-06-21 06:31:43'),
(508, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-21 06:32:29', '2021-06-21 06:32:29'),
(509, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-21 06:55:36', '2021-06-21 06:55:36'),
(510, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-21 06:55:46', '2021-06-21 06:55:46'),
(511, 1, 'admin/auth/logout', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 06:55:51', '2021-06-21 06:55:51'),
(512, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-21 06:56:12', '2021-06-21 06:56:12'),
(513, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-21 06:58:25', '2021-06-21 06:58:25'),
(514, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-21 06:58:41', '2021-06-21 06:58:41'),
(515, 1, 'admin/auth/setting', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 06:58:54', '2021-06-21 06:58:54'),
(516, 1, 'admin/auth/setting', 'PUT', '157.37.186.164', '{\"name\":\"Administrator\",\"password\":\"$2y$10$M.hVzY4gb8mOLb9h1pn6nehmpXt6079X8yeSQ3zQec1JqDxci0.Li\",\"password_confirmation\":\"$2y$10$M.hVzY4gb8mOLb9h1pn6nehmpXt6079X8yeSQ3zQec1JqDxci0.Li\",\"_token\":\"NY0nzdiw4AD7itNQltQrkwyckuZQfqRQVfmVqkSs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\"}', '2021-06-21 06:59:05', '2021-06-21 06:59:05'),
(517, 1, 'admin/auth/setting', 'GET', '157.37.186.164', '[]', '2021-06-21 06:59:08', '2021-06-21 06:59:08'),
(518, 1, 'admin/auth/setting', 'GET', '157.37.186.164', '[]', '2021-06-21 07:00:27', '2021-06-21 07:00:27'),
(519, 1, 'admin/auth/setting', 'GET', '157.37.186.164', '[]', '2021-06-21 07:00:31', '2021-06-21 07:00:31'),
(520, 1, 'admin/auth/setting', 'GET', '157.37.186.164', '[]', '2021-06-21 07:01:17', '2021-06-21 07:01:17'),
(521, 1, 'admin/auth/setting', 'GET', '157.37.186.164', '[]', '2021-06-21 07:01:51', '2021-06-21 07:01:51'),
(522, 1, 'admin/auth/setting', 'GET', '157.37.186.164', '[]', '2021-06-21 07:02:39', '2021-06-21 07:02:39'),
(523, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 07:02:58', '2021-06-21 07:02:58'),
(524, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-21 07:12:04', '2021-06-21 07:12:04'),
(525, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-21 07:12:31', '2021-06-21 07:12:31'),
(526, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-21 07:25:58', '2021-06-21 07:25:58'),
(527, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 07:28:57', '2021-06-21 07:28:57'),
(528, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-21 07:48:49', '2021-06-21 07:48:49'),
(529, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-21 08:03:24', '2021-06-21 08:03:24'),
(530, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-21 08:07:43', '2021-06-21 08:07:43'),
(531, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 08:07:50', '2021-06-21 08:07:50'),
(532, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 09:46:57', '2021-06-21 09:46:57'),
(533, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-21 09:54:43', '2021-06-21 09:54:43'),
(534, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-21 09:54:46', '2021-06-21 09:54:46'),
(535, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-21 09:54:49', '2021-06-21 09:54:49'),
(536, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-21 09:54:52', '2021-06-21 09:54:52'),
(537, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-21 09:55:26', '2021-06-21 09:55:26'),
(538, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-21 09:56:32', '2021-06-21 09:56:32'),
(539, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_pickup_date\":null,\"expected_delivery_date\":null,\"created_at\":{\"start\":\"2021-06-19 00:00:00\",\"end\":null},\"_pjax\":\"#pjax-container\"}', '2021-06-21 09:56:42', '2021-06-21 09:56:42'),
(540, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\",\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_pickup_date\":null,\"expected_delivery_date\":null,\"created_at\":{\"start\":\"2021-06-20 00:00:00\",\"end\":null}}', '2021-06-21 09:56:51', '2021-06-21 09:56:51'),
(541, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\",\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_pickup_date\":null,\"expected_delivery_date\":null,\"created_at\":{\"start\":\"2021-06-17 00:00:00\",\"end\":null}}', '2021-06-21 09:57:00', '2021-06-21 09:57:00'),
(542, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\",\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_pickup_date\":null,\"expected_delivery_date\":null,\"created_at\":{\"start\":\"2021-06-18 00:00:00\",\"end\":null}}', '2021-06-21 09:57:08', '2021-06-21 09:57:08'),
(543, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_pickup_date\":null,\"expected_delivery_date\":null,\"created_at\":{\"start\":\"2021-06-18 00:00:00\",\"end\":null}}', '2021-06-21 09:57:20', '2021-06-21 09:57:20'),
(544, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_pickup_date\":null,\"expected_delivery_date\":null,\"created_at\":{\"start\":\"2021-06-18 00:00:00\",\"end\":null},\"_pjax\":\"#pjax-container\"}', '2021-06-21 09:57:30', '2021-06-21 09:57:30'),
(545, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_pickup_date\":null,\"expected_delivery_date\":null,\"created_at\":{\"start\":\"2021-06-18 00:00:00\",\"end\":null}}', '2021-06-21 09:57:54', '2021-06-21 09:57:54'),
(546, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_pickup_date\":null,\"expected_delivery_date\":null,\"created_at\":{\"start\":\"2021-06-18 00:00:00\",\"end\":\"2021-06-19 00:00:00\"},\"_pjax\":\"#pjax-container\"}', '2021-06-21 09:58:01', '2021-06-21 09:58:01'),
(547, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_pickup_date\":null,\"expected_delivery_date\":null,\"created_at\":{\"start\":\"2021-06-18 00:00:00\",\"end\":\"2021-06-19 00:00:00\"}}', '2021-06-21 10:00:55', '2021-06-21 10:00:55'),
(548, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_pickup_date\":null,\"expected_delivery_date\":null,\"created_at\":{\"start\":\"2021-06-18 00:00:00\",\"end\":\"2021-06-19 00:00:00\"}}', '2021-06-21 10:00:59', '2021-06-21 10:00:59'),
(549, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"created_at\":{\"start\":\"2021-06-18 00:00:00\",\"end\":\"2021-06-19 00:00:00\"},\"_pjax\":\"#pjax-container\"}', '2021-06-21 10:01:06', '2021-06-21 10:01:06'),
(550, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"created_at\":{\"start\":\"2021-06-18 00:00:00\",\"end\":\"2021-06-19 00:00:00\"}}', '2021-06-21 10:01:09', '2021-06-21 10:01:09'),
(551, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"created_at\":{\"start\":\"2021-06-18 00:00:00\",\"end\":\"2021-06-19 00:00:00\"}}', '2021-06-21 10:01:11', '2021-06-21 10:01:11'),
(552, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"created_at\":{\"start\":\"2021-06-18 00:00:00\",\"end\":\"2021-06-19 00:00:00\"},\"_pjax\":\"#pjax-container\"}', '2021-06-21 10:01:13', '2021-06-21 10:01:13'),
(553, 1, 'admin/auth/logout', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 10:01:22', '2021-06-21 10:01:22'),
(554, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-21 10:01:30', '2021-06-21 10:01:30'),
(555, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 10:01:38', '2021-06-21 10:01:38'),
(556, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-21 10:01:49', '2021-06-21 10:01:49'),
(557, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-21 10:01:55', '2021-06-21 10:01:55'),
(558, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-21 10:01:58', '2021-06-21 10:01:58'),
(559, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-21 10:12:16', '2021-06-21 10:12:16'),
(560, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-21 10:12:36', '2021-06-21 10:12:36'),
(561, 1, 'admin/view_orders/35', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 10:12:41', '2021-06-21 10:12:41'),
(562, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 10:12:43', '2021-06-21 10:12:43'),
(563, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-21 10:12:48', '2021-06-21 10:12:48'),
(564, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-21 10:12:50', '2021-06-21 10:12:50'),
(565, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-21 10:19:30', '2021-06-21 10:19:30'),
(566, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-21 10:31:04', '2021-06-21 10:31:04'),
(567, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-21 10:31:13', '2021-06-21 10:31:13'),
(568, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-21 10:31:24', '2021-06-21 10:31:24'),
(569, 1, 'admin/orders/36/edit', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 10:31:39', '2021-06-21 10:31:39'),
(570, 1, 'admin/orders/36', 'PUT', '157.37.186.164', '{\"order_id\":\"ORD36168909\",\"delivered_by\":\"2\",\"status\":\"2\",\"payment_status\":\"1\",\"_token\":\"2aV7RwTqM6kq7oa46mlUbHBQ4sLN4SfovAny8ron\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?&_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-06-21 10:31:48', '2021-06-21 10:31:48'),
(571, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-21 10:31:49', '2021-06-21 10:31:49'),
(572, 1, 'admin/orders/36/edit', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 10:32:39', '2021-06-21 10:32:39'),
(573, 1, 'admin/orders/36', 'PUT', '157.37.186.164', '{\"order_id\":\"ORD36168909\",\"delivered_by\":\"2\",\"status\":\"3\",\"payment_status\":\"1\",\"_token\":\"2aV7RwTqM6kq7oa46mlUbHBQ4sLN4SfovAny8ron\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?&_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-06-21 10:32:43', '2021-06-21 10:32:43'),
(574, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-21 10:32:44', '2021-06-21 10:32:44'),
(575, 1, 'admin/orders/36/edit', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 10:36:24', '2021-06-21 10:36:24'),
(576, 1, 'admin/orders/36', 'PUT', '157.37.186.164', '{\"order_id\":\"ORD36168909\",\"delivered_by\":\"2\",\"status\":\"4\",\"payment_status\":\"1\",\"_token\":\"2aV7RwTqM6kq7oa46mlUbHBQ4sLN4SfovAny8ron\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?&_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-06-21 10:36:30', '2021-06-21 10:36:30'),
(577, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-21 10:36:30', '2021-06-21 10:36:30'),
(578, 1, 'admin/feedback', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 10:41:13', '2021-06-21 10:41:13'),
(579, 1, 'admin/feedback', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 10:41:15', '2021-06-21 10:41:15'),
(580, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 10:45:27', '2021-06-21 10:45:27'),
(581, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-21 10:45:33', '2021-06-21 10:45:33'),
(582, 1, 'admin/faqs', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 10:45:37', '2021-06-21 10:45:37'),
(583, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 10:45:41', '2021-06-21 10:45:41'),
(584, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-21 10:45:44', '2021-06-21 10:45:44'),
(585, 1, 'admin/orders/36/edit', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 10:45:46', '2021-06-21 10:45:46'),
(586, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-21 10:45:52', '2021-06-21 10:45:52'),
(587, 1, 'admin/orders/36/edit', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 10:45:54', '2021-06-21 10:45:54'),
(588, 1, 'admin/orders/36', 'PUT', '157.37.186.164', '{\"order_id\":\"ORD36168909\",\"delivered_by\":\"2\",\"status\":\"2\",\"payment_status\":\"1\",\"_token\":\"2aV7RwTqM6kq7oa46mlUbHBQ4sLN4SfovAny8ron\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?&_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-06-21 10:45:57', '2021-06-21 10:45:57'),
(589, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-21 10:45:58', '2021-06-21 10:45:58'),
(590, 1, 'admin/orders/36/edit', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 10:46:14', '2021-06-21 10:46:14'),
(591, 1, 'admin/orders/36', 'PUT', '157.37.186.164', '{\"order_id\":\"ORD36168909\",\"delivered_by\":\"2\",\"status\":\"2\",\"payment_status\":\"1\",\"_token\":\"2aV7RwTqM6kq7oa46mlUbHBQ4sLN4SfovAny8ron\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?&_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-06-21 10:46:21', '2021-06-21 10:46:21'),
(592, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-21 10:46:23', '2021-06-21 10:46:23'),
(593, 1, 'admin/orders/36/edit', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 10:53:31', '2021-06-21 10:53:31'),
(594, 1, 'admin/orders/36', 'PUT', '157.37.186.164', '{\"order_id\":\"ORD36168909\",\"delivered_by\":\"2\",\"status\":\"2\",\"payment_status\":\"1\",\"_token\":\"2aV7RwTqM6kq7oa46mlUbHBQ4sLN4SfovAny8ron\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?&_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-06-21 10:53:33', '2021-06-21 10:53:33'),
(595, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-21 10:53:34', '2021-06-21 10:53:34'),
(596, 1, 'admin/orders/36/edit', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 10:53:52', '2021-06-21 10:53:52'),
(597, 1, 'admin/orders/36', 'PUT', '157.37.186.164', '{\"order_id\":\"ORD36168909\",\"delivered_by\":\"2\",\"status\":\"2\",\"payment_status\":\"1\",\"_token\":\"2aV7RwTqM6kq7oa46mlUbHBQ4sLN4SfovAny8ron\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?&_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-06-21 10:53:53', '2021-06-21 10:53:53'),
(598, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-21 10:53:54', '2021-06-21 10:53:54'),
(599, 1, 'admin/auth/setting', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 12:11:22', '2021-06-21 12:11:22'),
(600, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 12:11:34', '2021-06-21 12:11:34'),
(601, 1, 'admin/memberships', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 12:11:54', '2021-06-21 12:11:54'),
(602, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 12:12:24', '2021-06-21 12:12:24'),
(603, 1, 'admin/customers', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 12:12:31', '2021-06-21 12:12:31'),
(604, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 12:35:09', '2021-06-21 12:35:09');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(605, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":\"ORD31040688\",\"status\":null,\"expected_pickup_date\":null,\"expected_delivery_date\":null}', '2021-06-21 12:36:09', '2021-06-21 12:36:09'),
(606, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 12:36:14', '2021-06-21 12:36:14'),
(607, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-21 12:37:24', '2021-06-21 12:37:24'),
(608, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"__search__\":\"deepak\",\"_pjax\":\"#pjax-container\"}', '2021-06-21 12:37:33', '2021-06-21 12:37:33'),
(609, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"deepak\"}', '2021-06-21 12:37:38', '2021-06-21 12:37:38'),
(610, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"__search__\":\"deepak\"}', '2021-06-21 12:40:19', '2021-06-21 12:40:19'),
(611, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"__search__\":\"ORD\",\"_pjax\":\"#pjax-container\"}', '2021-06-21 12:40:25', '2021-06-21 12:40:25'),
(612, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"ORD28\"}', '2021-06-21 12:40:41', '2021-06-21 12:40:41'),
(613, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"__search__\":\"ORD28\"}', '2021-06-21 12:41:26', '2021-06-21 12:41:26'),
(614, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"__search__\":\"ORD28\"}', '2021-06-21 12:41:50', '2021-06-21 12:41:50'),
(615, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"__search__\":\"ORD28\"}', '2021-06-21 12:42:56', '2021-06-21 12:42:56'),
(616, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"__search__\":null,\"_pjax\":\"#pjax-container\"}', '2021-06-21 12:43:00', '2021-06-21 12:43:00'),
(617, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_pickup_date\":\"2021-06-21\",\"expected_delivery_date\":null}', '2021-06-21 12:43:30', '2021-06-21 12:43:30'),
(618, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_pickup_date\":null,\"expected_delivery_date\":null}', '2021-06-21 12:43:41', '2021-06-21 12:43:41'),
(619, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_pickup_date\":null,\"expected_delivery_date\":null}', '2021-06-21 12:43:57', '2021-06-21 12:43:57'),
(620, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":\"ORD31040688\",\"status\":null,\"expected_pickup_date\":null,\"expected_delivery_date\":null,\"_pjax\":\"#pjax-container\"}', '2021-06-21 12:44:29', '2021-06-21 12:44:29'),
(621, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":\"ORD3\",\"status\":null,\"expected_pickup_date\":null,\"expected_delivery_date\":null}', '2021-06-21 12:44:38', '2021-06-21 12:44:38'),
(622, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":\"ORD\",\"status\":null,\"expected_pickup_date\":null,\"expected_delivery_date\":null}', '2021-06-21 12:44:43', '2021-06-21 12:44:43'),
(623, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 12:44:51', '2021-06-21 12:44:51'),
(624, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":\"ORD68475880\",\"status\":null,\"expected_pickup_date\":null,\"expected_delivery_date\":null}', '2021-06-21 12:45:01', '2021-06-21 12:45:01'),
(625, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":null,\"expected_pickup_date\":null,\"expected_delivery_date\":null}', '2021-06-21 12:45:14', '2021-06-21 12:45:14'),
(626, 1, 'admin/feedback', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 13:55:23', '2021-06-21 13:55:23'),
(627, 1, 'admin/feedback', 'GET', '157.37.186.164', '[]', '2021-06-21 13:58:22', '2021-06-21 13:58:22'),
(628, 1, 'admin/app_settings', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 13:58:36', '2021-06-21 13:58:36'),
(629, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 13:58:44', '2021-06-21 13:58:44'),
(630, 1, 'admin/app_settings', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 13:59:20', '2021-06-21 13:59:20'),
(631, 1, 'admin/app_settings/1/edit', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 13:59:23', '2021-06-21 13:59:23'),
(632, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-21 13:59:54', '2021-06-21 13:59:54'),
(633, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 04:03:50', '2021-06-22 04:03:50'),
(634, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 04:04:21', '2021-06-22 04:04:21'),
(635, 1, 'admin/auth/menu/28/edit', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 04:04:31', '2021-06-22 04:04:31'),
(636, 1, 'admin/auth/menu/28', 'PUT', '157.37.186.164', '{\"parent_id\":\"25\",\"title\":\"Service areas\",\"icon\":\"fa-location-arrow\",\"uri\":\"service-areas\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"Xlu6JSaKczh2ZO7nLhMHOZrFmFNRK42o12IL4zmP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/auth\\/menu\"}', '2021-06-22 04:04:39', '2021-06-22 04:04:39'),
(637, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '[]', '2021-06-22 04:04:40', '2021-06-22 04:04:40'),
(638, 1, 'admin/auth/menu', 'POST', '157.37.186.164', '{\"parent_id\":\"0\",\"title\":\"Banners\",\"icon\":\"fa-image\",\"uri\":\"#\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"Xlu6JSaKczh2ZO7nLhMHOZrFmFNRK42o12IL4zmP\"}', '2021-06-22 04:05:20', '2021-06-22 04:05:20'),
(639, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '[]', '2021-06-22 04:05:20', '2021-06-22 04:05:20'),
(640, 1, 'admin/auth/menu', 'POST', '157.37.186.164', '{\"_token\":\"Xlu6JSaKczh2ZO7nLhMHOZrFmFNRK42o12IL4zmP\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":25,\\\"children\\\":[{\\\"id\\\":28},{\\\"id\\\":10},{\\\"id\\\":13},{\\\"id\\\":17},{\\\"id\\\":36}]},{\\\"id\\\":19},{\\\"id\\\":39,\\\"children\\\":[{\\\"id\\\":12},{\\\"id\\\":27},{\\\"id\\\":23}]},{\\\"id\\\":24},{\\\"id\\\":32,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":33},{\\\"id\\\":35}]},{\\\"id\\\":14},{\\\"id\\\":15},{\\\"id\\\":29,\\\"children\\\":[{\\\"id\\\":8},{\\\"id\\\":22},{\\\"id\\\":37},{\\\"id\\\":38},{\\\"id\\\":11},{\\\"id\\\":21},{\\\"id\\\":16}]}]\"}', '2021-06-22 04:06:32', '2021-06-22 04:06:32'),
(641, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 04:06:33', '2021-06-22 04:06:33'),
(642, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '[]', '2021-06-22 04:06:35', '2021-06-22 04:06:35'),
(643, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 04:07:10', '2021-06-22 04:07:10'),
(644, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 04:07:41', '2021-06-22 04:07:41'),
(645, 1, 'admin/auth/menu', 'POST', '157.37.186.164', '{\"parent_id\":\"0\",\"title\":\"Peoples\",\"icon\":\"fa-users\",\"uri\":\"#\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"Xlu6JSaKczh2ZO7nLhMHOZrFmFNRK42o12IL4zmP\"}', '2021-06-22 04:08:07', '2021-06-22 04:08:07'),
(646, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '[]', '2021-06-22 04:08:08', '2021-06-22 04:08:08'),
(647, 1, 'admin/auth/menu', 'POST', '157.37.186.164', '{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"Xlu6JSaKczh2ZO7nLhMHOZrFmFNRK42o12IL4zmP\"}', '2021-06-22 04:08:43', '2021-06-22 04:08:43'),
(648, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '[]', '2021-06-22 04:08:44', '2021-06-22 04:08:44'),
(649, 1, 'admin/auth/menu', 'POST', '157.37.186.164', '{\"_token\":\"Xlu6JSaKczh2ZO7nLhMHOZrFmFNRK42o12IL4zmP\",\"_order\":\"[{\\\"id\\\":40},{\\\"id\\\":1},{\\\"id\\\":25,\\\"children\\\":[{\\\"id\\\":28},{\\\"id\\\":10},{\\\"id\\\":13},{\\\"id\\\":17},{\\\"id\\\":36}]},{\\\"id\\\":19},{\\\"id\\\":39,\\\"children\\\":[{\\\"id\\\":12},{\\\"id\\\":27},{\\\"id\\\":23}]},{\\\"id\\\":24},{\\\"id\\\":32,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":33},{\\\"id\\\":35}]},{\\\"id\\\":14},{\\\"id\\\":15},{\\\"id\\\":29,\\\"children\\\":[{\\\"id\\\":8},{\\\"id\\\":22},{\\\"id\\\":37},{\\\"id\\\":38},{\\\"id\\\":11},{\\\"id\\\":21},{\\\"id\\\":16}]}]\"}', '2021-06-22 04:08:47', '2021-06-22 04:08:47'),
(650, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 04:08:48', '2021-06-22 04:08:48'),
(651, 1, 'admin/auth/menu', 'POST', '157.37.186.164', '{\"_token\":\"Xlu6JSaKczh2ZO7nLhMHOZrFmFNRK42o12IL4zmP\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":25,\\\"children\\\":[{\\\"id\\\":28},{\\\"id\\\":10},{\\\"id\\\":13},{\\\"id\\\":17},{\\\"id\\\":36}]},{\\\"id\\\":19},{\\\"id\\\":39,\\\"children\\\":[{\\\"id\\\":12},{\\\"id\\\":27},{\\\"id\\\":23}]},{\\\"id\\\":40,\\\"children\\\":[{\\\"id\\\":14},{\\\"id\\\":15}]},{\\\"id\\\":24},{\\\"id\\\":29,\\\"children\\\":[{\\\"id\\\":8},{\\\"id\\\":22},{\\\"id\\\":37},{\\\"id\\\":38},{\\\"id\\\":11},{\\\"id\\\":21},{\\\"id\\\":16}]},{\\\"id\\\":32,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":33},{\\\"id\\\":35}]}]\"}', '2021-06-22 04:09:34', '2021-06-22 04:09:34'),
(652, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 04:09:35', '2021-06-22 04:09:35'),
(653, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '[]', '2021-06-22 04:09:36', '2021-06-22 04:09:36'),
(654, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 04:10:18', '2021-06-22 04:10:18'),
(655, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 04:10:41', '2021-06-22 04:10:41'),
(656, 1, 'admin/view_orders/23', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 04:11:47', '2021-06-22 04:11:47'),
(657, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 04:12:46', '2021-06-22 04:12:46'),
(658, 1, 'admin/view_orders/23', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 04:13:06', '2021-06-22 04:13:06'),
(659, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 04:19:52', '2021-06-22 04:19:52'),
(660, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-22 04:20:39', '2021-06-22 04:20:39'),
(661, 1, 'admin/view_orders/23', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 04:20:42', '2021-06-22 04:20:42'),
(662, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 04:20:45', '2021-06-22 04:20:45'),
(663, 1, 'admin/view_orders/23', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 04:20:50', '2021-06-22 04:20:50'),
(664, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 04:20:52', '2021-06-22 04:20:52'),
(665, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-22 04:22:01', '2021-06-22 04:22:01'),
(666, 1, 'admin/get_leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:22:10', '2021-06-22 04:22:10'),
(667, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-22 04:22:55', '2021-06-22 04:22:55'),
(668, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:23:06', '2021-06-22 04:23:06'),
(669, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:23:39', '2021-06-22 04:23:39'),
(670, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:24:22', '2021-06-22 04:24:22'),
(671, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:25:23', '2021-06-22 04:25:23'),
(672, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:26:05', '2021-06-22 04:26:05'),
(673, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:26:33', '2021-06-22 04:26:33'),
(674, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:26:48', '2021-06-22 04:26:48'),
(675, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:29:29', '2021-06-22 04:29:29'),
(676, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:29:47', '2021-06-22 04:29:47'),
(677, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:30:46', '2021-06-22 04:30:46'),
(678, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:31:10', '2021-06-22 04:31:10'),
(679, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 04:31:13', '2021-06-22 04:31:13'),
(680, 1, 'admin/leads', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 04:31:18', '2021-06-22 04:31:18'),
(681, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:32:07', '2021-06-22 04:32:07'),
(682, 1, 'admin/customers', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 04:32:23', '2021-06-22 04:32:23'),
(683, 1, 'admin/customers/13/edit', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 04:32:27', '2021-06-22 04:32:27'),
(684, 1, 'admin/customers', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 04:32:42', '2021-06-22 04:32:42'),
(685, 1, 'admin/customers', 'GET', '157.37.186.164', '[]', '2021-06-22 04:35:25', '2021-06-22 04:35:25'),
(686, 1, 'admin/customers', 'GET', '157.37.186.164', '[]', '2021-06-22 04:35:53', '2021-06-22 04:35:53'),
(687, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:35:57', '2021-06-22 04:35:57'),
(688, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:37:21', '2021-06-22 04:37:21'),
(689, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:38:12', '2021-06-22 04:38:12'),
(690, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:42:01', '2021-06-22 04:42:01'),
(691, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:42:23', '2021-06-22 04:42:23'),
(692, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:43:42', '2021-06-22 04:43:42'),
(693, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:44:12', '2021-06-22 04:44:12'),
(694, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:44:20', '2021-06-22 04:44:20'),
(695, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:45:27', '2021-06-22 04:45:27'),
(696, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:45:42', '2021-06-22 04:45:42'),
(697, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:45:52', '2021-06-22 04:45:52'),
(698, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:47:01', '2021-06-22 04:47:01'),
(699, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:47:22', '2021-06-22 04:47:22'),
(700, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:47:44', '2021-06-22 04:47:44'),
(701, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:49:56', '2021-06-22 04:49:56'),
(702, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:50:13', '2021-06-22 04:50:13'),
(703, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:51:19', '2021-06-22 04:51:19'),
(704, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:51:31', '2021-06-22 04:51:31'),
(705, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:57:16', '2021-06-22 04:57:16'),
(706, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 04:58:11', '2021-06-22 04:58:11'),
(707, 1, 'admin/service-areas', 'GET', '157.37.186.164', '[]', '2021-06-22 04:58:25', '2021-06-22 04:58:25'),
(708, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 05:00:03', '2021-06-22 05:00:03'),
(709, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 05:00:37', '2021-06-22 05:00:37'),
(710, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 05:42:21', '2021-06-22 05:42:21'),
(711, 1, 'admin/auth/menu', 'POST', '157.37.186.164', '{\"parent_id\":\"40\",\"title\":null,\"icon\":\"fa-user-plus\",\"uri\":\"leads\",\"roles\":[\"1\",\"2\",null],\"permission\":\"*\",\"_token\":\"Xlu6JSaKczh2ZO7nLhMHOZrFmFNRK42o12IL4zmP\"}', '2021-06-22 05:43:05', '2021-06-22 05:43:05'),
(712, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '[]', '2021-06-22 05:43:05', '2021-06-22 05:43:05'),
(713, 1, 'admin/auth/menu', 'POST', '157.37.186.164', '{\"parent_id\":\"40\",\"title\":\"Leads\",\"icon\":\"fa-user-plus\",\"uri\":\"leads\",\"roles\":[\"1\",\"2\",null],\"permission\":\"*\",\"_token\":\"Xlu6JSaKczh2ZO7nLhMHOZrFmFNRK42o12IL4zmP\"}', '2021-06-22 05:43:13', '2021-06-22 05:43:13'),
(714, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '[]', '2021-06-22 05:43:13', '2021-06-22 05:43:13'),
(715, 1, 'admin/auth/menu', 'POST', '157.37.186.164', '{\"_token\":\"Xlu6JSaKczh2ZO7nLhMHOZrFmFNRK42o12IL4zmP\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":25,\\\"children\\\":[{\\\"id\\\":28},{\\\"id\\\":10},{\\\"id\\\":13},{\\\"id\\\":17},{\\\"id\\\":36}]},{\\\"id\\\":19},{\\\"id\\\":39,\\\"children\\\":[{\\\"id\\\":12},{\\\"id\\\":27},{\\\"id\\\":23}]},{\\\"id\\\":40,\\\"children\\\":[{\\\"id\\\":14},{\\\"id\\\":15},{\\\"id\\\":41}]},{\\\"id\\\":24},{\\\"id\\\":29,\\\"children\\\":[{\\\"id\\\":8},{\\\"id\\\":22},{\\\"id\\\":37},{\\\"id\\\":38},{\\\"id\\\":11},{\\\"id\\\":21},{\\\"id\\\":16}]},{\\\"id\\\":32,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":33},{\\\"id\\\":35}]}]\"}', '2021-06-22 05:43:21', '2021-06-22 05:43:21'),
(716, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 05:43:23', '2021-06-22 05:43:23'),
(717, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 05:43:26', '2021-06-22 05:43:26'),
(718, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '[]', '2021-06-22 05:43:31', '2021-06-22 05:43:31'),
(719, 1, 'admin/leads', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 05:43:35', '2021-06-22 05:43:35'),
(720, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 05:44:03', '2021-06-22 05:44:03'),
(721, 1, 'admin/bar-codes', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 05:44:25', '2021-06-22 05:44:25'),
(722, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 05:44:29', '2021-06-22 05:44:29'),
(723, 1, 'admin/payment-methods', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 05:45:03', '2021-06-22 05:45:03'),
(724, 1, 'admin/leads', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 05:59:21', '2021-06-22 05:59:21'),
(725, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 06:00:06', '2021-06-22 06:00:06'),
(726, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 06:00:10', '2021-06-22 06:00:10'),
(727, 1, 'admin/leads', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 06:00:13', '2021-06-22 06:00:13'),
(728, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 06:04:48', '2021-06-22 06:04:48'),
(729, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '[]', '2021-06-22 06:31:04', '2021-06-22 06:31:04'),
(730, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '[]', '2021-06-22 06:31:56', '2021-06-22 06:31:56'),
(731, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '[]', '2021-06-22 06:32:16', '2021-06-22 06:32:16'),
(732, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '[]', '2021-06-22 06:33:10', '2021-06-22 06:33:10'),
(733, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '[]', '2021-06-22 06:34:02', '2021-06-22 06:34:02'),
(734, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '[]', '2021-06-22 06:36:51', '2021-06-22 06:36:51'),
(735, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '[]', '2021-06-22 06:38:27', '2021-06-22 06:38:27'),
(736, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '[]', '2021-06-22 06:39:15', '2021-06-22 06:39:15'),
(737, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '[]', '2021-06-22 06:40:52', '2021-06-22 06:40:52'),
(738, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 06:40:56', '2021-06-22 06:40:56'),
(739, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-22 06:41:22', '2021-06-22 06:41:22'),
(740, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"amount\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 06:41:25', '2021-06-22 06:41:25'),
(741, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"amount\",\"type\":\"desc\"}}', '2021-06-22 06:41:42', '2021-06-22 06:41:42'),
(742, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"amount\",\"type\":\"desc\"}}', '2021-06-22 06:43:03', '2021-06-22 06:43:03'),
(743, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"amount\",\"type\":\"desc\"}}', '2021-06-22 06:43:35', '2021-06-22 06:43:35'),
(744, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"amount\",\"type\":\"desc\"}}', '2021-06-22 06:43:46', '2021-06-22 06:43:46'),
(745, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"amount\",\"type\":\"desc\"}}', '2021-06-22 06:44:06', '2021-06-22 06:44:06'),
(746, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"amount\",\"type\":\"desc\"}}', '2021-06-22 06:44:21', '2021-06-22 06:44:21'),
(747, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"amount\",\"type\":\"desc\"},\"id\":null,\"created_at\":\"2021-06-22\",\"_pjax\":\"#pjax-container\"}', '2021-06-22 06:44:33', '2021-06-22 06:44:33'),
(748, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"amount\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 06:44:37', '2021-06-22 06:44:37'),
(749, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '[]', '2021-06-22 06:44:49', '2021-06-22 06:44:49'),
(750, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 06:45:03', '2021-06-22 06:45:03'),
(751, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-22 06:45:20', '2021-06-22 06:45:20'),
(752, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 06:45:22', '2021-06-22 06:45:22'),
(753, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 06:45:35', '2021-06-22 06:45:35'),
(754, 1, 'admin/auth/menu/19/edit', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 06:45:42', '2021-06-22 06:45:42'),
(755, 1, 'admin/auth/menu/19', 'PUT', '157.37.186.164', '{\"parent_id\":\"0\",\"title\":\"Orders\",\"icon\":\"fa-th-list\",\"uri\":\"orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"Xlu6JSaKczh2ZO7nLhMHOZrFmFNRK42o12IL4zmP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/auth\\/menu\"}', '2021-06-22 06:45:48', '2021-06-22 06:45:48'),
(756, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '[]', '2021-06-22 06:45:49', '2021-06-22 06:45:49'),
(757, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 06:45:54', '2021-06-22 06:45:54'),
(758, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-22 06:45:56', '2021-06-22 06:45:56'),
(759, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 06:45:58', '2021-06-22 06:45:58'),
(760, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 06:46:07', '2021-06-22 06:46:07'),
(761, 1, 'admin/auth/menu', 'POST', '157.37.186.164', '{\"parent_id\":\"29\",\"title\":\"Payment\",\"icon\":\"fa-money\",\"uri\":\"#\",\"roles\":[\"1\",\"2\",null],\"permission\":\"*\",\"_token\":\"Xlu6JSaKczh2ZO7nLhMHOZrFmFNRK42o12IL4zmP\"}', '2021-06-22 06:47:28', '2021-06-22 06:47:28'),
(762, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '[]', '2021-06-22 06:47:29', '2021-06-22 06:47:29'),
(763, 1, 'admin/auth/menu', 'POST', '157.37.186.164', '{\"_token\":\"Xlu6JSaKczh2ZO7nLhMHOZrFmFNRK42o12IL4zmP\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":25,\\\"children\\\":[{\\\"id\\\":28},{\\\"id\\\":10},{\\\"id\\\":13},{\\\"id\\\":17},{\\\"id\\\":36}]},{\\\"id\\\":19},{\\\"id\\\":39,\\\"children\\\":[{\\\"id\\\":12},{\\\"id\\\":27},{\\\"id\\\":23}]},{\\\"id\\\":40,\\\"children\\\":[{\\\"id\\\":14},{\\\"id\\\":15},{\\\"id\\\":41}]},{\\\"id\\\":24},{\\\"id\\\":29,\\\"children\\\":[{\\\"id\\\":42,\\\"children\\\":[{\\\"id\\\":21}]},{\\\"id\\\":8},{\\\"id\\\":22},{\\\"id\\\":37},{\\\"id\\\":38},{\\\"id\\\":11},{\\\"id\\\":16}]},{\\\"id\\\":32,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":33},{\\\"id\\\":35}]}]\"}', '2021-06-22 06:48:16', '2021-06-22 06:48:16'),
(764, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 06:48:16', '2021-06-22 06:48:16'),
(765, 1, 'admin/auth/menu', 'POST', '157.37.186.164', '{\"parent_id\":\"42\",\"title\":\"Earnings\",\"icon\":\"fa-paper-plane-o\",\"uri\":\"payment-histories?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\",\"roles\":[\"1\",\"2\",null],\"permission\":\"*\",\"_token\":\"Xlu6JSaKczh2ZO7nLhMHOZrFmFNRK42o12IL4zmP\"}', '2021-06-22 06:49:20', '2021-06-22 06:49:20'),
(766, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '[]', '2021-06-22 06:49:20', '2021-06-22 06:49:20'),
(767, 1, 'admin/auth/menu', 'POST', '157.37.186.164', '{\"parent_id\":\"42\",\"title\":\"Earnings\",\"icon\":\"fa-paper-plane-o\",\"uri\":\"payment-histories\",\"roles\":[\"1\",\"2\",null],\"permission\":\"*\",\"_token\":\"Xlu6JSaKczh2ZO7nLhMHOZrFmFNRK42o12IL4zmP\"}', '2021-06-22 06:49:42', '2021-06-22 06:49:42'),
(768, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '[]', '2021-06-22 06:49:42', '2021-06-22 06:49:42'),
(769, 1, 'admin/auth/menu/43/edit', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 06:49:49', '2021-06-22 06:49:49'),
(770, 1, 'admin/auth/menu/43', 'PUT', '157.37.186.164', '{\"parent_id\":\"42\",\"title\":\"Earnings\",\"icon\":\"fa-paper-plane-o\",\"uri\":\"payment-histories?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\",\"roles\":[\"1\",\"2\",null],\"permission\":\"*\",\"_token\":\"Xlu6JSaKczh2ZO7nLhMHOZrFmFNRK42o12IL4zmP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/auth\\/menu\"}', '2021-06-22 06:50:08', '2021-06-22 06:50:08'),
(771, 1, 'admin/auth/menu/43/edit', 'GET', '157.37.186.164', '[]', '2021-06-22 06:50:08', '2021-06-22 06:50:08'),
(772, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\"},\"_sort_type%5\":null}', '2021-06-22 06:50:30', '2021-06-22 06:50:30'),
(773, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\"},\"_sort_type%5\":null}', '2021-06-22 06:50:33', '2021-06-22 06:50:33'),
(774, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":null}}', '2021-06-22 06:50:41', '2021-06-22 06:50:41'),
(775, 1, 'admin/auth/menu/43', 'PUT', '157.37.186.164', '{\"parent_id\":\"42\",\"title\":\"Earnings\",\"icon\":\"fa-paper-plane-o\",\"uri\":\"payment-histories?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\",\"roles\":[\"1\",\"2\",null],\"permission\":\"*\",\"_token\":\"Xlu6JSaKczh2ZO7nLhMHOZrFmFNRK42o12IL4zmP\",\"_method\":\"PUT\"}', '2021-06-22 06:52:30', '2021-06-22 06:52:30'),
(776, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '[]', '2021-06-22 06:52:31', '2021-06-22 06:52:31'),
(777, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":null}}', '2021-06-22 06:52:37', '2021-06-22 06:52:37'),
(778, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-22 06:52:43', '2021-06-22 06:52:43'),
(779, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 06:53:05', '2021-06-22 06:53:05'),
(780, 1, 'admin/auth/menu', 'GET', '157.37.186.164', '[]', '2021-06-22 06:53:07', '2021-06-22 06:53:07'),
(781, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 06:53:29', '2021-06-22 06:53:29'),
(782, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 06:53:43', '2021-06-22 06:53:43'),
(783, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 06:53:46', '2021-06-22 06:53:46'),
(784, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 06:54:08', '2021-06-22 06:54:08'),
(785, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 06:55:07', '2021-06-22 06:55:07'),
(786, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 06:55:29', '2021-06-22 06:55:29'),
(787, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 06:56:35', '2021-06-22 06:56:35'),
(788, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 06:56:49', '2021-06-22 06:56:49'),
(789, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 06:59:54', '2021-06-22 06:59:54'),
(790, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:00:08', '2021-06-22 07:00:08'),
(791, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:00:14', '2021-06-22 07:00:14'),
(792, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:01:28', '2021-06-22 07:01:28'),
(793, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:02:01', '2021-06-22 07:02:01'),
(794, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:02:21', '2021-06-22 07:02:21'),
(795, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:02:25', '2021-06-22 07:02:25'),
(796, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:02:52', '2021-06-22 07:02:52'),
(797, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:03:24', '2021-06-22 07:03:24'),
(798, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:03:39', '2021-06-22 07:03:39'),
(799, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:03:55', '2021-06-22 07:03:55'),
(800, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:04:15', '2021-06-22 07:04:15'),
(801, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:04:27', '2021-06-22 07:04:27'),
(802, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:04:48', '2021-06-22 07:04:48'),
(803, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:05:05', '2021-06-22 07:05:05'),
(804, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:05:16', '2021-06-22 07:05:16'),
(805, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:05:35', '2021-06-22 07:05:35'),
(806, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:06:19', '2021-06-22 07:06:19'),
(807, 1, 'admin/customers', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:06:37', '2021-06-22 07:06:37'),
(808, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:06:40', '2021-06-22 07:06:40'),
(809, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:07:00', '2021-06-22 07:07:00'),
(810, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:07:04', '2021-06-22 07:07:04'),
(811, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:07:06', '2021-06-22 07:07:06'),
(812, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:08:47', '2021-06-22 07:08:47'),
(813, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:09:21', '2021-06-22 07:09:21'),
(814, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:09:39', '2021-06-22 07:09:39'),
(815, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:10:18', '2021-06-22 07:10:18'),
(816, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\",\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":\"7\",\"expected_pickup_date\":null,\"expected_delivery_date\":null}', '2021-06-22 07:10:41', '2021-06-22 07:10:41'),
(817, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\",\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":\"7\",\"expected_pickup_date\":null,\"expected_delivery_date\":null}', '2021-06-22 07:11:18', '2021-06-22 07:11:18'),
(818, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":\"7\",\"expected_pickup_date\":null,\"expected_delivery_date\":null}', '2021-06-22 07:11:44', '2021-06-22 07:11:44'),
(819, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:11:48', '2021-06-22 07:11:48'),
(820, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":\"7\",\"expected_pickup_date\":null,\"expected_delivery_date\":null,\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:11:52', '2021-06-22 07:11:52'),
(821, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:11:57', '2021-06-22 07:11:57'),
(822, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":\"7\",\"expected_pickup_date\":null,\"expected_delivery_date\":null,\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:12:01', '2021-06-22 07:12:01'),
(823, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:12:05', '2021-06-22 07:12:05'),
(824, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:13:02', '2021-06-22 07:13:02'),
(825, 1, 'admin/delivery_boys', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:13:07', '2021-06-22 07:13:07'),
(826, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:13:11', '2021-06-22 07:13:11'),
(827, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:13:52', '2021-06-22 07:13:52'),
(828, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:14:04', '2021-06-22 07:14:04'),
(829, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:14:19', '2021-06-22 07:14:19'),
(830, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:17:15', '2021-06-22 07:17:15'),
(831, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:17:51', '2021-06-22 07:17:51'),
(832, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:17:57', '2021-06-22 07:17:57'),
(833, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:18:35', '2021-06-22 07:18:35'),
(834, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:18:46', '2021-06-22 07:18:46'),
(835, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:19:01', '2021-06-22 07:19:01'),
(836, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:19:13', '2021-06-22 07:19:13'),
(837, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:21:30', '2021-06-22 07:21:30'),
(838, 1, 'admin/leads', 'GET', '157.37.186.164', '[]', '2021-06-22 07:21:47', '2021-06-22 07:21:47'),
(839, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:22:10', '2021-06-22 07:22:10'),
(840, 1, 'admin/delivery_boys', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:22:42', '2021-06-22 07:22:42'),
(841, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:22:48', '2021-06-22 07:22:48'),
(842, 1, 'admin/leads', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:23:09', '2021-06-22 07:23:09'),
(843, 1, 'admin/leads', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:23:19', '2021-06-22 07:23:19'),
(844, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:23:25', '2021-06-22 07:23:25'),
(845, 1, 'admin', 'GET', '157.37.186.164', '[]', '2021-06-22 07:24:08', '2021-06-22 07:24:08'),
(846, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:24:38', '2021-06-22 07:24:38'),
(847, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:42:29', '2021-06-22 07:42:29'),
(848, 1, 'admin/time-slots', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:42:52', '2021-06-22 07:42:52'),
(849, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:42:54', '2021-06-22 07:42:54'),
(850, 1, 'admin/leads', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:43:59', '2021-06-22 07:43:59'),
(851, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:44:01', '2021-06-22 07:44:01'),
(852, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:44:03', '2021-06-22 07:44:03'),
(853, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:44:05', '2021-06-22 07:44:05'),
(854, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:44:11', '2021-06-22 07:44:11'),
(855, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:44:24', '2021-06-22 07:44:24'),
(856, 1, 'admin/leads', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:44:42', '2021-06-22 07:44:42'),
(857, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:44:51', '2021-06-22 07:44:51'),
(858, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:44:53', '2021-06-22 07:44:53'),
(859, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:44:57', '2021-06-22 07:44:57'),
(860, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:45:03', '2021-06-22 07:45:03'),
(861, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:45:10', '2021-06-22 07:45:10'),
(862, 1, 'admin/auth/roles', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:45:21', '2021-06-22 07:45:21'),
(863, 1, 'admin/auth/users', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:45:23', '2021-06-22 07:45:23'),
(864, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:45:40', '2021-06-22 07:45:40'),
(865, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 07:45:44', '2021-06-22 07:45:44'),
(866, 1, 'admin/customers', 'GET', '157.37.186.164', '[]', '2021-06-22 11:26:26', '2021-06-22 11:26:26'),
(867, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:34:18', '2021-06-22 11:34:18'),
(868, 1, 'admin/orders/36/edit', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:34:23', '2021-06-22 11:34:23'),
(869, 1, 'admin/orders/36', 'PUT', '157.37.186.164', '{\"order_id\":\"ORD36168909\",\"delivered_by\":\"2\",\"status\":\"7\",\"payment_status\":\"2\",\"_token\":\"GumRJBBLHxYSVbhUhyi5PfQSjevDWNuAjkxfsj5p\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-06-22 11:34:31', '2021-06-22 11:34:31'),
(870, 1, 'admin/orders/36/edit', 'GET', '157.37.186.164', '[]', '2021-06-22 11:34:36', '2021-06-22 11:34:36'),
(871, 1, 'admin/orders/36/edit', 'GET', '157.37.186.164', '[]', '2021-06-22 11:35:17', '2021-06-22 11:35:17'),
(872, 1, 'admin/orders/36', 'PUT', '157.37.186.164', '{\"order_id\":\"ORD36168909\",\"delivered_by\":\"2\",\"status\":\"7\",\"payment_status\":\"2\",\"_token\":\"GumRJBBLHxYSVbhUhyi5PfQSjevDWNuAjkxfsj5p\",\"_method\":\"PUT\"}', '2021-06-22 11:35:20', '2021-06-22 11:35:20'),
(873, 1, 'admin/orders/36', 'GET', '157.37.186.164', '[]', '2021-06-22 11:35:22', '2021-06-22 11:35:22'),
(874, 1, 'admin/orders/36/edit', 'GET', '157.37.186.164', '[]', '2021-06-22 11:35:35', '2021-06-22 11:35:35'),
(875, 1, 'admin/orders/36', 'PUT', '157.37.186.164', '{\"order_id\":\"ORD36168909\",\"delivered_by\":\"2\",\"status\":\"2\",\"payment_status\":\"1\",\"_token\":\"GumRJBBLHxYSVbhUhyi5PfQSjevDWNuAjkxfsj5p\",\"_method\":\"PUT\"}', '2021-06-22 11:35:41', '2021-06-22 11:35:41'),
(876, 1, 'admin/orders/36', 'GET', '157.37.186.164', '[]', '2021-06-22 11:35:41', '2021-06-22 11:35:41'),
(877, 1, 'admin/orders/36/edit', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:35:44', '2021-06-22 11:35:44'),
(878, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:35:48', '2021-06-22 11:35:48'),
(879, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-22 11:35:51', '2021-06-22 11:35:51'),
(880, 1, 'admin/orders/36/edit', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:35:54', '2021-06-22 11:35:54'),
(881, 1, 'admin/orders/36', 'PUT', '157.37.186.164', '{\"order_id\":\"ORD36168909\",\"delivered_by\":\"2\",\"status\":\"4\",\"payment_status\":\"1\",\"_token\":\"GumRJBBLHxYSVbhUhyi5PfQSjevDWNuAjkxfsj5p\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-06-22 11:36:04', '2021-06-22 11:36:04'),
(882, 1, 'admin/orders/36', 'GET', '157.37.186.164', '[]', '2021-06-22 11:36:04', '2021-06-22 11:36:04'),
(883, 1, 'admin/orders/36/edit', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:36:08', '2021-06-22 11:36:08'),
(884, 1, 'admin/orders/36/edit', 'GET', '157.37.186.164', '[]', '2021-06-22 11:37:05', '2021-06-22 11:37:05'),
(885, 1, 'admin/orders/36', 'PUT', '157.37.186.164', '{\"order_id\":\"ORD36168909\",\"delivered_by\":\"2\",\"status\":\"7\",\"payment_status\":\"2\",\"_token\":\"GumRJBBLHxYSVbhUhyi5PfQSjevDWNuAjkxfsj5p\",\"_method\":\"PUT\"}', '2021-06-22 11:37:14', '2021-06-22 11:37:14'),
(886, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-22 11:37:15', '2021-06-22 11:37:15'),
(887, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:37:25', '2021-06-22 11:37:25'),
(888, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:37:27', '2021-06-22 11:37:27'),
(889, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:37:51', '2021-06-22 11:37:51'),
(890, 1, 'admin/orders/36/edit', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:37:55', '2021-06-22 11:37:55'),
(891, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:38:05', '2021-06-22 11:38:05'),
(892, 1, 'admin/view_orders/36', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:38:14', '2021-06-22 11:38:14'),
(893, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:38:18', '2021-06-22 11:38:18'),
(894, 1, 'admin/orders/23/edit', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:38:21', '2021-06-22 11:38:21'),
(895, 1, 'admin/orders/23', 'PUT', '157.37.186.164', '{\"order_id\":\"ORD28048230\",\"delivered_by\":\"2\",\"status\":\"7\",\"payment_status\":\"2\",\"_token\":\"GumRJBBLHxYSVbhUhyi5PfQSjevDWNuAjkxfsj5p\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-22 11:38:28', '2021-06-22 11:38:28'),
(896, 1, 'admin/orders', 'GET', '157.37.186.164', '[]', '2021-06-22 11:38:28', '2021-06-22 11:38:28'),
(897, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:38:31', '2021-06-22 11:38:31'),
(898, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:38:33', '2021-06-22 11:38:33'),
(899, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-22 11:38:46', '2021-06-22 11:38:46'),
(900, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":\"ORD28048230\",\"status\":null,\"expected_pickup_date\":null,\"expected_delivery_date\":null,\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:38:59', '2021-06-22 11:38:59'),
(901, 1, 'admin/orders/23/edit', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:39:01', '2021-06-22 11:39:01'),
(902, 1, 'admin/orders/23', 'PUT', '157.37.186.164', '{\"order_id\":\"ORD28048230\",\"delivered_by\":\"2\",\"status\":\"7\",\"payment_status\":\"1\",\"_token\":\"GumRJBBLHxYSVbhUhyi5PfQSjevDWNuAjkxfsj5p\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc&id=&customer_id=&delivered_by=&order_id=ORD28048230&customer_id=&status=&expected_pickup_date=&expected_delivery_date=\"}', '2021-06-22 11:39:04', '2021-06-22 11:39:04'),
(903, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":\"ORD28048230\",\"status\":null,\"expected_pickup_date\":null,\"expected_delivery_date\":null}', '2021-06-22 11:39:05', '2021-06-22 11:39:05'),
(904, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-22 11:39:21', '2021-06-22 11:39:21'),
(905, 1, 'admin/orders/23/edit', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:39:34', '2021-06-22 11:39:34'),
(906, 1, 'admin/orders/23', 'PUT', '157.37.186.164', '{\"order_id\":\"ORD28048230\",\"delivered_by\":\"2\",\"status\":\"7\",\"payment_status\":\"2\",\"_token\":\"GumRJBBLHxYSVbhUhyi5PfQSjevDWNuAjkxfsj5p\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc&id=&customer_id=&delivered_by=&order_id=ORD28048230&customer_id=&status=&expected_pickup_date=&expected_delivery_date=\"}', '2021-06-22 11:39:39', '2021-06-22 11:39:39'),
(907, 1, 'admin/orders', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":\"ORD28048230\",\"status\":null,\"expected_pickup_date\":null,\"expected_delivery_date\":null}', '2021-06-22 11:39:39', '2021-06-22 11:39:39'),
(908, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-22 11:39:44', '2021-06-22 11:39:44'),
(909, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:45:01', '2021-06-22 11:45:01'),
(910, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:45:11', '2021-06-22 11:45:11'),
(911, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:45:17', '2021-06-22 11:45:17'),
(912, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:45:59', '2021-06-22 11:45:59'),
(913, 1, 'admin/payment-methods', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:46:01', '2021-06-22 11:46:01'),
(914, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 11:46:08', '2021-06-22 11:46:08'),
(915, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 13:21:06', '2021-06-22 13:21:06'),
(916, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 13:21:10', '2021-06-22 13:21:10'),
(917, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 13:23:21', '2021-06-22 13:23:21'),
(918, 1, 'admin/leads', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 13:24:40', '2021-06-22 13:24:40'),
(919, 1, 'admin', 'GET', '157.37.186.164', '{\"_pjax\":\"#pjax-container\"}', '2021-06-22 13:32:34', '2021-06-22 13:32:34');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(920, 1, 'admin/payment-histories', 'GET', '157.37.186.164', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-22 13:33:17', '2021-06-22 13:33:17'),
(921, 1, 'admin', 'GET', '47.31.134.216', '[]', '2021-06-23 04:00:43', '2021-06-23 04:00:43'),
(922, 1, 'admin/orders', 'GET', '47.31.134.216', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-23 04:03:35', '2021-06-23 04:03:35'),
(923, 1, 'admin/orders/36/edit', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 04:03:47', '2021-06-23 04:03:47'),
(924, 1, 'admin/orders/36', 'PUT', '47.31.134.216', '{\"order_id\":\"ORD36168909\",\"delivered_by\":\"2\",\"status\":\"7\",\"payment_status\":\"4\",\"_token\":\"y7gHPx758cFfob4hIE7Fm6fhIWt4nJLanDoNvJFt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-06-23 04:03:52', '2021-06-23 04:03:52'),
(925, 1, 'admin/orders', 'GET', '47.31.134.216', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-23 04:03:55', '2021-06-23 04:03:55'),
(926, 1, 'admin/orders/36/edit', 'GET', '47.31.134.216', '[]', '2021-06-23 05:18:19', '2021-06-23 05:18:19'),
(927, 1, 'admin/orders/36/edit', 'GET', '47.31.134.216', '[]', '2021-06-23 05:18:58', '2021-06-23 05:18:58'),
(928, 1, 'admin/orders', 'GET', '47.31.134.216', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-23 05:38:41', '2021-06-23 05:38:41'),
(929, 1, 'admin/orders/23/edit', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 05:38:51', '2021-06-23 05:38:51'),
(930, 1, 'admin/orders/23', 'PUT', '47.31.134.216', '{\"order_id\":\"ORD28048230\",\"delivered_by\":\"2\",\"status\":\"4\",\"payment_status\":\"4\",\"_token\":\"y7gHPx758cFfob4hIE7Fm6fhIWt4nJLanDoNvJFt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-06-23 05:39:06', '2021-06-23 05:39:06'),
(931, 1, 'admin/orders', 'GET', '47.31.134.216', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-23 05:39:10', '2021-06-23 05:39:10'),
(932, 1, 'admin/orders', 'GET', '47.31.134.216', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-23 05:53:35', '2021-06-23 05:53:35'),
(933, 1, 'admin/orders', 'GET', '47.31.134.216', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":\"ORD49942765\",\"status\":null,\"expected_pickup_date\":null,\"expected_delivery_date\":null,\"_pjax\":\"#pjax-container\"}', '2021-06-23 06:22:13', '2021-06-23 06:22:13'),
(934, 1, 'admin/orders/28/edit', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 06:22:19', '2021-06-23 06:22:19'),
(935, 1, 'admin/orders/28', 'PUT', '47.31.134.216', '{\"order_id\":\"ORD49942765\",\"delivered_by\":\"2\",\"status\":\"4\",\"payment_status\":\"4\",\"_token\":\"y7gHPx758cFfob4hIE7Fm6fhIWt4nJLanDoNvJFt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc&id=&customer_id=&delivered_by=&order_id=ORD49942765&customer_id=&status=&expected_pickup_date=&expected_delivery_date=\"}', '2021-06-23 06:22:32', '2021-06-23 06:22:32'),
(936, 1, 'admin/orders', 'GET', '47.31.134.216', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":\"ORD49942765\",\"status\":null,\"expected_pickup_date\":null,\"expected_delivery_date\":null}', '2021-06-23 06:22:34', '2021-06-23 06:22:34'),
(937, 1, 'admin/orders/28/edit', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 06:57:52', '2021-06-23 06:57:52'),
(938, 1, 'admin/payment-methods', 'GET', '47.31.134.216', '[]', '2021-06-23 07:03:44', '2021-06-23 07:03:44'),
(939, 1, 'admin/orders/28/edit', 'GET', '47.31.134.216', '[]', '2021-06-23 07:20:57', '2021-06-23 07:20:57'),
(940, 1, 'admin/orders/28', 'PUT', '47.31.134.216', '{\"order_id\":\"ORD49942765\",\"delivered_by\":\"2\",\"status\":\"4\",\"payment_status\":\"4\",\"_token\":\"y7gHPx758cFfob4hIE7Fm6fhIWt4nJLanDoNvJFt\",\"_method\":\"PUT\"}', '2021-06-23 07:21:10', '2021-06-23 07:21:10'),
(941, 1, 'admin/orders', 'GET', '47.31.134.216', '[]', '2021-06-23 07:21:10', '2021-06-23 07:21:10'),
(942, 1, 'admin/orders/28/edit', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 07:26:05', '2021-06-23 07:26:05'),
(943, 1, 'admin/orders/28', 'PUT', '47.31.134.216', '{\"order_id\":\"ORD49942765\",\"delivered_by\":\"2\",\"status\":\"4\",\"payment_status\":\"4\",\"_token\":\"y7gHPx758cFfob4hIE7Fm6fhIWt4nJLanDoNvJFt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-23 07:28:50', '2021-06-23 07:28:50'),
(944, 1, 'admin/orders', 'GET', '47.31.134.216', '[]', '2021-06-23 07:28:55', '2021-06-23 07:28:55'),
(945, 1, 'admin/orders/28/edit', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 08:00:51', '2021-06-23 08:00:51'),
(946, 1, 'admin/orders/28', 'PUT', '47.31.134.216', '{\"order_id\":\"ORD49942765\",\"delivered_by\":\"2\",\"status\":\"4\",\"payment_status\":\"4\",\"_token\":\"y7gHPx758cFfob4hIE7Fm6fhIWt4nJLanDoNvJFt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-23 08:00:56', '2021-06-23 08:00:56'),
(947, 1, 'admin/orders', 'GET', '47.31.134.216', '[]', '2021-06-23 08:00:57', '2021-06-23 08:00:57'),
(948, 1, 'admin/orders', 'GET', '47.31.134.216', '[]', '2021-06-23 10:22:09', '2021-06-23 10:22:09'),
(949, 1, 'admin/orders/28/edit', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 12:25:37', '2021-06-23 12:25:37'),
(950, 1, 'admin/orders/28', 'PUT', '47.31.134.216', '{\"order_id\":\"ORD49942765\",\"delivered_by\":\"2\",\"status\":\"4\",\"payment_status\":\"4\",\"_token\":\"Tc4eIpXcwWcqe2arx1HGgaKINPWgkAocFtYsheSa\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-23 12:25:49', '2021-06-23 12:25:49'),
(951, 1, 'admin/orders', 'GET', '47.31.134.216', '[]', '2021-06-23 12:25:50', '2021-06-23 12:25:50'),
(952, 1, 'admin/orders', 'GET', '47.31.134.216', '[]', '2021-06-23 13:33:28', '2021-06-23 13:33:28'),
(953, 1, 'admin/orders/23/edit', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 13:33:34', '2021-06-23 13:33:34'),
(954, 1, 'admin/orders/23', 'PUT', '47.31.134.216', '{\"order_id\":\"ORD28048230\",\"delivered_by\":\"2\",\"status\":\"2\",\"payment_status\":\"4\",\"_token\":\"Tc4eIpXcwWcqe2arx1HGgaKINPWgkAocFtYsheSa\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-23 13:33:42', '2021-06-23 13:33:42'),
(955, 1, 'admin/orders', 'GET', '47.31.134.216', '[]', '2021-06-23 13:33:44', '2021-06-23 13:33:44'),
(956, 1, 'admin/orders/23,24,25,26,27,28,29,30,31,32,33,34,35,36', 'DELETE', '47.31.134.216', '{\"_method\":\"delete\",\"_token\":\"Tc4eIpXcwWcqe2arx1HGgaKINPWgkAocFtYsheSa\"}', '2021-06-23 13:41:34', '2021-06-23 13:41:34'),
(957, 1, 'admin/orders', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 13:41:34', '2021-06-23 13:41:34'),
(958, 1, 'admin/orders', 'GET', '47.31.134.216', '[]', '2021-06-23 13:43:46', '2021-06-23 13:43:46'),
(959, 1, 'admin/orders/37/edit', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 13:43:50', '2021-06-23 13:43:50'),
(960, 1, 'admin/orders/37', 'PUT', '47.31.134.216', '{\"order_id\":\"ORD20917430\",\"delivered_by\":\"2\",\"status\":\"2\",\"payment_status\":\"1\",\"_token\":\"Tc4eIpXcwWcqe2arx1HGgaKINPWgkAocFtYsheSa\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-23 13:43:56', '2021-06-23 13:43:56'),
(961, 1, 'admin/orders', 'GET', '47.31.134.216', '[]', '2021-06-23 13:43:57', '2021-06-23 13:43:57'),
(962, 1, 'admin/orders/37/edit', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 13:49:35', '2021-06-23 13:49:35'),
(963, 1, 'admin/orders', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 13:49:38', '2021-06-23 13:49:38'),
(964, 1, 'admin/orders', 'GET', '47.31.134.216', '[]', '2021-06-23 14:01:34', '2021-06-23 14:01:34'),
(965, 1, 'admin/orders/38/edit', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 14:01:36', '2021-06-23 14:01:36'),
(966, 1, 'admin/orders/38', 'PUT', '47.31.134.216', '{\"order_id\":\"ORD61074446\",\"delivered_by\":\"2\",\"status\":\"2\",\"payment_status\":\"1\",\"_token\":\"Tc4eIpXcwWcqe2arx1HGgaKINPWgkAocFtYsheSa\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-23 14:01:44', '2021-06-23 14:01:44'),
(967, 1, 'admin/orders', 'GET', '47.31.134.216', '[]', '2021-06-23 14:01:44', '2021-06-23 14:01:44'),
(968, 1, 'admin', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 14:27:49', '2021-06-23 14:27:49'),
(969, 1, 'admin/payment-histories', 'GET', '47.31.134.216', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-23 14:28:01', '2021-06-23 14:28:01'),
(970, 1, 'admin', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 14:28:31', '2021-06-23 14:28:31'),
(971, 1, 'admin', 'GET', '47.31.134.216', '[]', '2021-06-23 14:29:45', '2021-06-23 14:29:45'),
(972, 1, 'admin/payment-histories', 'GET', '47.31.134.216', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-23 14:29:48', '2021-06-23 14:29:48'),
(973, 1, 'admin/orders', 'GET', '47.31.134.216', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-23 14:29:50', '2021-06-23 14:29:50'),
(974, 1, 'admin/orders/37/edit', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 14:29:56', '2021-06-23 14:29:56'),
(975, 1, 'admin/orders/37', 'PUT', '47.31.134.216', '{\"order_id\":\"ORD20917430\",\"delivered_by\":\"2\",\"status\":\"7\",\"payment_status\":\"2\",\"_token\":\"Tc4eIpXcwWcqe2arx1HGgaKINPWgkAocFtYsheSa\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-06-23 14:30:09', '2021-06-23 14:30:09'),
(976, 1, 'admin/orders', 'GET', '47.31.134.216', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-23 14:30:09', '2021-06-23 14:30:09'),
(977, 1, 'admin', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 14:30:16', '2021-06-23 14:30:16'),
(978, 1, 'admin/payment-histories', 'GET', '47.31.134.216', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-23 14:30:24', '2021-06-23 14:30:24'),
(979, 1, 'admin', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 14:30:54', '2021-06-23 14:30:54'),
(980, 1, 'admin/payment-histories', 'GET', '47.31.134.216', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-23 14:31:03', '2021-06-23 14:31:03'),
(981, 1, 'admin/orders', 'GET', '47.31.134.216', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-23 14:31:07', '2021-06-23 14:31:07'),
(982, 1, 'admin/view_orders/37', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 14:31:15', '2021-06-23 14:31:15'),
(983, 1, 'admin/orders', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 14:31:50', '2021-06-23 14:31:50'),
(984, 1, 'admin/orders', 'GET', '47.31.134.216', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-23 14:54:52', '2021-06-23 14:54:52'),
(985, 1, 'admin/banner-images', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 14:55:27', '2021-06-23 14:55:27'),
(986, 1, 'admin/memberships', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 14:55:32', '2021-06-23 14:55:32'),
(987, 1, 'admin', 'GET', '103.163.151.59', '[]', '2021-06-23 17:48:47', '2021-06-23 17:48:47'),
(988, 1, 'admin/auth/login', 'GET', '103.163.151.59', '[]', '2021-06-23 17:49:10', '2021-06-23 17:49:10'),
(989, 1, 'admin', 'GET', '103.163.151.59', '[]', '2021-06-23 17:49:10', '2021-06-23 17:49:10'),
(990, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 17:49:27', '2021-06-23 17:49:27'),
(991, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 17:49:36', '2021-06-23 17:49:36'),
(992, 1, 'admin/time-slots', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 17:49:50', '2021-06-23 17:49:50'),
(993, 1, 'admin/app_settings', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-23 17:50:05', '2021-06-23 17:50:05'),
(994, 1, 'admin', 'GET', '103.163.151.59', '[]', '2021-06-23 17:50:18', '2021-06-23 17:50:18'),
(995, 1, 'admin', 'GET', '103.163.151.59', '[]', '2021-06-25 03:01:32', '2021-06-25 03:01:32'),
(996, 1, 'admin/auth/login', 'GET', '103.163.151.59', '[]', '2021-06-25 03:02:00', '2021-06-25 03:02:00'),
(997, 1, 'admin', 'GET', '103.163.151.59', '[]', '2021-06-25 03:02:01', '2021-06-25 03:02:01'),
(998, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 03:02:16', '2021-06-25 03:02:16'),
(999, 1, 'admin/service-areas', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 03:02:23', '2021-06-25 03:02:23'),
(1000, 1, 'admin/service-areas/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 03:03:21', '2021-06-25 03:03:21'),
(1001, 1, 'admin/banner-images', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 03:04:43', '2021-06-25 03:04:43'),
(1002, 1, 'admin/time-slots', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 03:04:53', '2021-06-25 03:04:53'),
(1003, 1, 'admin/leads', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 03:06:19', '2021-06-25 03:06:19'),
(1004, 1, 'admin/service-areas', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 03:06:42', '2021-06-25 03:06:42'),
(1005, 1, 'admin/services', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 03:06:44', '2021-06-25 03:06:44'),
(1006, 1, 'admin/services/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 03:07:00', '2021-06-25 03:07:00'),
(1007, 1, 'admin/services/1', 'PUT', '103.163.151.59', '{\"service_name\":\"WASH ONLY\",\"service_time\":\"24\",\"description\":\"Your garments will be properly detoxified  cleaned and sanitized and packed.\",\"status\":\"1\",\"_token\":\"BfnyuRPVUqWIM7yWYUVrLmmAbqJHrKoEGkH7DsPF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/services\"}', '2021-06-25 03:12:00', '2021-06-25 03:12:00'),
(1008, 1, 'admin/services', 'GET', '103.163.151.59', '[]', '2021-06-25 03:12:01', '2021-06-25 03:12:01'),
(1009, 1, 'admin/services/2/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 03:12:17', '2021-06-25 03:12:17'),
(1010, 1, 'admin/services/2', 'PUT', '103.163.151.59', '{\"service_name\":\"DRYCLEAN\",\"service_time\":\"24\",\"description\":\"Your fabric will be pampered with the worlds best solvents and treated in a hydrocarbon  dry-clean machines.\",\"status\":\"1\",\"_token\":\"BfnyuRPVUqWIM7yWYUVrLmmAbqJHrKoEGkH7DsPF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/services\"}', '2021-06-25 03:15:59', '2021-06-25 03:15:59'),
(1011, 1, 'admin/services/2/edit', 'GET', '103.163.151.59', '[]', '2021-06-25 03:16:00', '2021-06-25 03:16:00'),
(1012, 1, 'admin/services/2', 'PUT', '103.163.151.59', '{\"service_name\":\"DRYCLEAN\",\"service_time\":\"24\",\"description\":\"Your fabric will be pampered  with worlds best solvents and treated in a hydrocarbon  dry-clean machines.\",\"status\":\"1\",\"_token\":\"BfnyuRPVUqWIM7yWYUVrLmmAbqJHrKoEGkH7DsPF\",\"_method\":\"PUT\"}', '2021-06-25 03:16:27', '2021-06-25 03:16:27'),
(1013, 1, 'admin/services/2/edit', 'GET', '103.163.151.59', '[]', '2021-06-25 03:16:27', '2021-06-25 03:16:27'),
(1014, 1, 'admin/services/2', 'PUT', '103.163.151.59', '{\"service_name\":\"DRYCLEAN\",\"service_time\":\"24\",\"description\":\"Your fabric will be pampered  with worlds best solvents and treated in a hydrocarbon  dryclean machines.\",\"status\":\"1\",\"_token\":\"BfnyuRPVUqWIM7yWYUVrLmmAbqJHrKoEGkH7DsPF\",\"_method\":\"PUT\"}', '2021-06-25 03:16:33', '2021-06-25 03:16:33'),
(1015, 1, 'admin/services/2/edit', 'GET', '103.163.151.59', '[]', '2021-06-25 03:16:33', '2021-06-25 03:16:33'),
(1016, 1, 'admin/services/2', 'PUT', '103.163.151.59', '{\"service_name\":\"DRYCLEAN\",\"service_time\":\"24\",\"description\":\"Your fabric will be pampered  with worlds best solvents within unmatched quality.\",\"status\":\"1\",\"_token\":\"BfnyuRPVUqWIM7yWYUVrLmmAbqJHrKoEGkH7DsPF\",\"_method\":\"PUT\"}', '2021-06-25 03:17:24', '2021-06-25 03:17:24'),
(1017, 1, 'admin/services', 'GET', '103.163.151.59', '[]', '2021-06-25 03:17:25', '2021-06-25 03:17:25'),
(1018, 1, 'admin/services/3/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 03:17:31', '2021-06-25 03:17:31'),
(1019, 1, 'admin/services/3', 'PUT', '103.163.151.59', '{\"service_name\":\"WASH AND FOLD\",\"service_time\":\"24 - 48 hours\",\"description\":null,\"status\":\"1\",\"_token\":\"BfnyuRPVUqWIM7yWYUVrLmmAbqJHrKoEGkH7DsPF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/services\"}', '2021-06-25 03:58:19', '2021-06-25 03:58:19'),
(1020, 1, 'admin/services/3/edit', 'GET', '103.163.151.59', '[]', '2021-06-25 03:58:20', '2021-06-25 03:58:20'),
(1021, 1, 'admin/services/3', 'PUT', '103.163.151.59', '{\"service_name\":\"WASH AND FOLD\",\"service_time\":\"24 - 48\",\"description\":null,\"status\":\"1\",\"_token\":\"BfnyuRPVUqWIM7yWYUVrLmmAbqJHrKoEGkH7DsPF\",\"_method\":\"PUT\"}', '2021-06-25 03:58:36', '2021-06-25 03:58:36'),
(1022, 1, 'admin/services/3/edit', 'GET', '103.163.151.59', '[]', '2021-06-25 03:58:36', '2021-06-25 03:58:36'),
(1023, 1, 'admin/services/3', 'PUT', '103.163.151.59', '{\"service_name\":\"WASH AND FOLD\",\"service_time\":\"24\",\"description\":\"24 hours\",\"status\":\"1\",\"_token\":\"BfnyuRPVUqWIM7yWYUVrLmmAbqJHrKoEGkH7DsPF\",\"_method\":\"PUT\"}', '2021-06-25 03:59:00', '2021-06-25 03:59:00'),
(1024, 1, 'admin/services', 'GET', '103.163.151.59', '[]', '2021-06-25 03:59:00', '2021-06-25 03:59:00'),
(1025, 1, 'admin/services/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 03:59:15', '2021-06-25 03:59:15'),
(1026, 1, 'admin/services/1', 'PUT', '103.163.151.59', '{\"service_name\":\"WASH ONLY\",\"service_time\":\"24\",\"description\":\"24 Hours\",\"status\":\"1\",\"_token\":\"BfnyuRPVUqWIM7yWYUVrLmmAbqJHrKoEGkH7DsPF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/services\"}', '2021-06-25 03:59:30', '2021-06-25 03:59:30'),
(1027, 1, 'admin/services', 'GET', '103.163.151.59', '[]', '2021-06-25 03:59:30', '2021-06-25 03:59:30'),
(1028, 1, 'admin/services/2/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 03:59:34', '2021-06-25 03:59:34'),
(1029, 1, 'admin/services/2', 'PUT', '103.163.151.59', '{\"service_name\":\"DRYCLEAN\",\"service_time\":\"24\",\"description\":\"24 hours service\",\"status\":\"1\",\"_token\":\"BfnyuRPVUqWIM7yWYUVrLmmAbqJHrKoEGkH7DsPF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/services\"}', '2021-06-25 03:59:55', '2021-06-25 03:59:55'),
(1030, 1, 'admin/services', 'GET', '103.163.151.59', '[]', '2021-06-25 03:59:55', '2021-06-25 03:59:55'),
(1031, 1, 'admin/services/2/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 04:00:00', '2021-06-25 04:00:00'),
(1032, 1, 'admin/services/2', 'PUT', '103.163.151.59', '{\"service_name\":\"DRYCLEAN\",\"service_time\":\"24\",\"description\":\"24 hours\",\"status\":\"1\",\"_token\":\"BfnyuRPVUqWIM7yWYUVrLmmAbqJHrKoEGkH7DsPF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/services\"}', '2021-06-25 04:00:06', '2021-06-25 04:00:06'),
(1033, 1, 'admin/services', 'GET', '103.163.151.59', '[]', '2021-06-25 04:00:07', '2021-06-25 04:00:07'),
(1034, 1, 'admin/service-areas', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 04:00:46', '2021-06-25 04:00:46'),
(1035, 1, 'admin/services', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 04:02:00', '2021-06-25 04:02:00'),
(1036, 1, 'admin/customers', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 04:02:10', '2021-06-25 04:02:10'),
(1037, 1, 'admin/additional-items', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 04:02:42', '2021-06-25 04:02:42'),
(1038, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 04:02:46', '2021-06-25 04:02:46'),
(1039, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 04:03:08', '2021-06-25 04:03:08'),
(1040, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 04:04:02', '2021-06-25 04:04:02'),
(1041, 1, 'admin/products/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 04:04:29', '2021-06-25 04:04:29'),
(1042, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 04:05:09', '2021-06-25 04:05:09'),
(1043, 1, 'admin/products/1', 'DELETE', '103.163.151.59', '{\"_method\":\"delete\",\"_token\":\"BfnyuRPVUqWIM7yWYUVrLmmAbqJHrKoEGkH7DsPF\"}', '2021-06-25 04:05:19', '2021-06-25 04:05:19'),
(1044, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 04:05:20', '2021-06-25 04:05:20'),
(1045, 1, 'admin/products/2', 'DELETE', '103.163.151.59', '{\"_method\":\"delete\",\"_token\":\"BfnyuRPVUqWIM7yWYUVrLmmAbqJHrKoEGkH7DsPF\"}', '2021-06-25 04:05:25', '2021-06-25 04:05:25'),
(1046, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 04:05:26', '2021-06-25 04:05:26'),
(1047, 1, 'admin/products/3', 'DELETE', '103.163.151.59', '{\"_method\":\"delete\",\"_token\":\"BfnyuRPVUqWIM7yWYUVrLmmAbqJHrKoEGkH7DsPF\"}', '2021-06-25 04:05:32', '2021-06-25 04:05:32'),
(1048, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 04:05:33', '2021-06-25 04:05:33'),
(1049, 1, 'admin/products/5', 'DELETE', '103.163.151.59', '{\"_method\":\"delete\",\"_token\":\"BfnyuRPVUqWIM7yWYUVrLmmAbqJHrKoEGkH7DsPF\"}', '2021-06-25 04:05:39', '2021-06-25 04:05:39'),
(1050, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 04:05:40', '2021-06-25 04:05:40'),
(1051, 1, 'admin/products/4/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 04:05:47', '2021-06-25 04:05:47'),
(1052, 1, 'admin/products/4', 'PUT', '103.163.151.59', '{\"service_id\":\"2\",\"category_id\":\"2\",\"product_name\":\"Shirt\",\"price\":\"90\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"BfnyuRPVUqWIM7yWYUVrLmmAbqJHrKoEGkH7DsPF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-06-25 04:06:26', '2021-06-25 04:06:26'),
(1053, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-06-25 04:06:26', '2021-06-25 04:06:26'),
(1054, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 04:06:29', '2021-06-25 04:06:29'),
(1055, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_name\":\"Shirt\",\"price\":\"90\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"BfnyuRPVUqWIM7yWYUVrLmmAbqJHrKoEGkH7DsPF\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-06-25 04:06:52', '2021-06-25 04:06:52'),
(1056, 1, 'admin/products/create', 'GET', '103.163.151.59', '[]', '2021-06-25 04:06:52', '2021-06-25 04:06:52'),
(1057, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_name\":\"Shirt\",\"price\":\"90\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"BfnyuRPVUqWIM7yWYUVrLmmAbqJHrKoEGkH7DsPF\"}', '2021-06-25 04:07:00', '2021-06-25 04:07:00'),
(1058, 1, 'admin/products/create', 'GET', '103.163.151.59', '[]', '2021-06-25 04:07:00', '2021-06-25 04:07:00'),
(1059, 1, 'admin', 'GET', '47.31.134.216', '[]', '2021-06-25 04:19:57', '2021-06-25 04:19:57'),
(1060, 1, 'admin/products', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 04:20:11', '2021-06-25 04:20:11'),
(1061, 1, 'admin/products/create', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 04:25:26', '2021-06-25 04:25:26'),
(1062, 1, 'admin/products', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 04:25:29', '2021-06-25 04:25:29'),
(1063, 1, 'admin', 'GET', '103.77.43.233', '[]', '2021-06-25 04:43:00', '2021-06-25 04:43:00'),
(1064, 1, 'admin/services', 'GET', '103.77.43.233', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 04:43:08', '2021-06-25 04:43:08'),
(1065, 1, 'admin/services/1/edit', 'GET', '103.77.43.233', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 04:43:13', '2021-06-25 04:43:13'),
(1066, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 04:44:11', '2021-06-25 04:44:11'),
(1067, 1, 'admin/services', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 04:44:31', '2021-06-25 04:44:31'),
(1068, 1, 'admin/services/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 04:44:34', '2021-06-25 04:44:34'),
(1069, 1, 'admin/services/1', 'PUT', '103.163.151.59', '{\"service_name\":\"WASH ONLY\",\"service_time\":\"24\",\"description\":null,\"status\":\"1\",\"_token\":\"BfnyuRPVUqWIM7yWYUVrLmmAbqJHrKoEGkH7DsPF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/services\"}', '2021-06-25 04:44:39', '2021-06-25 04:44:39'),
(1070, 1, 'admin/services/1/edit', 'GET', '103.163.151.59', '[]', '2021-06-25 04:44:39', '2021-06-25 04:44:39'),
(1071, 1, 'admin/products', 'GET', '47.31.134.216', '[]', '2021-06-25 05:52:26', '2021-06-25 05:52:26'),
(1072, 1, 'admin/orders', 'GET', '47.31.134.216', '[]', '2021-06-25 05:57:41', '2021-06-25 05:57:41'),
(1073, 1, 'admin/orders', 'GET', '47.31.134.216', '[]', '2021-06-25 05:57:47', '2021-06-25 05:57:47'),
(1074, 1, 'admin', 'GET', '103.163.151.59', '[]', '2021-06-25 05:58:40', '2021-06-25 05:58:40'),
(1075, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-25 05:58:47', '2021-06-25 05:58:47'),
(1076, 1, 'admin/view_orders/39', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 05:58:59', '2021-06-25 05:58:59'),
(1077, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-25 05:59:11', '2021-06-25 05:59:11'),
(1078, 1, 'admin/orders/40/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 05:59:19', '2021-06-25 05:59:19'),
(1079, 1, 'admin/orders/40', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD29207158\",\"delivered_by\":\"4\",\"status\":\"2\",\"payment_status\":\"1\",\"_token\":\"i7eNQ24SvpPKhpi7Fd7F67qiyJXXx6mL4eEWJmgS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-06-25 05:59:43', '2021-06-25 05:59:43'),
(1080, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-25 05:59:49', '2021-06-25 05:59:49'),
(1081, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-25 06:15:32', '2021-06-25 06:15:32'),
(1082, 1, 'admin/orders/41/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 06:15:37', '2021-06-25 06:15:37'),
(1083, 1, 'admin/orders', 'GET', '47.31.134.216', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-25 06:15:41', '2021-06-25 06:15:41'),
(1084, 1, 'admin/orders/40/edit', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 06:15:54', '2021-06-25 06:15:54'),
(1085, 1, 'admin/orders/41', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD27567819\",\"delivered_by\":\"4\",\"status\":\"3\",\"payment_status\":\"1\",\"_token\":\"i7eNQ24SvpPKhpi7Fd7F67qiyJXXx6mL4eEWJmgS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-06-25 06:15:55', '2021-06-25 06:15:55'),
(1086, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-25 06:15:55', '2021-06-25 06:15:55'),
(1087, 1, 'admin/orders', 'GET', '47.31.134.216', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-25 06:15:57', '2021-06-25 06:15:57'),
(1088, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-25 06:21:53', '2021-06-25 06:21:53'),
(1089, 1, 'admin/time-slots', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 06:22:03', '2021-06-25 06:22:03'),
(1090, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-25 06:22:15', '2021-06-25 06:22:15'),
(1091, 1, 'admin/orders/41/edit', 'GET', '47.31.134.216', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 06:30:24', '2021-06-25 06:30:24'),
(1092, 1, 'admin/orders', 'GET', '47.31.134.216', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-25 06:30:29', '2021-06-25 06:30:29'),
(1093, 1, 'admin/orders', 'GET', '157.37.197.103', '[]', '2021-06-25 08:08:11', '2021-06-25 08:08:11'),
(1094, 1, 'admin/orders', 'GET', '157.37.197.103', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-25 08:08:42', '2021-06-25 08:08:42'),
(1095, 1, 'admin/orders', 'GET', '157.37.197.103', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-25 08:08:46', '2021-06-25 08:08:46'),
(1096, 1, 'admin/orders', 'GET', '47.31.139.198', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-25 09:28:37', '2021-06-25 09:28:37'),
(1097, 1, 'admin/orders/40/edit', 'GET', '47.31.139.198', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 09:28:46', '2021-06-25 09:28:46'),
(1098, 1, 'admin/orders', 'GET', '47.31.139.198', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-25 09:29:01', '2021-06-25 09:29:01'),
(1099, 1, 'admin/orders/41/edit', 'GET', '47.31.139.198', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 09:29:16', '2021-06-25 09:29:16'),
(1100, 1, 'admin/additional-items', 'GET', '47.31.139.198', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 09:29:24', '2021-06-25 09:29:24'),
(1101, 1, 'admin', 'GET', '47.31.139.198', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 09:29:32', '2021-06-25 09:29:32'),
(1102, 1, 'admin/payment-histories', 'GET', '47.31.139.198', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-25 09:29:36', '2021-06-25 09:29:36'),
(1103, 1, 'admin/orders', 'GET', '47.31.139.198', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-25 09:29:54', '2021-06-25 09:29:54'),
(1104, 1, 'admin/orders/40/edit', 'GET', '47.31.139.198', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 09:30:02', '2021-06-25 09:30:02'),
(1105, 1, 'admin/orders', 'GET', '47.31.139.198', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-25 09:30:08', '2021-06-25 09:30:08'),
(1106, 1, 'admin/view_orders/40', 'GET', '47.31.139.198', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 09:30:11', '2021-06-25 09:30:11'),
(1107, 1, 'admin/orders', 'GET', '47.31.139.198', '{\"_pjax\":\"#pjax-container\"}', '2021-06-25 09:30:26', '2021-06-25 09:30:26'),
(1108, 1, 'admin/orders', 'GET', '47.31.139.198', '[]', '2021-06-25 12:53:21', '2021-06-25 12:53:21'),
(1109, 1, 'admin', 'GET', '103.163.151.59', '[]', '2021-06-26 05:09:31', '2021-06-26 05:09:31'),
(1110, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:09:43', '2021-06-26 05:09:43'),
(1111, 1, 'admin/view_orders/43', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:09:54', '2021-06-26 05:09:54'),
(1112, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:10:15', '2021-06-26 05:10:15'),
(1113, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:10:17', '2021-06-26 05:10:17'),
(1114, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:10:18', '2021-06-26 05:10:18'),
(1115, 1, 'admin/orders/43/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:10:21', '2021-06-26 05:10:21'),
(1116, 1, 'admin/orders/43', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD77917615\",\"delivered_by\":\"4\",\"status\":\"3\",\"payment_status\":\"1\",\"_token\":\"zGINS9sLvxKauRG4OeR1ajgjOp2UAzsOH0ECG6fP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-06-26 05:11:06', '2021-06-26 05:11:06'),
(1117, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-26 05:11:06', '2021-06-26 05:11:06'),
(1118, 1, 'admin/services', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:13:02', '2021-06-26 05:13:02'),
(1119, 1, 'admin/categories', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:13:05', '2021-06-26 05:13:05'),
(1120, 1, 'admin/categories/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:13:12', '2021-06-26 05:13:12'),
(1121, 1, 'admin/categories/1', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",null],\"category_name\":\"Men\",\"status\":\"1\",\"_token\":\"zGINS9sLvxKauRG4OeR1ajgjOp2UAzsOH0ECG6fP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/categories\"}', '2021-06-26 05:13:20', '2021-06-26 05:13:20'),
(1122, 1, 'admin/categories', 'GET', '103.163.151.59', '[]', '2021-06-26 05:13:20', '2021-06-26 05:13:20'),
(1123, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:13:26', '2021-06-26 05:13:26'),
(1124, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:13:32', '2021-06-26 05:13:32'),
(1125, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"1\",\"category_id\":\"4\",\"product_name\":\"Wash and fold\",\"price\":\"95\",\"unit\":\"2\",\"status\":\"1\",\"_token\":\"zGINS9sLvxKauRG4OeR1ajgjOp2UAzsOH0ECG6fP\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-06-26 05:14:12', '2021-06-26 05:14:12'),
(1126, 1, 'admin/products/create', 'GET', '103.163.151.59', '[]', '2021-06-26 05:14:13', '2021-06-26 05:14:13'),
(1127, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"1\",\"category_id\":\"4\",\"product_name\":\"Wash and fold\",\"price\":\"95\",\"unit\":\"2\",\"status\":\"1\",\"_token\":\"zGINS9sLvxKauRG4OeR1ajgjOp2UAzsOH0ECG6fP\"}', '2021-06-26 05:15:01', '2021-06-26 05:15:01'),
(1128, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-06-26 05:15:02', '2021-06-26 05:15:02'),
(1129, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:15:07', '2021-06-26 05:15:07'),
(1130, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_name\":\"Trouser\",\"price\":\"40\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"zGINS9sLvxKauRG4OeR1ajgjOp2UAzsOH0ECG6fP\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-06-26 05:15:36', '2021-06-26 05:15:36'),
(1131, 1, 'admin/products/create', 'GET', '103.163.151.59', '[]', '2021-06-26 05:15:36', '2021-06-26 05:15:36'),
(1132, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_name\":\"Trouser\",\"price\":\"40\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"zGINS9sLvxKauRG4OeR1ajgjOp2UAzsOH0ECG6fP\"}', '2021-06-26 05:17:06', '2021-06-26 05:17:06'),
(1133, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-06-26 05:17:06', '2021-06-26 05:17:06'),
(1134, 1, 'admin/banner-images', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:17:20', '2021-06-26 05:17:20'),
(1135, 1, 'admin/banner-images/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:17:29', '2021-06-26 05:17:29'),
(1136, 1, 'admin/banner-images/1', 'PUT', '103.163.151.59', '{\"service_id\":\"1\",\"title\":\"Flat 20% off on laundry service\",\"text\":\"View all offers\",\"status\":\"1\",\"_token\":\"zGINS9sLvxKauRG4OeR1ajgjOp2UAzsOH0ECG6fP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/banner-images\"}', '2021-06-26 05:18:08', '2021-06-26 05:18:08'),
(1137, 1, 'admin/banner-images', 'GET', '103.163.151.59', '[]', '2021-06-26 05:18:12', '2021-06-26 05:18:12'),
(1138, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:23:43', '2021-06-26 05:23:43'),
(1139, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:23:47', '2021-06-26 05:23:47'),
(1140, 1, 'admin/products/6/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:24:05', '2021-06-26 05:24:05'),
(1141, 1, 'admin/products/6', 'PUT', '103.163.151.59', '{\"service_id\":\"3\",\"category_id\":\"4\",\"product_name\":\"Wash and fold\",\"price\":\"95\",\"unit\":\"2\",\"status\":\"1\",\"_token\":\"zGINS9sLvxKauRG4OeR1ajgjOp2UAzsOH0ECG6fP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-06-26 05:24:42', '2021-06-26 05:24:42'),
(1142, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-06-26 05:24:43', '2021-06-26 05:24:43'),
(1143, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:24:57', '2021-06-26 05:24:57'),
(1144, 1, 'admin/products/create', 'GET', '103.163.151.59', '[]', '2021-06-26 05:25:20', '2021-06-26 05:25:20'),
(1145, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:25:34', '2021-06-26 05:25:34'),
(1146, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:25:41', '2021-06-26 05:25:41'),
(1147, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:25:55', '2021-06-26 05:25:55'),
(1148, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:27:05', '2021-06-26 05:27:05'),
(1149, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:27:13', '2021-06-26 05:27:13'),
(1150, 1, 'admin/memberships', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:27:32', '2021-06-26 05:27:32'),
(1151, 1, 'admin/memberships/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:27:35', '2021-06-26 05:27:35'),
(1152, 1, 'admin/memberships', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:28:11', '2021-06-26 05:28:11'),
(1153, 1, 'admin/memberships/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-26 05:28:20', '2021-06-26 05:28:20'),
(1154, 1, 'admin/memberships', 'POST', '103.163.151.59', '{\"service_id\":[\"3\",null],\"title\":\"Silver plan\",\"price\":\"599\",\"discount\":\"10\",\"duration\":\"1\",\"desc_1\":\"The silver plan basically offer for a individual person living away from home ,\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"zGINS9sLvxKauRG4OeR1ajgjOp2UAzsOH0ECG6fP\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-06-26 05:31:27', '2021-06-26 05:31:27'),
(1155, 1, 'admin/memberships/create', 'GET', '103.163.151.59', '[]', '2021-06-26 05:31:27', '2021-06-26 05:31:27'),
(1156, 1, 'admin/memberships', 'POST', '103.163.151.59', '{\"service_id\":[\"3\",null],\"title\":\"Silver plan\",\"price\":\"599\",\"discount\":\"10\",\"duration\":\"1\",\"desc_1\":\"The silver plan basically offer for a individual person living away from home ,\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"zGINS9sLvxKauRG4OeR1ajgjOp2UAzsOH0ECG6fP\"}', '2021-06-26 05:31:56', '2021-06-26 05:31:56'),
(1157, 1, 'admin/memberships/create', 'GET', '103.163.151.59', '[]', '2021-06-26 05:31:56', '2021-06-26 05:31:56'),
(1158, 1, 'admin/memberships', 'POST', '103.163.151.59', '{\"service_id\":[\"3\",null],\"title\":\"Silver plan\",\"price\":\"599\",\"discount\":\"10\",\"duration\":\"1\",\"desc_1\":\"The silver plan basically offer for a individual person living away from home ,\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"zGINS9sLvxKauRG4OeR1ajgjOp2UAzsOH0ECG6fP\"}', '2021-06-26 05:33:07', '2021-06-26 05:33:07'),
(1159, 1, 'admin/memberships/create', 'GET', '103.163.151.59', '[]', '2021-06-26 05:33:07', '2021-06-26 05:33:07'),
(1160, 1, 'admin/orders', 'GET', '47.31.193.115', '[]', '2021-06-28 07:23:04', '2021-06-28 07:23:04'),
(1161, 1, 'admin/orders', 'GET', '47.31.193.115', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-28 07:23:19', '2021-06-28 07:23:19'),
(1162, 1, 'admin', 'GET', '103.163.151.59', '[]', '2021-06-28 17:20:13', '2021-06-28 17:20:13'),
(1163, 1, 'admin/services', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-28 17:20:31', '2021-06-28 17:20:31'),
(1164, 1, 'admin/services/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-28 17:20:41', '2021-06-28 17:20:41'),
(1165, 1, 'admin/services', 'POST', '103.163.151.59', '{\"service_name\":\"Premium Laundry\",\"service_time\":\"24\",\"description\":\"24\",\"status\":\"1\",\"_token\":\"4oekIXafYE2n7qksx4cx2ywqKprADpTwUrIlBrJ8\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/services\"}', '2021-06-28 17:21:36', '2021-06-28 17:21:36'),
(1166, 1, 'admin/services', 'GET', '103.163.151.59', '[]', '2021-06-28 17:21:37', '2021-06-28 17:21:37'),
(1167, 1, 'admin/services', 'GET', '103.163.151.59', '[]', '2021-06-28 17:21:42', '2021-06-28 17:21:42'),
(1168, 1, 'admin/leads', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-28 17:21:49', '2021-06-28 17:21:49'),
(1169, 1, 'admin/bar-codes', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-28 17:22:01', '2021-06-28 17:22:01'),
(1170, 1, 'admin/time-slots', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-28 17:22:29', '2021-06-28 17:22:29'),
(1171, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-28 17:22:42', '2021-06-28 17:22:42'),
(1172, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-28 17:22:47', '2021-06-28 17:22:47'),
(1173, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-28 17:22:53', '2021-06-28 17:22:53'),
(1174, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-28 17:23:04', '2021-06-28 17:23:04'),
(1175, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_name\":\"Shirt\",\"price\":\"90\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"4oekIXafYE2n7qksx4cx2ywqKprADpTwUrIlBrJ8\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-06-28 17:23:29', '2021-06-28 17:23:29'),
(1176, 1, 'admin/products/create', 'GET', '103.163.151.59', '[]', '2021-06-28 17:23:29', '2021-06-28 17:23:29'),
(1177, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_name\":\"Shirt\",\"price\":\"90\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"4oekIXafYE2n7qksx4cx2ywqKprADpTwUrIlBrJ8\"}', '2021-06-28 17:23:58', '2021-06-28 17:23:58'),
(1178, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-06-28 17:23:58', '2021-06-28 17:23:58'),
(1179, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-28 17:24:01', '2021-06-28 17:24:01'),
(1180, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_name\":\"Trousers\",\"price\":\"90\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"4oekIXafYE2n7qksx4cx2ywqKprADpTwUrIlBrJ8\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-06-28 17:24:56', '2021-06-28 17:24:56'),
(1181, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-06-28 17:24:58', '2021-06-28 17:24:58'),
(1182, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-28 17:25:00', '2021-06-28 17:25:00'),
(1183, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"2\",\"category_id\":\"2\",\"product_name\":\"Sari\",\"price\":\"180\",\"unit\":\"2\",\"status\":\"1\",\"_token\":\"4oekIXafYE2n7qksx4cx2ywqKprADpTwUrIlBrJ8\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-06-28 17:26:07', '2021-06-28 17:26:07'),
(1184, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-06-28 17:26:07', '2021-06-28 17:26:07'),
(1185, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-28 17:26:11', '2021-06-28 17:26:11'),
(1186, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"4\",\"category_id\":\"1\",\"product_name\":\"Shirt\",\"price\":\"40\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"4oekIXafYE2n7qksx4cx2ywqKprADpTwUrIlBrJ8\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-06-28 17:26:49', '2021-06-28 17:26:49'),
(1187, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-06-28 17:26:49', '2021-06-28 17:26:49'),
(1188, 1, 'admin', 'GET', '106.203.242.62', '[]', '2021-06-29 06:39:31', '2021-06-29 06:39:31'),
(1189, 1, 'admin/time-slots', 'GET', '106.203.242.62', '{\"_pjax\":\"#pjax-container\"}', '2021-06-29 06:39:49', '2021-06-29 06:39:49'),
(1190, 1, 'admin/time-slots/create', 'GET', '106.203.242.62', '{\"_pjax\":\"#pjax-container\"}', '2021-06-29 06:40:02', '2021-06-29 06:40:02'),
(1191, 1, 'admin/time-slots', 'GET', '106.203.242.62', '{\"_pjax\":\"#pjax-container\"}', '2021-06-29 06:40:05', '2021-06-29 06:40:05'),
(1192, 1, 'admin/service-areas', 'GET', '106.203.242.62', '{\"_pjax\":\"#pjax-container\"}', '2021-06-29 06:45:27', '2021-06-29 06:45:27'),
(1193, 1, 'admin/services', 'GET', '106.203.242.62', '{\"_pjax\":\"#pjax-container\"}', '2021-06-29 06:45:28', '2021-06-29 06:45:28'),
(1194, 1, 'admin/services', 'GET', '106.203.242.62', '{\"_pjax\":\"#pjax-container\"}', '2021-06-29 06:50:11', '2021-06-29 06:50:11'),
(1195, 1, 'admin/memberships', 'GET', '106.203.242.62', '{\"_pjax\":\"#pjax-container\"}', '2021-06-29 06:55:16', '2021-06-29 06:55:16'),
(1196, 1, 'admin/memberships/1/edit', 'GET', '106.203.242.62', '{\"_pjax\":\"#pjax-container\"}', '2021-06-29 06:55:19', '2021-06-29 06:55:19'),
(1197, 1, 'admin', 'GET', '106.203.242.62', '{\"_pjax\":\"#pjax-container\"}', '2021-06-29 06:56:39', '2021-06-29 06:56:39'),
(1198, 1, 'admin/orders', 'GET', '47.31.232.236', '[]', '2021-06-29 06:59:47', '2021-06-29 06:59:47'),
(1199, 1, 'admin/orders', 'GET', '47.31.232.236', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-29 06:59:50', '2021-06-29 06:59:50'),
(1200, 1, 'admin/orders', 'GET', '47.31.232.236', '[]', '2021-06-29 09:17:49', '2021-06-29 09:17:49'),
(1201, 1, 'admin/orders', 'GET', '47.31.232.236', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-29 09:17:54', '2021-06-29 09:17:54'),
(1202, 1, 'admin', 'GET', '47.31.239.114', '[]', '2021-06-30 03:46:14', '2021-06-30 03:46:14'),
(1203, 1, 'admin/leads', 'GET', '47.31.239.114', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 03:46:48', '2021-06-30 03:46:48'),
(1204, 1, 'admin', 'GET', '47.31.239.114', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 03:46:56', '2021-06-30 03:46:56'),
(1205, 1, 'admin/payment-histories', 'GET', '47.31.239.114', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-30 03:47:08', '2021-06-30 03:47:08'),
(1206, 1, 'admin', 'GET', '47.31.239.114', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 03:47:29', '2021-06-30 03:47:29'),
(1207, 1, 'admin/orders', 'GET', '47.31.239.114', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":\"7\",\"expected_pickup_date\":null,\"expected_delivery_date\":null,\"_pjax\":\"#pjax-container\"}', '2021-06-30 03:47:31', '2021-06-30 03:47:31'),
(1208, 1, 'admin', 'GET', '47.31.239.114', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 03:47:37', '2021-06-30 03:47:37'),
(1209, 1, 'admin/orders', 'GET', '47.31.239.114', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-30 03:47:42', '2021-06-30 03:47:42'),
(1210, 1, 'admin/view_orders/49', 'GET', '47.31.239.114', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 03:48:37', '2021-06-30 03:48:37'),
(1211, 1, 'admin/orders', 'GET', '47.31.239.114', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 03:48:52', '2021-06-30 03:48:52'),
(1212, 1, 'admin/orders', 'GET', '47.31.239.114', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-06-30 03:48:57', '2021-06-30 03:48:57');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1213, 1, 'admin/view_orders/44', 'GET', '47.31.239.114', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 03:49:10', '2021-06-30 03:49:10'),
(1214, 1, 'admin/orders', 'GET', '47.31.239.114', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 03:49:16', '2021-06-30 03:49:16'),
(1215, 1, 'admin', 'GET', '47.31.239.114', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 03:49:40', '2021-06-30 03:49:40'),
(1216, 1, 'admin/payment-methods', 'GET', '47.31.239.114', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 03:50:40', '2021-06-30 03:50:40'),
(1217, 1, 'admin/bar-codes', 'GET', '47.31.239.114', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 03:51:27', '2021-06-30 03:51:27'),
(1218, 1, 'admin', 'GET', '47.31.239.114', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 03:51:44', '2021-06-30 03:51:44'),
(1219, 1, 'admin', 'GET', '47.31.239.114', '[]', '2021-06-30 05:07:03', '2021-06-30 05:07:03'),
(1220, 1, 'admin', 'GET', '103.163.151.59', '[]', '2021-06-30 10:00:18', '2021-06-30 10:00:18'),
(1221, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:01:02', '2021-06-30 10:01:02'),
(1222, 1, 'admin/leads', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:01:35', '2021-06-30 10:01:35'),
(1223, 1, 'admin/privacy_policies', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:05:01', '2021-06-30 10:05:01'),
(1224, 1, 'admin/faqs', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:05:22', '2021-06-30 10:05:22'),
(1225, 1, 'admin/faqs/2/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:05:48', '2021-06-30 10:05:48'),
(1226, 1, 'admin/orders', 'GET', '47.31.239.114', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:08:19', '2021-06-30 10:08:19'),
(1227, 1, 'admin/faqs/2', 'PUT', '103.163.151.59', '{\"question\":\"How will I know that my laundry has been picked-up?\",\"answer\":\"A delivery boy will visit your place, after the order is picked You will get a notification  on your numbers  and is in progress you will also get a notification and a call before the delivery of washed cloths.\",\"status\":\"1\",\"_token\":\"pM1yGjdSD8h37IUqhzVv5DQKs9xIYqQJJNhmDDb5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/faqs\"}', '2021-06-30 10:08:49', '2021-06-30 10:08:49'),
(1228, 1, 'admin/faqs', 'GET', '103.163.151.59', '[]', '2021-06-30 10:08:49', '2021-06-30 10:08:49'),
(1229, 1, 'admin/faqs/3/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:11:38', '2021-06-30 10:11:38'),
(1230, 1, 'admin/faqs/3', 'PUT', '103.163.151.59', '{\"question\":\"what if my order is misplaced ?\",\"answer\":\"This is rare but still if your order is misplaced please raise a complaint for the feedback menu , or else call us directedly ,  we will get that fixed within 72 hours .\",\"status\":\"1\",\"_token\":\"pM1yGjdSD8h37IUqhzVv5DQKs9xIYqQJJNhmDDb5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/faqs\"}', '2021-06-30 10:13:09', '2021-06-30 10:13:09'),
(1231, 1, 'admin/faqs', 'GET', '103.163.151.59', '[]', '2021-06-30 10:13:10', '2021-06-30 10:13:10'),
(1232, 1, 'admin/faqs/3/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:13:21', '2021-06-30 10:13:21'),
(1233, 1, 'admin/faqs/3', 'PUT', '103.163.151.59', '{\"question\":\"what if my order is misplaced ?\",\"answer\":\"This is rare but still if your order is misplaced please raise a complaint for the feedback menu , or else call us directedly ,  we will get that fixed .\",\"status\":\"1\",\"_token\":\"pM1yGjdSD8h37IUqhzVv5DQKs9xIYqQJJNhmDDb5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/faqs\"}', '2021-06-30 10:13:26', '2021-06-30 10:13:26'),
(1234, 1, 'admin/faqs', 'GET', '103.163.151.59', '[]', '2021-06-30 10:13:26', '2021-06-30 10:13:26'),
(1235, 1, 'admin/faqs/3/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:13:32', '2021-06-30 10:13:32'),
(1236, 1, 'admin/faqs/3', 'PUT', '103.163.151.59', '{\"question\":\"What if my order is misplaced ?\",\"answer\":\"This is rare but still if your order is misplaced please raise a complaint for the feedback menu , or else call us directedly ,  we will get that fixed .\",\"status\":\"1\",\"_token\":\"pM1yGjdSD8h37IUqhzVv5DQKs9xIYqQJJNhmDDb5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/faqs\"}', '2021-06-30 10:13:36', '2021-06-30 10:13:36'),
(1237, 1, 'admin/faqs', 'GET', '103.163.151.59', '[]', '2021-06-30 10:13:37', '2021-06-30 10:13:37'),
(1238, 1, 'admin/faqs/4/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:13:50', '2021-06-30 10:13:50'),
(1239, 1, 'admin/faqs/4', 'PUT', '103.163.151.59', '{\"question\":\"Do I need to count the items in my order?\",\"answer\":\"All the items are counted at the time of pickup and before delivery , so you can check your application and match the number of  items.\",\"status\":\"1\",\"_token\":\"pM1yGjdSD8h37IUqhzVv5DQKs9xIYqQJJNhmDDb5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/faqs\"}', '2021-06-30 10:14:58', '2021-06-30 10:14:58'),
(1240, 1, 'admin/faqs', 'GET', '103.163.151.59', '[]', '2021-06-30 10:14:58', '2021-06-30 10:14:58'),
(1241, 1, 'admin/faqs/5/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:15:02', '2021-06-30 10:15:02'),
(1242, 1, 'admin/faqs/5', 'PUT', '103.163.151.59', '{\"question\":\"I want to cancel the membership\",\"answer\":\"Yes you can cancel the membership plan anytime  as per your convenient, But remaining amount  will be adjusted on the laundry service only.\",\"status\":\"1\",\"_token\":\"pM1yGjdSD8h37IUqhzVv5DQKs9xIYqQJJNhmDDb5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/faqs\"}', '2021-06-30 10:16:52', '2021-06-30 10:16:52'),
(1243, 1, 'admin/faqs', 'GET', '103.163.151.59', '[]', '2021-06-30 10:16:52', '2021-06-30 10:16:52'),
(1244, 1, 'admin/faqs/5/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:16:58', '2021-06-30 10:16:58'),
(1245, 1, 'admin/faqs/5', 'PUT', '103.163.151.59', '{\"question\":\"I want to cancel my membership\",\"answer\":\"Yes you can cancel the membership plan anytime  as per your convenient, But remaining amount  will be adjusted on the laundry service only.\",\"status\":\"1\",\"_token\":\"pM1yGjdSD8h37IUqhzVv5DQKs9xIYqQJJNhmDDb5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/faqs\"}', '2021-06-30 10:17:03', '2021-06-30 10:17:03'),
(1246, 1, 'admin/faqs', 'GET', '103.163.151.59', '[]', '2021-06-30 10:17:03', '2021-06-30 10:17:03'),
(1247, 1, 'admin/faqs/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:17:16', '2021-06-30 10:17:16'),
(1248, 1, 'admin/faqs', 'POST', '103.163.151.59', '{\"question\":\"My order is not treated properly I want  a refund ?\",\"answer\":\"We use the best solvents in market , we guarantee 99% that the service will not be spoiled, but still in case if their is any damage we will retreat the order for you just for free.\",\"status\":\"1\",\"_token\":\"pM1yGjdSD8h37IUqhzVv5DQKs9xIYqQJJNhmDDb5\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/faqs\"}', '2021-06-30 10:19:55', '2021-06-30 10:19:55'),
(1249, 1, 'admin/faqs', 'GET', '103.163.151.59', '[]', '2021-06-30 10:19:56', '2021-06-30 10:19:56'),
(1250, 1, 'admin/auth/roles', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:20:04', '2021-06-30 10:20:04'),
(1251, 1, 'admin/time-slots', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:20:21', '2021-06-30 10:20:21'),
(1252, 1, 'admin/delivery_boys', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:20:35', '2021-06-30 10:20:35'),
(1253, 1, 'admin/app_settings', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:20:45', '2021-06-30 10:20:45'),
(1254, 1, 'admin/app_settings/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:20:52', '2021-06-30 10:20:52'),
(1255, 1, 'admin/app_settings/1', 'PUT', '103.163.151.59', '{\"application_name\":\"KRYCHE\",\"contact_number\":\"8882103813\",\"whatsapp_number\":\"8882103813\",\"email\":\"kryche.india@gmail.com\",\"address\":\"sector 55 Gurgaon Haryana,\",\"address_lat\":\"28.5851\",\"address_lng\":\"77.0713\",\"country\":\"India\",\"default_currency\":\"\\u20b9\",\"currency_short_code\":\"INR\",\"refer_earn_amt\":\"50\",\"about_us\":\"kRYCHE was established in YEAR 2021,  and has ever since been a pioneer company in providing first-rate and superior laundry services. We provide high quality and affordable services in a way of care and nurture for your threads. We have always catered to the requirements of commercial laundry and cleaning through our expertise and knowledge in the area. We process laundry as per our customer specifications. We only use safe and environmental friendly detergents and disinfectants and all our equipment are power conservative\",\"fcm_server_key\":\"AAAA6CbcUU4:APA91bEjXcUD5QHo5eJ70JNWQYhbgmS24mDBwIIwn4sexCbT8mKThwddBoevcjOM8uOcZZ_5E_3MikmSmQgtNiVaeUDnHxKrvh9yY1wan673VZs4TBlpyNS4gK06bKP5C895CP6dNmcD\",\"_token\":\"pM1yGjdSD8h37IUqhzVv5DQKs9xIYqQJJNhmDDb5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/app_settings\"}', '2021-06-30 10:23:12', '2021-06-30 10:23:12'),
(1256, 1, 'admin/app_settings', 'GET', '103.163.151.59', '[]', '2021-06-30 10:23:12', '2021-06-30 10:23:12'),
(1257, 1, 'admin/services', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:23:21', '2021-06-30 10:23:21'),
(1258, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:23:38', '2021-06-30 10:23:38'),
(1259, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:23:50', '2021-06-30 10:23:50'),
(1260, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:23:59', '2021-06-30 10:23:59'),
(1261, 1, 'admin/app_settings', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:24:06', '2021-06-30 10:24:06'),
(1262, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:24:12', '2021-06-30 10:24:12'),
(1263, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:24:29', '2021-06-30 10:24:29'),
(1264, 1, 'admin/app_settings', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:25:10', '2021-06-30 10:25:10'),
(1265, 1, 'admin/faqs', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:25:13', '2021-06-30 10:25:13'),
(1266, 1, 'admin/privacy_policies', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:25:17', '2021-06-30 10:25:17'),
(1267, 1, 'admin/privacy_policies/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:26:04', '2021-06-30 10:26:04'),
(1268, 1, 'admin/privacy_policies/1', 'PUT', '103.163.151.59', '{\"title\":\"Terms of use\",\"description\":\"1. Payment Terms\\r\\n The payment will be  done as per the order is generated the payment will be done at the time of delivery , but if the customer is enrolling with any plan or packages they have to make the payment in advance \\r\\n\\r\\n2, Refund policy\\r\\nwe do have a refund policy incase of  damage of cloths like stolen or burned we have 10 time payable to the service charges , However in term of colour fade we are  not offering any  kind of return however that service will be free , You have to raise a complaint and our team will coordinate with you TAT \\r\\n hours\",\"status\":\"1\",\"_token\":\"pM1yGjdSD8h37IUqhzVv5DQKs9xIYqQJJNhmDDb5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/privacy_policies\"}', '2021-06-30 10:33:39', '2021-06-30 10:33:39'),
(1269, 1, 'admin/privacy_policies', 'GET', '103.163.151.59', '[]', '2021-06-30 10:33:41', '2021-06-30 10:33:41'),
(1270, 1, 'admin/privacy_policies/2', 'DELETE', '103.163.151.59', '{\"_method\":\"delete\",\"_token\":\"pM1yGjdSD8h37IUqhzVv5DQKs9xIYqQJJNhmDDb5\"}', '2021-06-30 10:35:48', '2021-06-30 10:35:48'),
(1271, 1, 'admin/privacy_policies', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:35:48', '2021-06-30 10:35:48'),
(1272, 1, 'admin/privacy_policies', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:35:59', '2021-06-30 10:35:59'),
(1273, 1, 'admin/faqs', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:36:03', '2021-06-30 10:36:03'),
(1274, 1, 'admin/units', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:36:11', '2021-06-30 10:36:11'),
(1275, 1, 'admin/feedback', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:36:18', '2021-06-30 10:36:18'),
(1276, 1, 'admin/feedback', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:36:42', '2021-06-30 10:36:42'),
(1277, 1, 'admin/bar-codes', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:38:09', '2021-06-30 10:38:09'),
(1278, 1, 'admin/units', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:38:19', '2021-06-30 10:38:19'),
(1279, 1, 'admin/feedback', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:38:24', '2021-06-30 10:38:24'),
(1280, 1, 'admin/faqs', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:39:32', '2021-06-30 10:39:32'),
(1281, 1, 'admin/app_settings', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:41:21', '2021-06-30 10:41:21'),
(1282, 1, 'admin/privacy_policies', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:41:25', '2021-06-30 10:41:25'),
(1283, 1, 'admin/privacy_policies/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:41:35', '2021-06-30 10:41:35'),
(1284, 1, 'admin/privacy_policies/1', 'PUT', '103.163.151.59', '{\"title\":\"Terms of use\",\"description\":\"1. Payment Terms\\r\\n The payment will be  done as per the order is generated the payment will be done at the time of delivery , but if the customer is enrolling with any plan or packages they have to make the payment in advance \\r\\n\\r\\n2, Refund policy\\r\\nwe do have a refund policy incase of  damage of cloths like stolen or burned we have 10 time payable to the service charges , However in term of colour fade we are  not offering any  kind of return however that service will be rechecked , You have to raise a complaint and our team will coordinate with you .\",\"status\":\"1\",\"_token\":\"pM1yGjdSD8h37IUqhzVv5DQKs9xIYqQJJNhmDDb5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/privacy_policies\"}', '2021-06-30 10:42:16', '2021-06-30 10:42:16'),
(1285, 1, 'admin/privacy_policies', 'GET', '103.163.151.59', '[]', '2021-06-30 10:42:16', '2021-06-30 10:42:16'),
(1286, 1, 'admin/units', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:42:24', '2021-06-30 10:42:24'),
(1287, 1, 'admin/payment-methods', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:42:30', '2021-06-30 10:42:30'),
(1288, 1, 'admin/units', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:42:44', '2021-06-30 10:42:44'),
(1289, 1, 'admin/faqs', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:42:48', '2021-06-30 10:42:48'),
(1290, 1, 'admin/bar-codes', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:42:53', '2021-06-30 10:42:53'),
(1291, 1, 'admin/memberships', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:43:06', '2021-06-30 10:43:06'),
(1292, 1, 'admin/memberships/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:43:09', '2021-06-30 10:43:09'),
(1293, 1, 'admin/memberships/1', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",null],\"title\":\"silver plan\",\"price\":\"599\",\"discount\":\"0\",\"duration\":\"2\",\"desc_1\":\"Cloths                                  8 kg \\r\\n\\r\\nservice time                      24 hours \\r\\n\\r\\nminimum order                299\\r\\n\\r\\nvalidity                                  3 months\",\"desc_2\":\"25% discount from the market price.\",\"desc_3\":\"Ideal for 1 person\",\"status\":\"1\",\"_token\":\"pM1yGjdSD8h37IUqhzVv5DQKs9xIYqQJJNhmDDb5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-06-30 10:46:54', '2021-06-30 10:46:54'),
(1294, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-06-30 10:46:54', '2021-06-30 10:46:54'),
(1295, 1, 'admin/memberships/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:48:35', '2021-06-30 10:48:35'),
(1296, 1, 'admin/memberships/1', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",null],\"title\":\"silver plan\",\"price\":\"599\",\"discount\":\"25\",\"duration\":\"2\",\"desc_1\":\"Cloths                                  8 kg \\r\\n\\r\\nservice time                      24 hours \\r\\n\\r\\nminimum order                299\\r\\n\\r\\nvalidity                                  3 months\",\"desc_2\":\"25% discount from the market price.\",\"desc_3\":\"Ideal for 1 person\",\"status\":\"1\",\"_token\":\"pM1yGjdSD8h37IUqhzVv5DQKs9xIYqQJJNhmDDb5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-06-30 10:48:53', '2021-06-30 10:48:53'),
(1297, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-06-30 10:48:53', '2021-06-30 10:48:53'),
(1298, 1, 'admin/memberships/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 10:49:10', '2021-06-30 10:49:10'),
(1299, 1, 'admin/memberships/1', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",null],\"title\":\"silver plan\",\"price\":\"599\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"Cloths                                  8 kg \\r\\n\\r\\nservice time                       24 hours \\r\\n\\r\\nminimum order               299\\r\\n\\r\\nvalidity                                3 months\\r\\n\\r\\nAny two preferred pickups\",\"desc_2\":\"25% discount from the market price.\",\"desc_3\":\"Ideal for 1 person\\r\\n\\r\\nFree pickup and delivery\",\"status\":\"1\",\"_token\":\"pM1yGjdSD8h37IUqhzVv5DQKs9xIYqQJJNhmDDb5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-06-30 10:51:38', '2021-06-30 10:51:38'),
(1300, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-06-30 10:51:38', '2021-06-30 10:51:38'),
(1301, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 13:50:30', '2021-06-30 13:50:30'),
(1302, 1, 'admin/payment-histories', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-30 13:50:37', '2021-06-30 13:50:37'),
(1303, 1, 'admin/payment-histories', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-30 13:50:49', '2021-06-30 13:50:49'),
(1304, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 13:51:00', '2021-06-30 13:51:00'),
(1305, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-30 13:51:09', '2021-06-30 13:51:09'),
(1306, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 13:51:13', '2021-06-30 13:51:13'),
(1307, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-30 13:51:15', '2021-06-30 13:51:15'),
(1308, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 13:51:20', '2021-06-30 13:51:20'),
(1309, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 13:59:31', '2021-06-30 13:59:31'),
(1310, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 13:59:35', '2021-06-30 13:59:35'),
(1311, 1, 'admin/services', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 13:59:38', '2021-06-30 13:59:38'),
(1312, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 13:59:46', '2021-06-30 13:59:46'),
(1313, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 14:05:45', '2021-06-30 14:05:45'),
(1314, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"4\",\"category_id\":\"1\",\"product_name\":\"Jeans\",\"price\":\"40\",\"unit\":null,\"status\":\"1\",\"_token\":\"EwjPPPV1Yfih1IiirMY7O8CnBG9Sy85puOPzjjHI\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-06-30 14:06:12', '2021-06-30 14:06:12'),
(1315, 1, 'admin/products/create', 'GET', '103.163.151.59', '[]', '2021-06-30 14:06:12', '2021-06-30 14:06:12'),
(1316, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"4\",\"category_id\":\"1\",\"product_name\":\"Jeans\",\"price\":\"40\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"EwjPPPV1Yfih1IiirMY7O8CnBG9Sy85puOPzjjHI\"}', '2021-06-30 14:06:18', '2021-06-30 14:06:18'),
(1317, 1, 'admin/products/create', 'GET', '103.163.151.59', '[]', '2021-06-30 14:06:18', '2021-06-30 14:06:18'),
(1318, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-30 14:11:08', '2021-06-30 14:11:08'),
(1319, 1, 'admin/view_orders/46', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 14:11:15', '2021-06-30 14:11:15'),
(1320, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 14:22:54', '2021-06-30 14:22:54'),
(1321, 1, 'admin/service-areas', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 14:22:58', '2021-06-30 14:22:58'),
(1322, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 16:16:17', '2021-06-30 16:16:17'),
(1323, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 16:16:41', '2021-06-30 16:16:41'),
(1324, 1, 'admin/orders/37/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 16:16:48', '2021-06-30 16:16:48'),
(1325, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 16:21:48', '2021-06-30 16:21:48'),
(1326, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-30 16:21:50', '2021-06-30 16:21:50'),
(1327, 1, 'admin/orders/51/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 16:22:29', '2021-06-30 16:22:29'),
(1328, 1, 'admin/orders/51', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD84499264\",\"delivered_by\":null,\"status\":\"3\",\"payment_status\":\"1\",\"_token\":\"EwjPPPV1Yfih1IiirMY7O8CnBG9Sy85puOPzjjHI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-06-30 16:22:36', '2021-06-30 16:22:36'),
(1329, 1, 'admin/orders/51/edit', 'GET', '103.163.151.59', '[]', '2021-06-30 16:22:37', '2021-06-30 16:22:37'),
(1330, 1, 'admin/orders/51', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD84499264\",\"delivered_by\":\"4\",\"status\":\"3\",\"payment_status\":\"1\",\"_token\":\"EwjPPPV1Yfih1IiirMY7O8CnBG9Sy85puOPzjjHI\",\"_method\":\"PUT\"}', '2021-06-30 16:22:43', '2021-06-30 16:22:43'),
(1331, 1, 'admin/orders', 'GET', '103.163.151.59', '[]', '2021-06-30 16:22:43', '2021-06-30 16:22:43'),
(1332, 1, 'admin/orders/52/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 16:23:34', '2021-06-30 16:23:34'),
(1333, 1, 'admin/orders/52', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD82138327\",\"delivered_by\":\"4\",\"status\":\"3\",\"payment_status\":\"1\",\"_token\":\"EwjPPPV1Yfih1IiirMY7O8CnBG9Sy85puOPzjjHI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-30 16:23:46', '2021-06-30 16:23:46'),
(1334, 1, 'admin/orders', 'GET', '103.163.151.59', '[]', '2021-06-30 16:23:47', '2021-06-30 16:23:47'),
(1335, 1, 'admin/orders/52/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 16:23:58', '2021-06-30 16:23:58'),
(1336, 1, 'admin/orders/52', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD82138327\",\"delivered_by\":\"4\",\"status\":\"3\",\"payment_status\":\"1\",\"_token\":\"EwjPPPV1Yfih1IiirMY7O8CnBG9Sy85puOPzjjHI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-06-30 16:24:06', '2021-06-30 16:24:06'),
(1337, 1, 'admin/orders', 'GET', '103.163.151.59', '[]', '2021-06-30 16:24:09', '2021-06-30 16:24:09'),
(1338, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 16:28:53', '2021-06-30 16:28:53'),
(1339, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 16:29:02', '2021-06-30 16:29:02'),
(1340, 1, 'admin/payment-histories', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-30 16:29:10', '2021-06-30 16:29:10'),
(1341, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 16:32:42', '2021-06-30 16:32:42'),
(1342, 1, 'admin/time-slots', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 17:53:57', '2021-06-30 17:53:57'),
(1343, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 17:54:02', '2021-06-30 17:54:02'),
(1344, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-30 17:54:03', '2021-06-30 17:54:03'),
(1345, 1, 'admin/orders/58/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 17:55:12', '2021-06-30 17:55:12'),
(1346, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 17:55:16', '2021-06-30 17:55:16'),
(1347, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-06-30 17:55:17', '2021-06-30 17:55:17'),
(1348, 1, 'admin/view_orders/58', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 17:56:31', '2021-06-30 17:56:31'),
(1349, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 17:57:27', '2021-06-30 17:57:27'),
(1350, 1, 'admin/service-areas', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 17:57:31', '2021-06-30 17:57:31'),
(1351, 1, 'admin/service-areas/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 17:57:40', '2021-06-30 17:57:40'),
(1352, 1, 'admin/service-areas/1', 'PUT', '103.163.151.59', '{\"title\":\"Uttam Nagar\",\"pincode\":\"110059\",\"delivery_changes\":\"0\",\"_token\":\"EwjPPPV1Yfih1IiirMY7O8CnBG9Sy85puOPzjjHI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/service-areas\"}', '2021-06-30 17:57:44', '2021-06-30 17:57:44'),
(1353, 1, 'admin/service-areas', 'GET', '103.163.151.59', '[]', '2021-06-30 17:57:44', '2021-06-30 17:57:44'),
(1354, 1, 'admin/service-areas/2/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 17:57:46', '2021-06-30 17:57:46'),
(1355, 1, 'admin/service-areas/2', 'PUT', '103.163.151.59', '{\"title\":\"Janak Puri\",\"pincode\":\"110060\",\"delivery_changes\":\"0\",\"_token\":\"EwjPPPV1Yfih1IiirMY7O8CnBG9Sy85puOPzjjHI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/service-areas\"}', '2021-06-30 17:57:49', '2021-06-30 17:57:49'),
(1356, 1, 'admin/service-areas', 'GET', '103.163.151.59', '[]', '2021-06-30 17:57:50', '2021-06-30 17:57:50'),
(1357, 1, 'admin/service-areas/3/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 17:57:52', '2021-06-30 17:57:52'),
(1358, 1, 'admin/service-areas/3', 'PUT', '103.163.151.59', '{\"title\":\"Dawaka\",\"pincode\":\"110075\",\"delivery_changes\":\"0\",\"_token\":\"EwjPPPV1Yfih1IiirMY7O8CnBG9Sy85puOPzjjHI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/service-areas\"}', '2021-06-30 17:57:55', '2021-06-30 17:57:55'),
(1359, 1, 'admin/service-areas', 'GET', '103.163.151.59', '[]', '2021-06-30 17:57:55', '2021-06-30 17:57:55'),
(1360, 1, 'admin/service-areas/4/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 17:57:58', '2021-06-30 17:57:58'),
(1361, 1, 'admin/service-areas/4', 'PUT', '103.163.151.59', '{\"title\":\"uttamnagr\",\"pincode\":\"110059\",\"delivery_changes\":\"0\",\"_token\":\"EwjPPPV1Yfih1IiirMY7O8CnBG9Sy85puOPzjjHI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/service-areas\"}', '2021-06-30 17:58:01', '2021-06-30 17:58:01'),
(1362, 1, 'admin/service-areas', 'GET', '103.163.151.59', '[]', '2021-06-30 17:58:01', '2021-06-30 17:58:01'),
(1363, 1, 'admin/service-areas/5/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 17:58:03', '2021-06-30 17:58:03'),
(1364, 1, 'admin/service-areas/5', 'PUT', '103.163.151.59', '{\"title\":\"gurgaon\",\"pincode\":\"1220011\",\"delivery_changes\":\"0\",\"_token\":\"EwjPPPV1Yfih1IiirMY7O8CnBG9Sy85puOPzjjHI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/service-areas\"}', '2021-06-30 17:58:05', '2021-06-30 17:58:05'),
(1365, 1, 'admin/service-areas', 'GET', '103.163.151.59', '[]', '2021-06-30 17:58:05', '2021-06-30 17:58:05'),
(1366, 1, 'admin/time-slots', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-06-30 18:06:52', '2021-06-30 18:06:52'),
(1367, 1, 'admin', 'GET', '157.37.199.91', '[]', '2021-07-01 04:32:32', '2021-07-01 04:32:32'),
(1368, 1, 'admin', 'GET', '157.37.199.91', '[]', '2021-07-01 04:34:32', '2021-07-01 04:34:32'),
(1369, 1, 'admin', 'GET', '157.37.199.91', '[]', '2021-07-01 05:45:14', '2021-07-01 05:45:14'),
(1370, 1, 'admin', 'GET', '157.37.199.91', '[]', '2021-07-01 10:16:13', '2021-07-01 10:16:13'),
(1371, 1, 'admin/leads', 'GET', '157.37.199.91', '{\"_pjax\":\"#pjax-container\"}', '2021-07-01 10:32:40', '2021-07-01 10:32:40'),
(1372, 1, 'admin/services', 'GET', '157.37.199.91', '{\"_pjax\":\"#pjax-container\"}', '2021-07-01 10:32:57', '2021-07-01 10:32:57'),
(1373, 1, 'admin', 'GET', '157.37.199.91', '{\"_pjax\":\"#pjax-container\"}', '2021-07-01 10:33:38', '2021-07-01 10:33:38'),
(1374, 1, 'admin/orders', 'GET', '157.37.199.91', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":\"7\",\"expected_pickup_date\":null,\"expected_delivery_date\":null,\"_pjax\":\"#pjax-container\"}', '2021-07-01 10:33:46', '2021-07-01 10:33:46'),
(1375, 1, 'admin/orders', 'GET', '157.37.199.91', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-01 10:33:52', '2021-07-01 10:33:52'),
(1376, 1, 'admin/orders', 'GET', '157.37.199.91', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2021-07-01 10:34:00', '2021-07-01 10:34:00'),
(1377, 1, 'admin/orders', 'GET', '157.37.199.91', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2021-07-01 10:34:10', '2021-07-01 10:34:10'),
(1378, 1, 'admin', 'GET', '157.37.199.91', '{\"_pjax\":\"#pjax-container\"}', '2021-07-01 10:34:14', '2021-07-01 10:34:14'),
(1379, 1, 'admin/delivery_boys', 'GET', '157.37.199.91', '{\"_pjax\":\"#pjax-container\"}', '2021-07-01 10:34:30', '2021-07-01 10:34:30'),
(1380, 1, 'admin/service-areas', 'GET', '157.37.199.91', '{\"_pjax\":\"#pjax-container\"}', '2021-07-01 10:34:57', '2021-07-01 10:34:57'),
(1381, 1, 'admin/memberships', 'GET', '157.37.199.91', '{\"_pjax\":\"#pjax-container\"}', '2021-07-01 10:36:28', '2021-07-01 10:36:28'),
(1382, 1, 'admin', 'GET', '157.37.199.91', '[]', '2021-07-02 05:45:41', '2021-07-02 05:45:41'),
(1383, 1, 'admin', 'GET', '157.37.199.91', '[]', '2021-07-02 07:17:33', '2021-07-02 07:17:33'),
(1384, 1, 'admin', 'GET', '157.37.199.91', '[]', '2021-07-02 07:18:52', '2021-07-02 07:18:52'),
(1385, 1, 'admin/orders', 'GET', '157.37.199.91', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-02 07:24:12', '2021-07-02 07:24:12'),
(1386, 1, 'admin/orders', 'GET', '157.37.199.91', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-07-02 08:27:30', '2021-07-02 08:27:30'),
(1387, 1, 'admin/orders', 'GET', '157.37.199.91', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-02 10:06:26', '2021-07-02 10:06:26'),
(1388, 1, 'admin/memberships', 'GET', '157.37.199.91', '{\"_pjax\":\"#pjax-container\"}', '2021-07-02 10:11:44', '2021-07-02 10:11:44'),
(1389, 1, 'admin/memberships/1/edit', 'GET', '157.37.199.91', '{\"_pjax\":\"#pjax-container\"}', '2021-07-02 10:11:55', '2021-07-02 10:11:55'),
(1390, 1, 'admin/memberships/1', 'PUT', '157.37.199.91', '{\"service_id\":[\"1\",\"2\",null],\"title\":\"silver plan\",\"price\":\"599\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"Cloths                                  8 kg \\r\\n\\r\\nservice time                       24 hours \\r\\n\\r\\nminimum order               299\\r\\n\\r\\nvalidity                                3 months\\r\\n\\r\\nAny two preferred pickups\",\"desc_2\":\"25% discount from the market price.\",\"desc_3\":\"Ideal for 1 person\\r\\n\\r\\nFree pickup and delivery\",\"status\":\"1\",\"_token\":\"XoSSyijsnzm0q2w58qf6k9YAQvK1gQgPHlqVvzxR\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-02 10:13:12', '2021-07-02 10:13:12'),
(1391, 1, 'admin/memberships', 'GET', '157.37.199.91', '[]', '2021-07-02 10:13:14', '2021-07-02 10:13:14'),
(1392, 1, 'admin/memberships/2/edit', 'GET', '157.37.199.91', '{\"_pjax\":\"#pjax-container\"}', '2021-07-02 10:16:45', '2021-07-02 10:16:45'),
(1393, 1, 'admin/memberships/2', 'PUT', '157.37.199.91', '{\"service_id\":[\"2\",\"3\",null],\"title\":\"professional\",\"price\":\"200\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"professional users are nice\",\"desc_2\":\"Get a 20% discount on all wash, wash & Iron services\",\"desc_3\":\"Starter pack\",\"status\":\"1\",\"_token\":\"XoSSyijsnzm0q2w58qf6k9YAQvK1gQgPHlqVvzxR\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-02 10:16:54', '2021-07-02 10:16:54'),
(1394, 1, 'admin/memberships', 'GET', '157.37.199.91', '[]', '2021-07-02 10:16:54', '2021-07-02 10:16:54'),
(1395, 1, 'admin/memberships/3/edit', 'GET', '157.37.199.91', '{\"_pjax\":\"#pjax-container\"}', '2021-07-02 10:17:28', '2021-07-02 10:17:28'),
(1396, 1, 'admin/memberships/3', 'PUT', '157.37.199.91', '{\"service_id\":[\"1\",\"2\",\"3\",null],\"title\":\"Pro pack\",\"price\":\"400\",\"discount\":\"50\",\"duration\":\"2\",\"desc_1\":\"These are our premium user\",\"desc_2\":\"Get a big 50% discount on all services\",\"desc_3\":null,\"status\":\"1\",\"_token\":\"XoSSyijsnzm0q2w58qf6k9YAQvK1gQgPHlqVvzxR\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-02 10:17:37', '2021-07-02 10:17:37'),
(1397, 1, 'admin/memberships', 'GET', '157.37.199.91', '[]', '2021-07-02 10:17:39', '2021-07-02 10:17:39'),
(1398, 1, 'admin/memberships/1/edit', 'GET', '157.37.199.91', '{\"_pjax\":\"#pjax-container\"}', '2021-07-02 10:21:10', '2021-07-02 10:21:10'),
(1399, 1, 'admin/memberships/1', 'PUT', '157.37.199.91', '{\"service_id\":[\"1\",\"2\",null],\"title\":\"silver plan\",\"price\":\"599\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"Cloths                                  8 kg \\r\\n\\r\\nservice time                       24 hours \\r\\n\\r\\nminimum order                 \\u20b9299\\r\\n\\r\\nvalidity                                3 months\\r\\n\\r\\nAny two preferred pickups\",\"desc_2\":\"25% discount from the market price.\",\"desc_3\":\"Ideal for 1 person\\r\\n\\r\\nFree pickup and delivery\",\"status\":\"1\",\"_token\":\"XoSSyijsnzm0q2w58qf6k9YAQvK1gQgPHlqVvzxR\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-02 10:21:31', '2021-07-02 10:21:31'),
(1400, 1, 'admin/memberships/1/edit', 'GET', '157.37.199.91', '[]', '2021-07-02 10:21:31', '2021-07-02 10:21:31'),
(1401, 1, 'admin/memberships/1', 'PUT', '157.37.199.91', '{\"service_id\":[\"1\",\"2\",null],\"title\":\"silver plan\",\"price\":\"599\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"Cloths                                  8 kg \\r\\n\\r\\nservice time                       24 hours \\r\\n\\r\\nminimum order                 Rs299\\r\\n\\r\\nvalidity                                3 months\\r\\n\\r\\nAny two preferred pickups\",\"desc_2\":\"25% discount from the market price.\",\"desc_3\":\"Ideal for 1 person\\r\\n\\r\\nFree pickup and delivery\",\"status\":\"1\",\"_token\":\"XoSSyijsnzm0q2w58qf6k9YAQvK1gQgPHlqVvzxR\",\"_method\":\"PUT\"}', '2021-07-02 10:21:47', '2021-07-02 10:21:47'),
(1402, 1, 'admin/memberships', 'GET', '157.37.199.91', '[]', '2021-07-02 10:21:50', '2021-07-02 10:21:50'),
(1403, 1, 'admin/memberships/1/edit', 'GET', '157.37.199.91', '{\"_pjax\":\"#pjax-container\"}', '2021-07-02 10:25:55', '2021-07-02 10:25:55'),
(1404, 1, 'admin/memberships/1/edit', 'GET', '157.37.199.91', '[]', '2021-07-02 10:27:26', '2021-07-02 10:27:26'),
(1405, 1, 'admin/memberships', 'GET', '157.37.199.91', '{\"_pjax\":\"#pjax-container\"}', '2021-07-02 10:27:46', '2021-07-02 10:27:46'),
(1406, 1, 'admin/memberships/1/edit', 'GET', '157.37.199.91', '{\"_pjax\":\"#pjax-container\"}', '2021-07-02 10:28:11', '2021-07-02 10:28:11'),
(1407, 1, 'admin/memberships', 'GET', '157.37.199.91', '{\"_pjax\":\"#pjax-container\"}', '2021-07-02 10:28:19', '2021-07-02 10:28:19'),
(1408, 1, 'admin/memberships', 'GET', '157.37.199.91', '[]', '2021-07-02 10:28:25', '2021-07-02 10:28:25'),
(1409, 1, 'admin', 'GET', '157.37.211.33', '[]', '2021-07-03 04:29:52', '2021-07-03 04:29:52'),
(1410, 1, 'admin/app_settings', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 04:31:40', '2021-07-03 04:31:40'),
(1411, 1, 'admin/app_settings/1/edit', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 04:32:04', '2021-07-03 04:32:04'),
(1412, 1, 'admin/app_settings/1/edit', 'GET', '157.37.211.33', '[]', '2021-07-03 04:39:59', '2021-07-03 04:39:59'),
(1413, 1, 'admin/app_settings/1/edit', 'GET', '157.37.211.33', '[]', '2021-07-03 04:41:47', '2021-07-03 04:41:47'),
(1414, 1, 'admin/app_settings/1/edit', 'GET', '157.37.211.33', '[]', '2021-07-03 04:42:46', '2021-07-03 04:42:46'),
(1415, 1, 'admin/app_settings/1/edit', 'GET', '157.37.211.33', '[]', '2021-07-03 04:42:59', '2021-07-03 04:42:59'),
(1416, 1, 'admin/app_settings/1', 'PUT', '157.37.211.33', '{\"application_name\":\"KRYCHE\",\"contact_number\":\"8882103813\",\"whatsapp_number\":\"8882103813\",\"email\":\"kryche.india@gmail.com\",\"address\":\"sector 55 Gurgaon Haryana,\",\"address_lat\":\"28.5851\",\"address_lng\":\"77.0713\",\"country\":\"India\",\"default_currency\":\"\\u20b9\",\"currency_short_code\":\"INR\",\"refer_earn_amt\":\"50\",\"delivery_hours\":\"24\",\"minimum_order_amt\":\"399\",\"about_us\":\"kRYCHE was established in YEAR 2021,  and has ever since been a pioneer company in providing first-rate and superior laundry services. We provide high quality and affordable services in a way of care and nurture for your threads. We have always catered to the requirements of commercial laundry and cleaning through our expertise and knowledge in the area. We process laundry as per our customer specifications. We only use safe and environmental friendly detergents and disinfectants and all our equipment are power conservative\",\"fcm_server_key\":\"AAAA6CbcUU4:APA91bEjXcUD5QHo5eJ70JNWQYhbgmS24mDBwIIwn4sexCbT8mKThwddBoevcjOM8uOcZZ_5E_3MikmSmQgtNiVaeUDnHxKrvh9yY1wan673VZs4TBlpyNS4gK06bKP5C895CP6dNmcD\",\"_token\":\"NoDBZ2QA3SMjNrMppIfiP5x4fD0NoxLJtkjbQMnL\",\"_method\":\"PUT\"}', '2021-07-03 04:47:06', '2021-07-03 04:47:06'),
(1417, 1, 'admin/app_settings', 'GET', '157.37.211.33', '[]', '2021-07-03 04:47:15', '2021-07-03 04:47:15'),
(1418, 1, 'admin/app_settings/1/edit', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 04:47:20', '2021-07-03 04:47:20'),
(1419, 1, 'admin/app_settings/1', 'PUT', '157.37.211.33', '{\"application_name\":\"KRYCHE\",\"contact_number\":\"8882103813\",\"whatsapp_number\":\"8882103813\",\"email\":\"kryche.india@gmail.com\",\"address\":\"sector 55 Gurgaon Haryana,\",\"address_lat\":\"28.5851\",\"address_lng\":\"77.0713\",\"country\":\"India\",\"default_currency\":\"\\u20b9\",\"currency_short_code\":\"INR\",\"refer_earn_amt\":\"50\",\"delivery_hours\":\"24\",\"minimum_order_amt\":\"299\",\"about_us\":\"kRYCHE was established in YEAR 2021,  and has ever since been a pioneer company in providing first-rate and superior laundry services. We provide high quality and affordable services in a way of care and nurture for your threads. We have always catered to the requirements of commercial laundry and cleaning through our expertise and knowledge in the area. We process laundry as per our customer specifications. We only use safe and environmental friendly detergents and disinfectants and all our equipment are power conservative\",\"fcm_server_key\":\"AAAA6CbcUU4:APA91bEjXcUD5QHo5eJ70JNWQYhbgmS24mDBwIIwn4sexCbT8mKThwddBoevcjOM8uOcZZ_5E_3MikmSmQgtNiVaeUDnHxKrvh9yY1wan673VZs4TBlpyNS4gK06bKP5C895CP6dNmcD\",\"_token\":\"NoDBZ2QA3SMjNrMppIfiP5x4fD0NoxLJtkjbQMnL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/app_settings\"}', '2021-07-03 04:47:31', '2021-07-03 04:47:31'),
(1420, 1, 'admin/app_settings', 'GET', '157.37.211.33', '[]', '2021-07-03 04:47:32', '2021-07-03 04:47:32'),
(1421, 1, 'admin/orders', 'GET', '157.37.211.33', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-03 04:48:37', '2021-07-03 04:48:37'),
(1422, 1, 'admin/service-areas', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 04:48:37', '2021-07-03 04:48:37'),
(1423, 1, 'admin/service-areas/1/edit', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 04:48:41', '2021-07-03 04:48:41'),
(1424, 1, 'admin/service-areas/1', 'PUT', '157.37.211.33', '{\"title\":\"Uttam Nagar\",\"pincode\":\"110059\",\"delivery_changes\":\"50\",\"_token\":\"NoDBZ2QA3SMjNrMppIfiP5x4fD0NoxLJtkjbQMnL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/service-areas\"}', '2021-07-03 04:48:49', '2021-07-03 04:48:49'),
(1425, 1, 'admin/service-areas', 'GET', '157.37.211.33', '[]', '2021-07-03 04:48:50', '2021-07-03 04:48:50'),
(1426, 1, 'admin/service-areas/2/edit', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 04:49:02', '2021-07-03 04:49:02'),
(1427, 1, 'admin/service-areas/2', 'PUT', '157.37.211.33', '{\"title\":\"Janak Puri\",\"pincode\":\"110060\",\"delivery_changes\":\"50\",\"_token\":\"NoDBZ2QA3SMjNrMppIfiP5x4fD0NoxLJtkjbQMnL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/service-areas\"}', '2021-07-03 04:49:10', '2021-07-03 04:49:10'),
(1428, 1, 'admin/service-areas', 'GET', '157.37.211.33', '[]', '2021-07-03 04:49:12', '2021-07-03 04:49:12'),
(1429, 1, 'admin/service-areas/3/edit', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 04:49:20', '2021-07-03 04:49:20'),
(1430, 1, 'admin/service-areas/3', 'PUT', '157.37.211.33', '{\"title\":\"Dawaka\",\"pincode\":\"110075\",\"delivery_changes\":\"50\",\"_token\":\"NoDBZ2QA3SMjNrMppIfiP5x4fD0NoxLJtkjbQMnL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/service-areas\"}', '2021-07-03 04:49:28', '2021-07-03 04:49:28'),
(1431, 1, 'admin/service-areas', 'GET', '157.37.211.33', '[]', '2021-07-03 04:49:31', '2021-07-03 04:49:31'),
(1432, 1, 'admin/service-areas/4', 'DELETE', '157.37.211.33', '{\"_method\":\"delete\",\"_token\":\"NoDBZ2QA3SMjNrMppIfiP5x4fD0NoxLJtkjbQMnL\"}', '2021-07-03 04:49:42', '2021-07-03 04:49:42'),
(1433, 1, 'admin/service-areas', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 04:49:48', '2021-07-03 04:49:48'),
(1434, 1, 'admin/service-areas', 'GET', '157.37.211.33', '[]', '2021-07-03 04:51:04', '2021-07-03 04:51:04'),
(1435, 1, 'admin/service-areas/create', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 04:51:08', '2021-07-03 04:51:08'),
(1436, 1, 'admin/service-areas', 'POST', '157.37.211.33', '{\"title\":\"Basic\",\"pincode\":\"110059\",\"delivery_changes\":\"50\",\"_token\":\"NoDBZ2QA3SMjNrMppIfiP5x4fD0NoxLJtkjbQMnL\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/service-areas\"}', '2021-07-03 04:51:23', '2021-07-03 04:51:23'),
(1437, 1, 'admin/service-areas/create', 'GET', '157.37.211.33', '[]', '2021-07-03 04:51:37', '2021-07-03 04:51:37'),
(1438, 1, 'admin/service-areas/create', 'GET', '157.37.211.33', '[]', '2021-07-03 04:52:16', '2021-07-03 04:52:16'),
(1439, 1, 'admin/service-areas', 'POST', '157.37.211.33', '{\"title\":\"Basic\",\"pincode\":\"110059\",\"delivery_changes\":\"50\",\"_token\":\"NoDBZ2QA3SMjNrMppIfiP5x4fD0NoxLJtkjbQMnL\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/service-areas\"}', '2021-07-03 04:52:26', '2021-07-03 04:52:26'),
(1440, 1, 'admin/service-areas/create', 'GET', '157.37.211.33', '[]', '2021-07-03 04:52:28', '2021-07-03 04:52:28'),
(1441, 1, 'admin/service-areas/create', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 04:52:36', '2021-07-03 04:52:36'),
(1442, 1, 'admin/service-areas/create', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 04:52:42', '2021-07-03 04:52:42'),
(1443, 1, 'admin/service-areas', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 04:52:45', '2021-07-03 04:52:45'),
(1444, 1, 'admin/service-areas/5/edit', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 04:52:51', '2021-07-03 04:52:51'),
(1445, 1, 'admin/service-areas/5', 'PUT', '157.37.211.33', '{\"title\":\"gurgaon\",\"pincode\":\"1220011\",\"delivery_changes\":\"50\",\"_token\":\"NoDBZ2QA3SMjNrMppIfiP5x4fD0NoxLJtkjbQMnL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/service-areas\"}', '2021-07-03 04:53:03', '2021-07-03 04:53:03'),
(1446, 1, 'admin/service-areas/5/edit', 'GET', '157.37.211.33', '[]', '2021-07-03 04:53:10', '2021-07-03 04:53:10'),
(1447, 1, 'admin/service-areas/5/edit', 'GET', '157.37.211.33', '[]', '2021-07-03 04:58:42', '2021-07-03 04:58:42'),
(1448, 1, 'admin/service-areas/5', 'PUT', '157.37.211.33', '{\"title\":\"gurgaon\",\"pincode\":\"1220011\",\"delivery_changes\":\"50\",\"_token\":\"NoDBZ2QA3SMjNrMppIfiP5x4fD0NoxLJtkjbQMnL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/service-areas\\/create\"}', '2021-07-03 04:58:51', '2021-07-03 04:58:51'),
(1449, 1, 'admin/service-areas/5/edit', 'GET', '157.37.211.33', '[]', '2021-07-03 04:58:55', '2021-07-03 04:58:55'),
(1450, 1, 'admin/service-areas/5/edit', 'GET', '157.37.211.33', '[]', '2021-07-03 05:00:15', '2021-07-03 05:00:15'),
(1451, 1, 'admin/service-areas/5', 'PUT', '157.37.211.33', '{\"title\":\"gurgaon\",\"pincode\":\"1220011\",\"delivery_changes\":\"50\",\"_token\":\"NoDBZ2QA3SMjNrMppIfiP5x4fD0NoxLJtkjbQMnL\",\"_method\":\"PUT\"}', '2021-07-03 05:00:21', '2021-07-03 05:00:21'),
(1452, 1, 'admin/service-areas', 'GET', '157.37.211.33', '[]', '2021-07-03 05:00:22', '2021-07-03 05:00:22'),
(1453, 1, 'admin/service-areas/6/edit', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 05:00:30', '2021-07-03 05:00:30'),
(1454, 1, 'admin/service-areas/6', 'PUT', '157.37.211.33', '{\"title\":\"fazilpur\",\"pincode\":\"122018\",\"delivery_changes\":\"50\",\"_token\":\"NoDBZ2QA3SMjNrMppIfiP5x4fD0NoxLJtkjbQMnL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/service-areas\"}', '2021-07-03 05:00:49', '2021-07-03 05:00:49'),
(1455, 1, 'admin/service-areas', 'GET', '157.37.211.33', '[]', '2021-07-03 05:00:52', '2021-07-03 05:00:52'),
(1456, 1, 'admin/service-areas', 'GET', '157.37.211.33', '[]', '2021-07-03 07:33:11', '2021-07-03 07:33:11'),
(1457, 1, 'admin/orders', 'GET', '157.37.211.33', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-03 09:09:40', '2021-07-03 09:09:40'),
(1458, 1, 'admin/orders/62/edit', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 09:09:46', '2021-07-03 09:09:46'),
(1459, 1, 'admin/orders/62', 'PUT', '157.37.211.33', '{\"order_id\":\"ORD27991677\",\"delivered_by\":\"2\",\"status\":\"2\",\"payment_status\":\"1\",\"_token\":\"CdETDnqNWYIhxhTpIWKkN2Ejt1QYhUvWFn0QN0FI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-07-03 09:10:24', '2021-07-03 09:10:24'),
(1460, 1, 'admin/orders', 'GET', '157.37.211.33', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-07-03 09:10:29', '2021-07-03 09:10:29'),
(1461, 1, 'admin/orders', 'GET', '157.37.211.33', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-07-03 09:31:10', '2021-07-03 09:31:10'),
(1462, 1, 'admin/products', 'GET', '157.37.211.33', '[]', '2021-07-03 09:31:37', '2021-07-03 09:31:37'),
(1463, 1, 'admin/orders', 'GET', '157.37.211.33', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-03 09:35:24', '2021-07-03 09:35:24');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1464, 1, 'admin/view_orders/62', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 09:35:36', '2021-07-03 09:35:36'),
(1465, 1, 'admin/app_settings', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 09:42:10', '2021-07-03 09:42:10'),
(1466, 1, 'admin/app_settings/1/edit', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 09:42:14', '2021-07-03 09:42:14'),
(1467, 1, 'admin/app_settings/1', 'PUT', '157.37.211.33', '{\"application_name\":\"KRYCHE\",\"contact_number\":\"8882103813\",\"whatsapp_number\":\"8882103813\",\"email\":\"kryche.india@gmail.com\",\"address\":\"sector 55 Gurgaon Haryana,\",\"address_lat\":\"28.5851\",\"address_lng\":\"77.0713\",\"country\":\"India\",\"default_currency\":\"\\u20b9\",\"currency_short_code\":\"INR\",\"refer_earn_amt\":\"50\",\"delivery_hours\":\"24\",\"minimum_order_amt\":\"199\",\"about_us\":\"kRYCHE was established in YEAR 2021,  and has ever since been a pioneer company in providing first-rate and superior laundry services. We provide high quality and affordable services in a way of care and nurture for your threads. We have always catered to the requirements of commercial laundry and cleaning through our expertise and knowledge in the area. We process laundry as per our customer specifications. We only use safe and environmental friendly detergents and disinfectants and all our equipment are power conservative\",\"fcm_server_key\":\"AAAA6CbcUU4:APA91bEjXcUD5QHo5eJ70JNWQYhbgmS24mDBwIIwn4sexCbT8mKThwddBoevcjOM8uOcZZ_5E_3MikmSmQgtNiVaeUDnHxKrvh9yY1wan673VZs4TBlpyNS4gK06bKP5C895CP6dNmcD\",\"_token\":\"CdETDnqNWYIhxhTpIWKkN2Ejt1QYhUvWFn0QN0FI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/app_settings\"}', '2021-07-03 09:42:21', '2021-07-03 09:42:21'),
(1468, 1, 'admin/app_settings', 'GET', '157.37.211.33', '[]', '2021-07-03 09:42:32', '2021-07-03 09:42:32'),
(1469, 1, 'admin/app_settings', 'GET', '157.37.211.33', '[]', '2021-07-03 11:04:08', '2021-07-03 11:04:08'),
(1470, 1, 'admin/view_orders/62', 'GET', '157.37.211.33', '[]', '2021-07-03 11:04:12', '2021-07-03 11:04:12'),
(1471, 1, 'admin/orders', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 11:04:18', '2021-07-03 11:04:18'),
(1472, 1, 'admin/orders', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-07-03 11:04:24', '2021-07-03 11:04:24'),
(1473, 1, 'admin/view_orders/62', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 11:04:28', '2021-07-03 11:04:28'),
(1474, 1, 'admin/view_orders/62', 'GET', '157.37.211.33', '[]', '2021-07-03 11:06:58', '2021-07-03 11:06:58'),
(1475, 1, 'admin/view_orders/62', 'GET', '157.37.211.33', '[]', '2021-07-03 11:07:14', '2021-07-03 11:07:14'),
(1476, 1, 'admin/view_orders/62', 'GET', '157.37.211.33', '[]', '2021-07-03 11:07:51', '2021-07-03 11:07:51'),
(1477, 1, 'admin/orders', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 11:08:16', '2021-07-03 11:08:16'),
(1478, 1, 'admin/orders', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-07-03 11:08:39', '2021-07-03 11:08:39'),
(1479, 1, 'admin/view_orders/62', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 11:09:12', '2021-07-03 11:09:12'),
(1480, 1, 'admin/orders', 'GET', '157.37.211.33', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-03 11:09:28', '2021-07-03 11:09:28'),
(1481, 1, 'admin/orders/62/edit', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 11:09:35', '2021-07-03 11:09:35'),
(1482, 1, 'admin/orders/62/edit', 'GET', '157.37.211.33', '[]', '2021-07-03 11:12:01', '2021-07-03 11:12:01'),
(1483, 1, 'admin/orders/62/edit', 'GET', '157.37.211.33', '[]', '2021-07-03 11:12:37', '2021-07-03 11:12:37'),
(1484, 1, 'admin/orders/62/edit', 'GET', '157.37.211.33', '[]', '2021-07-03 11:13:05', '2021-07-03 11:13:05'),
(1485, 1, 'admin/orders/62/edit', 'GET', '157.37.211.33', '[]', '2021-07-03 11:13:16', '2021-07-03 11:13:16'),
(1486, 1, 'admin/orders/62/edit', 'GET', '157.37.211.33', '[]', '2021-07-03 11:16:12', '2021-07-03 11:16:12'),
(1487, 1, 'admin/orders/62/edit', 'GET', '157.37.211.33', '[]', '2021-07-03 11:16:57', '2021-07-03 11:16:57'),
(1488, 1, 'admin/orders/62/edit', 'GET', '157.37.211.33', '[]', '2021-07-03 11:17:15', '2021-07-03 11:17:15'),
(1489, 1, 'admin/orders/62/edit', 'GET', '157.37.211.33', '[]', '2021-07-03 11:17:23', '2021-07-03 11:17:23'),
(1490, 1, 'admin/orders/62', 'PUT', '157.37.211.33', '{\"order_id\":\"ORD27991677\",\"delivered_by\":\"2\",\"status\":\"3\",\"payment_status\":\"1\",\"expected_delivery_date\":\"2021-07-06\",\"drop_time\":\"5\",\"_token\":\"CdETDnqNWYIhxhTpIWKkN2Ejt1QYhUvWFn0QN0FI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-07-03 11:18:25', '2021-07-03 11:18:25'),
(1491, 1, 'admin/orders', 'GET', '157.37.211.33', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-07-03 11:18:28', '2021-07-03 11:18:28'),
(1492, 1, 'admin/orders/62/edit', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 11:20:33', '2021-07-03 11:20:33'),
(1493, 1, 'admin/orders/62/edit', 'GET', '157.37.211.33', '[]', '2021-07-03 11:21:44', '2021-07-03 11:21:44'),
(1494, 1, 'admin/orders/62/edit', 'GET', '157.37.211.33', '[]', '2021-07-03 11:23:34', '2021-07-03 11:23:34'),
(1495, 1, 'admin/orders/62', 'PUT', '157.37.211.33', '{\"order_id\":\"ORD27991677\",\"delivered_by\":\"2\",\"status\":\"3\",\"payment_status\":\"1\",\"expected_delivery_date\":\"2021-07-06\",\"drop_time\":\"3 pm to 5 pm\",\"_token\":\"CdETDnqNWYIhxhTpIWKkN2Ejt1QYhUvWFn0QN0FI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-07-03 11:23:44', '2021-07-03 11:23:44'),
(1496, 1, 'admin/orders', 'GET', '157.37.211.33', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-07-03 11:23:53', '2021-07-03 11:23:53'),
(1497, 1, 'admin/orders/62/edit', 'GET', '157.37.211.33', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 11:24:37', '2021-07-03 11:24:37'),
(1498, 1, 'admin/orders/62', 'PUT', '157.37.188.39', '{\"order_id\":\"ORD27991677\",\"delivered_by\":\"2\",\"status\":\"3\",\"payment_status\":\"1\",\"expected_delivery_date\":\"2021-07-06\",\"drop_time\":\"3 pm to 5 pm\",\"_token\":\"CdETDnqNWYIhxhTpIWKkN2Ejt1QYhUvWFn0QN0FI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-07-03 11:51:09', '2021-07-03 11:51:09'),
(1499, 1, 'admin/orders', 'GET', '157.37.188.39', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-07-03 11:51:13', '2021-07-03 11:51:13'),
(1500, 1, 'admin/orders/62/edit', 'GET', '157.37.188.39', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 11:52:19', '2021-07-03 11:52:19'),
(1501, 1, 'admin/orders/62', 'PUT', '157.37.188.39', '{\"order_id\":\"ORD27991677\",\"delivered_by\":\"2\",\"status\":\"8\",\"payment_status\":\"1\",\"expected_delivery_date\":\"2021-07-06\",\"drop_time\":\"3 pm to 5 pm\",\"_token\":\"CdETDnqNWYIhxhTpIWKkN2Ejt1QYhUvWFn0QN0FI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-07-03 12:46:19', '2021-07-03 12:46:19'),
(1502, 1, 'admin/orders', 'GET', '157.37.188.39', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-07-03 12:46:30', '2021-07-03 12:46:30'),
(1503, 1, 'admin/orders/62/edit', 'GET', '157.37.188.39', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 12:52:05', '2021-07-03 12:52:05'),
(1504, 1, 'admin/orders/62/edit', 'GET', '157.37.188.39', '[]', '2021-07-03 12:56:58', '2021-07-03 12:56:58'),
(1505, 1, 'admin/orders', 'GET', '157.37.188.39', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-03 13:01:41', '2021-07-03 13:01:41'),
(1506, 1, 'admin/view_orders/62', 'GET', '157.37.188.39', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 13:01:45', '2021-07-03 13:01:45'),
(1507, 1, 'admin/orders', 'GET', '157.37.188.39', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-03 13:02:02', '2021-07-03 13:02:02'),
(1508, 1, 'admin/orders/62/edit', 'GET', '157.37.188.39', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 13:04:30', '2021-07-03 13:04:30'),
(1509, 1, 'admin/orders/62', 'PUT', '157.37.188.39', '{\"order_id\":\"ORD27991677\",\"delivered_by\":\"2\",\"status\":\"3\",\"payment_status\":\"1\",\"expected_delivery_date\":\"2021-07-06\",\"drop_time\":\"3 pm to 5 pm\",\"_token\":\"CdETDnqNWYIhxhTpIWKkN2Ejt1QYhUvWFn0QN0FI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?&_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-07-03 13:04:40', '2021-07-03 13:04:40'),
(1510, 1, 'admin/orders', 'GET', '157.37.188.39', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-07-03 13:04:48', '2021-07-03 13:04:48'),
(1511, 1, 'admin/orders', 'GET', '157.37.188.39', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-07-03 14:28:12', '2021-07-03 14:28:12'),
(1512, 1, 'admin/app_settings', 'GET', '157.37.188.39', '[]', '2021-07-03 14:28:20', '2021-07-03 14:28:20'),
(1513, 1, 'admin/orders', 'GET', '157.37.188.39', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"id\":null,\"customer_id\":null,\"delivered_by\":null,\"order_id\":null,\"status\":\"8\",\"expected_pickup_date\":null,\"expected_delivery_date\":null,\"_pjax\":\"#pjax-container\"}', '2021-07-03 14:31:45', '2021-07-03 14:31:45'),
(1514, 1, 'admin/orders', 'GET', '157.37.188.39', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-03 14:31:50', '2021-07-03 14:31:50'),
(1515, 1, 'admin/orders', 'GET', '157.37.188.39', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-07-03 14:34:18', '2021-07-03 14:34:18'),
(1516, 1, 'admin/orders', 'GET', '157.37.188.39', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-07-03 14:58:40', '2021-07-03 14:58:40'),
(1517, 1, 'admin/view_orders/62', 'GET', '157.37.188.39', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 14:58:44', '2021-07-03 14:58:44'),
(1518, 1, 'admin/view_orders/62', 'GET', '157.37.188.39', '[]', '2021-07-03 15:00:10', '2021-07-03 15:00:10'),
(1519, 1, 'admin/view_orders/62', 'GET', '157.37.188.39', '[]', '2021-07-03 15:01:04', '2021-07-03 15:01:04'),
(1520, 1, 'admin/orders', 'GET', '157.37.188.39', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-03 15:01:10', '2021-07-03 15:01:10'),
(1521, 1, 'admin/view_orders/63', 'GET', '157.37.188.39', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 15:01:14', '2021-07-03 15:01:14'),
(1522, 1, 'admin/orders', 'GET', '157.37.188.39', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-03 15:01:17', '2021-07-03 15:01:17'),
(1523, 1, 'admin/view_orders/61', 'GET', '157.37.188.39', '{\"_pjax\":\"#pjax-container\"}', '2021-07-03 15:01:19', '2021-07-03 15:01:19'),
(1524, 1, 'admin/orders', 'GET', '157.37.188.39', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-03 15:01:25', '2021-07-03 15:01:25'),
(1525, 1, 'admin/orders', 'GET', '157.37.188.39', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-07-03 15:02:32', '2021-07-03 15:02:32'),
(1526, 1, 'admin', 'GET', '47.31.135.136', '[]', '2021-07-04 09:02:23', '2021-07-04 09:02:23'),
(1527, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-04 09:03:23', '2021-07-04 09:03:23'),
(1528, 1, 'admin/orders/69/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-04 09:04:07', '2021-07-04 09:04:07'),
(1529, 1, 'admin/orders/69/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-04 09:04:17', '2021-07-04 09:04:17'),
(1530, 1, 'admin/orders/69', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD96377208\",\"delivered_by\":\"4\",\"status\":\"1\",\"payment_status\":\"1\",\"expected_delivery_date\":\"2021-07-06\",\"drop_time\":\"1 pm to 3 pm\",\"_token\":\"jJ5avzY3z7dqw1fwzprxkNL0EExjQPEyFu0V4ORL\",\"_method\":\"PUT\"}', '2021-07-04 09:05:24', '2021-07-04 09:05:24'),
(1531, 1, 'admin/orders/69/edit', 'GET', '103.163.151.59', '[]', '2021-07-04 09:05:31', '2021-07-04 09:05:31'),
(1532, 1, 'admin', 'GET', '103.163.151.59', '[]', '2021-07-04 13:56:09', '2021-07-04 13:56:09'),
(1533, 1, 'admin', 'GET', '103.163.151.59', '[]', '2021-07-04 13:56:33', '2021-07-04 13:56:33'),
(1534, 1, 'admin/leads', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-04 14:01:54', '2021-07-04 14:01:54'),
(1535, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-04 14:02:22', '2021-07-04 14:02:22'),
(1536, 1, 'admin/time-slots', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-04 14:06:18', '2021-07-04 14:06:18'),
(1537, 1, 'admin/time-slots', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-04 14:06:19', '2021-07-04 14:06:19'),
(1538, 1, 'admin/memberships', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-04 14:06:27', '2021-07-04 14:06:27'),
(1539, 1, 'admin/memberships', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-04 14:06:29', '2021-07-04 14:06:29'),
(1540, 1, 'admin/memberships', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-04 14:06:35', '2021-07-04 14:06:35'),
(1541, 1, 'admin/memberships', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-04 14:06:44', '2021-07-04 14:06:44'),
(1542, 1, 'admin', 'GET', '103.163.151.59', '[]', '2021-07-05 05:18:30', '2021-07-05 05:18:30'),
(1543, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-05 05:19:12', '2021-07-05 05:19:12'),
(1544, 1, 'admin/orders/70/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-05 05:20:06', '2021-07-05 05:20:06'),
(1545, 1, 'admin/orders/70', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD40194001\",\"delivered_by\":\"4\",\"status\":\"2\",\"payment_status\":\"1\",\"expected_delivery_date\":\"2021-07-07\",\"drop_time\":\"5 pm to 7 pm\",\"_token\":\"Zb2nfZ816jcsqVhruHXVPRo5EFNTqdEtkdpW6S71\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-07-05 05:20:46', '2021-07-05 05:20:46'),
(1546, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-07-05 05:20:55', '2021-07-05 05:20:55'),
(1547, 1, 'admin/orders/70/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-05 05:26:12', '2021-07-05 05:26:12'),
(1548, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-05 05:27:40', '2021-07-05 05:27:40'),
(1549, 1, 'admin/services', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-05 05:28:55', '2021-07-05 05:28:55'),
(1550, 1, 'admin/categories', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-05 05:28:55', '2021-07-05 05:28:55'),
(1551, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-05 05:29:25', '2021-07-05 05:29:25'),
(1552, 1, 'admin/categories', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-05 05:29:51', '2021-07-05 05:29:51'),
(1553, 1, 'admin/categories/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-05 05:29:59', '2021-07-05 05:29:59'),
(1554, 1, 'admin/categories/1', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",\"3\",\"4\",null],\"category_name\":\"Men\",\"status\":\"1\",\"_token\":\"Zb2nfZ816jcsqVhruHXVPRo5EFNTqdEtkdpW6S71\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/categories\"}', '2021-07-05 05:30:40', '2021-07-05 05:30:40'),
(1555, 1, 'admin/categories', 'GET', '103.163.151.59', '[]', '2021-07-05 05:30:45', '2021-07-05 05:30:45'),
(1556, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-05 05:31:28', '2021-07-05 05:31:28'),
(1557, 1, 'admin/products/10/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-05 05:31:57', '2021-07-05 05:31:57'),
(1558, 1, 'admin', 'GET', '47.31.228.147', '[]', '2021-07-05 07:51:13', '2021-07-05 07:51:13'),
(1559, 1, 'admin/orders', 'GET', '47.31.228.147', '[]', '2021-07-05 07:51:22', '2021-07-05 07:51:22'),
(1560, 1, 'admin/orders', 'GET', '47.31.228.147', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-05 07:52:04', '2021-07-05 07:52:04'),
(1561, 1, 'admin/orders/70/edit', 'GET', '47.31.228.147', '{\"_pjax\":\"#pjax-container\"}', '2021-07-05 07:52:19', '2021-07-05 07:52:19'),
(1562, 1, 'admin/orders', 'GET', '47.31.228.147', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-05 07:52:32', '2021-07-05 07:52:32'),
(1563, 1, 'admin/orders', 'GET', '47.31.228.147', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-07-05 08:52:22', '2021-07-05 08:52:22'),
(1564, 1, 'admin', 'GET', '47.31.228.147', '[]', '2021-07-05 13:05:48', '2021-07-05 13:05:48'),
(1565, 1, 'admin', 'GET', '103.163.151.59', '[]', '2021-07-06 05:12:09', '2021-07-06 05:12:09'),
(1566, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-06 05:13:28', '2021-07-06 05:13:28'),
(1567, 1, 'admin/orders/71/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 05:13:56', '2021-07-06 05:13:56'),
(1568, 1, 'admin/orders/71', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD82952690\",\"delivered_by\":\"4\",\"status\":\"3\",\"payment_status\":\"1\",\"expected_delivery_date\":\"2021-07-08\",\"drop_time\":\"3 pm to 5 pm\",\"_token\":\"u7DlGdNpCJNEWP1jyG2jp22c6nTIyD4jNNOsDZ51\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-07-06 05:14:56', '2021-07-06 05:14:56'),
(1569, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-07-06 05:15:38', '2021-07-06 05:15:38'),
(1570, 1, 'admin', 'GET', '103.163.151.59', '[]', '2021-07-06 05:46:01', '2021-07-06 05:46:01'),
(1571, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-06 05:47:30', '2021-07-06 05:47:30'),
(1572, 1, 'admin/orders/71/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 05:48:13', '2021-07-06 05:48:13'),
(1573, 1, 'admin/orders/71', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD82952690\",\"delivered_by\":\"4\",\"status\":\"4\",\"payment_status\":\"1\",\"expected_delivery_date\":\"2021-07-08\",\"drop_time\":\"3 pm to 5 pm\",\"_token\":\"Xhm6lNESv7LnpUs4u2GU1LelHCjd89D8cWTDF9Qd\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-07-06 05:51:42', '2021-07-06 05:51:42'),
(1574, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-07-06 05:51:48', '2021-07-06 05:51:48'),
(1575, 1, 'admin/view_orders/71', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 05:52:04', '2021-07-06 05:52:04'),
(1576, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 05:56:45', '2021-07-06 05:56:45'),
(1577, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-06 05:56:46', '2021-07-06 05:56:46'),
(1578, 1, 'admin/orders/71/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 05:56:58', '2021-07-06 05:56:58'),
(1579, 1, 'admin/orders/71', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD82952690\",\"delivered_by\":\"4\",\"status\":\"1\",\"payment_status\":\"1\",\"expected_delivery_date\":\"2021-07-08\",\"drop_time\":\"3 pm to 5 pm\",\"_token\":\"Xhm6lNESv7LnpUs4u2GU1LelHCjd89D8cWTDF9Qd\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-07-06 05:57:23', '2021-07-06 05:57:23'),
(1580, 1, 'admin/orders/71/edit', 'GET', '103.163.151.59', '[]', '2021-07-06 05:57:29', '2021-07-06 05:57:29'),
(1581, 1, 'admin/orders/71', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD82952690\",\"delivered_by\":\"4\",\"status\":\"1\",\"payment_status\":\"1\",\"expected_delivery_date\":\"2021-07-08\",\"drop_time\":\"3 pm to 5 pm\",\"_token\":\"Xhm6lNESv7LnpUs4u2GU1LelHCjd89D8cWTDF9Qd\",\"_method\":\"PUT\"}', '2021-07-06 05:58:14', '2021-07-06 05:58:14'),
(1582, 1, 'admin/orders/71/edit', 'GET', '103.163.151.59', '[]', '2021-07-06 05:58:28', '2021-07-06 05:58:28'),
(1583, 1, 'admin/orders/71', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD82952690\",\"delivered_by\":\"4\",\"status\":\"1\",\"payment_status\":\"2\",\"expected_delivery_date\":\"2021-07-08\",\"drop_time\":\"3 pm to 5 pm\",\"_token\":\"Xhm6lNESv7LnpUs4u2GU1LelHCjd89D8cWTDF9Qd\",\"_method\":\"PUT\"}', '2021-07-06 05:58:50', '2021-07-06 05:58:50'),
(1584, 1, 'admin/orders/71/edit', 'GET', '103.163.151.59', '[]', '2021-07-06 05:58:57', '2021-07-06 05:58:57'),
(1585, 1, 'admin/orders/71', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD82952690\",\"delivered_by\":\"4\",\"status\":\"6\",\"payment_status\":\"1\",\"expected_delivery_date\":\"2021-07-08\",\"drop_time\":\"3 pm to 5 pm\",\"_token\":\"Xhm6lNESv7LnpUs4u2GU1LelHCjd89D8cWTDF9Qd\",\"_method\":\"PUT\"}', '2021-07-06 05:59:20', '2021-07-06 05:59:20'),
(1586, 1, 'admin/orders', 'GET', '103.163.151.59', '[]', '2021-07-06 05:59:30', '2021-07-06 05:59:30'),
(1587, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 06:00:31', '2021-07-06 06:00:31'),
(1588, 1, 'admin/payment-histories', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-06 06:01:21', '2021-07-06 06:01:21'),
(1589, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 06:01:43', '2021-07-06 06:01:43'),
(1590, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 06:01:47', '2021-07-06 06:01:47'),
(1591, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 06:02:01', '2021-07-06 06:02:01'),
(1592, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-06 06:02:21', '2021-07-06 06:02:21'),
(1593, 1, 'admin/orders/71/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 06:02:45', '2021-07-06 06:02:45'),
(1594, 1, 'admin/orders/71', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD82952690\",\"delivered_by\":\"4\",\"status\":\"7\",\"payment_status\":\"2\",\"expected_delivery_date\":\"2021-07-08\",\"drop_time\":\"3 pm to 5 pm\",\"_token\":\"Xhm6lNESv7LnpUs4u2GU1LelHCjd89D8cWTDF9Qd\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-07-06 06:03:19', '2021-07-06 06:03:19'),
(1595, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-07-06 06:03:35', '2021-07-06 06:03:35'),
(1596, 1, 'admin/orders/70/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 06:04:30', '2021-07-06 06:04:30'),
(1597, 1, 'admin/orders/70', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD40194001\",\"delivered_by\":\"4\",\"status\":\"1\",\"payment_status\":\"2\",\"expected_delivery_date\":\"2021-07-07\",\"drop_time\":\"5 pm to 7 pm\",\"_token\":\"Xhm6lNESv7LnpUs4u2GU1LelHCjd89D8cWTDF9Qd\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-07-06 06:04:42', '2021-07-06 06:04:42'),
(1598, 1, 'admin/orders/70/edit', 'GET', '103.163.151.59', '[]', '2021-07-06 06:04:42', '2021-07-06 06:04:42'),
(1599, 1, 'admin/orders/70', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD40194001\",\"delivered_by\":\"4\",\"status\":\"1\",\"payment_status\":\"4\",\"expected_delivery_date\":\"2021-07-07\",\"drop_time\":\"5 pm to 7 pm\",\"_token\":\"Xhm6lNESv7LnpUs4u2GU1LelHCjd89D8cWTDF9Qd\",\"_method\":\"PUT\"}', '2021-07-06 06:04:59', '2021-07-06 06:04:59'),
(1600, 1, 'admin/orders/70/edit', 'GET', '103.163.151.59', '[]', '2021-07-06 06:05:08', '2021-07-06 06:05:08'),
(1601, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 06:05:12', '2021-07-06 06:05:12'),
(1602, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-06 06:05:19', '2021-07-06 06:05:19'),
(1603, 1, 'admin/orders/68/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 06:05:40', '2021-07-06 06:05:40'),
(1604, 1, 'admin/orders/68', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD66482482\",\"delivered_by\":null,\"status\":\"1\",\"payment_status\":\"2\",\"expected_delivery_date\":\"2021-07-06\",\"drop_time\":\"1 pm to 3 pm\",\"_token\":\"Xhm6lNESv7LnpUs4u2GU1LelHCjd89D8cWTDF9Qd\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-07-06 06:06:02', '2021-07-06 06:06:02'),
(1605, 1, 'admin/orders/68/edit', 'GET', '103.163.151.59', '[]', '2021-07-06 06:06:03', '2021-07-06 06:06:03'),
(1606, 1, 'admin/orders/68', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD66482482\",\"delivered_by\":\"4\",\"status\":\"1\",\"payment_status\":\"2\",\"expected_delivery_date\":\"2021-07-06\",\"drop_time\":\"1 pm to 3 pm\",\"_token\":\"Xhm6lNESv7LnpUs4u2GU1LelHCjd89D8cWTDF9Qd\",\"_method\":\"PUT\"}', '2021-07-06 06:06:12', '2021-07-06 06:06:12'),
(1607, 1, 'admin/orders/68/edit', 'GET', '103.163.151.59', '[]', '2021-07-06 06:06:12', '2021-07-06 06:06:12'),
(1608, 1, 'admin/orders/68', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD66482482\",\"delivered_by\":\"4\",\"status\":\"1\",\"payment_status\":\"2\",\"expected_delivery_date\":\"2021-07-06\",\"drop_time\":\"1 pm to 3 pm\",\"_token\":\"Xhm6lNESv7LnpUs4u2GU1LelHCjd89D8cWTDF9Qd\",\"_method\":\"PUT\"}', '2021-07-06 06:06:30', '2021-07-06 06:06:30'),
(1609, 1, 'admin/orders/68/edit', 'GET', '103.163.151.59', '[]', '2021-07-06 06:06:38', '2021-07-06 06:06:38'),
(1610, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 06:06:46', '2021-07-06 06:06:46'),
(1611, 1, 'admin/promo_codes', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 06:11:09', '2021-07-06 06:11:09'),
(1612, 1, 'admin/promo_codes/3', 'DELETE', '103.163.151.59', '{\"_method\":\"delete\",\"_token\":\"Xhm6lNESv7LnpUs4u2GU1LelHCjd89D8cWTDF9Qd\"}', '2021-07-06 06:11:17', '2021-07-06 06:11:17'),
(1613, 1, 'admin/promo_codes', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 06:11:19', '2021-07-06 06:11:19'),
(1614, 1, 'admin/promo_codes/2', 'DELETE', '103.163.151.59', '{\"_method\":\"delete\",\"_token\":\"Xhm6lNESv7LnpUs4u2GU1LelHCjd89D8cWTDF9Qd\"}', '2021-07-06 06:11:23', '2021-07-06 06:11:23'),
(1615, 1, 'admin/promo_codes', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 06:11:23', '2021-07-06 06:11:23'),
(1616, 1, 'admin/promo_codes/1', 'DELETE', '103.163.151.59', '{\"_method\":\"delete\",\"_token\":\"Xhm6lNESv7LnpUs4u2GU1LelHCjd89D8cWTDF9Qd\"}', '2021-07-06 06:11:28', '2021-07-06 06:11:28'),
(1617, 1, 'admin/promo_codes', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 06:11:37', '2021-07-06 06:11:37'),
(1618, 1, 'admin/promo_codes/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 06:11:41', '2021-07-06 06:11:41'),
(1619, 1, 'admin/promo_codes', 'POST', '103.163.151.59', '{\"promo_name\":\"10% DICSOUNT ON FIRST ORDER\",\"promo_code\":\"NEW10\",\"description\":\"Get the 10 % off on any services with us,\",\"promo_type\":\"2\",\"discount\":\"10\",\"status\":\"1\",\"_token\":\"Xhm6lNESv7LnpUs4u2GU1LelHCjd89D8cWTDF9Qd\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/promo_codes\"}', '2021-07-06 06:13:13', '2021-07-06 06:13:13'),
(1620, 1, 'admin/promo_codes', 'GET', '103.163.151.59', '[]', '2021-07-06 06:13:15', '2021-07-06 06:13:15'),
(1621, 1, 'admin/memberships', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 06:13:25', '2021-07-06 06:13:25'),
(1622, 1, 'admin/memberships/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 06:13:46', '2021-07-06 06:13:46'),
(1623, 1, 'admin', 'GET', '103.163.151.59', '[]', '2021-07-06 06:29:08', '2021-07-06 06:29:08'),
(1624, 1, 'admin/memberships', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 06:31:46', '2021-07-06 06:31:46'),
(1625, 1, 'admin/memberships/3/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 06:31:54', '2021-07-06 06:31:54'),
(1626, 1, 'admin', 'GET', '103.163.151.59', '[]', '2021-07-06 16:57:20', '2021-07-06 16:57:20'),
(1627, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 17:02:05', '2021-07-06 17:02:05'),
(1628, 1, 'admin/products/11/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 17:02:52', '2021-07-06 17:02:52'),
(1629, 1, 'admin/products/11', 'PUT', '103.163.151.59', '{\"service_id\":\"4\",\"category_id\":\"1\",\"product_name\":\"Shirt\",\"price\":\"40\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-07-06 17:03:11', '2021-07-06 17:03:11'),
(1630, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-07-06 17:03:15', '2021-07-06 17:03:15'),
(1631, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 17:03:20', '2021-07-06 17:03:20'),
(1632, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"4\",\"category_id\":\"1\",\"product_name\":\"T-Shirt\",\"price\":\"35\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-07-06 17:08:39', '2021-07-06 17:08:39'),
(1633, 1, 'admin/products/create', 'GET', '103.163.151.59', '[]', '2021-07-06 17:08:40', '2021-07-06 17:08:40'),
(1634, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"4\",\"category_id\":\"1\",\"product_name\":\"T-Shirt\",\"price\":\"35\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\"}', '2021-07-06 17:09:59', '2021-07-06 17:09:59'),
(1635, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-07-06 17:10:03', '2021-07-06 17:10:03'),
(1636, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 17:14:34', '2021-07-06 17:14:34'),
(1637, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"4\",\"category_id\":\"1\",\"product_name\":\"Trouser\",\"price\":\"40\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-07-06 17:16:00', '2021-07-06 17:16:00'),
(1638, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-07-06 17:16:01', '2021-07-06 17:16:01'),
(1639, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 17:16:04', '2021-07-06 17:16:04'),
(1640, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"4\",\"category_id\":\"1\",\"product_name\":\"Jeans\",\"price\":\"40\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-07-06 17:16:41', '2021-07-06 17:16:41'),
(1641, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-07-06 17:16:43', '2021-07-06 17:16:43'),
(1642, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 17:16:45', '2021-07-06 17:16:45'),
(1643, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"4\",\"category_id\":\"1\",\"product_name\":\"Full jacket\",\"price\":\"150\",\"unit\":null,\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-07-06 17:17:44', '2021-07-06 17:17:44'),
(1644, 1, 'admin/products/create', 'GET', '103.163.151.59', '[]', '2021-07-06 17:17:46', '2021-07-06 17:17:46'),
(1645, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"4\",\"category_id\":\"1\",\"product_name\":\"Full jacket\",\"price\":\"150\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\"}', '2021-07-06 17:17:58', '2021-07-06 17:17:58'),
(1646, 1, 'admin/products/create', 'GET', '103.163.151.59', '[]', '2021-07-06 17:18:02', '2021-07-06 17:18:02'),
(1647, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"4\",\"category_id\":\"1\",\"product_name\":\"Full jacket\",\"price\":\"150\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\"}', '2021-07-06 17:18:10', '2021-07-06 17:18:10'),
(1648, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-07-06 17:18:11', '2021-07-06 17:18:11'),
(1649, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 17:18:15', '2021-07-06 17:18:15'),
(1650, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"4\",\"category_id\":\"1\",\"product_name\":\"Sweat Shirt\",\"price\":\"70\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-07-06 17:19:47', '2021-07-06 17:19:47'),
(1651, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-07-06 17:20:17', '2021-07-06 17:20:17'),
(1652, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 17:20:24', '2021-07-06 17:20:24'),
(1653, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"4\",\"category_id\":\"1\",\"product_name\":\"Full jacket\",\"price\":\"150\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-07-06 17:22:06', '2021-07-06 17:22:06'),
(1654, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-07-06 17:22:07', '2021-07-06 17:22:07'),
(1655, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 17:22:12', '2021-07-06 17:22:12'),
(1656, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"4\",\"category_id\":\"1\",\"product_name\":\"Half jacket\",\"price\":\"100\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-07-06 17:22:41', '2021-07-06 17:22:41'),
(1657, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-07-06 17:22:43', '2021-07-06 17:22:43'),
(1658, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 17:22:47', '2021-07-06 17:22:47'),
(1659, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"4\",\"category_id\":\"1\",\"product_name\":\"Hood sweat shirt\",\"price\":\"200\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-07-06 17:23:36', '2021-07-06 17:23:36'),
(1660, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-07-06 17:23:37', '2021-07-06 17:23:37'),
(1661, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 17:23:41', '2021-07-06 17:23:41'),
(1662, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"4\",\"category_id\":\"1\",\"product_name\":\"Sweat shirt\",\"price\":\"70\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-07-06 17:24:22', '2021-07-06 17:24:22'),
(1663, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-07-06 17:24:25', '2021-07-06 17:24:25'),
(1664, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 17:24:27', '2021-07-06 17:24:27'),
(1665, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"4\",\"category_id\":\"1\",\"product_name\":\"Dhoti\",\"price\":\"50\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-07-06 17:25:01', '2021-07-06 17:25:01'),
(1666, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-07-06 17:25:03', '2021-07-06 17:25:03'),
(1667, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 17:25:07', '2021-07-06 17:25:07'),
(1668, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"4\",\"category_id\":\"1\",\"product_name\":\"safari suit\",\"price\":\"100\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-07-06 17:25:45', '2021-07-06 17:25:45'),
(1669, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-07-06 17:25:50', '2021-07-06 17:25:50'),
(1670, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 17:27:09', '2021-07-06 17:27:09'),
(1671, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"4\",\"category_id\":\"2\",\"product_name\":\"kurta\",\"price\":\"40\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-07-06 17:28:07', '2021-07-06 17:28:07'),
(1672, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-07-06 17:28:09', '2021-07-06 17:28:09'),
(1673, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 17:28:37', '2021-07-06 17:28:37'),
(1674, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 17:28:49', '2021-07-06 17:28:49'),
(1675, 1, 'admin/time-slots', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 17:54:28', '2021-07-06 17:54:28'),
(1676, 1, 'admin/time-slots', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 17:56:15', '2021-07-06 17:56:15'),
(1677, 1, 'admin/units', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 17:56:19', '2021-07-06 17:56:19'),
(1678, 1, 'admin/units/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 17:56:25', '2021-07-06 17:56:25'),
(1679, 1, 'admin/units/1', 'PUT', '103.163.151.59', '{\"unit_code\":\"Pcs\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/units\"}', '2021-07-06 17:56:49', '2021-07-06 17:56:49'),
(1680, 1, 'admin/units', 'GET', '103.163.151.59', '[]', '2021-07-06 17:56:55', '2021-07-06 17:56:55'),
(1681, 1, 'admin/units/2/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 17:57:16', '2021-07-06 17:57:16'),
(1682, 1, 'admin/app_settings', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 17:57:26', '2021-07-06 17:57:26'),
(1683, 1, 'admin/auth/users', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 17:58:53', '2021-07-06 17:58:53'),
(1684, 1, 'admin/auth/menu', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 17:59:24', '2021-07-06 17:59:24'),
(1685, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:00:06', '2021-07-06 18:00:06'),
(1686, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:00:24', '2021-07-06 18:00:24'),
(1687, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:00:38', '2021-07-06 18:00:38'),
(1688, 1, 'admin/additional-items', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:00:58', '2021-07-06 18:00:58'),
(1689, 1, 'admin/additional-items/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:01:16', '2021-07-06 18:01:16'),
(1690, 1, 'admin/additional-items/1', 'PUT', '103.163.151.59', '{\"item_name\":\"cloths\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/additional-items\"}', '2021-07-06 18:01:27', '2021-07-06 18:01:27'),
(1691, 1, 'admin/additional-items', 'GET', '103.163.151.59', '[]', '2021-07-06 18:01:28', '2021-07-06 18:01:28'),
(1692, 1, 'admin/additional-items/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:01:40', '2021-07-06 18:01:40'),
(1693, 1, 'admin/additional-items/1', 'PUT', '103.163.151.59', '{\"item_name\":\"Cloth\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/additional-items\"}', '2021-07-06 18:01:52', '2021-07-06 18:01:52'),
(1694, 1, 'admin/additional-items', 'GET', '103.163.151.59', '[]', '2021-07-06 18:01:52', '2021-07-06 18:01:52'),
(1695, 1, 'admin/customers', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:02:02', '2021-07-06 18:02:02'),
(1696, 1, 'admin/services', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:02:48', '2021-07-06 18:02:48'),
(1697, 1, 'admin/services/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:02:57', '2021-07-06 18:02:57'),
(1698, 1, 'admin/services/1', 'PUT', '103.163.151.59', '{\"service_name\":\"WASH ONLY\",\"service_time\":\"24\",\"description\":\"24 Hours\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/services\"}', '2021-07-06 18:03:08', '2021-07-06 18:03:08'),
(1699, 1, 'admin/services', 'GET', '103.163.151.59', '[]', '2021-07-06 18:03:22', '2021-07-06 18:03:22'),
(1700, 1, 'admin/services/4/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:03:30', '2021-07-06 18:03:30'),
(1701, 1, 'admin/services/4', 'PUT', '103.163.151.59', '{\"service_name\":\"PREMIUM LAUNDRY\",\"service_time\":\"24\",\"description\":\"24\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/services\"}', '2021-07-06 18:03:46', '2021-07-06 18:03:46'),
(1702, 1, 'admin/services', 'GET', '103.163.151.59', '[]', '2021-07-06 18:03:50', '2021-07-06 18:03:50'),
(1703, 1, 'admin/categories', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:06:08', '2021-07-06 18:06:08'),
(1704, 1, 'admin/categories/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:06:41', '2021-07-06 18:06:41'),
(1705, 1, 'admin/categories/1', 'PUT', '103.163.151.59', '{\"service_id\":[\"2\",\"4\",null],\"category_name\":\"Men\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/categories\"}', '2021-07-06 18:07:07', '2021-07-06 18:07:07'),
(1706, 1, 'admin/categories', 'GET', '103.163.151.59', '[]', '2021-07-06 18:07:09', '2021-07-06 18:07:09'),
(1707, 1, 'admin/categories/2/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:07:22', '2021-07-06 18:07:22'),
(1708, 1, 'admin/categories/2', 'PUT', '103.163.151.59', '{\"service_id\":[\"2\",\"4\",null],\"category_name\":\"Women\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/categories\"}', '2021-07-06 18:07:57', '2021-07-06 18:07:57'),
(1709, 1, 'admin/categories', 'GET', '103.163.151.59', '[]', '2021-07-06 18:08:01', '2021-07-06 18:08:01'),
(1710, 1, 'admin/categories/3/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:08:21', '2021-07-06 18:08:21'),
(1711, 1, 'admin/categories/3', 'PUT', '103.163.151.59', '{\"service_id\":[\"2\",\"4\",null],\"category_name\":\"Kids\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/categories\"}', '2021-07-06 18:08:41', '2021-07-06 18:08:41'),
(1712, 1, 'admin/categories', 'GET', '103.163.151.59', '[]', '2021-07-06 18:08:41', '2021-07-06 18:08:41'),
(1713, 1, 'admin/categories/4/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:08:55', '2021-07-06 18:08:55'),
(1714, 1, 'admin/categories/4', 'PUT', '103.163.151.59', '{\"service_id\":[\"2\",\"4\",null],\"category_name\":\"Others\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/categories\"}', '2021-07-06 18:09:25', '2021-07-06 18:09:25'),
(1715, 1, 'admin/categories', 'GET', '103.163.151.59', '[]', '2021-07-06 18:09:29', '2021-07-06 18:09:29'),
(1716, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:10:20', '2021-07-06 18:10:20'),
(1717, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:10:45', '2021-07-06 18:10:45'),
(1718, 1, 'admin/categories', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:11:12', '2021-07-06 18:11:12'),
(1719, 1, 'admin/service-areas', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:11:20', '2021-07-06 18:11:20'),
(1720, 1, 'admin/categories', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:11:28', '2021-07-06 18:11:28'),
(1721, 1, 'admin/additional-items', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:11:48', '2021-07-06 18:11:48'),
(1722, 1, 'admin/additional-items/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:17:04', '2021-07-06 18:17:04'),
(1723, 1, 'admin/additional-items/1', 'PUT', '103.163.151.59', '{\"item_name\":\"Cloth+\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/additional-items\"}', '2021-07-06 18:17:12', '2021-07-06 18:17:12'),
(1724, 1, 'admin/additional-items', 'GET', '103.163.151.59', '[]', '2021-07-06 18:17:14', '2021-07-06 18:17:14'),
(1725, 1, 'admin/categories', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:17:30', '2021-07-06 18:17:30'),
(1726, 1, 'admin/services', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:17:30', '2021-07-06 18:17:30'),
(1727, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:19:10', '2021-07-06 18:19:10'),
(1728, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:19:27', '2021-07-06 18:19:27'),
(1729, 1, 'admin/services', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:19:46', '2021-07-06 18:19:46'),
(1730, 1, 'admin/services/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:20:17', '2021-07-06 18:20:17'),
(1731, 1, 'admin/services/1', 'PUT', '103.163.151.59', '{\"service_name\":\"WASH  AND FOLD\",\"service_time\":\"24\",\"description\":\"24 Hours\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/services\"}', '2021-07-06 18:20:35', '2021-07-06 18:20:35'),
(1732, 1, 'admin/services', 'GET', '103.163.151.59', '[]', '2021-07-06 18:20:35', '2021-07-06 18:20:35'),
(1733, 1, 'admin/services/3/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:20:45', '2021-07-06 18:20:45'),
(1734, 1, 'admin/services/3', 'PUT', '103.163.151.59', '{\"service_name\":\"WASH AND IRON\",\"service_time\":\"24\",\"description\":\"24 hours\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/services\"}', '2021-07-06 18:20:55', '2021-07-06 18:20:55'),
(1735, 1, 'admin/services', 'GET', '103.163.151.59', '[]', '2021-07-06 18:20:59', '2021-07-06 18:20:59'),
(1736, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:21:15', '2021-07-06 18:21:15'),
(1737, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:21:33', '2021-07-06 18:21:33'),
(1738, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"3\",\"category_id\":\"4\",\"product_name\":null,\"price\":\"95\",\"unit\":\"2\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-07-06 18:22:21', '2021-07-06 18:22:21'),
(1739, 1, 'admin/products/create', 'GET', '103.163.151.59', '[]', '2021-07-06 18:22:23', '2021-07-06 18:22:23');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1740, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"3\",\"category_id\":\"4\",\"product_name\":\"WASH AND IRON\",\"price\":\"95\",\"unit\":\"2\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\"}', '2021-07-06 18:22:41', '2021-07-06 18:22:41'),
(1741, 1, 'admin/products/create', 'GET', '103.163.151.59', '[]', '2021-07-06 18:22:42', '2021-07-06 18:22:42'),
(1742, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"3\",\"category_id\":\"4\",\"product_name\":\"WASH AND IRON\",\"price\":\"95\",\"unit\":\"2\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\"}', '2021-07-06 18:22:49', '2021-07-06 18:22:49'),
(1743, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-07-06 18:23:00', '2021-07-06 18:23:00'),
(1744, 1, 'admin/products/6/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-06 18:23:11', '2021-07-06 18:23:11'),
(1745, 1, 'admin/products/6', 'PUT', '103.163.151.59', '{\"service_id\":\"3\",\"category_id\":\"4\",\"product_name\":\"Wash and fold\",\"price\":\"65\",\"unit\":\"2\",\"status\":\"1\",\"_token\":\"DtOO8Nd1EvysoZqwHPER3NMh2M8PiyaqQtqwvxzj\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-07-06 18:23:40', '2021-07-06 18:23:40'),
(1746, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-07-06 18:23:44', '2021-07-06 18:23:44'),
(1747, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-07-10 07:53:52', '2021-07-10 07:53:52'),
(1748, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 07:54:43', '2021-07-10 07:54:43'),
(1749, 1, 'admin/service-areas', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 07:55:40', '2021-07-10 07:55:40'),
(1750, 1, 'admin/service-areas', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"50\"}', '2021-07-10 07:56:11', '2021-07-10 07:56:11'),
(1751, 1, 'admin/services', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 07:56:15', '2021-07-10 07:56:15'),
(1752, 1, 'admin/services/4/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 08:01:21', '2021-07-10 08:01:21'),
(1753, 1, 'admin/services/4', 'PUT', '103.163.151.59', '{\"service_name\":\"PREMIUM LAUNDRY\",\"service_time\":\"24\",\"description\":\"24\",\"status\":\"1\",\"_token\":\"k90ZTp770gEKL2eoNyLHrLwggchVqqOjKzxqINCu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/services\"}', '2021-07-10 08:01:49', '2021-07-10 08:01:49'),
(1754, 1, 'admin/services', 'GET', '103.163.151.59', '[]', '2021-07-10 08:01:51', '2021-07-10 08:01:51'),
(1755, 1, 'admin/services/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 08:09:59', '2021-07-10 08:09:59'),
(1756, 1, 'admin/services/1', 'PUT', '103.163.151.59', '{\"service_name\":\"WASH  AND FOLD\",\"service_time\":\"24 Hour\",\"description\":\"1.\\tSafe wash on every load with high quality detergent, mild bleach, optional fabric softener. \\r\\n2.\\tThe service will gently dry the cloths and carefully fold anything that need to be ironed such as knit shirts, pants, and socks. \\r\\n3.\\t24 Hr. pick-up and delivery time.\",\"status\":\"1\",\"_token\":\"k90ZTp770gEKL2eoNyLHrLwggchVqqOjKzxqINCu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/services\"}', '2021-07-10 08:10:24', '2021-07-10 08:10:24'),
(1757, 1, 'admin/services/1/edit', 'GET', '103.163.151.59', '[]', '2021-07-10 08:10:25', '2021-07-10 08:10:25'),
(1758, 1, 'admin/services/1', 'PUT', '103.163.151.59', '{\"service_name\":\"WASH  AND FOLD\",\"service_time\":\"24\",\"description\":\"1.\\tSafe wash on every load with high quality detergent, mild bleach, optional fabric softener. \\r\\n2.\\t24 Hr. pick-up and delivery time.\",\"status\":\"1\",\"_token\":\"k90ZTp770gEKL2eoNyLHrLwggchVqqOjKzxqINCu\",\"_method\":\"PUT\"}', '2021-07-10 08:11:04', '2021-07-10 08:11:04'),
(1759, 1, 'admin/services/1/edit', 'GET', '103.163.151.59', '[]', '2021-07-10 08:11:04', '2021-07-10 08:11:04'),
(1760, 1, 'admin/services/1', 'PUT', '103.163.151.59', '{\"service_name\":\"WASH  AND FOLD\",\"service_time\":\"24\",\"description\":\"Safe wash on every load with high quality detergent, mild bleach, optional fabric softener. \\r\\n24 Hr. pick-up and delivery time.\",\"status\":\"1\",\"_token\":\"k90ZTp770gEKL2eoNyLHrLwggchVqqOjKzxqINCu\",\"_method\":\"PUT\"}', '2021-07-10 08:11:35', '2021-07-10 08:11:35'),
(1761, 1, 'admin/services/1/edit', 'GET', '103.163.151.59', '[]', '2021-07-10 08:11:38', '2021-07-10 08:11:38'),
(1762, 1, 'admin/services/1', 'PUT', '103.163.151.59', '{\"service_name\":\"WASH  AND FOLD\",\"service_time\":\"24\",\"description\":\"Safe wash on every load with high quality detergent, mild bleach, optional fabric softener. \\r\\n24 Hr. Service\",\"status\":\"1\",\"_token\":\"k90ZTp770gEKL2eoNyLHrLwggchVqqOjKzxqINCu\",\"_method\":\"PUT\"}', '2021-07-10 08:12:15', '2021-07-10 08:12:15'),
(1763, 1, 'admin/services/1/edit', 'GET', '103.163.151.59', '[]', '2021-07-10 08:12:16', '2021-07-10 08:12:16'),
(1764, 1, 'admin/services/1', 'PUT', '103.163.151.59', '{\"service_name\":\"WASH  AND FOLD\",\"service_time\":\"24\",\"description\":\"24 Hr.\",\"status\":\"1\",\"_token\":\"k90ZTp770gEKL2eoNyLHrLwggchVqqOjKzxqINCu\",\"_method\":\"PUT\"}', '2021-07-10 08:12:37', '2021-07-10 08:12:37'),
(1765, 1, 'admin/services', 'GET', '103.163.151.59', '[]', '2021-07-10 08:12:37', '2021-07-10 08:12:37'),
(1766, 1, 'admin/services/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 08:12:42', '2021-07-10 08:12:42'),
(1767, 1, 'admin/services/1', 'PUT', '103.163.151.59', '{\"service_name\":\"WASH  AND FOLD\",\"service_time\":\"24\",\"description\":\"24 hours\",\"status\":\"1\",\"_token\":\"k90ZTp770gEKL2eoNyLHrLwggchVqqOjKzxqINCu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/services\"}', '2021-07-10 08:12:53', '2021-07-10 08:12:53'),
(1768, 1, 'admin/services', 'GET', '103.163.151.59', '[]', '2021-07-10 08:12:54', '2021-07-10 08:12:54'),
(1769, 1, 'admin/services/4/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 08:13:01', '2021-07-10 08:13:01'),
(1770, 1, 'admin/services/4', 'PUT', '103.163.151.59', '{\"service_name\":\"PREMIUM LAUNDRY\",\"service_time\":\"24\",\"description\":\"24 hours\",\"status\":\"1\",\"_token\":\"k90ZTp770gEKL2eoNyLHrLwggchVqqOjKzxqINCu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/services\"}', '2021-07-10 08:13:07', '2021-07-10 08:13:07'),
(1771, 1, 'admin/services', 'GET', '103.163.151.59', '[]', '2021-07-10 08:13:08', '2021-07-10 08:13:08'),
(1772, 1, 'admin/categories', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 08:13:49', '2021-07-10 08:13:49'),
(1773, 1, 'admin/categories/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 08:13:56', '2021-07-10 08:13:56'),
(1774, 1, 'admin/services', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 08:14:05', '2021-07-10 08:14:05'),
(1775, 1, 'admin/categories', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 08:15:28', '2021-07-10 08:15:28'),
(1776, 1, 'admin/categories/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 08:15:45', '2021-07-10 08:15:45'),
(1777, 1, 'admin/categories/1', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",null],\"category_name\":\"Men\",\"status\":\"1\",\"_token\":\"k90ZTp770gEKL2eoNyLHrLwggchVqqOjKzxqINCu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/categories\"}', '2021-07-10 08:16:12', '2021-07-10 08:16:12'),
(1778, 1, 'admin/categories', 'GET', '103.163.151.59', '[]', '2021-07-10 08:16:13', '2021-07-10 08:16:13'),
(1779, 1, 'admin/categories', 'GET', '103.163.151.59', '{\"id\":null,\"category_name\":null,\"category_name_ar\":null,\"status\":null,\"_pjax\":\"#pjax-container\"}', '2021-07-10 08:16:35', '2021-07-10 08:16:35'),
(1780, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 08:17:41', '2021-07-10 08:17:41'),
(1781, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-10 08:18:59', '2021-07-10 08:18:59'),
(1782, 1, 'admin/promo_codes', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 08:19:37', '2021-07-10 08:19:37'),
(1783, 1, 'admin/memberships', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 08:19:42', '2021-07-10 08:19:42'),
(1784, 1, 'admin/memberships/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 09:16:48', '2021-07-10 09:16:48'),
(1785, 1, 'admin/memberships/1', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",null],\"title\":\"silver plan\",\"price\":\"599\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"Cloths                                  8 kg \\r\\n\\r\\nservice time                       24 hours \\r\\n\\r\\nminimum order                 Rs299\\r\\n\\r\\nvalidity                                3 months\\r\\n\\r\\nAny two preferred pickups\",\"desc_2\":\"25% discount from the market price.\",\"desc_3\":\"Ideal for 1 person\\r\\n\\r\\nFree pickup and delivery\",\"status\":\"1\",\"_token\":\"k90ZTp770gEKL2eoNyLHrLwggchVqqOjKzxqINCu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-10 09:17:23', '2021-07-10 09:17:23'),
(1786, 1, 'admin/memberships/1/edit', 'GET', '103.163.151.59', '[]', '2021-07-10 09:17:24', '2021-07-10 09:17:24'),
(1787, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-07-10 09:19:40', '2021-07-10 09:19:40'),
(1788, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 09:19:45', '2021-07-10 09:19:45'),
(1789, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-10 09:19:51', '2021-07-10 09:19:51'),
(1790, 1, 'admin/memberships', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 09:19:54', '2021-07-10 09:19:54'),
(1791, 1, 'admin/memberships/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 09:20:02', '2021-07-10 09:20:02'),
(1792, 1, 'admin/memberships/1', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",null],\"title\":\"silver plan\",\"price\":\"599\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"Cloths                                  8 kg \\r\\n\\r\\nservice time                       24 hours \\r\\n\\r\\nminimum order                 Rs299\\r\\n\\r\\nvalidity                                3 months\\r\\n\\r\\nAny two preferred pickups\",\"desc_2\":\"25% discount from the market price.\",\"desc_3\":\"Ideal for 1 person\\r\\n\\r\\nFree pickup and delivery\",\"status\":\"1\",\"_token\":\"k90ZTp770gEKL2eoNyLHrLwggchVqqOjKzxqINCu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-10 09:25:18', '2021-07-10 09:25:18'),
(1793, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-10 09:25:19', '2021-07-10 09:25:19'),
(1794, 1, 'admin/memberships/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 09:25:41', '2021-07-10 09:25:41'),
(1795, 1, 'admin/memberships/1', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",null],\"title\":\"silver plan\",\"price\":\"599\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"1. Cloths                                  8 kg \\r\\n\\r\\n2. service time                       24 hours \\r\\n\\r\\n3. minimum order                 Rs299\\r\\n\\r\\n4. validity                                3 months\\r\\n\\r\\n5. Any two preferred pickups\",\"desc_2\":\"25% discount from the market price.\",\"desc_3\":\"Ideal for 1 person\\r\\n\\r\\nFree pickup and delivery\",\"status\":\"1\",\"_token\":\"k90ZTp770gEKL2eoNyLHrLwggchVqqOjKzxqINCu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-10 09:26:22', '2021-07-10 09:26:22'),
(1796, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-10 09:26:22', '2021-07-10 09:26:22'),
(1797, 1, 'admin/memberships/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 09:29:28', '2021-07-10 09:29:28'),
(1798, 1, 'admin/memberships/1', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",null],\"title\":\"silver plan\",\"price\":\"599\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"1. Cloths                                  8 kg \\r\\n\\r\\n2. service time                       24 hours \\r\\n\\r\\n3. minimum order                 Rs299\\r\\n\\r\\n4. validity                                3 months\\r\\n\\r\\n5. Any two preferred pickups\",\"desc_2\":\"25% discount from the market price.\",\"desc_3\":\"Ideal for 1 person\\r\\n\\r\\nFree pickup and delivery\",\"status\":\"1\",\"_token\":\"k90ZTp770gEKL2eoNyLHrLwggchVqqOjKzxqINCu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-10 09:38:04', '2021-07-10 09:38:04'),
(1799, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-10 09:38:04', '2021-07-10 09:38:04'),
(1800, 1, 'admin/memberships/2/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 09:38:08', '2021-07-10 09:38:08'),
(1801, 1, 'admin/memberships', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 09:38:26', '2021-07-10 09:38:26'),
(1802, 1, 'admin/memberships/2/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 09:38:35', '2021-07-10 09:38:35'),
(1803, 1, 'admin/memberships/2', 'PUT', '103.163.151.59', '{\"service_id\":[\"2\",\"3\",null],\"title\":\"Gold-Plan\",\"price\":\"1199\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"1. Cloths                    17KG. \\r\\n2. Service                  Wash & Fold , Steam Iron \\r\\n3.  Dry Clean             Discount 5%\\r\\n4. Service time        24 Hr. \\r\\n5. Minimum Order  299\\/-\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"k90ZTp770gEKL2eoNyLHrLwggchVqqOjKzxqINCu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-10 09:56:12', '2021-07-10 09:56:12'),
(1804, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-10 09:56:13', '2021-07-10 09:56:13'),
(1805, 1, 'admin/memberships/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 09:56:28', '2021-07-10 09:56:28'),
(1806, 1, 'admin/memberships', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 09:56:35', '2021-07-10 09:56:35'),
(1807, 1, 'admin/memberships/2/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 09:56:41', '2021-07-10 09:56:41'),
(1808, 1, 'admin/memberships/2', 'PUT', '103.163.151.59', '{\"service_id\":[\"2\",\"3\",null],\"title\":\"Gold Plan\",\"price\":\"1199\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"1. Cloths                    17KG. \\r\\n2. Service                  Wash & Fold , Steam Iron \\r\\n3.  Dry Clean             Discount 5%\\r\\n4. Service time        24 Hr. \\r\\n5. Minimum Order  299\\/-\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"k90ZTp770gEKL2eoNyLHrLwggchVqqOjKzxqINCu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-10 09:56:50', '2021-07-10 09:56:50'),
(1809, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-10 09:56:54', '2021-07-10 09:56:54'),
(1810, 1, 'admin/memberships/2/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 10:00:31', '2021-07-10 10:00:31'),
(1811, 1, 'admin/memberships/2', 'PUT', '103.163.151.59', '{\"service_id\":[\"2\",\"3\",null],\"title\":\"Gold Plan\",\"price\":\"1199\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"1. Cloths               17KG. \\r\\n2. Service              Wash & Fold , Steam Iron \\r\\n3.  Dry Clean         Discount 5%\\r\\n4. Service time    24 Hr. \\r\\n5. Minimum Order  299\\/-\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"k90ZTp770gEKL2eoNyLHrLwggchVqqOjKzxqINCu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-10 10:01:15', '2021-07-10 10:01:15'),
(1812, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-10 10:01:17', '2021-07-10 10:01:17'),
(1813, 1, 'admin/memberships/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 10:05:48', '2021-07-10 10:05:48'),
(1814, 1, 'admin/memberships/1', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",null],\"title\":\"silver plan\",\"price\":\"599\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"1. Cloths                                  8 kg \\r\\n\\r\\n2. service time                       24 hours \\r\\n\\r\\n3. minimum order                 Rs299\\r\\n\\r\\n4. validity                                3 months\\r\\n\\r\\n5. Any two preferred pickups\",\"desc_2\":\"25% discount from the market price.\",\"desc_3\":\"Ideal for 1 person\\r\\n\\r\\nFree pickup and delivery\",\"status\":\"1\",\"_token\":\"k90ZTp770gEKL2eoNyLHrLwggchVqqOjKzxqINCu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-10 10:06:16', '2021-07-10 10:06:16'),
(1815, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-10 10:06:17', '2021-07-10 10:06:17'),
(1816, 1, 'admin/memberships/2/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 10:09:25', '2021-07-10 10:09:25'),
(1817, 1, 'admin/memberships/2', 'PUT', '103.163.151.59', '{\"service_id\":[\"2\",\"3\",null],\"title\":\"Gold Plan\",\"price\":\"1199\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"1. Cloths               17KG. \\r\\n2. Service              Wash & Fold , Steam Iron \\r\\n3.  Dry Clean         Discount 5%\\r\\n4. Service time    24 Hr. \\r\\n5. Minimum Order  299\\/-\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"k90ZTp770gEKL2eoNyLHrLwggchVqqOjKzxqINCu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-10 10:09:43', '2021-07-10 10:09:43'),
(1818, 1, 'admin/memberships/2/edit', 'GET', '103.163.151.59', '[]', '2021-07-10 10:09:43', '2021-07-10 10:09:43'),
(1819, 1, 'admin/memberships/2', 'PUT', '103.163.151.59', '{\"service_id\":[\"2\",\"3\",null],\"title\":\"Gold Plan\",\"price\":\"1199\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"1. Cloths               17KG. \\r\\n2. Service              Wash & Fold , Steam Iron \\r\\n3.  Dry Clean         Discount 5%\\r\\n4. Service time    24 Hr. \\r\\n5. Minimum Order  299\\/-\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"k90ZTp770gEKL2eoNyLHrLwggchVqqOjKzxqINCu\",\"_method\":\"PUT\"}', '2021-07-10 10:11:48', '2021-07-10 10:11:48'),
(1820, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-10 10:11:48', '2021-07-10 10:11:48'),
(1821, 1, 'admin/memberships/3/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-10 10:28:21', '2021-07-10 10:28:21'),
(1822, 1, 'admin/memberships/3', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",\"3\",null],\"title\":\"Pro pack\",\"price\":\"2999\",\"discount\":\"10\",\"duration\":\"2\",\"desc_1\":\"These are our premium user\",\"desc_2\":\"Get a big 50% discount on all services\",\"desc_3\":null,\"status\":\"1\",\"_token\":\"k90ZTp770gEKL2eoNyLHrLwggchVqqOjKzxqINCu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-10 10:29:01', '2021-07-10 10:29:01'),
(1823, 1, 'admin/memberships/3/edit', 'GET', '103.163.151.59', '[]', '2021-07-10 10:29:03', '2021-07-10 10:29:03'),
(1824, 1, 'admin/memberships/3', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",\"3\",null],\"title\":\"Pro pack\",\"price\":\"2999\",\"discount\":\"10\",\"duration\":\"2\",\"desc_1\":\"These are our premium user\",\"desc_2\":\"Get a big 50% discount on all services\",\"desc_3\":null,\"status\":\"1\",\"_token\":\"k90ZTp770gEKL2eoNyLHrLwggchVqqOjKzxqINCu\",\"_method\":\"PUT\"}', '2021-07-10 10:29:48', '2021-07-10 10:29:48'),
(1825, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-10 10:29:49', '2021-07-10 10:29:49'),
(1826, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-07-11 06:56:05', '2021-07-11 06:56:05'),
(1827, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-11 07:56:30', '2021-07-11 07:56:30'),
(1828, 1, 'admin/banner-images', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-11 07:56:33', '2021-07-11 07:56:33'),
(1829, 1, 'admin', 'GET', '103.163.151.59', '[]', '2021-07-13 08:23:11', '2021-07-13 08:23:11'),
(1830, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 08:23:45', '2021-07-13 08:23:45'),
(1831, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 08:23:48', '2021-07-13 08:23:48'),
(1832, 1, 'admin/services', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 08:23:54', '2021-07-13 08:23:54'),
(1833, 1, 'admin/categories', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 08:26:17', '2021-07-13 08:26:17'),
(1834, 1, 'admin/categories/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 08:26:23', '2021-07-13 08:26:23'),
(1835, 1, 'admin/categories/1', 'PUT', '103.163.151.59', '{\"service_id\":[\"2\",\"4\",null],\"category_name\":\"Men\",\"status\":\"1\",\"_token\":\"QOxAtSuUpnUIm0DurpzvNCrUXsnAfQMF1IcElxB4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/categories\"}', '2021-07-13 08:26:51', '2021-07-13 08:26:51'),
(1836, 1, 'admin/categories', 'GET', '103.163.151.59', '[]', '2021-07-13 08:26:52', '2021-07-13 08:26:52'),
(1837, 1, 'admin/categories/2/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 08:26:55', '2021-07-13 08:26:55'),
(1838, 1, 'admin/categories/2', 'PUT', '103.163.151.59', '{\"service_id\":[\"2\",\"4\",null],\"category_name\":\"Women\",\"status\":\"1\",\"_token\":\"QOxAtSuUpnUIm0DurpzvNCrUXsnAfQMF1IcElxB4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/categories\"}', '2021-07-13 08:26:57', '2021-07-13 08:26:57'),
(1839, 1, 'admin/categories', 'GET', '103.163.151.59', '[]', '2021-07-13 08:26:57', '2021-07-13 08:26:57'),
(1840, 1, 'admin/categories/3/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 08:27:00', '2021-07-13 08:27:00'),
(1841, 1, 'admin/categories/3', 'PUT', '103.163.151.59', '{\"service_id\":[\"2\",\"4\",null],\"category_name\":\"Kids\",\"status\":\"1\",\"_token\":\"QOxAtSuUpnUIm0DurpzvNCrUXsnAfQMF1IcElxB4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/categories\"}', '2021-07-13 08:27:03', '2021-07-13 08:27:03'),
(1842, 1, 'admin/categories', 'GET', '103.163.151.59', '[]', '2021-07-13 08:27:04', '2021-07-13 08:27:04'),
(1843, 1, 'admin/categories/4/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 08:27:49', '2021-07-13 08:27:49'),
(1844, 1, 'admin/categories/4', 'PUT', '103.163.151.59', '{\"service_id\":[\"2\",\"4\",null],\"category_name\":\"Others\",\"status\":\"1\",\"_token\":\"QOxAtSuUpnUIm0DurpzvNCrUXsnAfQMF1IcElxB4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/categories\"}', '2021-07-13 08:27:56', '2021-07-13 08:27:56'),
(1845, 1, 'admin/categories', 'GET', '103.163.151.59', '[]', '2021-07-13 08:27:57', '2021-07-13 08:27:57'),
(1846, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 08:28:27', '2021-07-13 08:28:27'),
(1847, 1, 'admin/products/6', 'DELETE', '103.163.151.59', '{\"_method\":\"delete\",\"_token\":\"QOxAtSuUpnUIm0DurpzvNCrUXsnAfQMF1IcElxB4\"}', '2021-07-13 08:29:55', '2021-07-13 08:29:55'),
(1848, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 08:29:55', '2021-07-13 08:29:55'),
(1849, 1, 'admin/products/24', 'DELETE', '103.163.151.59', '{\"_method\":\"delete\",\"_token\":\"QOxAtSuUpnUIm0DurpzvNCrUXsnAfQMF1IcElxB4\"}', '2021-07-13 08:30:02', '2021-07-13 08:30:02'),
(1850, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 08:30:04', '2021-07-13 08:30:04'),
(1851, 1, 'admin/products/22/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 08:30:33', '2021-07-13 08:30:33'),
(1852, 1, 'admin/products/22', 'PUT', '103.163.151.59', '{\"service_id\":\"4\",\"category_id\":\"1\",\"product_name\":\"Safari Suit\",\"price\":\"100\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"QOxAtSuUpnUIm0DurpzvNCrUXsnAfQMF1IcElxB4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-07-13 08:30:46', '2021-07-13 08:30:46'),
(1853, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-07-13 08:30:46', '2021-07-13 08:30:46'),
(1854, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 08:32:54', '2021-07-13 08:32:54'),
(1855, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_name\":\"Shorts\",\"price\":\"70\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"QOxAtSuUpnUIm0DurpzvNCrUXsnAfQMF1IcElxB4\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-07-13 08:34:24', '2021-07-13 08:34:24'),
(1856, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-07-13 08:34:26', '2021-07-13 08:34:26'),
(1857, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 08:35:46', '2021-07-13 08:35:46'),
(1858, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_name\":\"Coat\",\"price\":\"180\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"QOxAtSuUpnUIm0DurpzvNCrUXsnAfQMF1IcElxB4\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-07-13 08:36:56', '2021-07-13 08:36:56'),
(1859, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-07-13 08:36:58', '2021-07-13 08:36:58'),
(1860, 1, 'admin/products/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 08:37:01', '2021-07-13 08:37:01'),
(1861, 1, 'admin/products', 'POST', '103.163.151.59', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_name\":\"coat set\",\"price\":\"250\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"QOxAtSuUpnUIm0DurpzvNCrUXsnAfQMF1IcElxB4\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-07-13 08:37:55', '2021-07-13 08:37:55'),
(1862, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-07-13 08:37:58', '2021-07-13 08:37:58'),
(1863, 1, 'admin/products', 'GET', '103.163.151.59', '{\"id\":null,\"product_name\":null,\"category_id\":\"1\",\"status\":\"1\",\"_pjax\":\"#pjax-container\"}', '2021-07-13 08:38:43', '2021-07-13 08:38:43'),
(1864, 1, 'admin/products', 'GET', '103.163.151.59', '{\"id\":null,\"product_name\":null,\"category_id\":\"1\",\"status\":\"1\",\"_columns_\":\"category_id,id,price,product_name,status,unit\",\"_pjax\":\"#pjax-container\"}', '2021-07-13 08:39:59', '2021-07-13 08:39:59'),
(1865, 1, 'admin/products', 'GET', '103.163.151.59', '{\"id\":null,\"product_name\":null,\"category_id\":\"1\",\"status\":\"1\",\"_pjax\":\"#pjax-container\"}', '2021-07-13 08:40:11', '2021-07-13 08:40:11'),
(1866, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"product_name\":null,\"category_id\":\"3\",\"status\":\"1\"}', '2021-07-13 08:45:54', '2021-07-13 08:45:54'),
(1867, 1, 'admin/service-areas', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 08:46:34', '2021-07-13 08:46:34'),
(1868, 1, 'admin/service-areas/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 08:52:08', '2021-07-13 08:52:08'),
(1869, 1, 'admin/service-areas', 'POST', '103.163.151.59', '{\"title\":\"Agon gurgaon\",\"pincode\":\"122104\",\"delivery_changes\":\"0\",\"_token\":\"QOxAtSuUpnUIm0DurpzvNCrUXsnAfQMF1IcElxB4\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/service-areas\"}', '2021-07-13 08:54:14', '2021-07-13 08:54:14'),
(1870, 1, 'admin/service-areas', 'GET', '103.163.151.59', '[]', '2021-07-13 08:54:15', '2021-07-13 08:54:15'),
(1871, 1, 'admin/service-areas/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 08:54:19', '2021-07-13 08:54:19'),
(1872, 1, 'admin/service-areas', 'POST', '103.163.151.59', '{\"title\":\"Ullawas gurgaon\",\"pincode\":\"122101\",\"delivery_changes\":\"0\",\"_token\":\"QOxAtSuUpnUIm0DurpzvNCrUXsnAfQMF1IcElxB4\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/service-areas\"}', '2021-07-13 08:59:05', '2021-07-13 08:59:05'),
(1873, 1, 'admin/service-areas', 'GET', '103.163.151.59', '[]', '2021-07-13 08:59:09', '2021-07-13 08:59:09'),
(1874, 1, 'admin/service-areas/8/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 08:59:20', '2021-07-13 08:59:20'),
(1875, 1, 'admin/service-areas/8', 'PUT', '103.163.151.59', '{\"title\":\"Ullawas gurgaon\",\"pincode\":\"122101\",\"delivery_changes\":\"50\",\"_token\":\"QOxAtSuUpnUIm0DurpzvNCrUXsnAfQMF1IcElxB4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/service-areas\"}', '2021-07-13 08:59:25', '2021-07-13 08:59:25'),
(1876, 1, 'admin/service-areas', 'GET', '103.163.151.59', '[]', '2021-07-13 08:59:38', '2021-07-13 08:59:38'),
(1877, 1, 'admin/service-areas/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 08:59:43', '2021-07-13 08:59:43'),
(1878, 1, 'admin', 'GET', '47.31.201.143', '[]', '2021-07-13 09:05:54', '2021-07-13 09:05:54'),
(1879, 1, 'admin', 'GET', '103.163.151.59', '[]', '2021-07-13 19:22:06', '2021-07-13 19:22:06'),
(1880, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 19:22:50', '2021-07-13 19:22:50'),
(1881, 1, 'admin/service-areas', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 19:22:55', '2021-07-13 19:22:55'),
(1882, 1, 'admin/service-areas/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 19:26:06', '2021-07-13 19:26:06'),
(1883, 1, 'admin/service-areas', 'POST', '103.163.151.59', '{\"title\":\"sector 8 gurgaon\",\"pincode\":\"122001\",\"delivery_changes\":\"50\",\"_token\":\"4MJKmHg5NiLwNucwFjw1OG8e2EHpg5UPtqqrmokL\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/service-areas\"}', '2021-07-13 19:26:38', '2021-07-13 19:26:38'),
(1884, 1, 'admin/service-areas', 'GET', '103.163.151.59', '[]', '2021-07-13 19:26:42', '2021-07-13 19:26:42'),
(1885, 1, 'admin/service-areas/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 19:26:45', '2021-07-13 19:26:45'),
(1886, 1, 'admin/service-areas', 'POST', '103.163.151.59', '{\"title\":\"DLF phase 2\",\"pincode\":\"122008\",\"delivery_changes\":\"50\",\"_token\":\"4MJKmHg5NiLwNucwFjw1OG8e2EHpg5UPtqqrmokL\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/service-areas\"}', '2021-07-13 19:30:26', '2021-07-13 19:30:26'),
(1887, 1, 'admin/service-areas', 'GET', '103.163.151.59', '[]', '2021-07-13 19:30:26', '2021-07-13 19:30:26'),
(1888, 1, 'admin/service-areas/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 19:30:28', '2021-07-13 19:30:28'),
(1889, 1, 'admin/service-areas', 'POST', '103.163.151.59', '{\"title\":\"DLF phase 3\",\"pincode\":\"122010\",\"delivery_changes\":\"50\",\"_token\":\"4MJKmHg5NiLwNucwFjw1OG8e2EHpg5UPtqqrmokL\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/service-areas\"}', '2021-07-13 19:30:49', '2021-07-13 19:30:49'),
(1890, 1, 'admin/service-areas', 'GET', '103.163.151.59', '[]', '2021-07-13 19:30:51', '2021-07-13 19:30:51'),
(1891, 1, 'admin/service-areas/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 19:30:54', '2021-07-13 19:30:54'),
(1892, 1, 'admin/service-areas', 'POST', '103.163.151.59', '{\"title\":\"dlf\",\"pincode\":\"122002\",\"delivery_changes\":\"50\",\"_token\":\"4MJKmHg5NiLwNucwFjw1OG8e2EHpg5UPtqqrmokL\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/service-areas\"}', '2021-07-13 19:31:41', '2021-07-13 19:31:41'),
(1893, 1, 'admin/service-areas', 'GET', '103.163.151.59', '[]', '2021-07-13 19:31:52', '2021-07-13 19:31:52'),
(1894, 1, 'admin/service-areas/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 19:32:37', '2021-07-13 19:32:37'),
(1895, 1, 'admin/service-areas', 'POST', '103.163.151.59', '{\"title\":\"Sector 45\",\"pincode\":\"122003\",\"delivery_changes\":\"50\",\"_token\":\"4MJKmHg5NiLwNucwFjw1OG8e2EHpg5UPtqqrmokL\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/service-areas\"}', '2021-07-13 19:32:57', '2021-07-13 19:32:57'),
(1896, 1, 'admin/service-areas', 'GET', '103.163.151.59', '[]', '2021-07-13 19:32:58', '2021-07-13 19:32:58'),
(1897, 1, 'admin/service-areas/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 19:33:00', '2021-07-13 19:33:00'),
(1898, 1, 'admin/service-areas', 'POST', '103.163.151.59', '{\"title\":\"sector 56\",\"pincode\":\"122011\",\"delivery_changes\":\"50\",\"_token\":\"4MJKmHg5NiLwNucwFjw1OG8e2EHpg5UPtqqrmokL\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/service-areas\"}', '2021-07-13 19:33:20', '2021-07-13 19:33:20'),
(1899, 1, 'admin/service-areas', 'GET', '103.163.151.59', '[]', '2021-07-13 19:33:21', '2021-07-13 19:33:21'),
(1900, 1, 'admin/service-areas/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 19:33:25', '2021-07-13 19:33:25'),
(1901, 1, 'admin/service-areas', 'POST', '103.163.151.59', '{\"title\":\"Gurgaon south city\",\"pincode\":\"122001\",\"delivery_changes\":\"50\",\"_token\":\"4MJKmHg5NiLwNucwFjw1OG8e2EHpg5UPtqqrmokL\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/service-areas\"}', '2021-07-13 19:34:02', '2021-07-13 19:34:02'),
(1902, 1, 'admin/service-areas/create', 'GET', '103.163.151.59', '[]', '2021-07-13 19:34:03', '2021-07-13 19:34:03'),
(1903, 1, 'admin/service-areas', 'POST', '103.163.151.59', '{\"title\":\"Gurgaon south city 2\",\"pincode\":\"122018\",\"delivery_changes\":\"50\",\"_token\":\"4MJKmHg5NiLwNucwFjw1OG8e2EHpg5UPtqqrmokL\"}', '2021-07-13 19:34:36', '2021-07-13 19:34:36'),
(1904, 1, 'admin/service-areas/create', 'GET', '103.163.151.59', '[]', '2021-07-13 19:34:39', '2021-07-13 19:34:39'),
(1905, 1, 'admin/service-areas', 'POST', '103.163.151.59', '{\"title\":\"Gurgaon south city 2\",\"pincode\":\"122018\",\"delivery_changes\":\"50\",\"_token\":\"4MJKmHg5NiLwNucwFjw1OG8e2EHpg5UPtqqrmokL\"}', '2021-07-13 19:35:00', '2021-07-13 19:35:00'),
(1906, 1, 'admin/service-areas/create', 'GET', '103.163.151.59', '[]', '2021-07-13 19:35:01', '2021-07-13 19:35:01'),
(1907, 1, 'admin/service-areas', 'POST', '103.163.151.59', '{\"title\":\"Gurgaon village\",\"pincode\":\"122006\",\"delivery_changes\":\"50\",\"_token\":\"4MJKmHg5NiLwNucwFjw1OG8e2EHpg5UPtqqrmokL\"}', '2021-07-13 19:35:33', '2021-07-13 19:35:33'),
(1908, 1, 'admin/service-areas', 'GET', '103.163.151.59', '[]', '2021-07-13 19:35:33', '2021-07-13 19:35:33'),
(1909, 1, 'admin/service-areas/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-13 19:35:36', '2021-07-13 19:35:36'),
(1910, 1, 'admin/service-areas', 'POST', '103.163.151.59', '{\"title\":\"gawal  pahadi\",\"pincode\":\"122003\",\"delivery_changes\":\"50\",\"_token\":\"4MJKmHg5NiLwNucwFjw1OG8e2EHpg5UPtqqrmokL\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/service-areas\"}', '2021-07-13 19:36:33', '2021-07-13 19:36:33'),
(1911, 1, 'admin/service-areas/create', 'GET', '103.163.151.59', '[]', '2021-07-13 19:36:33', '2021-07-13 19:36:33'),
(1912, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-13 19:39:18', '2021-07-13 19:39:18'),
(1913, 1, 'admin', 'GET', '103.163.151.59', '[]', '2021-07-14 16:07:50', '2021-07-14 16:07:50'),
(1914, 1, 'admin/service-areas', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-14 16:08:49', '2021-07-14 16:08:49'),
(1915, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-14 16:09:04', '2021-07-14 16:09:04'),
(1916, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-14 16:09:06', '2021-07-14 16:09:06'),
(1917, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-14 16:09:10', '2021-07-14 16:09:10'),
(1918, 1, 'admin/services', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-14 16:50:05', '2021-07-14 16:50:05'),
(1919, 1, 'admin/categories', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-14 16:50:15', '2021-07-14 16:50:15'),
(1920, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-14 16:50:18', '2021-07-14 16:50:18'),
(1921, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-14 16:50:24', '2021-07-14 16:50:24'),
(1922, 1, 'admin/memberships', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-14 16:50:50', '2021-07-14 16:50:50'),
(1923, 1, 'admin/memberships/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-14 16:50:55', '2021-07-14 16:50:55'),
(1924, 1, 'admin/memberships', 'POST', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",\"3\",\"4\",null],\"title\":\"PLATINIUM PLAN\",\"price\":\"5999\",\"discount\":null,\"duration\":\"3\",\"desc_1\":\"Cloths                             91 kgs\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"ZgaSB7I2xyyUIM1AgthR4t9jEz2QRGOnTKw5Mw0j\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-14 16:56:45', '2021-07-14 16:56:45'),
(1925, 1, 'admin/memberships/create', 'GET', '103.163.151.59', '[]', '2021-07-14 16:56:45', '2021-07-14 16:56:45'),
(1926, 1, 'admin/memberships', 'POST', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",\"3\",\"4\",null],\"title\":\"PLATINIUM PLAN\",\"price\":\"5999\",\"discount\":\"20\",\"duration\":\"3\",\"desc_1\":\"Cloths                             91 kgs\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"ZgaSB7I2xyyUIM1AgthR4t9jEz2QRGOnTKw5Mw0j\"}', '2021-07-14 16:57:02', '2021-07-14 16:57:02'),
(1927, 1, 'admin/memberships/create', 'GET', '103.163.151.59', '[]', '2021-07-14 16:57:02', '2021-07-14 16:57:02'),
(1928, 1, 'admin/memberships', 'POST', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",\"3\",\"4\",null],\"title\":\"PLATINIUM PLAN\",\"price\":\"5999\",\"discount\":\"20\",\"duration\":\"3\",\"desc_1\":\"Cloths                             91 kgs\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"ZgaSB7I2xyyUIM1AgthR4t9jEz2QRGOnTKw5Mw0j\"}', '2021-07-14 16:57:12', '2021-07-14 16:57:12'),
(1929, 1, 'admin/memberships/create', 'GET', '103.163.151.59', '[]', '2021-07-14 16:57:12', '2021-07-14 16:57:12'),
(1930, 1, 'admin/memberships', 'POST', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",\"3\",\"4\",null],\"title\":\"PLATINIUM PLAN\",\"price\":\"5999\",\"discount\":\"20\",\"duration\":\"3\",\"desc_1\":\"Cloths                             91 kgs\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"ZgaSB7I2xyyUIM1AgthR4t9jEz2QRGOnTKw5Mw0j\"}', '2021-07-14 16:57:26', '2021-07-14 16:57:26'),
(1931, 1, 'admin/memberships/create', 'GET', '103.163.151.59', '[]', '2021-07-14 16:57:26', '2021-07-14 16:57:26'),
(1932, 1, 'admin/memberships', 'POST', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",\"3\",\"4\",null],\"title\":\"PLATINIUM PLAN\",\"price\":\"5999\",\"discount\":\"20\",\"duration\":\"3\",\"desc_1\":\"Cloths                             91 kgs\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"ZgaSB7I2xyyUIM1AgthR4t9jEz2QRGOnTKw5Mw0j\"}', '2021-07-14 16:57:34', '2021-07-14 16:57:34'),
(1933, 1, 'admin/memberships/create', 'GET', '103.163.151.59', '[]', '2021-07-14 16:57:34', '2021-07-14 16:57:34'),
(1934, 1, 'admin/memberships', 'POST', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",\"3\",\"4\",null],\"title\":\"PLATINIUM PLAN\",\"price\":\"5999\",\"discount\":\"20\",\"duration\":\"3\",\"desc_1\":\"Cloths                             91 kgs\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"ZgaSB7I2xyyUIM1AgthR4t9jEz2QRGOnTKw5Mw0j\"}', '2021-07-14 16:57:47', '2021-07-14 16:57:47'),
(1935, 1, 'admin/memberships/create', 'GET', '103.163.151.59', '[]', '2021-07-14 16:57:48', '2021-07-14 16:57:48'),
(1936, 1, 'admin/memberships', 'POST', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",\"3\",\"4\",null],\"title\":\"PLATINIUM PLAN\",\"price\":\"5999\",\"discount\":\"20\",\"duration\":\"3\",\"desc_1\":\"Cloths                             91 kgs\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"ZgaSB7I2xyyUIM1AgthR4t9jEz2QRGOnTKw5Mw0j\"}', '2021-07-14 16:59:25', '2021-07-14 16:59:25'),
(1937, 1, 'admin/memberships/create', 'GET', '103.163.151.59', '[]', '2021-07-14 16:59:25', '2021-07-14 16:59:25'),
(1938, 1, 'admin/memberships', 'POST', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",\"3\",\"4\",null],\"title\":\"PLATINIUM PLAN\",\"price\":\"5999\",\"discount\":\"20\",\"duration\":\"3\",\"desc_1\":\"Cloths                             91 kgs\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"ZgaSB7I2xyyUIM1AgthR4t9jEz2QRGOnTKw5Mw0j\"}', '2021-07-14 16:59:52', '2021-07-14 16:59:52'),
(1939, 1, 'admin/memberships/create', 'GET', '103.163.151.59', '[]', '2021-07-14 16:59:52', '2021-07-14 16:59:52'),
(1940, 1, 'admin/memberships', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-14 17:00:00', '2021-07-14 17:00:00'),
(1941, 1, 'admin/memberships/2/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-14 17:00:10', '2021-07-14 17:00:10'),
(1942, 1, 'admin/memberships/2', 'PUT', '103.163.151.59', '{\"service_id\":[\"2\",\"3\",null],\"title\":\"Gold Plan\",\"price\":\"1199\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"1. Cloths               17KG. \\r\\n\\r\\n2. Service              Wash & Fold , Steam Iron \\r\\n\\r\\n3.  Dry Clean         Discount 5%\\r\\n\\r\\n4. Service time    24 Hr. \\r\\n\\r\\n5. Minimum Order  299\\/-\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"ZgaSB7I2xyyUIM1AgthR4t9jEz2QRGOnTKw5Mw0j\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-14 17:00:30', '2021-07-14 17:00:30'),
(1943, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-14 17:00:30', '2021-07-14 17:00:30'),
(1944, 1, 'admin/memberships/3/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-14 17:00:34', '2021-07-14 17:00:34'),
(1945, 1, 'admin/memberships/3', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",\"3\",null],\"title\":\"Pro pack\",\"price\":\"2999\",\"discount\":\"10\",\"duration\":\"2\",\"desc_1\":\"1. Cloths                45 KG. \\r\\n\\r\\n2. Service              Wash & Fold , Steam Iron , dry-clean\\r\\n\\r\\n3.  Dry Clean         Discount 10%\\r\\n\\r\\n4. Time                   24 hours\\r\\n\\r\\n5. validity                Unlimited \\r\\n\\r\\n6. Service time    24 Hr. \\r\\n\\r\\n7. Minimum Order  299\\/-e our premium user\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"ZgaSB7I2xyyUIM1AgthR4t9jEz2QRGOnTKw5Mw0j\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-14 17:02:36', '2021-07-14 17:02:36'),
(1946, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-14 17:02:37', '2021-07-14 17:02:37'),
(1947, 1, 'admin/memberships/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-14 17:02:40', '2021-07-14 17:02:40'),
(1948, 1, 'admin/memberships/1', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"3\",\"4\",null],\"title\":\"silver plan\",\"price\":\"599\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"1. Cloths                                   8 kg \\r\\n\\r\\n2. service time                       24 hours \\r\\n\\r\\n3. minimum order                 Rs299\\r\\n\\r\\n4. validity                                 3 months\\r\\n\\r\\n5. Estimate cloths                 50 cloths\",\"desc_2\":null,\"desc_3\":\"Ideal for 1 person\\r\\n\\r\\nFree pickup and delivery\",\"status\":\"1\",\"_token\":\"ZgaSB7I2xyyUIM1AgthR4t9jEz2QRGOnTKw5Mw0j\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-14 17:04:56', '2021-07-14 17:04:56'),
(1949, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-14 17:04:56', '2021-07-14 17:04:56'),
(1950, 1, 'admin/memberships/2/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-14 17:05:00', '2021-07-14 17:05:00'),
(1951, 1, 'admin/memberships/2', 'PUT', '103.163.151.59', '{\"service_id\":[\"2\",\"3\",null],\"title\":\"Gold Plan\",\"price\":\"1199\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"1. Cloths                   17KG. \\r\\n\\r\\n2. Service                  Wash & Fold , Steam Iron \\r\\n\\r\\n3.  Dry Clean             Discount 5%\\r\\n\\r\\n4.  estimate cloths        110\\r\\n\\r\\n5. Service time                24 Hr. \\r\\n\\r\\n6. Minimum Order          299\\/-\\r\\n\\r\\n7. validity                            Unlimited\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"ZgaSB7I2xyyUIM1AgthR4t9jEz2QRGOnTKw5Mw0j\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-14 17:07:27', '2021-07-14 17:07:27'),
(1952, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-14 17:07:27', '2021-07-14 17:07:27'),
(1953, 1, 'admin/auth/login', 'GET', '110.225.68.91', '[]', '2021-07-17 11:38:42', '2021-07-17 11:38:42'),
(1954, 1, 'admin', 'GET', '110.225.68.91', '[]', '2021-07-17 11:38:45', '2021-07-17 11:38:45'),
(1955, 1, 'admin/orders', 'GET', '110.225.68.91', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-17 11:39:14', '2021-07-17 11:39:14'),
(1956, 1, 'admin/orders', 'GET', '110.225.68.91', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-17 11:39:15', '2021-07-17 11:39:15'),
(1957, 1, 'admin/orders/75/edit', 'GET', '110.225.68.91', '{\"_pjax\":\"#pjax-container\"}', '2021-07-17 11:39:30', '2021-07-17 11:39:30'),
(1958, 1, 'admin/orders/75', 'PUT', '110.225.68.91', '{\"order_id\":\"ORD58077285\",\"delivered_by\":\"4\",\"status\":\"3\",\"payment_status\":\"1\",\"expected_delivery_date\":\"2021-07-19\",\"drop_time\":\"1 pm to 3 pm\",\"_token\":\"UoQjcyDv5BVEzUnu7b7k3kSO0XJLxbV85SFcDAqt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-07-17 11:40:03', '2021-07-17 11:40:03'),
(1959, 1, 'admin/orders', 'GET', '110.225.68.91', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-07-17 11:40:10', '2021-07-17 11:40:10'),
(1960, 1, 'admin/orders', 'GET', '110.225.68.91', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-17 11:40:24', '2021-07-17 11:40:24'),
(1961, 1, 'admin/products', 'GET', '110.225.68.91', '{\"_pjax\":\"#pjax-container\"}', '2021-07-17 11:40:25', '2021-07-17 11:40:25'),
(1962, 1, 'admin', 'GET', '103.163.151.59', '[]', '2021-07-21 06:05:07', '2021-07-21 06:05:07'),
(1963, 1, 'admin/memberships', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-21 06:06:26', '2021-07-21 06:06:26'),
(1964, 1, 'admin/memberships/create', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-21 06:06:41', '2021-07-21 06:06:41'),
(1965, 1, 'admin/memberships', 'POST', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",\"3\",\"4\",null],\"title\":\"PLATINUM PLAN\",\"price\":\"5999\",\"discount\":\"20\",\"duration\":\"3\",\"desc_1\":\"Cloths                                 94 kgs\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"5nEiJTzNEpeATdgzcgsPL7ltks98y63V1879hSfw\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-21 06:08:12', '2021-07-21 06:08:12'),
(1966, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-21 06:08:15', '2021-07-21 06:08:15'),
(1967, 1, 'admin/memberships/3/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-21 06:08:22', '2021-07-21 06:08:22'),
(1968, 1, 'admin/memberships/3', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",\"3\",null],\"title\":\"CORPORATE  PLAN\",\"price\":\"2999\",\"discount\":\"10\",\"duration\":\"2\",\"desc_1\":\"1. Cloths                45 KG. \\r\\n\\r\\n2. Service              Wash & Fold , Steam Iron , dry-clean\\r\\n\\r\\n3.  Dry Clean         Discount 10%\\r\\n\\r\\n4. Time                   24 hours\\r\\n\\r\\n5. validity                Unlimited \\r\\n\\r\\n6. Service time    24 Hr. \\r\\n\\r\\n7. Minimum Order  299\\/-e our premium user\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"5nEiJTzNEpeATdgzcgsPL7ltks98y63V1879hSfw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-21 06:10:59', '2021-07-21 06:10:59'),
(1969, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-21 06:10:59', '2021-07-21 06:10:59');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1970, 1, 'admin/memberships/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-21 06:11:02', '2021-07-21 06:11:02'),
(1971, 1, 'admin/memberships/1', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"3\",\"4\",null],\"title\":\"SILVER PLAN\",\"price\":\"599\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"1. Cloths                                   8 kg \\r\\n\\r\\n2. service time                       24 hours \\r\\n\\r\\n3. minimum order                 Rs299\\r\\n\\r\\n4. validity                                 3 months\\r\\n\\r\\n5. Estimate cloths                 50 cloths\",\"desc_2\":null,\"desc_3\":\"Ideal for 1 person\\r\\n\\r\\nFree pickup and delivery\",\"status\":\"1\",\"_token\":\"5nEiJTzNEpeATdgzcgsPL7ltks98y63V1879hSfw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-21 06:11:14', '2021-07-21 06:11:14'),
(1972, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-21 06:11:18', '2021-07-21 06:11:18'),
(1973, 1, 'admin/memberships/2/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-21 06:11:22', '2021-07-21 06:11:22'),
(1974, 1, 'admin/memberships/2', 'PUT', '103.163.151.59', '{\"service_id\":[\"2\",\"3\",null],\"title\":\"GOLD PLAN\",\"price\":\"1199\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"1. Cloths                   17KG. \\r\\n\\r\\n2. Service                  Wash & Fold , Steam Iron \\r\\n\\r\\n3.  Dry Clean             Discount 5%\\r\\n\\r\\n4.  estimate cloths        110\\r\\n\\r\\n5. Service time                24 Hr. \\r\\n\\r\\n6. Minimum Order          299\\/-\\r\\n\\r\\n7. validity                            Unlimited\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"5nEiJTzNEpeATdgzcgsPL7ltks98y63V1879hSfw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-21 06:11:30', '2021-07-21 06:11:30'),
(1975, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-21 06:11:33', '2021-07-21 06:11:33'),
(1976, 1, 'admin/memberships/3/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-21 06:11:41', '2021-07-21 06:11:41'),
(1977, 1, 'admin/memberships/3', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",\"3\",null],\"title\":\"CORPORATE  PLAN\",\"price\":\"2999\",\"discount\":\"10\",\"duration\":\"2\",\"desc_1\":\"1. Cloths                45 KG. \\r\\n\\r\\n2. Service              Wash & Fold , Steam Iron , dry-clean\\r\\n\\r\\n3.  Dry Clean         Discount 10%\\r\\n\\r\\n4. Time                   24 hours\\r\\n\\r\\n5. validity                Unlimited \\r\\n\\r\\n6. Service time    24 Hr. \\r\\n\\r\\n7. Minimum Order  299\\/-e our premium user\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"5nEiJTzNEpeATdgzcgsPL7ltks98y63V1879hSfw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-21 06:11:45', '2021-07-21 06:11:45'),
(1978, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-21 06:11:46', '2021-07-21 06:11:46'),
(1979, 1, 'admin/memberships/4/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-21 06:11:49', '2021-07-21 06:11:49'),
(1980, 1, 'admin/memberships/4', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",\"3\",\"4\",null],\"title\":\"PLATINUM PLAN\",\"price\":\"5999\",\"discount\":\"20\",\"duration\":\"3\",\"desc_1\":\"Cloths                                 94 kgs\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"5nEiJTzNEpeATdgzcgsPL7ltks98y63V1879hSfw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-21 06:11:54', '2021-07-21 06:11:54'),
(1981, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-21 06:11:55', '2021-07-21 06:11:55'),
(1982, 1, 'admin/memberships/4/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-21 06:19:54', '2021-07-21 06:19:54'),
(1983, 1, 'admin/memberships/4', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",\"3\",\"4\",null],\"title\":\"PLATINUM PLAN\",\"price\":\"5999\",\"discount\":\"20\",\"duration\":\"3\",\"desc_1\":\"Cloths                                     94 kgs\\r\\n\\r\\n Service                                  Wash & Fold , Steam Iron , dry-clean\\r\\n  \\r\\n Dry Clean Discount          15% \\r\\n\\r\\nTime                                       24 hours \\r\\n\\r\\nValidity                                  Unlimited\\r\\n\\r\\nService time                        24 Hr. \\r\\n\\r\\n Minimum Order                299\\/-\",\"desc_2\":null,\"desc_3\":null,\"status\":\"1\",\"_token\":\"5nEiJTzNEpeATdgzcgsPL7ltks98y63V1879hSfw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-21 06:22:55', '2021-07-21 06:22:55'),
(1984, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-21 06:22:56', '2021-07-21 06:22:56'),
(1985, 1, 'admin/memberships/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-21 06:23:20', '2021-07-21 06:23:20'),
(1986, 1, 'admin/memberships/1', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"3\",\"4\",null],\"title\":\"SILVER PLAN\",\"price\":\"599\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"1. Cloths                                   8 kg \\r\\n\\r\\n2. service time                       24 - 48 hours \\r\\n\\r\\n3. minimum order                 Rs299\\r\\n\\r\\n4. validity                                 3 months\\r\\n\\r\\n5. Estimate cloths                 50 cloths\",\"desc_2\":null,\"desc_3\":\"Ideal for 1 person\\r\\n\\r\\nFree pickup and delivery\",\"status\":\"1\",\"_token\":\"5nEiJTzNEpeATdgzcgsPL7ltks98y63V1879hSfw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-21 06:23:44', '2021-07-21 06:23:44'),
(1987, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-21 06:23:44', '2021-07-21 06:23:44'),
(1988, 1, 'admin/memberships/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-21 06:23:54', '2021-07-21 06:23:54'),
(1989, 1, 'admin/memberships/1', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"3\",\"4\",null],\"title\":\"SILVER PLAN\",\"price\":\"599\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"Cloths                                   8 kg \\r\\n\\r\\nService time                       24 - 48 hours \\r\\n\\r\\nMinimum order                 Rs299\\r\\n\\r\\nValidity                                 3 months\\r\\n\\r\\nEstimate cloths                 50 cloths\",\"desc_2\":null,\"desc_3\":\"Ideal for 1 person\\r\\n\\r\\nFree pickup and delivery\",\"status\":\"1\",\"_token\":\"5nEiJTzNEpeATdgzcgsPL7ltks98y63V1879hSfw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-21 06:24:24', '2021-07-21 06:24:24'),
(1990, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-21 06:24:25', '2021-07-21 06:24:25'),
(1991, 1, 'admin/memberships/2/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-21 06:24:30', '2021-07-21 06:24:30'),
(1992, 1, 'admin/memberships/2', 'PUT', '103.163.151.59', '{\"service_id\":[\"2\",\"3\",null],\"title\":\"GOLD PLAN\",\"price\":\"1199\",\"discount\":\"20\",\"duration\":\"2\",\"desc_1\":\"Cloths                   17KG. \\r\\n\\r\\nService                  Wash & Fold , Steam Iron \\r\\n\\r\\nDry Clean             Discount 5%\\r\\n\\r\\nEstimate cloths        110\\r\\n\\r\\nService time                24 Hr. \\r\\n\\r\\n6. Minimum Order          299\\/-\\r\\n\\r\\nValidity                            Unlimited\",\"desc_2\":\"Ideal for 2 person\\r\\n\\r\\nFree pickup and delivery\",\"desc_3\":null,\"status\":\"1\",\"_token\":\"5nEiJTzNEpeATdgzcgsPL7ltks98y63V1879hSfw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-21 06:25:08', '2021-07-21 06:25:08'),
(1993, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-21 06:25:08', '2021-07-21 06:25:08'),
(1994, 1, 'admin/memberships/3/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-21 06:25:14', '2021-07-21 06:25:14'),
(1995, 1, 'admin/memberships/3', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",\"3\",null],\"title\":\"CORPORATE  PLAN\",\"price\":\"2999\",\"discount\":\"10\",\"duration\":\"2\",\"desc_1\":\"Cloths                   45 KG. \\r\\n\\r\\nService                  Wash & Fold , Steam Iron , dry-clean\\r\\n\\r\\nDry Clean             Discount 10%\\r\\n\\r\\nTime                       24 hours\\r\\n\\r\\nValidity                   Unlimited \\r\\n\\r\\nService time         24 Hr. \\r\\n\\r\\nMinimum Order  299\\/-e our premium user\",\"desc_2\":\"Free pickup and delivery\",\"desc_3\":null,\"status\":\"1\",\"_token\":\"5nEiJTzNEpeATdgzcgsPL7ltks98y63V1879hSfw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-21 06:28:51', '2021-07-21 06:28:51'),
(1996, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-21 06:28:51', '2021-07-21 06:28:51'),
(1997, 1, 'admin/memberships/4/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-21 06:28:55', '2021-07-21 06:28:55'),
(1998, 1, 'admin/memberships/4', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",\"3\",\"4\",null],\"title\":\"PLATINUM PLAN\",\"price\":\"5999\",\"discount\":\"20\",\"duration\":\"3\",\"desc_1\":\"Cloths                                     94 kgs\\r\\n\\r\\nService                                  Wash & Fold , Steam Iron , dry-clean\\r\\n  \\r\\n Dry Clean Discount          15% \\r\\n\\r\\nTime                                       24 hours \\r\\n\\r\\nValidity                                  Unlimited\\r\\n\\r\\nService time                        24 Hr. \\r\\n\\r\\n Minimum Order                299\\/-\",\"desc_2\":\"Free pickup and delivery\",\"desc_3\":null,\"status\":\"1\",\"_token\":\"5nEiJTzNEpeATdgzcgsPL7ltks98y63V1879hSfw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-21 06:29:14', '2021-07-21 06:29:14'),
(1999, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-21 06:29:14', '2021-07-21 06:29:14'),
(2000, 1, 'admin/memberships/4/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-21 06:36:12', '2021-07-21 06:36:12'),
(2001, 1, 'admin/memberships/4', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",\"3\",\"4\",null],\"title\":\"PLATINUM PLAN\",\"price\":\"5999\",\"discount\":\"20\",\"duration\":\"3\",\"desc_1\":\"Cloths                                     91 kgs\\r\\n\\r\\nService                                  Wash & Fold , Steam Iron , dry-clean\\r\\n  \\r\\n Dry Clean Discount          15%  OFF \\r\\n\\r\\nPremium Laundry             15% OFF \\r\\n\\r\\nTime                                       24 hours \\r\\n\\r\\nValidity                                  Unlimited\\r\\n\\r\\nService time                        24 Hr. \\r\\n\\r\\n Minimum Order                299\\/-\",\"desc_2\":\"Free pickup and delivery\",\"desc_3\":null,\"status\":\"1\",\"_token\":\"5nEiJTzNEpeATdgzcgsPL7ltks98y63V1879hSfw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-07-21 06:45:32', '2021-07-21 06:45:32'),
(2002, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-07-21 06:45:33', '2021-07-21 06:45:33'),
(2003, 1, 'admin', 'GET', '103.163.151.59', '[]', '2021-07-26 07:59:05', '2021-07-26 07:59:05'),
(2004, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-26 08:08:16', '2021-07-26 08:08:16'),
(2005, 1, 'admin/service-areas', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-26 08:08:17', '2021-07-26 08:08:17'),
(2006, 1, 'admin/services', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-26 08:08:30', '2021-07-26 08:08:30'),
(2007, 1, 'admin/services/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-26 08:08:49', '2021-07-26 08:08:49'),
(2008, 1, 'admin/services/1', 'PUT', '103.163.151.59', '{\"service_name\":\"WASH  AND FOLD\",\"service_time\":\"24- 48\",\"description\":\"24 hours\",\"status\":\"1\",\"_token\":\"cp3PnziihJRSTiyUTEae0ON6vM3FHVmKYAiZWmgw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/services\"}', '2021-07-26 08:09:01', '2021-07-26 08:09:01'),
(2009, 1, 'admin/services/1/edit', 'GET', '103.163.151.59', '[]', '2021-07-26 08:09:02', '2021-07-26 08:09:02'),
(2010, 1, 'admin/services/1', 'PUT', '103.163.151.59', '{\"service_name\":\"WASH  AND FOLD\",\"service_time\":\"24 +\",\"description\":\"24 hours\",\"status\":\"1\",\"_token\":\"cp3PnziihJRSTiyUTEae0ON6vM3FHVmKYAiZWmgw\",\"_method\":\"PUT\"}', '2021-07-26 08:09:14', '2021-07-26 08:09:14'),
(2011, 1, 'admin/services/1/edit', 'GET', '103.163.151.59', '[]', '2021-07-26 08:09:14', '2021-07-26 08:09:14'),
(2012, 1, 'admin/services/1', 'PUT', '103.163.151.59', '{\"service_name\":\"WASH  AND FOLD\",\"service_time\":\"24\",\"description\":\"24 hours\",\"status\":\"1\",\"_token\":\"cp3PnziihJRSTiyUTEae0ON6vM3FHVmKYAiZWmgw\",\"_method\":\"PUT\"}', '2021-07-26 08:09:19', '2021-07-26 08:09:19'),
(2013, 1, 'admin/services', 'GET', '103.163.151.59', '[]', '2021-07-26 08:09:19', '2021-07-26 08:09:19'),
(2014, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-26 08:56:58', '2021-07-26 08:56:58'),
(2015, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-07-26 08:57:08', '2021-07-26 08:57:08'),
(2016, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-07-26 08:57:19', '2021-07-26 08:57:19'),
(2017, 1, 'admin', 'GET', '47.31.201.238', '[]', '2021-08-07 06:40:49', '2021-08-07 06:40:49'),
(2018, 1, 'admin/memberships', 'GET', '47.31.201.238', '{\"_pjax\":\"#pjax-container\"}', '2021-08-07 06:43:34', '2021-08-07 06:43:34'),
(2019, 1, 'admin/memberships/1/edit', 'GET', '47.31.201.238', '{\"_pjax\":\"#pjax-container\"}', '2021-08-07 06:44:43', '2021-08-07 06:44:43'),
(2020, 1, 'admin/memberships/1/edit', 'GET', '47.31.201.238', '[]', '2021-08-07 11:07:47', '2021-08-07 11:07:47'),
(2021, 1, 'admin/memberships/1/edit', 'GET', '47.31.201.238', '[]', '2021-08-07 11:08:34', '2021-08-07 11:08:34'),
(2022, 1, 'admin/memberships/1/edit', 'GET', '47.31.201.238', '[]', '2021-08-07 11:11:33', '2021-08-07 11:11:33'),
(2023, 1, 'admin/memberships/1', 'PUT', '47.31.201.238', '{\"service_id\":[\"1\",\"3\",\"4\",null],\"title\":\"SILVER PLAN\",\"price\":\"599\",\"discount\":\"20,30,40\",\"duration\":\"2\",\"desc_1\":\"Cloths                                   8 kg \\r\\n\\r\\nService time                       24 - 48 hours \\r\\n\\r\\nMinimum order                 Rs299\\r\\n\\r\\nValidity                                 3 months\\r\\n\\r\\nEstimate cloths                 50 cloths\",\"desc_2\":null,\"desc_3\":\"Ideal for 1 person\\r\\n\\r\\nFree pickup and delivery\",\"status\":\"1\",\"_token\":\"v3Hv3xHtgKiPwZ6gvYZMq6FlZF0DPjmaP9fhPiMh\",\"_method\":\"PUT\"}', '2021-08-07 11:11:54', '2021-08-07 11:11:54'),
(2024, 1, 'admin/memberships/1/edit', 'GET', '47.31.201.238', '[]', '2021-08-07 11:11:55', '2021-08-07 11:11:55'),
(2025, 1, 'admin/memberships/1/edit', 'GET', '47.31.201.238', '[]', '2021-08-07 11:13:20', '2021-08-07 11:13:20'),
(2026, 1, 'admin/memberships/1', 'PUT', '47.31.201.238', '{\"service_id\":[\"1\",\"3\",\"4\",null],\"title\":\"SILVER PLAN\",\"price\":\"599\",\"discount\":\"20,30,40\",\"duration\":\"2\",\"desc_1\":\"Cloths                                   8 kg \\r\\n\\r\\nService time                       24 - 48 hours \\r\\n\\r\\nMinimum order                 Rs299\\r\\n\\r\\nValidity                                 3 months\\r\\n\\r\\nEstimate cloths                 50 cloths\",\"desc_2\":null,\"desc_3\":\"Ideal for 1 person\\r\\n\\r\\nFree pickup and delivery\",\"status\":\"1\",\"_token\":\"v3Hv3xHtgKiPwZ6gvYZMq6FlZF0DPjmaP9fhPiMh\",\"_method\":\"PUT\"}', '2021-08-07 11:13:29', '2021-08-07 11:13:29'),
(2027, 1, 'admin/memberships', 'GET', '47.31.201.238', '[]', '2021-08-07 11:13:29', '2021-08-07 11:13:29'),
(2028, 1, 'admin/memberships/1/edit', 'GET', '47.31.201.238', '{\"_pjax\":\"#pjax-container\"}', '2021-08-07 11:39:44', '2021-08-07 11:39:44'),
(2029, 1, 'admin', 'GET', '157.37.183.2', '[]', '2021-08-09 04:02:48', '2021-08-09 04:02:48'),
(2030, 1, 'admin/memberships', 'GET', '157.37.183.2', '[]', '2021-08-09 04:03:33', '2021-08-09 04:03:33'),
(2031, 1, 'admin/memberships/1/edit', 'GET', '157.37.183.2', '{\"_pjax\":\"#pjax-container\"}', '2021-08-09 04:03:46', '2021-08-09 04:03:46'),
(2032, 1, 'admin/memberships/1/edit', 'GET', '157.37.183.2', '[]', '2021-08-09 04:05:45', '2021-08-09 04:05:45'),
(2033, 1, 'admin/memberships/1/edit', 'GET', '157.37.183.2', '[]', '2021-08-09 04:30:54', '2021-08-09 04:30:54'),
(2034, 1, 'admin/orders', 'GET', '157.37.183.2', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-09 07:48:35', '2021-08-09 07:48:35'),
(2035, 1, 'admin/view_orders/74', 'GET', '157.37.183.2', '{\"_pjax\":\"#pjax-container\"}', '2021-08-09 07:49:04', '2021-08-09 07:49:04'),
(2036, 1, 'admin/memberships', 'GET', '157.37.183.2', '{\"_pjax\":\"#pjax-container\"}', '2021-08-09 08:01:31', '2021-08-09 08:01:31'),
(2037, 1, 'admin/memberships/2/edit', 'GET', '157.37.183.2', '{\"_pjax\":\"#pjax-container\"}', '2021-08-09 08:01:42', '2021-08-09 08:01:42'),
(2038, 1, 'admin/memberships/2', 'PUT', '157.37.183.2', '{\"service_id\":[\"2\",\"3\",null],\"title\":\"GOLD PLAN\",\"price\":\"1199\",\"discount\":\"20,10\",\"duration\":\"2\",\"desc_1\":\"Cloths                   17KG. \\r\\n\\r\\nService                  Wash & Fold , Steam Iron \\r\\n\\r\\nDry Clean             Discount 5%\\r\\n\\r\\nEstimate cloths        110\\r\\n\\r\\nService time                24 Hr. \\r\\n\\r\\n6. Minimum Order          299\\/-\\r\\n\\r\\nValidity                            Unlimited\",\"desc_2\":\"Ideal for 2 person\\r\\n\\r\\nFree pickup and delivery\",\"desc_3\":null,\"status\":\"1\",\"_token\":\"AO0duS8dCBYJkreIvc9tnXJbOdhDeffXtdUSQoBB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-08-09 08:02:01', '2021-08-09 08:02:01'),
(2039, 1, 'admin/memberships/2/edit', 'GET', '157.37.183.2', '[]', '2021-08-09 08:02:01', '2021-08-09 08:02:01'),
(2040, 1, 'admin/memberships/2/edit', 'GET', '157.37.183.2', '[]', '2021-08-09 08:02:20', '2021-08-09 08:02:20'),
(2041, 1, 'admin/memberships/2', 'PUT', '157.37.183.2', '{\"service_id\":[\"2\",\"3\",null],\"title\":\"GOLD PLAN\",\"price\":\"1199\",\"discount\":\"20,10\",\"duration\":\"2\",\"desc_1\":\"Cloths                   17KG. \\r\\n\\r\\nService                  Wash & Fold , Steam Iron \\r\\n\\r\\nDry Clean             Discount 5%\\r\\n\\r\\nEstimate cloths        110\\r\\n\\r\\nService time                24 Hr. \\r\\n\\r\\n6. Minimum Order          299\\/-\\r\\n\\r\\nValidity                            Unlimited\",\"desc_2\":\"Ideal for 2 person\\r\\n\\r\\nFree pickup and delivery\",\"desc_3\":null,\"status\":\"1\",\"_token\":\"AO0duS8dCBYJkreIvc9tnXJbOdhDeffXtdUSQoBB\",\"_method\":\"PUT\"}', '2021-08-09 08:02:29', '2021-08-09 08:02:29'),
(2042, 1, 'admin/memberships', 'GET', '157.37.183.2', '[]', '2021-08-09 08:02:29', '2021-08-09 08:02:29'),
(2043, 1, 'admin/memberships/3/edit', 'GET', '157.37.183.2', '{\"_pjax\":\"#pjax-container\"}', '2021-08-09 08:02:34', '2021-08-09 08:02:34'),
(2044, 1, 'admin/memberships/3', 'PUT', '157.37.183.2', '{\"service_id\":[\"1\",\"2\",\"3\",null],\"title\":\"CORPORATE  PLAN\",\"price\":\"2999\",\"discount\":\"10,15,20\",\"duration\":\"2\",\"desc_1\":\"Cloths                   45 KG. \\r\\n\\r\\nService                  Wash & Fold , Steam Iron , dry-clean\\r\\n\\r\\nDry Clean             Discount 10%\\r\\n\\r\\nTime                       24 hours\\r\\n\\r\\nValidity                   Unlimited \\r\\n\\r\\nService time         24 Hr. \\r\\n\\r\\nMinimum Order  299\\/-e our premium user\",\"desc_2\":\"Free pickup and delivery\",\"desc_3\":null,\"status\":\"1\",\"_token\":\"AO0duS8dCBYJkreIvc9tnXJbOdhDeffXtdUSQoBB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-08-09 08:02:47', '2021-08-09 08:02:47'),
(2045, 1, 'admin/memberships', 'GET', '157.37.183.2', '[]', '2021-08-09 08:02:48', '2021-08-09 08:02:48'),
(2046, 1, 'admin/memberships/4/edit', 'GET', '157.37.183.2', '{\"_pjax\":\"#pjax-container\"}', '2021-08-09 08:02:51', '2021-08-09 08:02:51'),
(2047, 1, 'admin/memberships/4', 'PUT', '157.37.183.2', '{\"service_id\":[\"1\",\"2\",\"3\",\"4\",null],\"title\":\"PLATINUM PLAN\",\"price\":\"5999\",\"discount\":\"20,15,25,30\",\"duration\":\"3\",\"desc_1\":\"Cloths                                     91 kgs\\r\\n\\r\\nService                                  Wash & Fold , Steam Iron , dry-clean\\r\\n  \\r\\n Dry Clean Discount          15%  OFF \\r\\n\\r\\nPremium Laundry             15% OFF \\r\\n\\r\\nTime                                       24 hours \\r\\n\\r\\nValidity                                  Unlimited\\r\\n\\r\\nService time                        24 Hr. \\r\\n\\r\\n Minimum Order                299\\/-\",\"desc_2\":\"Free pickup and delivery\",\"desc_3\":null,\"status\":\"1\",\"_token\":\"AO0duS8dCBYJkreIvc9tnXJbOdhDeffXtdUSQoBB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-08-09 08:03:09', '2021-08-09 08:03:09'),
(2048, 1, 'admin/memberships', 'GET', '157.37.183.2', '[]', '2021-08-09 08:03:12', '2021-08-09 08:03:12'),
(2049, 1, 'admin/memberships/1/edit', 'GET', '157.37.183.2', '{\"_pjax\":\"#pjax-container\"}', '2021-08-09 08:04:54', '2021-08-09 08:04:54'),
(2050, 1, 'admin/memberships/1/edit', 'GET', '157.37.183.2', '[]', '2021-08-09 08:05:23', '2021-08-09 08:05:23'),
(2051, 1, 'admin/memberships/1/edit', 'GET', '157.37.183.2', '[]', '2021-08-09 08:07:13', '2021-08-09 08:07:13'),
(2052, 1, 'admin/memberships', 'GET', '157.37.183.2', '{\"_pjax\":\"#pjax-container\"}', '2021-08-09 08:08:15', '2021-08-09 08:08:15'),
(2053, 1, 'admin/orders', 'GET', '157.37.183.2', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-09 08:08:51', '2021-08-09 08:08:51'),
(2054, 1, 'admin/view_orders/74', 'GET', '157.37.183.2', '{\"_pjax\":\"#pjax-container\"}', '2021-08-09 08:08:59', '2021-08-09 08:08:59'),
(2055, 1, 'admin/orders', 'GET', '157.37.183.2', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-09 10:55:20', '2021-08-09 10:55:20'),
(2056, 1, 'admin/memberships', 'GET', '157.37.183.2', '{\"_pjax\":\"#pjax-container\"}', '2021-08-09 10:56:49', '2021-08-09 10:56:49'),
(2057, 1, 'admin/memberships/1/edit', 'GET', '157.37.183.2', '{\"_pjax\":\"#pjax-container\"}', '2021-08-09 10:56:56', '2021-08-09 10:56:56'),
(2058, 1, 'admin/memberships/1/edit', 'GET', '157.37.183.2', '[]', '2021-08-09 11:04:01', '2021-08-09 11:04:01'),
(2059, 1, 'admin/memberships/1/edit', 'GET', '157.37.183.2', '[]', '2021-08-09 11:04:36', '2021-08-09 11:04:36'),
(2060, 1, 'admin/memberships/1/edit', 'GET', '157.37.183.2', '[]', '2021-08-09 11:04:53', '2021-08-09 11:04:53'),
(2061, 1, 'admin/memberships/1', 'PUT', '157.37.183.2', '{\"service_id\":[\"1\",\"3\",\"4\",null],\"title\":\"SILVER PLAN\",\"price\":\"599\",\"discount_type\":\"1,1,2\",\"discount\":\"20,30,40\",\"duration\":\"2\",\"desc_1\":\"Cloths                                   8 kg \\r\\n\\r\\nService time                       24 - 48 hours \\r\\n\\r\\nMinimum order                 Rs299\\r\\n\\r\\nValidity                                 3 months\\r\\n\\r\\nEstimate cloths                 50 cloths\",\"desc_2\":null,\"desc_3\":\"Ideal for 1 person\\r\\n\\r\\nFree pickup and delivery\",\"status\":\"1\",\"_token\":\"MSLgI80swf9AypFI4cqUTDmXXOL0hM6vudMykQWd\",\"_method\":\"PUT\"}', '2021-08-09 12:10:49', '2021-08-09 12:10:49'),
(2062, 1, 'admin/memberships', 'GET', '157.37.183.2', '[]', '2021-08-09 12:10:50', '2021-08-09 12:10:50'),
(2063, 1, 'admin/memberships/1/edit', 'GET', '157.37.183.2', '{\"_pjax\":\"#pjax-container\"}', '2021-08-09 12:10:55', '2021-08-09 12:10:55'),
(2064, 1, 'admin/memberships', 'GET', '157.37.183.2', '{\"_pjax\":\"#pjax-container\"}', '2021-08-09 12:11:00', '2021-08-09 12:11:00'),
(2065, 1, 'admin', 'GET', '103.163.151.59', '[]', '2021-08-10 06:42:26', '2021-08-10 06:42:26'),
(2066, 1, 'admin/memberships', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 06:44:03', '2021-08-10 06:44:03'),
(2067, 1, 'admin/memberships/1/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 06:44:22', '2021-08-10 06:44:22'),
(2068, 1, 'admin/memberships/1', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"3\",\"4\",null],\"title\":\"SILVER PLAN\",\"price\":\"599\",\"discount_type\":null,\"discount\":\"80\",\"duration\":\"2\",\"desc_1\":\"Cloths                                   8 kg \\r\\n\\r\\nService time                       24 - 48 hours \\r\\n\\r\\nMinimum order                 Rs299\\r\\n\\r\\nValidity                                 3 months\\r\\n\\r\\nEstimate cloths                 50 cloths\",\"desc_2\":null,\"desc_3\":\"Ideal for 1 person\\r\\n\\r\\nFree pickup and delivery\",\"status\":\"1\",\"_token\":\"MMJHoPzSlex1Bd96rAT8fc30BfFPy9bFEe5U61pc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-08-10 06:46:31', '2021-08-10 06:46:31'),
(2069, 1, 'admin/memberships/1/edit', 'GET', '103.163.151.59', '[]', '2021-08-10 06:46:32', '2021-08-10 06:46:32'),
(2070, 1, 'admin/memberships/1', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"3\",\"4\",null],\"title\":\"SILVER PLAN\",\"price\":\"599\",\"discount_type\":\"0\",\"discount\":\"80\",\"duration\":\"2\",\"desc_1\":\"Cloths                                   8 kg \\r\\n\\r\\nService time                       24 - 48 hours \\r\\n\\r\\nMinimum order                 Rs299\\r\\n\\r\\nValidity                                 3 months\\r\\n\\r\\nEstimate cloths                 50 cloths\",\"desc_2\":null,\"desc_3\":\"Ideal for 1 person\\r\\n\\r\\nFree pickup and delivery\",\"status\":\"1\",\"_token\":\"MMJHoPzSlex1Bd96rAT8fc30BfFPy9bFEe5U61pc\",\"_method\":\"PUT\"}', '2021-08-10 06:46:50', '2021-08-10 06:46:50'),
(2071, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-08-10 06:46:50', '2021-08-10 06:46:50'),
(2072, 1, 'admin/memberships/2/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 06:47:11', '2021-08-10 06:47:11'),
(2073, 1, 'admin/memberships/2', 'PUT', '103.163.151.59', '{\"service_id\":[\"2\",\"3\",null],\"title\":\"GOLD PLAN\",\"price\":\"1199\",\"discount_type\":\"10\",\"discount\":\"75\",\"duration\":\"2\",\"desc_1\":\"Cloths                   17KG. \\r\\n\\r\\nService                  Wash & Fold , Steam Iron \\r\\n\\r\\nDry Clean             Discount 5%\\r\\n\\r\\nEstimate cloths        110\\r\\n\\r\\nService time                24 Hr. \\r\\n\\r\\n6. Minimum Order          299\\/-\\r\\n\\r\\nValidity                            Unlimited\",\"desc_2\":\"Ideal for 2 person\\r\\n\\r\\nFree pickup and delivery\",\"desc_3\":null,\"status\":\"1\",\"_token\":\"MMJHoPzSlex1Bd96rAT8fc30BfFPy9bFEe5U61pc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-08-10 06:47:50', '2021-08-10 06:47:50'),
(2074, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-08-10 06:47:51', '2021-08-10 06:47:51'),
(2075, 1, 'admin/memberships/3/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 06:47:57', '2021-08-10 06:47:57'),
(2076, 1, 'admin/memberships/3', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",\"3\",null],\"title\":\"CORPORATE  PLAN\",\"price\":\"2999\",\"discount_type\":\"15\",\"discount\":\"75\",\"duration\":\"2\",\"desc_1\":\"Cloths                   45 KG. \\r\\n\\r\\nService                  Wash & Fold , Steam Iron , dry-clean\\r\\n\\r\\nDry Clean             Discount 10%\\r\\n\\r\\nTime                       24 hours\\r\\n\\r\\nValidity                   Unlimited \\r\\n\\r\\nService time         24 Hr. \\r\\n\\r\\nMinimum Order  299\\/-e our premium user\",\"desc_2\":\"Free pickup and delivery\",\"desc_3\":null,\"status\":\"1\",\"_token\":\"MMJHoPzSlex1Bd96rAT8fc30BfFPy9bFEe5U61pc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-08-10 06:48:15', '2021-08-10 06:48:15'),
(2077, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-08-10 06:48:15', '2021-08-10 06:48:15'),
(2078, 1, 'admin/memberships/4/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 06:48:22', '2021-08-10 06:48:22'),
(2079, 1, 'admin/memberships/4', 'PUT', '103.163.151.59', '{\"service_id\":[\"1\",\"2\",\"3\",\"4\",null],\"title\":\"PLATINUM PLAN\",\"price\":\"5999\",\"discount_type\":\"20\",\"discount\":\"65\",\"duration\":\"4\",\"desc_1\":\"Cloths                                     91 kgs\\r\\n\\r\\nService                                  Wash & Fold , Steam Iron , dry-clean\\r\\n  \\r\\n Dry Clean Discount          15%  OFF \\r\\n\\r\\nPremium Laundry             15% OFF \\r\\n\\r\\nTime                                       24 hours \\r\\n\\r\\nValidity                                  Unlimited\\r\\n\\r\\nService time                        24 Hr. \\r\\n\\r\\n Minimum Order                299\\/-\",\"desc_2\":\"Free pickup and delivery\",\"desc_3\":null,\"status\":\"1\",\"_token\":\"MMJHoPzSlex1Bd96rAT8fc30BfFPy9bFEe5U61pc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-08-10 06:49:42', '2021-08-10 06:49:42'),
(2080, 1, 'admin/memberships', 'GET', '103.163.151.59', '[]', '2021-08-10 06:49:43', '2021-08-10 06:49:43'),
(2081, 1, 'admin/time-slots', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 06:49:59', '2021-08-10 06:49:59'),
(2082, 1, 'admin', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 06:50:27', '2021-08-10 06:50:27'),
(2083, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-10 06:54:45', '2021-08-10 06:54:45'),
(2084, 1, 'admin/orders/78/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 06:55:01', '2021-08-10 06:55:01'),
(2085, 1, 'admin/orders/78', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD18324539\",\"delivered_by\":\"4\",\"status\":\"3\",\"payment_status\":\"1\",\"expected_delivery_date\":\"2021-08-12\",\"drop_time\":\"3 pm to 5 pm\",\"_token\":\"MMJHoPzSlex1Bd96rAT8fc30BfFPy9bFEe5U61pc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-08-10 06:55:24', '2021-08-10 06:55:24'),
(2086, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-08-10 06:55:25', '2021-08-10 06:55:25'),
(2087, 1, 'admin/orders/77/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 06:56:01', '2021-08-10 06:56:01'),
(2088, 1, 'admin/orders/77', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD67953123\",\"delivered_by\":\"9\",\"status\":\"3\",\"payment_status\":\"1\",\"expected_delivery_date\":\"2021-08-13\",\"drop_time\":\"3 pm to 5 pm\",\"_token\":\"MMJHoPzSlex1Bd96rAT8fc30BfFPy9bFEe5U61pc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-08-10 06:56:17', '2021-08-10 06:56:17'),
(2089, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-08-10 06:56:17', '2021-08-10 06:56:17'),
(2090, 1, 'admin/auth/login', 'GET', '103.163.151.59', '[]', '2021-08-26 18:21:15', '2021-08-26 18:21:15'),
(2091, 1, 'admin', 'GET', '103.163.151.59', '[]', '2021-08-26 18:21:17', '2021-08-26 18:21:17'),
(2092, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 18:21:21', '2021-08-26 18:21:21'),
(2093, 1, 'admin/orders/80/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 18:21:29', '2021-08-26 18:21:29'),
(2094, 1, 'admin/orders/80/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 18:21:34', '2021-08-26 18:21:34'),
(2095, 1, 'admin/orders/80', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD64647700\",\"delivered_by\":\"4\",\"status\":\"1\",\"payment_status\":\"5\",\"expected_delivery_date\":\"2021-08-28\",\"drop_time\":\"3 pm to 5 pm\",\"_token\":\"gGGARcvlmCPKGSze18NWnTf3BhFkATb7C8Q7PGoF\",\"_method\":\"PUT\"}', '2021-08-26 18:22:33', '2021-08-26 18:22:33'),
(2096, 1, 'admin/orders/80/edit', 'GET', '103.163.151.59', '[]', '2021-08-26 18:22:33', '2021-08-26 18:22:33'),
(2097, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 18:22:38', '2021-08-26 18:22:38'),
(2098, 1, 'admin/orders/37/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 18:22:43', '2021-08-26 18:22:43'),
(2099, 1, 'admin/orders/37', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD20917430\",\"delivered_by\":\"4\",\"status\":\"3\",\"payment_status\":\"5\",\"expected_delivery_date\":\"2021-06-25\",\"drop_time\":\"09 am to 11 am\",\"_token\":\"gGGARcvlmCPKGSze18NWnTf3BhFkATb7C8Q7PGoF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders\"}', '2021-08-26 18:23:04', '2021-08-26 18:23:04'),
(2100, 1, 'admin/orders', 'GET', '103.163.151.59', '[]', '2021-08-26 18:23:05', '2021-08-26 18:23:05'),
(2101, 1, 'admin/auth/login', 'GET', '103.163.151.59', '[]', '2021-09-04 04:34:20', '2021-09-04 04:34:20'),
(2102, 1, 'admin', 'GET', '103.163.151.59', '[]', '2021-09-04 04:34:22', '2021-09-04 04:34:22'),
(2103, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-09-04 04:34:33', '2021-09-04 04:34:33'),
(2104, 1, 'admin/orders/85/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-09-04 04:34:52', '2021-09-04 04:34:52'),
(2105, 1, 'admin/orders/85', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD36774436\",\"delivered_by\":\"4\",\"status\":\"3\",\"payment_status\":\"1\",\"expected_delivery_date\":\"2021-09-05\",\"drop_time\":\"1 pm to 3 pm\",\"_token\":\"lwDafHlb9KVWS9EjoKdH1VQhoP14RBDjgagMfe89\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-09-04 04:35:16', '2021-09-04 04:35:16'),
(2106, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-09-04 04:35:17', '2021-09-04 04:35:17'),
(2107, 1, 'admin/orders/85/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-09-04 04:37:14', '2021-09-04 04:37:14'),
(2108, 1, 'admin/orders/85', 'PUT', '103.163.151.59', '{\"order_id\":\"ORD36774436\",\"delivered_by\":\"4\",\"status\":\"3\",\"payment_status\":\"1\",\"expected_delivery_date\":\"2021-09-05\",\"drop_time\":\"1 pm to 3 pm\",\"_token\":\"lwDafHlb9KVWS9EjoKdH1VQhoP14RBDjgagMfe89\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/orders?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2021-09-04 04:37:18', '2021-09-04 04:37:18'),
(2109, 1, 'admin/orders', 'GET', '103.163.151.59', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2021-09-04 04:37:19', '2021-09-04 04:37:19'),
(2110, 1, 'admin/service-areas', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-09-04 04:42:19', '2021-09-04 04:42:19'),
(2111, 1, 'admin/categories', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-09-04 04:42:55', '2021-09-04 04:42:55'),
(2112, 1, 'admin/services', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-09-04 04:42:57', '2021-09-04 04:42:57'),
(2113, 1, 'admin/categories', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-09-04 04:43:23', '2021-09-04 04:43:23'),
(2114, 1, 'admin/products', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-09-04 04:43:35', '2021-09-04 04:43:35'),
(2115, 1, 'admin/products/10/edit', 'GET', '103.163.151.59', '{\"_pjax\":\"#pjax-container\"}', '2021-09-04 04:44:00', '2021-09-04 04:44:00'),
(2116, 1, 'admin/products/10', 'PUT', '103.163.151.59', '{\"service_id\":\"2\",\"category_id\":\"2\",\"product_name\":\"Sari\",\"price\":\"180\",\"unit\":\"1\",\"status\":\"1\",\"_token\":\"lwDafHlb9KVWS9EjoKdH1VQhoP14RBDjgagMfe89\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/products\"}', '2021-09-04 04:44:14', '2021-09-04 04:44:14'),
(2117, 1, 'admin/products', 'GET', '103.163.151.59', '[]', '2021-09-04 04:44:14', '2021-09-04 04:44:14'),
(2118, 1, 'admin', 'GET', '157.35.10.73', '[]', '2021-09-04 05:29:05', '2021-09-04 05:29:05'),
(2119, 1, 'admin', 'GET', '157.35.10.73', '{\"_pjax\":\"#pjax-container\"}', '2021-09-04 05:29:19', '2021-09-04 05:29:19'),
(2120, 1, 'admin/leads', 'GET', '157.35.10.73', '{\"_pjax\":\"#pjax-container\"}', '2021-09-04 05:29:59', '2021-09-04 05:29:59'),
(2121, 1, 'admin', 'GET', '157.35.10.73', '{\"_pjax\":\"#pjax-container\"}', '2021-09-04 05:30:03', '2021-09-04 05:30:03'),
(2122, 1, 'admin', 'GET', '157.35.10.73', '[]', '2021-09-04 05:30:52', '2021-09-04 05:30:52'),
(2123, 1, 'admin', 'GET', '157.35.10.73', '{\"_pjax\":\"#pjax-container\"}', '2021-09-04 05:31:00', '2021-09-04 05:31:00'),
(2124, 1, 'admin/orders', 'GET', '157.35.10.73', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-09-04 05:31:03', '2021-09-04 05:31:03'),
(2125, 1, 'admin/view_orders/85', 'GET', '157.35.10.73', '{\"_pjax\":\"#pjax-container\"}', '2021-09-04 05:31:10', '2021-09-04 05:31:10'),
(2126, 1, 'admin/view_orders/85', 'GET', '157.35.10.73', '{\"_pjax\":\"#pjax-container\"}', '2021-09-04 05:31:15', '2021-09-04 05:31:15'),
(2127, 1, 'admin/view_orders/85', 'GET', '157.35.10.73', '{\"_pjax\":\"#pjax-container\"}', '2021-09-04 05:31:19', '2021-09-04 05:31:19'),
(2128, 1, 'admin/view_orders/85', 'GET', '157.35.10.73', '{\"_pjax\":\"#pjax-container\"}', '2021-09-04 05:31:21', '2021-09-04 05:31:21'),
(2129, 1, 'admin/view_orders/85', 'GET', '157.35.40.201', '[]', '2021-09-04 18:55:04', '2021-09-04 18:55:04'),
(2130, 1, 'admin', 'GET', '47.31.159.156', '[]', '2021-09-10 04:47:26', '2021-09-10 04:47:26'),
(2131, 1, 'admin', 'GET', '47.31.244.248', '[]', '2021-09-10 06:24:39', '2021-09-10 06:24:39'),
(2132, 1, 'admin', 'GET', '47.31.244.248', '{\"_pjax\":\"#pjax-container\"}', '2021-09-10 06:24:47', '2021-09-10 06:24:47'),
(2133, 1, 'admin/categories', 'GET', '47.31.244.248', '{\"_pjax\":\"#pjax-container\"}', '2021-09-10 06:25:10', '2021-09-10 06:25:10'),
(2134, 1, 'admin/services', 'GET', '47.31.244.248', '{\"_pjax\":\"#pjax-container\"}', '2021-09-10 06:25:47', '2021-09-10 06:25:47'),
(2135, 1, 'admin/products', 'GET', '47.31.244.248', '{\"_pjax\":\"#pjax-container\"}', '2021-09-10 06:25:55', '2021-09-10 06:25:55'),
(2136, 1, 'admin/products', 'GET', '47.31.244.248', '{\"_pjax\":\"#pjax-container\"}', '2021-09-10 06:26:00', '2021-09-10 06:26:00'),
(2137, 1, 'admin/services', 'GET', '47.31.244.248', '{\"_pjax\":\"#pjax-container\"}', '2021-09-10 06:26:02', '2021-09-10 06:26:02'),
(2138, 1, 'admin/service-areas', 'GET', '47.31.244.248', '{\"_pjax\":\"#pjax-container\"}', '2021-09-10 06:26:09', '2021-09-10 06:26:09'),
(2139, 1, 'admin/orders', 'GET', '47.31.244.248', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-09-10 06:26:33', '2021-09-10 06:26:33'),
(2140, 1, 'admin', 'GET', '47.31.244.248', '{\"_pjax\":\"#pjax-container\"}', '2021-09-10 06:26:34', '2021-09-10 06:26:34'),
(2141, 1, 'admin/orders', 'GET', '47.31.244.248', '{\"_pjax\":\"#pjax-container\"}', '2021-09-10 06:26:39', '2021-09-10 06:26:39'),
(2142, 1, 'admin', 'GET', '157.35.43.7', '[]', '2021-09-12 03:17:39', '2021-09-12 03:17:39'),
(2143, 1, 'admin', 'GET', '110.235.217.237', '[]', '2021-09-14 09:35:22', '2021-09-14 09:35:22'),
(2144, 1, 'admin', 'GET', '110.235.217.237', '[]', '2021-09-14 09:53:03', '2021-09-14 09:53:03'),
(2145, 1, 'admin/customers', 'GET', '110.235.217.237', '{\"_pjax\":\"#pjax-container\"}', '2021-09-14 09:53:10', '2021-09-14 09:53:10'),
(2146, 1, 'admin/customers/14/edit', 'GET', '110.235.217.237', '{\"_pjax\":\"#pjax-container\"}', '2021-09-14 09:53:16', '2021-09-14 09:53:16'),
(2147, 1, 'admin/customers', 'GET', '110.235.217.237', '{\"_pjax\":\"#pjax-container\"}', '2021-09-14 09:53:24', '2021-09-14 09:53:24'),
(2148, 1, 'admin/delivery_boys', 'GET', '110.235.217.237', '{\"_pjax\":\"#pjax-container\"}', '2021-09-14 09:53:33', '2021-09-14 09:53:33'),
(2149, 1, 'admin/delivery_boys/2/edit', 'GET', '110.235.217.237', '{\"_pjax\":\"#pjax-container\"}', '2021-09-14 09:53:37', '2021-09-14 09:53:37'),
(2150, 1, 'admin/delivery_boys', 'GET', '110.235.217.237', '{\"_pjax\":\"#pjax-container\"}', '2021-09-14 09:53:50', '2021-09-14 09:53:50'),
(2151, 1, 'admin', 'GET', '157.37.138.248', '[]', '2021-09-15 04:22:13', '2021-09-15 04:22:13'),
(2152, 1, 'admin/products', 'GET', '157.37.138.248', '{\"_pjax\":\"#pjax-container\"}', '2021-09-15 04:22:34', '2021-09-15 04:22:34'),
(2153, 1, 'admin/categories', 'GET', '157.37.138.248', '{\"_pjax\":\"#pjax-container\"}', '2021-09-15 04:22:53', '2021-09-15 04:22:53'),
(2154, 1, 'admin/services', 'GET', '157.37.138.248', '{\"_pjax\":\"#pjax-container\"}', '2021-09-15 04:22:58', '2021-09-15 04:22:58'),
(2155, 1, 'admin/categories', 'GET', '157.37.138.248', '{\"_pjax\":\"#pjax-container\"}', '2021-09-15 04:23:07', '2021-09-15 04:23:07'),
(2156, 1, 'admin/services', 'GET', '157.37.138.248', '{\"_pjax\":\"#pjax-container\"}', '2021-09-15 04:27:17', '2021-09-15 04:27:17'),
(2157, 1, 'admin/categories', 'GET', '157.37.138.248', '{\"_pjax\":\"#pjax-container\"}', '2021-09-15 04:27:21', '2021-09-15 04:27:21'),
(2158, 1, 'admin/categories/1/edit', 'GET', '157.37.138.248', '{\"_pjax\":\"#pjax-container\"}', '2021-09-15 04:27:46', '2021-09-15 04:27:46'),
(2159, 1, 'admin/categories', 'GET', '157.37.138.248', '{\"_pjax\":\"#pjax-container\"}', '2021-09-15 04:27:53', '2021-09-15 04:27:53'),
(2160, 1, 'admin/services', 'GET', '157.37.138.248', '{\"_pjax\":\"#pjax-container\"}', '2021-09-15 04:28:00', '2021-09-15 04:28:00'),
(2161, 1, 'admin/categories', 'GET', '157.37.138.248', '{\"_pjax\":\"#pjax-container\"}', '2021-09-15 04:28:10', '2021-09-15 04:28:10'),
(2162, 1, 'admin/categories/1/edit', 'GET', '157.37.138.248', '{\"_pjax\":\"#pjax-container\"}', '2021-09-15 04:28:14', '2021-09-15 04:28:14'),
(2163, 1, 'admin/categories/1', 'PUT', '157.37.138.248', '{\"service_id\":[\"1\",\"2\",\"4\",null],\"category_name\":\"Men\",\"status\":\"1\",\"_token\":\"qSKjoZRSlNrNT5cuXbKbQOqX8hZ4ieEJnO0epJ0n\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/categories\"}', '2021-09-15 04:28:20', '2021-09-15 04:28:20'),
(2164, 1, 'admin/categories', 'GET', '157.37.138.248', '[]', '2021-09-15 04:28:21', '2021-09-15 04:28:21'),
(2165, 1, 'admin/categories', 'GET', '157.37.138.248', '[]', '2021-09-15 08:30:46', '2021-09-15 08:30:46'),
(2166, 1, 'admin/categories/1/edit', 'GET', '157.37.138.248', '{\"_pjax\":\"#pjax-container\"}', '2021-09-15 11:16:41', '2021-09-15 11:16:41'),
(2167, 1, 'admin', 'GET', '47.31.216.109', '[]', '2021-09-18 11:43:26', '2021-09-18 11:43:26'),
(2168, 1, 'admin/payment-histories', 'GET', '47.31.216.109', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-09-18 11:44:21', '2021-09-18 11:44:21'),
(2169, 1, 'admin', 'GET', '47.31.216.109', '{\"_pjax\":\"#pjax-container\"}', '2021-09-18 11:44:29', '2021-09-18 11:44:29'),
(2170, 1, 'admin/leads', 'GET', '47.31.216.109', '{\"_pjax\":\"#pjax-container\"}', '2021-09-18 11:48:06', '2021-09-18 11:48:06'),
(2171, 1, 'admin', 'GET', '47.31.216.109', '{\"_pjax\":\"#pjax-container\"}', '2021-09-18 11:48:14', '2021-09-18 11:48:14'),
(2172, 1, 'admin/orders', 'GET', '47.31.216.109', '{\"_pjax\":\"#pjax-container\"}', '2021-09-18 11:49:18', '2021-09-18 11:49:18'),
(2173, 1, 'admin/orders', 'GET', '47.31.216.109', '[]', '2021-09-18 13:03:20', '2021-09-18 13:03:20'),
(2174, 1, 'admin', 'GET', '47.31.203.59', '[]', '2021-09-22 08:44:30', '2021-09-22 08:44:30'),
(2175, 1, 'admin', 'GET', '47.31.203.59', '[]', '2021-09-22 08:49:35', '2021-09-22 08:49:35'),
(2176, 1, 'admin', 'GET', '47.31.203.59', '[]', '2021-09-22 09:22:47', '2021-09-22 09:22:47'),
(2177, 1, 'admin', 'GET', '47.31.196.232', '[]', '2021-09-23 07:42:56', '2021-09-23 07:42:56'),
(2178, 1, 'admin', 'GET', '47.31.196.232', '[]', '2021-09-23 07:45:26', '2021-09-23 07:45:26'),
(2179, 1, 'admin', 'GET', '47.31.196.232', '[]', '2021-09-23 07:47:20', '2021-09-23 07:47:20'),
(2180, 1, 'admin', 'GET', '47.31.196.232', '[]', '2021-09-23 07:47:20', '2021-09-23 07:47:20'),
(2181, 1, 'admin/auth/logout', 'GET', '47.31.196.232', '{\"_pjax\":\"#pjax-container\"}', '2021-09-23 07:47:30', '2021-09-23 07:47:30'),
(2182, 1, 'admin', 'GET', '47.31.196.232', '[]', '2021-09-23 07:52:08', '2021-09-23 07:52:08'),
(2183, 1, 'admin', 'GET', '47.31.207.230', '[]', '2021-09-25 06:39:57', '2021-09-25 06:39:57'),
(2184, 1, 'admin/categories', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 06:51:41', '2021-09-25 06:51:41'),
(2185, 1, 'admin/services', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 06:52:08', '2021-09-25 06:52:08'),
(2186, 1, 'admin/orders', 'GET', '47.31.207.230', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:05:46', '2021-09-25 07:05:46'),
(2187, 1, 'admin/memberships', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:06:54', '2021-09-25 07:06:54'),
(2188, 1, 'admin/memberships/1/edit', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:07:22', '2021-09-25 07:07:22'),
(2189, 1, 'admin/memberships/1', 'PUT', '47.31.207.230', '{\"service_id\":[\"1\",\"3\",\"4\",null],\"title\":\"SILVER PLAN\",\"price\":\"599\",\"discount_type\":\"0\",\"discount\":\"80,23\",\"duration\":\"2\",\"desc_1\":\"Cloths                                   8 kg \\r\\n\\r\\nService time                       24 - 48 hours \\r\\n\\r\\nMinimum order                 Rs299\\r\\n\\r\\nValidity                                 3 months\\r\\n\\r\\nEstimate cloths                 50 cloths\",\"desc_2\":null,\"desc_3\":\"Ideal for 1 person\\r\\n\\r\\nFree pickup and delivery\",\"status\":\"1\",\"_token\":\"gTkjegYy3ttA3DtsCwtQsuSVwUaGqWDREboHe0Nw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-09-25 07:08:59', '2021-09-25 07:08:59'),
(2190, 1, 'admin/memberships', 'GET', '47.31.207.230', '[]', '2021-09-25 07:09:18', '2021-09-25 07:09:18'),
(2191, 1, 'admin/memberships/1/edit', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:10:06', '2021-09-25 07:10:06'),
(2192, 1, 'admin/memberships/1', 'PUT', '47.31.207.230', '{\"service_id\":[\"1\",\"3\",null],\"title\":\"SILVER PLAN\",\"price\":\"599\",\"discount_type\":\"2,2\",\"discount\":\"65,85\",\"duration\":\"2\",\"desc_1\":\"Cloths                                   8 kg \\r\\n\\r\\nService time                       24 - 48 hours \\r\\n\\r\\nMinimum order                 Rs299\\r\\n\\r\\nValidity                                 3 months\\r\\n\\r\\nEstimate cloths                 50 cloths\",\"desc_2\":null,\"desc_3\":\"Ideal for 1 person\\r\\n\\r\\nFree pickup and delivery\",\"status\":\"1\",\"_token\":\"gTkjegYy3ttA3DtsCwtQsuSVwUaGqWDREboHe0Nw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\"}', '2021-09-25 07:12:00', '2021-09-25 07:12:00'),
(2193, 1, 'admin/memberships', 'GET', '47.31.207.230', '[]', '2021-09-25 07:12:25', '2021-09-25 07:12:25'),
(2194, 1, 'admin/memberships/1/edit', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:13:53', '2021-09-25 07:13:53'),
(2195, 1, 'admin/memberships', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:14:28', '2021-09-25 07:14:28'),
(2196, 1, 'admin/memberships/1/edit', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:14:37', '2021-09-25 07:14:37'),
(2197, 1, 'admin/memberships/2/edit', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:14:54', '2021-09-25 07:14:54'),
(2198, 1, 'admin/memberships/2', 'PUT', '47.31.207.230', '{\"service_id\":[\"1\",\"2\",\"3\",\"4\",null],\"title\":\"GOLD PLAN\",\"price\":\"1500\",\"discount_type\":\"2,1,2,1\",\"discount\":\"65,10,75,10\",\"duration\":\"2\",\"desc_1\":\"Cloths                   17KG. \\r\\n\\r\\nService                  Wash & Fold , Steam Iron \\r\\n\\r\\nDry Clean             Discount 5%\\r\\n\\r\\nEstimate cloths        110\\r\\n\\r\\nService time                24 Hr. \\r\\n\\r\\n6. Minimum Order          299\\/-\\r\\n\\r\\nValidity                            Unlimited\",\"desc_2\":\"Ideal for 2 person\\r\\n\\r\\nFree pickup and delivery\",\"desc_3\":null,\"status\":\"1\",\"_token\":\"gTkjegYy3ttA3DtsCwtQsuSVwUaGqWDREboHe0Nw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\\/1\\/edit\"}', '2021-09-25 07:16:57', '2021-09-25 07:16:57'),
(2199, 1, 'admin/memberships/1/edit', 'GET', '47.31.207.230', '[]', '2021-09-25 07:17:10', '2021-09-25 07:17:10');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(2200, 1, 'admin/memberships/1', 'PUT', '47.31.207.230', '{\"service_id\":[\"1\",\"3\",null],\"title\":\"SILVER PLAN\",\"price\":\"599\",\"discount_type\":\"2,2\",\"discount\":\"65,85\",\"duration\":\"2\",\"desc_1\":\"Cloths                                   8 kg \\r\\n\\r\\nService time                       24 - 48 hours \\r\\n\\r\\nMinimum order                 Rs299\\r\\n\\r\\nValidity                                 3 months\\r\\n\\r\\nEstimate cloths                 50 cloths\",\"desc_2\":null,\"desc_3\":\"Ideal for 1 person\\r\\n\\r\\nFree pickup and delivery\",\"status\":\"1\",\"_token\":\"gTkjegYy3ttA3DtsCwtQsuSVwUaGqWDREboHe0Nw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/memberships\\/2\\/edit\"}', '2021-09-25 07:17:42', '2021-09-25 07:17:42'),
(2201, 1, 'admin/memberships/2/edit', 'GET', '47.31.207.230', '[]', '2021-09-25 07:17:44', '2021-09-25 07:17:44'),
(2202, 1, 'admin/banner-images', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:32:31', '2021-09-25 07:32:31'),
(2203, 1, 'admin/banner-images/2/edit', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:32:48', '2021-09-25 07:32:48'),
(2204, 1, 'admin/banner-images/2', 'PUT', '47.31.207.230', '{\"service_id\":\"2\",\"title\":\"Rupees 100 discount on new users\",\"text\":\"More offers\",\"status\":\"1\",\"_token\":\"gTkjegYy3ttA3DtsCwtQsuSVwUaGqWDREboHe0Nw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/banner-images\"}', '2021-09-25 07:34:05', '2021-09-25 07:34:05'),
(2205, 1, 'admin/banner-images', 'GET', '47.31.207.230', '[]', '2021-09-25 07:34:13', '2021-09-25 07:34:13'),
(2206, 1, 'admin/customers', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:34:44', '2021-09-25 07:34:44'),
(2207, 1, 'admin/leads', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:35:07', '2021-09-25 07:35:07'),
(2208, 1, 'admin/time-slots', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:35:38', '2021-09-25 07:35:38'),
(2209, 1, 'admin/leads', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:35:44', '2021-09-25 07:35:44'),
(2210, 1, 'admin/time-slots', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:38:01', '2021-09-25 07:38:01'),
(2211, 1, 'admin/payment-histories', 'GET', '47.31.207.230', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:38:45', '2021-09-25 07:38:45'),
(2212, 1, 'admin/payment-methods', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:39:28', '2021-09-25 07:39:28'),
(2213, 1, 'admin/faqs', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:40:10', '2021-09-25 07:40:10'),
(2214, 1, 'admin/payment-methods', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:40:32', '2021-09-25 07:40:32'),
(2215, 1, 'admin/faqs', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:41:41', '2021-09-25 07:41:41'),
(2216, 1, 'admin/units', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:42:09', '2021-09-25 07:42:09'),
(2217, 1, 'admin/feedback', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:42:41', '2021-09-25 07:42:41'),
(2218, 1, 'admin/feedback', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:46:07', '2021-09-25 07:46:07'),
(2219, 1, 'admin/bar-codes', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:46:42', '2021-09-25 07:46:42'),
(2220, 1, 'admin/bar-codes/create', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:46:54', '2021-09-25 07:46:54'),
(2221, 1, 'admin/bar-codes/1/edit', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:47:14', '2021-09-25 07:47:14'),
(2222, 1, 'admin/bar-codes/1', 'PUT', '47.31.207.230', '{\"title\":\"Paytm wallet\",\"description\":\"Scan this code in Paytm and pay\",\"_token\":\"gTkjegYy3ttA3DtsCwtQsuSVwUaGqWDREboHe0Nw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/bar-codes\\/create\"}', '2021-09-25 07:47:44', '2021-09-25 07:47:44'),
(2223, 1, 'admin/bar-codes/create', 'GET', '47.31.207.230', '[]', '2021-09-25 07:47:45', '2021-09-25 07:47:45'),
(2224, 1, 'admin/delivery_boys', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:48:07', '2021-09-25 07:48:07'),
(2225, 1, 'admin/delivery_boys/1/edit', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:48:38', '2021-09-25 07:48:38'),
(2226, 1, 'admin/delivery_boys/1', 'PUT', '47.31.207.230', '{\"delivery_boy_name\":\"test Driver\",\"phone_number\":\"1234567892\",\"email\":\"test@test.com\",\"delivery_boy_type\":\"2\",\"salary\":\"5000\",\"bar_codes\":[\"1\",null],\"status\":\"1\",\"_token\":\"gTkjegYy3ttA3DtsCwtQsuSVwUaGqWDREboHe0Nw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/delivery_boys\"}', '2021-09-25 07:49:13', '2021-09-25 07:49:13'),
(2227, 1, 'admin/delivery_boys', 'GET', '47.31.207.230', '[]', '2021-09-25 07:49:17', '2021-09-25 07:49:17'),
(2228, 1, 'admin/app_settings', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:50:15', '2021-09-25 07:50:15'),
(2229, 1, 'admin/privacy_policies', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:50:49', '2021-09-25 07:50:49'),
(2230, 1, 'admin/auth/users', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:51:51', '2021-09-25 07:51:51'),
(2231, 1, 'admin/auth/users/3/edit', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:52:11', '2021-09-25 07:52:11'),
(2232, 1, 'admin/auth/users/3', 'PUT', '47.31.207.230', '{\"username\":\"testing\",\"name\":\"testing\",\"password\":\"$2y$10$8cptlckKCmIk1C9PdSijMO16C6FiNmpWU9rPji5x7.bfHEqXgovgK\",\"password_confirmation\":\"$2y$10$8cptlckKCmIk1C9PdSijMO16C6FiNmpWU9rPji5x7.bfHEqXgovgK\",\"roles\":[\"2\",null],\"permissions\":[\"2\",\"7\",null],\"_token\":\"gTkjegYy3ttA3DtsCwtQsuSVwUaGqWDREboHe0Nw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/auth\\/users\"}', '2021-09-25 07:53:39', '2021-09-25 07:53:39'),
(2233, 1, 'admin/auth/users', 'GET', '47.31.207.230', '[]', '2021-09-25 07:53:47', '2021-09-25 07:53:47'),
(2234, 1, 'admin/auth/users/3/edit', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:54:10', '2021-09-25 07:54:10'),
(2235, 1, 'admin/auth/users/3', 'PUT', '47.31.207.230', '{\"username\":\"testing\",\"name\":\"testing\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[\"2\",null],\"permissions\":[\"2\",\"7\",null],\"_token\":\"gTkjegYy3ttA3DtsCwtQsuSVwUaGqWDREboHe0Nw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/auth\\/users\"}', '2021-09-25 07:54:28', '2021-09-25 07:54:28'),
(2236, 1, 'admin/auth/users', 'GET', '47.31.207.230', '[]', '2021-09-25 07:54:39', '2021-09-25 07:54:39'),
(2237, 1, 'admin', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:55:25', '2021-09-25 07:55:25'),
(2238, 1, 'admin/orders', 'GET', '47.31.207.230', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:55:37', '2021-09-25 07:55:37'),
(2239, 1, 'admin', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:56:34', '2021-09-25 07:56:34'),
(2240, 1, 'admin/auth/users', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:56:37', '2021-09-25 07:56:37'),
(2241, 1, 'admin/auth/users/3/edit', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:56:41', '2021-09-25 07:56:41'),
(2242, 3, 'admin', 'GET', '47.31.207.230', '[]', '2021-09-25 07:57:11', '2021-09-25 07:57:11'),
(2243, 3, 'admin/categories', 'GET', '47.31.207.230', '[]', '2021-09-25 07:57:34', '2021-09-25 07:57:34'),
(2244, 3, 'admin', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:57:40', '2021-09-25 07:57:40'),
(2245, 1, 'admin/auth/roles', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:57:56', '2021-09-25 07:57:56'),
(2246, 1, 'admin/auth/roles', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:58:06', '2021-09-25 07:58:06'),
(2247, 1, 'admin/auth/roles/2/edit', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:58:14', '2021-09-25 07:58:14'),
(2248, 1, 'admin/auth/users', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:58:20', '2021-09-25 07:58:20'),
(2249, 1, 'admin/auth/users/3/edit', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 07:58:22', '2021-09-25 07:58:22'),
(2250, 3, 'admin', 'GET', '47.31.207.230', '[]', '2021-09-25 07:59:11', '2021-09-25 07:59:11'),
(2251, 1, 'admin/auth/users/3', 'PUT', '47.31.207.230', '{\"username\":\"testing\",\"name\":\"testing\",\"password\":\"$2y$10$Mj\\/pZBANmt5kKCwJwBPMSeOzYCkdJvQ0952YX9gdz.VPYrZ2Wnp\\/S\",\"password_confirmation\":\"$2y$10$Mj\\/pZBANmt5kKCwJwBPMSeOzYCkdJvQ0952YX9gdz.VPYrZ2Wnp\\/S\",\"roles\":[\"2\",null],\"permissions\":[\"7\",null],\"_token\":\"gTkjegYy3ttA3DtsCwtQsuSVwUaGqWDREboHe0Nw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/covidvaccination.co.in\\/admin\\/auth\\/users\"}', '2021-09-25 07:59:51', '2021-09-25 07:59:51'),
(2252, 1, 'admin/auth/users', 'GET', '47.31.207.230', '[]', '2021-09-25 08:00:10', '2021-09-25 08:00:10'),
(2253, 1, 'admin/orders', 'GET', '47.31.207.230', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-09-25 08:02:26', '2021-09-25 08:02:26'),
(2254, 1, 'admin/products', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 08:07:06', '2021-09-25 08:07:06'),
(2255, 1, 'admin/products/4/edit', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 08:07:22', '2021-09-25 08:07:22'),
(2256, 1, 'admin/products', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 08:07:30', '2021-09-25 08:07:30'),
(2257, 1, 'admin/products/create', 'GET', '47.31.207.230', '{\"_pjax\":\"#pjax-container\"}', '2021-09-25 08:07:36', '2021-09-25 08:07:36'),
(2258, 1, 'admin', 'GET', '47.31.181.82', '[]', '2021-10-09 05:28:33', '2021-10-09 05:28:33'),
(2259, 1, 'admin/app_settings', 'GET', '47.31.181.82', '{\"_pjax\":\"#pjax-container\"}', '2021-10-09 05:29:19', '2021-10-09 05:29:19'),
(2260, 1, 'admin/app_settings/1/edit', 'GET', '47.31.181.82', '{\"_pjax\":\"#pjax-container\"}', '2021-10-09 05:29:42', '2021-10-09 05:29:42'),
(2261, 1, 'admin/app_settings/1/edit', 'GET', '47.31.181.82', '[]', '2021-10-09 06:54:23', '2021-10-09 06:54:23'),
(2262, 1, 'admin', 'GET', '47.31.195.35', '[]', '2022-01-06 15:19:41', '2022-01-06 15:19:41');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', '2021-05-17 09:14:39', '2021-05-17 09:20:53'),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'services', 'services', '', '/services', '2021-05-17 08:23:29', '2021-05-17 08:23:51'),
(7, 'faq', 'faq', '', '/faqs', '2021-05-17 08:51:40', '2021-05-17 08:51:40'),
(10, 'categories', 'categories', '', '/categories', '2021-05-17 09:31:08', '2021-05-17 09:31:08'),
(11, 'customers', 'customers', '', '/customers', '2021-05-17 09:31:26', '2021-05-17 09:32:53'),
(12, 'Delivery boys', 'delivery_boys', '', '/delivery_boys', '2021-05-17 09:31:59', '2021-05-17 09:32:43'),
(13, 'Privacy policies', 'privacy_policies', '', '/privacy_policies', '2021-05-17 09:32:34', '2021-05-17 09:32:34'),
(14, 'Products', 'products', '', '/products', '2021-05-17 09:33:15', '2021-05-17 09:33:15'),
(15, 'orders', 'orders', '', '/orders', '2021-05-17 09:33:37', '2021-05-17 09:33:37'),
(16, 'payment methods', 'payment-methods', '', '/payment-methods', '2021-05-17 09:34:09', '2021-05-17 09:34:09'),
(17, 'Banner images', 'banner-images', '', '/banner-images', '2021-05-17 09:34:38', '2021-05-17 09:34:38'),
(18, 'units', 'units', '', '/units', '2021-05-17 09:34:57', '2021-05-17 09:34:57'),
(19, 'Time slots', 'time-slots', '', '/time-slots', '2021-05-17 09:35:29', '2021-05-17 09:35:29'),
(20, 'memberships', 'memberships', '', '/memberships', '2021-05-17 09:35:48', '2021-05-17 09:35:48'),
(21, 'service areas', 'service-areas', '', '/service-areas', '2021-05-17 09:36:07', '2021-06-11 07:50:35'),
(22, 'Additional items', 'additional-items', '', '/additional-items', '2021-06-11 07:50:13', '2021-06-11 07:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2019-07-21 03:46:33', '2019-07-21 03:46:33'),
(2, 'Tester', 'Tester', '2021-05-17 04:09:02', '2021-05-17 04:09:02');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 8, NULL, NULL),
(1, 10, NULL, NULL),
(1, 11, NULL, NULL),
(1, 12, NULL, NULL),
(1, 13, NULL, NULL),
(1, 14, NULL, NULL),
(1, 15, NULL, NULL),
(1, 16, NULL, NULL),
(1, 17, NULL, NULL),
(1, 19, NULL, NULL),
(1, 21, NULL, NULL),
(1, 8, NULL, NULL),
(1, 10, NULL, NULL),
(1, 11, NULL, NULL),
(1, 12, NULL, NULL),
(1, 13, NULL, NULL),
(1, 14, NULL, NULL),
(1, 15, NULL, NULL),
(1, 16, NULL, NULL),
(1, 17, NULL, NULL),
(1, 19, NULL, NULL),
(1, 21, NULL, NULL),
(1, 22, NULL, NULL),
(1, 23, NULL, NULL),
(1, 24, NULL, NULL),
(1, 25, NULL, NULL),
(1, 27, NULL, NULL),
(1, 28, NULL, NULL),
(1, 29, NULL, NULL),
(1, 32, NULL, NULL),
(1, 33, NULL, NULL),
(1, 35, NULL, NULL),
(1, 1, NULL, NULL),
(2, 8, NULL, NULL),
(2, 1, NULL, NULL),
(2, 25, NULL, NULL),
(2, 13, NULL, NULL),
(2, 36, NULL, NULL),
(2, 37, NULL, NULL),
(1, 38, NULL, NULL),
(2, 38, NULL, NULL),
(1, 39, NULL, NULL),
(1, 40, NULL, NULL),
(1, 41, NULL, NULL),
(2, 41, NULL, NULL),
(1, 42, NULL, NULL),
(2, 42, NULL, NULL),
(1, 43, NULL, NULL),
(2, 43, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(2, 3, NULL, NULL),
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(2, 7, NULL, NULL),
(2, 4, NULL, NULL),
(2, 10, NULL, NULL),
(2, 16, NULL, NULL),
(2, 17, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 1, NULL, NULL),
(2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$DeUxMj37HSzUzYaNSUffWe9KUj2hxRdecYIimbxiGdZ6OtyYEmVFK', 'Administrator', 'images/user_placeholder.jpg', 'srSqU4tK3uni3jZGiWH0agTO28Uk0dzi5JVav8H9mmsvpz1nolez5hGFxAwO', '2019-07-21 03:46:33', '2021-06-21 06:59:08'),
(3, 'testing', '$2y$10$Mj/pZBANmt5kKCwJwBPMSeOzYCkdJvQ0952YX9gdz.VPYrZ2Wnp/S', 'testing', NULL, 'ByGBlgSJvCCYkxYu83gXTtQJ21eMcd2as1GAgPUaSPxKvRA6r6XgbpuBiwYT', '2021-05-17 04:16:57', '2021-09-25 07:54:31');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_user_permissions`
--

INSERT INTO `admin_user_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(3, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(11) NOT NULL,
  `application_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp_number` varchar(100) NOT NULL,
  `refer_earn_amt` double(10,2) NOT NULL DEFAULT '0.00',
  `delivery_hours` double(10,2) NOT NULL,
  `minimum_order_amt` double(10,2) NOT NULL,
  `email` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250) NOT NULL,
  `address_lat` double NOT NULL,
  `address_lng` double NOT NULL,
  `about_us` text NOT NULL,
  `country` varchar(50) NOT NULL,
  `default_currency` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_short_code` varchar(10) NOT NULL,
  `fcm_server_key` varchar(225) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `application_name`, `logo`, `contact_number`, `whatsapp_number`, `refer_earn_amt`, `delivery_hours`, `minimum_order_amt`, `email`, `address`, `address_lat`, `address_lng`, `about_us`, `country`, `default_currency`, `currency_short_code`, `fcm_server_key`, `created_at`, `updated_at`) VALUES
(1, 'KRYCHE', 'images/86e12013466c485b59229f280aa03415.jpg', '8882103813', '8882103813', 50.00, 24.00, 199.00, 'kryche.india@gmail.com', 'sector 55 Gurgaon Haryana,', 28.5851, 77.0713, 'kRYCHE was established in YEAR 2021,  and has ever since been a pioneer company in providing first-rate and superior laundry services. We provide high quality and affordable services in a way of care and nurture for your threads. We have always catered to the requirements of commercial laundry and cleaning through our expertise and knowledge in the area. We process laundry as per our customer specifications. We only use safe and environmental friendly detergents and disinfectants and all our equipment are power conservative', 'India', '₹', 'INR', 'AAAA6CbcUU4:APA91bEjXcUD5QHo5eJ70JNWQYhbgmS24mDBwIIwn4sexCbT8mKThwddBoevcjOM8uOcZZ_5E_3MikmSmQgtNiVaeUDnHxKrvh9yY1wan673VZs4TBlpyNS4gK06bKP5C895CP6dNmcD', '2019-07-23 09:14:40', '2021-07-03 15:12:25');

-- --------------------------------------------------------

--
-- Table structure for table `banner_images`
--

CREATE TABLE `banner_images` (
  `id` int(11) NOT NULL,
  `banner_image` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_images`
--

INSERT INTO `banner_images` (`id`, `banner_image`, `title`, `text`, `service_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'images/604abea481b2994cf7a976e7cbf8bbec.jpeg', 'Flat 20% off on laundry service', 'View all offers', 1, 1, '2020-06-12 12:58:27', '2021-06-26 10:48:12'),
(2, 'images/d4fe921323b4adc3bab1f1529851a76c.jpg', 'Rupees 100 discount on new users', 'More offers', 2, 1, '2020-06-12 12:58:45', '2021-09-25 13:04:11'),
(3, 'images/37577f54019b69030964971caa7e17fd.png', 'Make Iron with wash and get 20% off', 'View all offers', 3, 1, '2020-06-12 12:59:04', '2021-04-21 18:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `bar_codes`
--

CREATE TABLE `bar_codes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `barcode_image` mediumtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bar_codes`
--

INSERT INTO `bar_codes` (`id`, `title`, `description`, `barcode_image`, `created_at`, `updated_at`) VALUES
(1, 'Paytm wallet', 'Scan this code in Paytm and pay', 'images/81414e39a648d07eba41c013778ac150.gif', '2021-06-19 05:32:13', '2021-06-19 05:32:13'),
(2, 'Sample Pay', NULL, 'images/d3aa7f5e06e2bbddd6464f149aa28871.gif', '2021-06-19 05:36:52', '2021-06-19 05:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `cart_products`
--

CREATE TABLE `cart_products` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `mem_dis` double(5,2) NOT NULL DEFAULT '0.00',
  `price` double(10,2) NOT NULL,
  `final_price` double(5,2) NOT NULL DEFAULT '0.00',
  `unit` varchar(225) NOT NULL,
  `product_additional_charges` double(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_products`
--

INSERT INTO `cart_products` (`id`, `cart_id`, `product_id`, `qty`, `mem_dis`, `price`, `final_price`, `unit`, `product_additional_charges`) VALUES
(70, 11, 1, 4, 20.00, 40.00, 20.00, 'kg', 0.00),
(71, 11, 4, 1, 7.50, 15.00, 7.50, 'kg', 0.00),
(72, 12, 1, 3, 15.00, 30.00, 15.00, 'kg', 0.00),
(73, 13, 1, 4, 20.00, 40.00, 20.00, 'kg', 0.00),
(74, 14, 1, 1, 5.00, 10.00, 5.00, 'kg', 0.00),
(75, 15, 4, 2, 15.00, 30.00, 15.00, 'kg', 0.00),
(77, 16, 1, 2, 10.00, 20.00, 10.00, 'kg', 0.00),
(79, 18, 1, 1, 1.00, 10.00, 9.00, 'kg', 0.00),
(80, 17, 1, 3, 3.00, 30.00, 27.00, 'kg', 0.00),
(81, 17, 2, 8, 5.20, 52.00, 46.80, 'piece', 0.00),
(83, 17, 4, 2, 3.00, 30.00, 27.00, 'kg', 0.00),
(84, 17, 5, 1, 0.70, 7.00, 6.30, 'piece', 0.00),
(85, 16, 4, 1, 3.00, 15.00, 12.00, 'kg', 0.00),
(86, 19, 1, 0, 0.00, 0.00, 0.00, 'kg', 0.00),
(87, 19, 2, 1, 0.00, 6.50, 6.50, 'piece', 0.00),
(88, 19, 3, 1, 0.00, 10.00, 10.00, 'meter', 0.00),
(89, 19, 4, 5, 0.00, 75.00, 75.00, 'kg', 0.00),
(91, 20, 4, 2, 0.00, 30.00, 30.00, 'kg', 0.00),
(92, 21, 4, 3, 0.00, 45.00, 45.00, 'kg', 0.00),
(93, 22, 4, 12, 0.00, 180.00, 180.00, 'kg', 0.00),
(94, 22, 5, 2, 0.00, 14.00, 14.00, 'piece', 0.00),
(112, 24, 5, 3, 0.00, 21.00, 21.00, 'piece', 0.00),
(113, 24, 4, 6, 0.00, 90.00, 90.00, 'kg', 0.00),
(117, 20, 1, 2, 0.00, 20.00, 20.00, 'kg', 0.00),
(118, 20, 2, 3, 0.00, 19.50, 19.50, 'piece', 0.00),
(119, 24, 2, 3, 0.00, 19.50, 19.50, 'piece', 0.00),
(120, 24, 1, 2, 0.00, 20.00, 20.00, 'kg', 0.00),
(121, 25, 1, 1, 0.00, 10.00, 10.00, 'kg', 0.00),
(122, 25, 2, 1, 0.00, 6.50, 6.50, 'piece', 0.00),
(123, 26, 1, 1, 0.00, 10.00, 10.00, 'kg', 0.00),
(124, 26, 2, 1, 0.00, 6.50, 6.50, 'piece', 0.00),
(125, 26, 2, 1, 0.00, 6.50, 6.50, 'piece', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_ar` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_name_ar`, `service_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Men', 'arSampleCat', '1,2,4', 1, '2021-04-21 06:07:58', '2021-09-15 09:58:20'),
(2, 'Women', 'arSampleCat2', '2,4', 1, '2021-04-21 06:07:58', '2021-07-06 23:37:58'),
(3, 'Kids', 'arSampleCat3', '2,4', 1, '2021-04-21 06:07:58', '2021-07-06 23:38:41'),
(4, 'Others', 'arSampleCat4', '2,4', 1, '2021-04-21 06:07:58', '2021-07-06 23:39:25');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `wallet` double(10,2) NOT NULL DEFAULT '0.00',
  `refer_code` varchar(255) NOT NULL,
  `membership` int(11) NOT NULL DEFAULT '0',
  `customer_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `profile_picture` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_address` int(11) NOT NULL DEFAULT '0',
  `otp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `wallet`, `refer_code`, `membership`, `customer_name`, `phone_number`, `email`, `password`, `profile_picture`, `default_address`, `otp`, `fcm_token`, `status`, `created_at`, `updated_at`) VALUES
(13, 499.50, '', 3, 'Deepak kumar', '7678178911', 'structlooper@gmail.com', NULL, 'images/1619881268.jpg', 25, '348837', 'ccGaOEIoSJKhI0YmAyRV7p:APA91bE4V0-haIe0gShJmnLBpe0OzoylcWTepv7mErWWlRG6tvjnCoG5oX7TIHyb6-FOjnPklV1zGkK1CZXLS2fGJbPICv3dogocMXrh7-wn_IUZH9Zg1GJK66EMyErO8QKou0pOBLh6', 1, '2021-04-20 23:16:40', '2021-09-25 14:33:43'),
(14, 0.00, '', 0, 'Satish sahab', '9990944381', 'sahabsatish@gmail.com', NULL, NULL, 19, '182269', 'fs8qk8LvQmy8e1ONGX-Jxv:APA91bEM6xL-xSasPgfEe_GQlEKTFtfJUIJXrl8msiTXztSmz3ZOyOzkS3LFJeUmCcnvur9B1KHxjkzZurGGiehZl0TJbQIUhQd0gCq3Q3Kqx1f1xDYC_GT-rpPpsIxNM2HTLu6t02MF', 1, '2021-04-23 20:09:57', '2021-06-16 16:45:53'),
(15, 0.00, '', 0, 'Sachin', '8601502970', 'sachinmaurya699@gmail.com', NULL, NULL, 0, '882879', NULL, 1, '2021-04-25 13:59:12', '2021-04-25 13:59:12'),
(16, 10.00, '', 1, 'Niraj choudhary', '7979034079', 'nirajkumarchoudhary99@gmail.com', NULL, 'images/1624900729.jpg', 28, '559338', 'c9PEph0TSIaKIRIcpBL2cc:APA91bHF0Pxs1NslaLIyPpl7aenFskCE8nsaaQ7JOR4_YYdZ639AxRZk3LYtUqmOTZ_s2dHrTfrnhXx3EKb492NrfZh4THBrPstD-Oin7_2dewWIfiCT-5TpG6Vd7AgB17r6c6D3QQLC', 1, '2021-04-29 11:58:28', '2021-11-10 20:39:46'),
(22, 0.00, '', 1, 'Sanjay', '8447494296', 'Sanjay@gmail.com', NULL, 'images/1621238305.jpg', 23, '299750', 'eeAxgc7IRyiixubwG63Wtk:APA91bGlDeGSRxVx9tpbk-VFyOsdUeQPaGLlF2IQy9qvd9E4oLUNkgZ4tMEtApayX2fLsAyDOZyWMXmewTxShGDsRl336dOFeB9xFU1cgnp5EDq_GsBPpNBDUacNYiKZhcu_8zuY3aSu', 1, '2021-05-17 13:26:33', '2021-05-17 18:08:56'),
(23, 0.00, '', 0, 'Dhiraj', '7632859600', 'dhirajchoudhary999@gmail.com', NULL, NULL, 0, '147178', 'fuXX57bHTdSgRoE88-SY6L:APA91bHrebcz-jWhestUU1agIJan01gQx5nEfM620XMW_-pNiYw8fbECL2GYGHdf0o2kjhfWy1pZK92pG0j3Qa10iMspmMdT3FQ3Hx7MIFOB7vQq9VbAyrS1pSPnP8Vwd2Nxx4UmgDw8', 1, '2021-05-19 17:36:11', '2021-09-12 16:52:45'),
(24, 0.00, '', 0, 'Shivam', '8340294480', 'gamogeneegames@gmail.com', NULL, NULL, 27, '143066', 'elAbBUOXRyCo3YAcUL2w5K:APA91bHuho6N0zijQHtoXA9cQi5NA5JmkSGXvPZ3pEDjJjNjOzuDLTIgZ1xgzSZ3fYc94wuEBqKUK6P8DJUK6sJXGtSNutwxLYfsDpuAlG0YcGLzpP92MgC45mrKJNCq0uxk9hd0vgZ8', 1, '2021-05-23 13:32:46', '2021-07-10 16:06:20');

-- --------------------------------------------------------

--
-- Table structure for table `customer_passbooks`
--

CREATE TABLE `customer_passbooks` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `statement` text NOT NULL,
  `amount` double(10,2) NOT NULL,
  `amt_status` enum('credited','debited') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_passbooks`
--

INSERT INTO `customer_passbooks` (`id`, `customer_id`, `statement`, `amount`, `amt_status`, `created_at`) VALUES
(1, 13, '20 rs added in wallet via razorpay', 20.00, 'credited', '2021-06-23 09:24:44'),
(2, 13, '20Rs added in wallet via razorpay final amount: 340', 20.00, 'credited', '2021-06-23 09:51:53'),
(3, 13, '20Rs added in wallet via razorpay final amount: 360', 20.00, 'credited', '2021-06-23 09:53:48'),
(4, 13, '20Rs added in wallet via razorpay final amount: 380', 20.00, 'credited', '2021-06-23 09:54:10'),
(5, 13, '20Rs added in wallet via razorpay final amount: 400', 20.00, 'credited', '2021-06-23 09:54:27'),
(6, 13, 'Rs20 added in wallet via razorpay final amount: 480', 20.00, 'credited', '2021-06-23 09:58:18'),
(7, 13, 'Rs20 added in wallet via razorpay final amount: Rs520', 20.00, 'credited', '2021-06-23 09:58:39'),
(8, 13, 'Rs20.15 added in wallet via razorpay final amount: Rs540.15', 20.15, 'credited', '2021-06-23 10:22:09'),
(9, 13, 'Rs 20.15 added in wallet via razorpay,  Net amount: Rs 560.3', 20.15, 'credited', '2021-06-23 10:37:09'),
(10, 13, 'Rs 10 added in wallet via razorpay,  Net amount: Rs 570.3', 10.00, 'credited', '2021-06-23 11:03:41'),
(11, 13, 'Rs 20.15 debited from your wallet for test', 20.15, 'debited', '2021-06-23 11:13:40'),
(12, 13, 'Rs 20.15 debited from your wallet for test,  Net amount: Rs 530', 20.15, 'debited', '2021-06-23 11:20:39'),
(13, 13, 'Rs 42.5 debited from your wallet for Order (ORD49942765),  Net amount: Rs 487.5', 42.50, 'debited', '2021-06-23 12:52:21'),
(14, 13, 'Rs 12 added in wallet via razorpay,  Net amount: Rs 499.5', 12.00, 'credited', '2021-06-23 13:01:24'),
(15, 16, 'Rs 10 added in wallet via razorpay,  Net amount: Rs 10', 10.00, 'credited', '2021-10-26 06:55:05');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boys`
--

CREATE TABLE `delivery_boys` (
  `id` int(11) NOT NULL,
  `wallet` double(5,2) NOT NULL DEFAULT '0.00',
  `delivery_boy_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `profile_picture` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bar_codes` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `otp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` text,
  `delivery_boy_type` int(11) NOT NULL DEFAULT '1',
  `salary` double(10,2) DEFAULT NULL,
  `commission` double(10,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_boys`
--

INSERT INTO `delivery_boys` (`id`, `wallet`, `delivery_boy_name`, `phone_number`, `email`, `password`, `profile_picture`, `bar_codes`, `status`, `otp`, `fcm_token`, `delivery_boy_type`, `salary`, `commission`, `created_at`, `updated_at`) VALUES
(1, 0.00, 'test Driver', '1234567892', 'test@test.com', '$2y$12$WJz6gktTucnlI4UZKuoUzuAezqLfuApJ4UhyRU5FrUsxweKIMpm7i', 'images/a1b12e04dd4bd30d6b0c4ef306e502e3.jpg', '1', 1, '131509', 'd-SEhxK4SMaQqRspQO7kqW:APA91bFazeMw7cMy4lAPD50WxgvM7EDkwCgbRlCxh3Mvto58S-aTN_XB375VMroiaf74CnJrkJCF3x-V0qb6elr7rdVm3kuozrusL9mh0nvwK97ZHOwL3hn58qDyCQmXXBchkQbtbYxg', 2, 5000.00, NULL, '2021-04-28 15:50:29', '2021-09-25 13:19:16'),
(2, 10.12, 'Deepak kumar', '7678178911', 'structlooper@gmail.com', NULL, 'images/1621256093.jpg', '1,2', 1, '794706', 'dXjww7RORuuBR_NJUoWKC-:APA91bF5cV7VsnpE9vjN_FOtxaeLw4B_o4rEV-OyDUzMdmgDwl7moLIFhj8kgjR_Fs0vo7YfcaxmgSXsNSst3QgXMFuBFRxC0D5Lm9sa2TV36NE4Jm4pSxVJ-kM2j5WDLYaDzaywr4Y7', 1, NULL, 10.00, '2021-05-05 14:56:48', '2021-08-09 12:54:33'),
(3, 0.00, 'Dhiraj', '7632859600', 'dhirajchoudhary999@gmail.com', NULL, NULL, NULL, 1, '203908', 'ff2bqbShRcyYnaQHhl0P1X:APA91bGvAp5giVYxCENCVHgam5zBBWUueKEcpCncNH8C-lzeYuu3Xh4Eme_Z1-0CxMchhRt6OXC7008jurFxCwKvXMyQy1OA4pCekRlsE9fhFcCtdQN1vZqV6lp4l5TCmULzoXWCjjb8', 1, NULL, NULL, '2021-05-19 17:32:12', '2021-09-12 16:43:19'),
(4, 0.00, 'Niraj', '7979034079', 'nirajkumarchoudhary99@gmail.com', NULL, 'images/04784e0c80c62aec0fb7ac6f5568dcb9.jpg', NULL, 1, '285727', 'djtQSgfmQc-nojeJ0OAee_:APA91bH_DuxAlmg6xff6AbO9gYc55bICL7cJL9k_W18bzTOlVIxIIeJn2bTNn1s28brE21ysgiv0K2tRfhP4l0rqWav78XyYrA2IWI-a5smbuPdHMXm7meEqGI1fg3MfbNJzkdjRCzo_', 2, NULL, NULL, '2021-05-20 12:18:31', '2021-07-05 12:49:10'),
(5, 0.00, 'rohan', '7011266538', 'alisha247u@gmail.com', NULL, 'images/cbfbec8275e7f7666fcb3d8f01d25ae6.jpg', NULL, 1, '869054', 'dweQ4KZgSxSjUtCcFme257:APA91bF6b5V5jj8EYM40BWfMXo9TTqz7cybLbO4DNPwD46FOhBgoiOacGKD1QyZaVf-HvRl8BHtFD6_lOhjZh8r_JEmzmjqUoBMTQLo_IJ724dbrEeTMevOfrOwHygcqm6tAwu5POU7e', 1, NULL, NULL, '2021-05-28 18:44:12', '2021-06-10 20:22:40'),
(6, 0.00, 'Satish sahab', '9990944381', 'sahabsatish@gmail.com', NULL, NULL, NULL, 1, '596594', 'dufuaZ-tTVegsUz2Dj-PmF:APA91bGpPvw-ook5qPX1Q5IkYc7xijSwGi5_1vXflyfThOy8XwDFdI12WlR-EyTTXxkcGNdT0wW3C437LFVT0WBYA7lqjqa7k4X40YYb0uVmluKs0jCSB0pFEXlKi1oYH7_K3N4uZds8', 1, NULL, NULL, '2021-06-18 18:50:51', '2021-07-10 09:41:34'),
(7, 0.00, 'Hardik', '8290324270', 'Abc@gmail.com', NULL, NULL, NULL, 1, '286876', 'e8rQhZd6SNOQSgVjxlNZPl:APA91bGM3pSQPG2624zZpZCu_6VZtzhaYKVGt-gmVz4KJKHP6yyNgm6lMeYS9wvSu1RWmJBa4dU-T1nGIFk1kPkr_9FGCFmtDVgTGsXCNNeCn6flcb4RuQ2xoQVfhaBXfTQ6DEVxV4uN', 1, NULL, NULL, '2021-06-29 20:11:44', '2021-06-29 20:11:44'),
(8, 0.00, 'Shivam', '8340294480', 'sbashrivastava95@gmail.com', NULL, NULL, NULL, 1, '895700', 'fzhOeA91R7uOhCBXmxhGmz:APA91bFHFFFNR-eiccglmclhsux9P0bapf-tkoWJtXy-OpSAafZpIcbfCkJbPBnjlBK8gQJ27KpwEcwtFzFGyvKYsd4qQRx3YjhUczKI6Yp5EnOF0FfMkeDSw8bFm_p8b7GO8_05Pgxf', 1, NULL, NULL, '2021-07-04 18:33:00', '2021-07-04 18:33:00'),
(9, 0.00, 'Niraj', '8882103813', 'kryche.india@gmail.com', NULL, NULL, NULL, 1, '164173', 'ep6xCcqwRQmCB349NRKphY:APA91bHHVZq5O4jy1c4nWbQQbqfr2w3OmX17gv3FnuNHIwuGHdj6gEY3qlbUPhIAgxs76HplJq7Eikxt91Prpn7a4lTEgtvFLwiBA9lWNCr5gRNd7RdihoiO3lJ7zo_vQ35idxc9ACn5', 1, NULL, NULL, '2021-08-10 12:11:09', '2021-08-10 12:11:09');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy_types`
--

CREATE TABLE `delivery_boy_types` (
  `id` int(11) NOT NULL,
  `title` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_boy_types`
--

INSERT INTO `delivery_boy_types` (`id`, `title`) VALUES
(1, 'Delivery Based'),
(2, 'Month Based');

-- --------------------------------------------------------

--
-- Table structure for table `driver_notifications`
--

CREATE TABLE `driver_notifications` (
  `id` int(11) NOT NULL,
  `order_id` varchar(225) NOT NULL,
  `fcm_msg_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver_notifications`
--

INSERT INTO `driver_notifications` (`id`, `order_id`, `fcm_msg_id`, `driver_id`, `created_at`) VALUES
(2, 'ORD54113423', 2, 2, '2021-05-07 09:30:39'),
(3, 'ORD54113423', 5, 2, '2021-05-07 09:32:00'),
(5, 'ORD47759552', 2, 2, '2021-05-13 11:35:48'),
(7, 'ORD93571319', 2, 2, '2021-05-14 05:51:27'),
(8, 'ORD62933240', 5, 4, '2021-05-22 07:40:39'),
(9, 'ORD64812029', 2, 5, '2021-05-28 13:17:40'),
(10, 'ORD49788851', 2, 4, '2021-05-28 13:25:11'),
(11, 'ORD46425248', 2, 2, '2021-05-29 06:35:44'),
(13, 'ORD28048230', 5, 2, '2021-06-10 14:44:43'),
(14, 'ORD49942765', 2, 2, '2021-06-16 05:37:23'),
(16, 'ORD13680444', 2, 6, '2021-06-19 10:18:38'),
(17, 'ORD51952650', 2, 4, '2021-06-19 10:19:51'),
(18, 'ORD22384757', 2, 4, '2021-06-19 10:21:38'),
(19, 'ORD78420504', 2, 6, '2021-06-19 10:21:55'),
(20, 'ORD49942765', 2, 4, '2021-06-19 10:23:24'),
(21, 'ORD41474742', 2, 4, '2021-06-19 10:26:05'),
(22, 'ORD78420504', 5, 6, '2021-06-19 10:28:57'),
(23, 'ORD41474742', 5, 4, '2021-06-19 10:31:26'),
(24, 'ORD49942765', 5, 4, '2021-06-19 10:33:04'),
(29, 'ORD36168909', 2, 2, '2021-06-21 10:53:54'),
(33, 'ORD49942765', 9, 2, '2021-06-23 12:52:21'),
(34, 'ORD28048230', 2, 2, '2021-06-23 13:33:44'),
(35, 'ORD20917430', 2, 2, '2021-06-23 13:43:57'),
(37, 'ORD20917430', 9, 2, '2021-06-23 13:57:38'),
(38, 'ORD61074446', 2, 2, '2021-06-23 14:01:44'),
(39, 'ORD61074446', 9, 2, '2021-06-23 14:05:20'),
(40, 'ORD29207158', 2, 4, '2021-06-25 05:59:48'),
(41, 'ORD84499264', 9, 4, '2021-06-30 16:32:02'),
(42, 'ORD27991677', 2, 2, '2021-07-03 09:10:29'),
(43, 'ORD40194001', 2, 4, '2021-07-05 05:20:51'),
(44, 'ORD82952690', 9, 4, '2021-07-06 05:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `earning_status`
--

CREATE TABLE `earning_status` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `order_id` varchar(225) NOT NULL,
  `total_amt` double(10,2) NOT NULL,
  `earn_amt` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `earning_status`
--

INSERT INTO `earning_status` (`id`, `driver_id`, `order_id`, `total_amt`, `earn_amt`, `created_at`, `updated_at`) VALUES
(2, 2, 'ORD54113423', 10.00, 1.00, '2021-05-15 07:56:32', NULL),
(3, 2, 'ORD93571319', 53.00, 5.30, '2021-05-17 12:55:06', NULL),
(4, 2, 'ORD28048230', 28.25, 2.83, '2021-06-10 14:45:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_ar` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_ar` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `question_ar`, `answer`, `answer_ar`, `status`, `created_at`, `updated_at`) VALUES
(1, 'How do i book my pickup?', NULL, 'Kryche dryclean laundry solution is most easy and convenient to book , you simply need to login to KRYCHE application and book a flexible slot or else call us directly.', NULL, 1, '2021-05-03 12:59:32', '2021-05-20 12:34:58'),
(2, 'How will I know that my laundry has been picked-up?', NULL, 'A delivery boy will visit your place, after the order is picked You will get a notification  on your numbers  and is in progress you will also get a notification and a call before the delivery of washed cloths.', NULL, 1, '2021-05-03 13:00:01', '2021-06-30 15:38:49'),
(3, 'What if my order is misplaced ?', NULL, 'This is rare but still if your order is misplaced please raise a complaint for the feedback menu , or else call us directedly ,  we will get that fixed .', NULL, 1, '2021-05-03 13:00:42', '2021-06-30 15:43:37'),
(4, 'Do I need to count the items in my order?', NULL, 'All the items are counted at the time of pickup and before delivery , so you can check your application and match the number of  items.', NULL, 1, '2021-05-03 13:01:20', '2021-06-30 15:44:58'),
(5, 'I want to cancel my membership', NULL, 'Yes you can cancel the membership plan anytime  as per your convenient, But remaining amount  will be adjusted on the laundry service only.', NULL, 1, '2021-05-03 13:01:57', '2021-06-30 15:47:03'),
(6, 'My order is not treated properly I want  a refund ?', NULL, 'We use the best solvents in market , we guarantee 99% that the service will not be spoiled, but still in case if their is any damage we will retreat the order for you just for free.', NULL, 1, '2021-06-30 15:49:56', '2021-06-30 15:49:56');

-- --------------------------------------------------------

--
-- Table structure for table `fare_managements`
--

CREATE TABLE `fare_managements` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fcm_notification_messages`
--

CREATE TABLE `fcm_notification_messages` (
  `id` int(11) NOT NULL,
  `status_image` mediumtext COLLATE utf8mb4_unicode_ci,
  `customer_title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_description` text COLLATE utf8mb4_unicode_ci,
  `delivery_title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fcm_notification_messages`
--

INSERT INTO `fcm_notification_messages` (`id`, `status_image`, `customer_title`, `customer_description`, `delivery_title`, `delivery_description`, `created_at`, `updated_at`) VALUES
(1, 'status_images/order_confirmed.png', 'Order placed', 'Your order has been placed successfully.', NULL, NULL, '2020-05-29 12:03:47', '2020-05-29 12:03:59'),
(2, 'status_images/assigned.png', 'Order Assigned', 'Your order has been assigned to delivery boy', 'Order Assigned', 'You got new order', '2020-05-29 12:13:35', '2020-05-29 12:13:43'),
(3, 'status_images/pickup.png', 'On the way to pickup', 'Delivery boy was on the way to pickup your clothes', NULL, NULL, '2020-05-29 12:13:49', '2020-05-29 12:13:57'),
(4, 'status_images/processing.png', 'Processing', 'Your order has been processing', NULL, NULL, '2020-05-29 12:15:55', '2020-05-29 12:16:04'),
(5, 'status_images/ready_to_dispatch.png', 'Ready to Dispatch', 'Your cloths are ready to dispatch', 'Ready to Dispatch', 'Order processed, cloths are ready to collect', '2020-05-29 12:23:37', '2020-05-29 12:23:44'),
(6, 'status_images/on_way_to deliver.png', 'On the way to Deliver', 'Your cloths are on the way to deliver', NULL, NULL, '2020-05-29 12:23:49', '2020-05-29 12:23:53'),
(7, 'status_images/delivered.png', 'Order Completed', 'Your order has been completed', NULL, NULL, '2020-05-29 12:23:58', '2020-05-29 12:24:01'),
(8, 'status_images/payment_request.png', 'Payment Requested.', 'Payment has been requested for your order pay now.', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'status_images/payment_done.png', 'Payment Done', 'Payment has been done by customer, Please verify', 'Payment Done', 'Payment has been done by customer, Please verify', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(2, 13, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\n\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '2021-06-11 11:10:43', NULL),
(6, 13, 'this complain test', '2021-06-11 11:30:37', NULL),
(7, 16, 'I want my order details and a call back from your team', '2021-06-30 10:37:58', NULL),
(8, 13, 'this is test feed back', '2021-09-25 07:45:50', NULL),
(9, 16, 'Good service', '2021-10-26 09:27:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `id` int(11) NOT NULL,
  `label_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label_image` mediumtext,
  `label_name_ar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label_for_delivery_boy` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`id`, `label_name`, `label_image`, `label_name_ar`, `label_for_delivery_boy`, `description`, `description_ar`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Order Placed', 'status_images/order_confirmed.png', 'تم الطلب', 'Order Placed', 'Order Placed', 'تم الطلب', 1, '2019-07-23 09:33:18', '2020-06-09 01:47:46'),
(2, 'Assigned', 'status_images/assigned.png', 'تعيين', 'Assigned', 'Assigned', 'تعيين', 1, '2019-07-23 09:33:18', '2020-06-09 01:48:10'),
(3, 'On the way to pickup', 'status_images/pickup.png', 'في الطريق لاقط', 'Ready to pickup', 'On the way to pickup', 'في الطريق لاقط', 1, '2019-07-23 09:33:18', '2020-06-09 01:48:48'),
(4, 'Processing', 'status_images/processing.png', 'معالجة', 'Picked up', 'Processing', 'معالجة', 1, '2019-07-23 09:33:18', '2020-06-09 01:49:50'),
(5, 'Ready to dispatch', 'status_images/ready_to_dispatch.png', 'جاهز للإرسال', 'Ready to dispatch', 'Ready to dispatch', 'جاهز للإرسال', 1, '2019-07-23 09:33:18', '2020-06-09 01:50:35'),
(6, 'On the way to deliver', '	\r\nstatus_images/on_way_to deliver.png', 'في الطريق الى التسليم', 'Ready to deiver', 'On the way to deliver', 'في الطريق الى التسليم', 1, '2019-07-23 09:33:18', '2020-06-09 01:51:06'),
(7, 'Completed', 'status_images/delivered.png', 'منجز', 'Completed', 'Completed', 'منجز', 1, '2019-07-23 09:33:18', '2020-06-09 01:51:31'),
(8, 'Canceled', 'status_images/order_cancel.png', 'منجز', 'Canceled', 'Order has been canceled!!', 'منجز', 1, '2019-07-23 09:33:18', '2020-06-09 01:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` int(11) NOT NULL,
  `service_id` varchar(250) NOT NULL,
  `banner_image` mediumtext NOT NULL,
  `title` varchar(250) NOT NULL,
  `price` double NOT NULL,
  `discount` varchar(255) NOT NULL DEFAULT '0',
  `discount_type` varchar(255) DEFAULT NULL,
  `duration` double NOT NULL,
  `desc_1` text NOT NULL,
  `desc_2` text,
  `desc_3` text,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `service_id`, `banner_image`, `title`, `price`, `discount`, `discount_type`, `duration`, `desc_1`, `desc_2`, `desc_3`, `status`, `created_at`, `updated_at`) VALUES
(1, '1,3', 'images/3d57f55d942eb3488364dddfcabd1dc1.png', 'SILVER PLAN', 599, '65,85', '2,2', 2, 'Cloths                                   8 kg \r\n\r\nService time                       24 - 48 hours \r\n\r\nMinimum order                 Rs299\r\n\r\nValidity                                 3 months\r\n\r\nEstimate cloths                 50 cloths', NULL, 'Ideal for 1 person\r\n\r\nFree pickup and delivery', 1, '2021-05-10 06:22:08', '2021-09-25 07:12:05'),
(2, '1,2,3,4', 'images/7812e3fd72b9ed9b3ccb1b38a440c566.png', 'GOLD PLAN', 1500, '65,10,75,10', '2,1,2,1', 2, 'Cloths                   17KG. \r\n\r\nService                  Wash & Fold , Steam Iron \r\n\r\nDry Clean             Discount 5%\r\n\r\nEstimate cloths        110\r\n\r\nService time                24 Hr. \r\n\r\n6. Minimum Order          299/-\r\n\r\nValidity                            Unlimited', 'Ideal for 2 person\r\n\r\nFree pickup and delivery', NULL, 1, '2021-05-10 06:27:56', '2021-09-25 07:17:00'),
(3, '1,2,3', 'images/5f2c348291bf016e04a97f4f6b74cfa7.png', 'CORPORATE  PLAN', 2999, '75', '15', 2, 'Cloths                   45 KG. \r\n\r\nService                  Wash & Fold , Steam Iron , dry-clean\r\n\r\nDry Clean             Discount 10%\r\n\r\nTime                       24 hours\r\n\r\nValidity                   Unlimited \r\n\r\nService time         24 Hr. \r\n\r\nMinimum Order  299/-e our premium user', 'Free pickup and delivery', NULL, 1, '2021-05-10 06:31:08', '2021-08-10 06:48:15'),
(4, '1,2,3,4', 'images/b94c706d4bdd60d711d285626919f36a.png', 'PLATINUM PLAN', 5999, '65', '20', 4, 'Cloths                                     91 kgs\r\n\r\nService                                  Wash & Fold , Steam Iron , dry-clean\r\n  \r\n Dry Clean Discount          15%  OFF \r\n\r\nPremium Laundry             15% OFF \r\n\r\nTime                                       24 hours \r\n\r\nValidity                                  Unlimited\r\n\r\nService time                        24 Hr. \r\n\r\n Minimum Order                299/-', 'Free pickup and delivery', NULL, 1, '2021-07-21 06:08:14', '2021-08-10 06:49:42');

-- --------------------------------------------------------

--
-- Table structure for table `membership_duration`
--

CREATE TABLE `membership_duration` (
  `id` int(11) NOT NULL,
  `duration_name` varchar(225) NOT NULL,
  `duration` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership_duration`
--

INSERT INTO `membership_duration` (`id`, `duration_name`, `duration`) VALUES
(1, '1 Month', '30'),
(2, '3 Months', '90'),
(3, '1 Year', '365'),
(4, 'Life time', '--');

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
(3, '2016_01_04_173148_create_admin_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `selected_service_ids` varchar(255) NOT NULL,
  `estimated_cloths` varchar(255) DEFAULT NULL,
  `additional_item_ids` varchar(255) DEFAULT NULL,
  `promo_code_id` int(11) DEFAULT NULL,
  `expected_pickup_date` datetime NOT NULL,
  `expected_delivery_date` datetime NOT NULL,
  `pickup_time` varchar(225) NOT NULL,
  `drop_time` varchar(225) NOT NULL,
  `total` float NOT NULL DEFAULT '0',
  `delivery_changes` double(5,2) NOT NULL DEFAULT '0.00',
  `delivery_changes_discount` double(10,2) NOT NULL DEFAULT '0.00',
  `discount` float NOT NULL DEFAULT '0',
  `mem_total_discount` double(5,2) NOT NULL DEFAULT '0.00',
  `sub_total` float NOT NULL DEFAULT '0',
  `promo_id` int(11) DEFAULT NULL,
  `delivered_by` int(11) DEFAULT NULL,
  `payment_mode` int(11) NOT NULL DEFAULT '3',
  `payment_status` int(11) NOT NULL DEFAULT '1',
  `items` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cance_reason` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `customer_id`, `address_id`, `selected_service_ids`, `estimated_cloths`, `additional_item_ids`, `promo_code_id`, `expected_pickup_date`, `expected_delivery_date`, `pickup_time`, `drop_time`, `total`, `delivery_changes`, `delivery_changes_discount`, `discount`, `mem_total_discount`, `sub_total`, `promo_id`, `delivered_by`, `payment_mode`, `payment_status`, `items`, `cance_reason`, `status`, `created_at`, `updated_at`) VALUES
(37, 'ORD20917430', 13, 25, '1,3', '20-40', 'Curtains+,Blanket+', NULL, '2021-06-24 00:00:00', '2021-06-25 00:00:00', '09 am to 11 am', '09 am to 11 am', 135, 50.00, 50.00, 0, 135.00, 270, NULL, 4, 1, 5, NULL, NULL, 3, '2021-06-23 19:13:17', '2021-08-26 23:53:05'),
(38, 'ORD61074446', 13, 25, '2', '<20', NULL, NULL, '2021-06-24 00:00:00', '2021-06-25 00:00:00', '09 am to 11 am', '09 am to 11 am', 135, 50.00, 50.00, 0, 135.00, 270, NULL, 2, 2, 2, NULL, NULL, 4, '2021-06-23 19:30:58', '2021-07-03 16:30:18'),
(39, 'ORD31371921', 16, 24, '2', '<20', NULL, 2, '2021-06-25 11:24:27', '2021-06-26 11:24:28', '1 pm to 3 pm', '3 pm to 5 pm', 135, 50.00, 50.00, 0, 135.00, 270, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-06-25 11:26:47', '2021-07-03 16:30:18'),
(40, 'ORD29207158', 16, 24, '2', '<20', NULL, 2, '2021-06-25 11:24:27', '2021-06-26 11:24:28', '1 pm to 3 pm', '3 pm to 5 pm', 135, 50.00, 50.00, 0, 135.00, 270, NULL, 4, 3, 1, NULL, NULL, 7, '2021-06-25 11:26:49', '2021-07-03 16:30:18'),
(41, 'ORD27567819', 16, 24, '2,3', '20-40', 'Carpet+', NULL, '2021-06-25 11:45:04', '2021-06-26 11:45:04', '1 pm to 3 pm', '11 am to 1 pm', 135, 50.00, 50.00, 0, 135.00, 270, NULL, 4, 3, 4, NULL, NULL, 4, '2021-06-25 11:45:25', '2021-07-03 16:30:18'),
(42, 'ORD81690429', 16, 24, '1,2', '<20', 'Carpet+', NULL, '2021-06-26 10:25:36', '2021-06-27 10:25:36', '11 am to 1 pm', '09 am to 11 am', 135, 50.00, 50.00, 0, 135.00, 270, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-06-26 10:26:12', '2021-07-03 16:30:18'),
(43, 'ORD77917615', 16, 24, '1,2', '<20', NULL, NULL, '2021-06-26 10:28:45', '2021-06-27 10:28:45', '11 am to 1 pm', '3 pm to 5 pm', 1280, 50.00, 50.00, 0, 320.00, 1600, NULL, 4, 3, 1, NULL, NULL, 4, '2021-06-26 10:29:34', '2021-07-05 13:34:33'),
(44, 'ORD53352804', 16, 24, '1,2', '<20', NULL, NULL, '2021-06-28 12:06:06', '2021-06-29 12:06:07', '1 pm to 3 pm', '3 pm to 5 pm', 135, 50.00, 50.00, 0, 135.00, 270, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-06-28 12:06:51', '2021-07-03 16:30:18'),
(45, 'ORD34036514', 16, 24, '1,2', '<20', NULL, NULL, '2021-06-29 12:08:30', '2021-06-30 12:08:30', '1 pm to 3 pm', '11 am to 1 pm', 135, 50.00, 50.00, 0, 135.00, 270, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-06-29 12:10:31', '2021-07-03 16:30:18'),
(46, 'ORD77007804', 14, 19, '3,2', '20-40', NULL, NULL, '2021-06-29 12:10:32', '2021-07-01 00:00:00', '1 pm to 3 pm', '09 am to 11 am', 135, 50.00, 50.00, 0, 135.00, 270, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-06-29 12:10:59', '2021-07-03 16:30:18'),
(47, 'ORD89900127', 14, 19, '1,2,3', '20-40', NULL, NULL, '2021-06-29 12:29:21', '2021-06-30 12:29:22', '1 pm to 3 pm', '09 am to 11 am', 135, 50.00, 50.00, 0, 135.00, 270, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-06-29 12:29:41', '2021-07-03 16:30:18'),
(48, 'ORD48455804', 14, 19, '1,2,3', '20-40', NULL, NULL, '2021-06-29 12:29:21', '2021-06-30 12:29:22', '1 pm to 3 pm', '09 am to 11 am', 135, 50.00, 50.00, 0, 135.00, 270, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-06-29 12:29:38', '2021-07-03 16:30:18'),
(49, 'ORD48555397', 14, 19, '1,2,3', '20-40', NULL, NULL, '2021-06-29 12:29:21', '2021-06-30 12:29:22', '1 pm to 3 pm', '09 am to 11 am', 135, 50.00, 50.00, 0, 135.00, 270, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-06-29 12:29:40', '2021-07-03 16:30:18'),
(50, 'ORD95033805', 16, 24, '4', '<20', 'Carpet+', 2, '2021-06-29 14:25:39', '2021-06-30 14:25:39', '3 pm to 5 pm', '09 am to 11 am', 135, 50.00, 50.00, 0, 135.00, 270, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-06-29 14:26:44', '2021-07-03 16:30:18'),
(51, 'ORD84499264', 16, 24, '1', '<20', 'Carpet+', NULL, '2021-07-01 00:00:00', '2021-07-02 00:00:00', '09 am to 11 am', '11 am to 1 pm', 135, 50.00, 50.00, 0, 135.00, 270, NULL, 4, 1, 3, NULL, NULL, 4, '2021-06-30 21:51:29', '2021-07-03 16:30:18'),
(52, 'ORD82138327', 16, 24, '1', '<20', 'Carpet+', NULL, '2021-07-01 00:00:00', '2021-07-02 00:00:00', '09 am to 11 am', '11 am to 1 pm', 135, 50.00, 50.00, 0, 135.00, 270, NULL, 4, 3, 4, NULL, NULL, 4, '2021-06-30 21:51:29', '2021-07-04 00:20:41'),
(53, 'ORD59611537', 16, 24, '1', '<20', 'Carpet+', NULL, '2021-07-01 00:00:00', '2021-07-02 00:00:00', '09 am to 11 am', '11 am to 1 pm', 135, 50.00, 50.00, 0, 135.00, 270, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-06-30 21:51:29', '2021-07-03 16:30:18'),
(54, 'ORD82206830', 16, 24, '1', '<20', 'Carpet+', NULL, '2021-07-01 00:00:00', '2021-07-02 00:00:00', '09 am to 11 am', '11 am to 1 pm', 135, 50.00, 50.00, 0, 135.00, 270, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-06-30 21:51:29', '2021-07-03 16:30:18'),
(55, 'ORD14476722', 16, 24, '1', '<20', 'Carpet+', NULL, '2021-07-01 00:00:00', '2021-07-02 00:00:00', '09 am to 11 am', '11 am to 1 pm', 135, 50.00, 50.00, 0, 135.00, 270, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-06-30 21:51:29', '2021-07-03 16:30:18'),
(56, 'ORD16936918', 16, 24, '1', '<20', 'Carpet+', NULL, '2021-07-01 00:00:00', '2021-07-02 00:00:00', '09 am to 11 am', '11 am to 1 pm', 135, 50.00, 50.00, 0, 135.00, 270, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-06-30 21:51:30', '2021-07-03 16:30:18'),
(57, 'ORD99648702', 16, 24, '1', '<20', 'Carpet+', NULL, '2021-07-01 00:00:00', '2021-07-02 00:00:00', '09 am to 11 am', '11 am to 1 pm', 135, 50.00, 50.00, 0, 135.00, 270, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-06-30 21:51:31', '2021-07-03 16:30:18'),
(58, 'ORD61360425', 16, 24, '1,2', '<20', 'Carpet+', NULL, '2021-07-01 00:00:00', '2021-07-02 00:00:00', '09 am to 11 am', '1 pm to 3 pm', 135, 50.00, 50.00, 0, 135.00, 270, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-06-30 23:22:55', '2021-07-03 16:30:18'),
(59, 'ORD95411903', 16, 24, '1', '<20', 'Carpet+', NULL, '2021-07-01 00:16:51', '2021-07-03 00:00:00', '11 am to 1 pm', '11 am to 1 pm', 135, 50.00, 50.00, 0, 135.00, 270, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-07-01 00:20:15', '2021-07-03 16:30:18'),
(60, 'ORD34075505', 16, 24, '3', '<20', 'Carpet+', NULL, '2021-07-01 00:37:05', '2021-07-02 00:37:06', '1 pm to 3 pm', '1 pm to 3 pm', 135, 50.00, 50.00, 0, 135.00, 270, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-07-01 00:39:05', '2021-07-03 16:30:18'),
(61, 'ORD82410907', 16, 24, '1,2', '<20', NULL, NULL, '2021-07-01 00:40:19', '2021-07-02 00:40:19', '1 pm to 3 pm', '5 pm to 7 pm', 135, 50.00, 50.00, 0, 135.00, 270, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-07-01 00:44:33', '2021-07-03 16:30:18'),
(62, '	ORD82410646', 13, 25, '1,2', '<20', NULL, 1, '2021-07-04 00:00:00', '2021-07-06 00:00:00', '5 pm to 7 pm', '3 pm to 5 pm', 180, 50.00, 50.00, 0, 180.00, 360, NULL, 2, 3, 1, NULL, 'order cancel reson', 8, '2021-07-03 13:39:33', '2021-07-03 20:16:16'),
(63, '	ORD82410897', 13, 25, '2,1', '20-40', 'Curtains+,Blanket+', NULL, '2021-07-04 00:00:00', '2021-07-05 00:00:00', '09 am to 11 am', '11 am to 1 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, NULL, 3, 1, NULL, 'checking', 8, '2021-07-03 20:23:08', '2021-07-03 20:24:04'),
(64, 'ORD73930429', 16, 24, '1,2', '<20', 'Carpet+', NULL, '2021-07-05 00:00:00', '2021-07-06 00:00:00', '09 am to 11 am', '11 am to 1 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, NULL, 3, 1, NULL, 'Na', 8, '2021-07-04 00:13:02', '2021-07-04 00:13:57'),
(65, 'ORD92650838', 16, 24, '1,2', '<20', 'Curtains+', NULL, '2021-07-04 06:58:04', '2021-07-05 00:00:00', '09 am to 11 am', '11 am to 1 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-07-04 06:59:33', NULL),
(66, 'ORD70188800', 16, 24, '1,2', '<20', NULL, NULL, '2021-07-04 14:30:05', '2021-07-05 00:00:00', '3 pm to 5 pm', '5 pm to 7 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-07-04 14:30:43', NULL),
(67, 'ORD98360423', 24, 27, '1,2', '<20', 'Carpet+', NULL, '2021-07-05 00:00:00', '2021-07-06 00:00:00', '11 am to 1 pm', '1 pm to 3 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-07-04 14:31:51', NULL),
(68, 'ORD66482482', 24, 27, '1,2', '<20', 'Carpet+', NULL, '2021-07-05 00:00:00', '2021-07-06 00:00:00', '11 am to 1 pm', '1 pm to 3 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-07-04 14:31:51', NULL),
(69, 'ORD96377208', 24, 27, '1,2', '<20', 'Carpet+', NULL, '2021-07-05 00:00:00', '2021-07-06 00:00:00', '11 am to 1 pm', '1 pm to 3 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-07-04 14:31:52', NULL),
(70, 'ORD40194001', 16, 24, '1,2', '<20', NULL, NULL, '2021-07-05 10:45:43', '2021-07-07 00:00:00', '1 pm to 3 pm', '5 pm to 7 pm', 320, 50.00, 50.00, 0, 80.00, 400, NULL, 4, 3, 4, NULL, NULL, 4, '2021-07-05 10:47:09', '2021-07-05 12:52:38'),
(71, 'ORD82952690', 16, 24, '1,2', '<20', 'Blanket+', NULL, '2021-07-06 10:40:23', '2021-07-08 00:00:00', '1 pm to 3 pm', '3 pm to 5 pm', 2392, 50.00, 50.00, 0, 598.00, 2990, NULL, 4, 1, 2, NULL, NULL, 7, '2021-07-06 10:41:02', '2021-07-06 11:33:19'),
(72, 'ORD58989457', 16, 24, '1,2', '<20', 'Cloth+', NULL, '2021-07-10 12:34:55', '2021-07-11 00:00:00', '1 pm to 3 pm', '3 pm to 5 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-07-10 12:35:23', NULL),
(73, 'ORD97541212', 16, 24, '2', '<20', 'Cloth+', NULL, '2021-07-12 00:00:00', '2021-07-13 00:00:00', '09 am to 11 am', '11 am to 1 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-07-11 17:23:32', NULL),
(74, 'ORD15086752', 13, 24, '1,2', '<20', 'Cloth+', NULL, '2021-07-17 08:57:46', '2021-07-18 00:00:00', '09 am to 11 am', '11 am to 1 pm', 126.5, 50.00, 0.00, 0, 13.50, 90, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-07-17 08:58:06', '2021-08-09 13:38:07'),
(75, 'ORD58077285', 16, 24, '4', '<20', 'Cloth+', NULL, '2021-07-18 00:00:00', '2021-07-19 00:00:00', '11 am to 1 pm', '1 pm to 3 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, 4, 3, 1, NULL, NULL, 3, '2021-07-17 17:05:20', '2021-07-17 17:10:03'),
(76, 'ORD78608923', 16, 24, '4', '<20', 'Cloth+', NULL, '2021-07-18 00:00:00', '2021-07-19 00:00:00', '11 am to 1 pm', '1 pm to 3 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, NULL, 3, 1, NULL, 'Meri marji', 8, '2021-07-17 17:05:21', '2021-07-17 17:05:49'),
(77, 'ORD67953123', 16, 28, '1,2', '<20', 'Cloth+', NULL, '2021-08-10 12:22:04', '2021-08-13 00:00:00', '1 pm to 3 pm', '3 pm to 5 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, 9, 3, 1, NULL, NULL, 3, '2021-08-10 12:23:29', '2021-08-10 12:26:17'),
(78, 'ORD18324539', 16, 28, '1,2', '<20', 'Cloth+', NULL, '2021-08-10 12:22:04', '2021-08-12 00:00:00', '1 pm to 3 pm', '3 pm to 5 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, 4, 3, 1, NULL, NULL, 3, '2021-08-10 12:23:30', '2021-08-10 12:25:24'),
(79, 'ORD87424641', 16, 28, '3', '<20', 'Cloth+', 4, '2021-08-14 11:09:40', '2021-08-15 00:00:00', '1 pm to 3 pm', '3 pm to 5 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-08-14 11:10:01', NULL),
(80, 'ORD64647700', 16, 28, '1,2', '<20', 'Cloth+', NULL, '2021-08-27 00:00:00', '2021-08-28 00:00:00', '11 am to 1 pm', '1 pm to 3 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-08-26 23:48:41', NULL),
(81, 'ORD73531044', 16, 28, '1,2', '20-40', 'Blanket+,Curtains+', NULL, '2021-08-31 15:38:25', '2021-09-01 00:00:00', '5 pm to 7 pm', '05 pm to 06 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-08-31 15:39:04', NULL),
(82, 'ORD51778850', 16, 28, '1,2', '20-40', 'Blanket+,Curtains+', NULL, '2021-08-31 15:38:25', '2021-09-01 00:00:00', '5 pm to 7 pm', '05 pm to 06 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-08-31 15:39:08', NULL),
(83, 'ORD49426160', 16, 28, '1,2', '20-40', 'Blanket+,Curtains+', NULL, '2021-08-31 15:38:25', '2021-09-01 00:00:00', '5 pm to 7 pm', '05 pm to 06 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-08-31 15:39:10', NULL),
(84, 'ORD98294331', 16, 28, '1', '<20', 'Cloth+', 4, '2021-09-04 10:00:23', '2021-09-05 00:00:00', '11 am to 1 pm', '1 pm to 3 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-09-04 10:02:08', NULL),
(85, 'ORD36774436', 16, 28, '1', '<20', 'Cloth+', 4, '2021-09-04 10:00:23', '2021-09-05 00:00:00', '11 am to 1 pm', '1 pm to 3 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, 4, 3, 1, NULL, NULL, 3, '2021-09-04 10:02:12', '2021-09-04 10:07:18'),
(86, 'ORD44380287', 16, 28, '1', '<20', 'Cloth+', NULL, '2021-09-07 12:24:00', '2021-09-08 00:00:00', '1 pm to 3 pm', '3 pm to 5 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-09-07 12:33:20', NULL),
(87, 'ORD96414654', 16, 28, '1,2', '<20', NULL, NULL, '2021-09-17 02:42:07', '2021-09-18 00:00:00', '09 am to 11 am', '11 am to 1 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-09-17 02:42:29', NULL),
(88, 'ORD92074004', 16, 28, '2', '<20', 'Cloth+', 4, '2021-10-26 12:25:32', '2021-10-27 00:00:00', '1 pm to 3 pm', '3 pm to 5 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-10-26 12:26:18', NULL),
(89, 'ORD90122544', 16, 28, '2', '<20', 'Blanket+', NULL, '2021-10-27 08:03:31', '2021-10-28 00:00:00', '1 pm to 3 pm', '3 pm to 5 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-10-27 08:04:11', NULL),
(90, 'ORD69526833', 16, 28, '2', '<20', 'Cloth+', 4, '2021-10-27 15:46:29', '2021-10-28 00:00:00', '5 pm to 7 pm', '05 pm to 06 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-10-27 15:47:02', NULL),
(91, 'ORD35457070', 16, 28, '2', '<20', 'Cloth+', NULL, '2021-11-02 00:00:00', '2021-11-03 00:00:00', '09 am to 11 am', '11 am to 1 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-11-01 17:22:09', NULL),
(92, 'ORD64020721', 16, 28, '2', '<20', 'Cloth+', NULL, '2021-11-02 00:00:00', '2021-11-03 00:00:00', '09 am to 11 am', '11 am to 1 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-11-01 17:22:12', NULL),
(93, 'ORD10509386', 16, 28, '2', '<20', 'Cloth+', NULL, '2021-11-02 00:00:00', '2021-11-03 00:00:00', '09 am to 11 am', '11 am to 1 pm', 0, 0.00, 0.00, 0, 0.00, 0, NULL, NULL, 3, 1, NULL, NULL, 1, '2021-11-01 17:22:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_histories`
--

CREATE TABLE `order_histories` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `delivery_boy_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_histories`
--

INSERT INTO `order_histories` (`id`, `order_id`, `delivery_boy_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 7, '2021-04-28 15:53:16', '2021-04-28 15:53:16'),
(2, 1, 1, 6, '2021-04-28 15:53:49', '2021-04-28 15:53:49'),
(3, 1, 1, 5, '2021-04-28 16:07:34', '2021-04-28 16:07:34'),
(4, 1, 1, 7, '2021-04-28 17:04:02', '2021-04-28 17:04:02'),
(5, 2, 1, 2, '2021-04-30 11:07:20', '2021-04-30 11:07:20'),
(6, 3, 1, 3, '2021-04-30 11:08:40', '2021-04-30 11:08:40'),
(7, 4, 1, 4, '2021-04-30 11:08:53', '2021-04-30 11:08:53'),
(8, 6, 1, 4, '2021-05-03 12:05:23', '2021-05-03 12:05:23'),
(9, 2, 1, 3, '2021-05-04 17:18:05', '2021-05-04 17:18:05'),
(10, 3, 1, 2, '2021-05-04 17:19:33', '2021-05-04 17:19:33'),
(11, 3, 1, 3, '2021-05-04 17:22:41', '2021-05-04 17:22:41'),
(12, 3, 1, 4, '2021-05-04 17:23:00', '2021-05-04 17:23:00'),
(13, 3, 1, 6, '2021-05-04 17:23:10', '2021-05-04 17:23:10'),
(14, 3, 1, 3, '2021-05-04 17:23:35', '2021-05-04 17:23:35'),
(15, 3, 1, 4, '2021-05-04 17:23:52', '2021-05-04 17:23:52');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `qty` double(10,2) NOT NULL,
  `mem_dis` double(5,2) NOT NULL DEFAULT '0.00',
  `price` float NOT NULL,
  `u_price` double(5,2) NOT NULL DEFAULT '0.00',
  `unit` varchar(255) NOT NULL,
  `item_count` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `service_id`, `qty`, `mem_dis`, `price`, `u_price`, `unit`, `item_count`, `created_at`, `updated_at`) VALUES
(78, 37, 1, 1, 1.00, 5.00, 5, 10.00, 'kg', 2, '2021-06-23 19:15:08', '2021-06-23 19:15:08'),
(79, 37, 2, 1, 2.00, 6.50, 6.5, 13.00, 'item', 1, '2021-06-23 19:15:09', '2021-06-23 19:15:09'),
(80, 38, 4, 2, 1.00, 7.50, 7.5, 15.00, 'kg', 12, '2021-06-23 19:32:54', '2021-06-23 19:32:54'),
(81, 38, 1, 1, 2.00, 10.00, 10, 20.00, 'kg', 3, '2021-06-23 19:33:48', '2021-06-23 19:33:48'),
(82, 51, 7, 2, 1.00, 8.00, 32, 40.00, 'item', NULL, '2021-06-30 21:55:30', '2021-06-30 21:55:30'),
(83, 51, 8, 2, 2.00, 36.00, 144, 180.00, 'item', NULL, '2021-06-30 21:55:32', '2021-06-30 21:55:32'),
(84, 51, 9, 2, 3.00, 54.00, 216, 270.00, 'item', NULL, '2021-06-30 21:55:33', '2021-06-30 21:55:33'),
(87, 62, 9, 2, 3.00, 135.00, 135, 270.00, 'item', NULL, '2021-07-03 16:29:05', '2021-07-03 16:29:05'),
(88, 62, 8, 2, 1.00, 45.00, 45, 90.00, 'item', NULL, '2021-07-03 17:21:25', '2021-07-03 17:21:25'),
(89, 43, 7, 2, 4.00, 32.00, 128, 160.00, 'item', NULL, '2021-07-04 00:16:40', '2021-07-04 00:16:40'),
(90, 43, 9, 2, 3.00, 54.00, 216, 270.00, 'item', NULL, '2021-07-04 00:16:40', '2021-07-04 00:16:40'),
(91, 43, 9, 2, 3.00, 54.00, 216, 270.00, 'item', NULL, '2021-07-04 00:16:40', '2021-07-04 00:16:40'),
(92, 43, 8, 2, 2.00, 36.00, 144, 180.00, 'item', NULL, '2021-07-04 00:16:40', '2021-07-04 00:16:40'),
(93, 43, 4, 2, 4.00, 72.00, 288, 360.00, 'item', NULL, '2021-07-04 00:18:20', '2021-07-04 00:18:20'),
(94, 43, 4, 2, 4.00, 72.00, 288, 360.00, 'item', NULL, '2021-07-04 00:18:20', '2021-07-04 00:18:20'),
(95, 70, 8, 2, 1.00, 18.00, 72, 90.00, 'item', 5, '2021-07-05 12:52:00', '2021-07-05 12:52:00'),
(96, 70, 7, 2, 1.00, 8.00, 32, 40.00, 'item', NULL, '2021-07-05 12:52:00', '2021-07-05 12:52:00'),
(97, 70, 9, 2, 3.00, 54.00, 216, 270.00, 'item', NULL, '2021-07-05 12:52:06', '2021-07-05 12:52:06'),
(98, 71, 7, 2, 5.00, 40.00, 160, 200.00, 'item', NULL, '2021-07-06 10:47:01', '2021-07-06 10:47:01'),
(99, 71, 8, 2, 9.00, 162.00, 648, 810.00, 'item', 10, '2021-07-06 10:47:04', '2021-07-06 10:47:04'),
(100, 71, 9, 2, 11.00, 198.00, 792, 990.00, 'item', NULL, '2021-07-06 10:47:23', '2021-07-06 10:47:23'),
(101, 71, 9, 2, 11.00, 198.00, 792, 990.00, 'item', NULL, '2021-07-06 10:47:23', '2021-07-06 10:47:23'),
(102, 74, 4, 2, 1.00, 13.50, 76.5, 90.00, 'Pcs', NULL, '2021-08-09 13:38:07', '2021-08-09 13:38:07');

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
-- Table structure for table `payment_histories`
--

CREATE TABLE `payment_histories` (
  `id` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `statement` varchar(225) NOT NULL,
  `order_id` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_histories`
--

INSERT INTO `payment_histories` (`id`, `amount`, `statement`, `order_id`, `created_at`, `updated_at`) VALUES
(11, 2392.00, 'Rs 2392 for order ORD82952690', 'ORD82952690', '2021-07-06 06:03:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `payment_mode` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_mode_ar` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `payment_mode`, `payment_mode_ar`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cash', 'السيولة النقدية', 'images/8342ffc12c9bb743950331a337714210.png', 1, '2020-05-29 18:20:29', '2021-05-13 17:41:30'),
(2, 'Online', 'بطاقة', 'images/f0e3c83f674c6014cdfbb5bcf863df55.jpg', 1, '2020-05-29 18:22:00', '2021-06-17 11:30:09'),
(3, 'Not selected', NULL, 'dsadtt', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Other', NULL, 'images/e4dda52778b4d10b4fb138f7ee3628f0.jpg', 1, '0000-00-00 00:00:00', '2021-06-17 11:24:39'),
(6, 'Wallet', NULL, 'images/37eabac2539aca54d47150a53d1ec36f.jpg', 1, '0000-00-00 00:00:00', '2021-06-17 11:29:52');

-- --------------------------------------------------------

--
-- Table structure for table `payment_responses`
--

CREATE TABLE `payment_responses` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `payment_mode` int(11) NOT NULL,
  `payment_response` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_status`
--

CREATE TABLE `payment_status` (
  `id` int(11) NOT NULL,
  `title` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_status`
--

INSERT INTO `payment_status` (`id`, `title`) VALUES
(1, 'Due'),
(2, 'Paid'),
(3, 'Verification'),
(4, 'Requested'),
(5, 'Processing');

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` int(11) NOT NULL,
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `title`, `title_ar`, `description`, `description_ar`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Terms of use', NULL, '1. Payment Terms\r\n The payment will be  done as per the order is generated the payment will be done at the time of delivery , but if the customer is enrolling with any plan or packages they have to make the payment in advance \r\n\r\n2, Refund policy\r\nwe do have a refund policy incase of  damage of cloths like stolen or burned we have 10 time payable to the service charges , However in term of colour fade we are  not offering any  kind of return however that service will be rechecked , You have to raise a complaint and our team will coordinate with you .', NULL, 1, '2021-05-03 12:48:33', '2021-06-30 16:12:16');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `product_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name_ar` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(5,2) NOT NULL DEFAULT '0.00',
  `unit` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `service_id`, `product_name`, `product_name_ar`, `image`, `price`, `unit`, `status`, `created_at`, `updated_at`) VALUES
(4, 2, 2, 'Shirt', 'product4ar', 'images/5e51b54e3c4a1e7afcd4826236c46cac.png', 90.00, 1, 1, '2021-04-21 23:13:24', '2021-06-25 09:36:26'),
(7, 1, 2, 'Trouser', NULL, 'images/520c0eb75301935327417be1a2fd4b15.jpeg', 40.00, 1, 1, '2021-06-26 10:47:06', '2021-06-26 10:47:06'),
(8, 1, 2, 'Shirt', NULL, 'images/562842fe2bf9ce81a6fe2b6a10bf226c.jpeg', 90.00, 1, 1, '2021-06-28 22:53:58', '2021-06-28 22:53:58'),
(9, 1, 2, 'Trousers', NULL, 'images/15724554cc037642942e963e9c437fde.jpeg', 90.00, 1, 1, '2021-06-28 22:54:57', '2021-06-28 22:54:57'),
(10, 2, 2, 'Sari', NULL, 'images/a37ea6bbecfa0ef8bfd6ccd5f788d112.jpeg', 180.00, 1, 1, '2021-06-28 22:56:07', '2021-09-04 10:14:14'),
(11, 1, 4, 'Shirt', NULL, 'images/943a5d050ed62c41639a34ce52cf67c1.jpeg', 40.00, 1, 1, '2021-06-28 22:56:49', '2021-06-28 22:56:49'),
(12, 1, 4, 'T-Shirt', NULL, 'images/d2ec22c4a82e4fe52d11466df6a94613.PNG', 35.00, 1, 1, '2021-07-06 22:40:01', '2021-07-06 22:40:01'),
(13, 1, 4, 'Trouser', NULL, 'images/054b7d9a097555b688cb69943e27f0b0.PNG', 40.00, 1, 1, '2021-07-06 22:46:01', '2021-07-06 22:46:01'),
(14, 1, 4, 'Jeans', NULL, 'images/b88fd1abf3850d4e91b8ff206aab3507.PNG', 40.00, 1, 1, '2021-07-06 22:46:43', '2021-07-06 22:46:43'),
(15, 1, 4, 'Full jacket', NULL, 'images/ecc22003a40b02e1a593669da782dab8.PNG', 150.00, 1, 1, '2021-07-06 22:48:11', '2021-07-06 22:48:11'),
(16, 1, 4, 'Sweat Shirt', NULL, 'images/0ae0a223c7dfaa9b9faa79cb1e4a2d59.PNG', 70.00, 1, 1, '2021-07-06 22:50:13', '2021-07-06 22:50:13'),
(17, 1, 4, 'Full jacket', NULL, 'images/8eff9309cd143cb09e1f515fec498778.PNG', 150.00, 1, 1, '2021-07-06 22:52:06', '2021-07-06 22:52:06'),
(18, 1, 4, 'Half jacket', NULL, 'images/5354bddafdd57d47936dd5284ac71fe9.PNG', 100.00, 1, 1, '2021-07-06 22:52:41', '2021-07-06 22:52:41'),
(19, 1, 4, 'Hood sweat shirt', NULL, 'images/d58d990a412024e9f2d459a89e191793.PNG', 200.00, 1, 1, '2021-07-06 22:53:37', '2021-07-06 22:53:37'),
(20, 1, 4, 'Sweat shirt', NULL, 'images/de7237133761281412bade2f4a98c8fe.PNG', 70.00, 1, 1, '2021-07-06 22:54:25', '2021-07-06 22:54:25'),
(21, 1, 4, 'Dhoti', NULL, 'images/e9e97f13b8e0501c862a8e5792254815.PNG', 50.00, 1, 1, '2021-07-06 22:55:01', '2021-07-06 22:55:01'),
(22, 1, 4, 'Safari Suit', NULL, 'images/d05dde7d24011db38a3bc66ab4e85f10.PNG', 100.00, 1, 1, '2021-07-06 22:55:49', '2021-07-13 14:00:46'),
(23, 2, 4, 'kurta', NULL, 'images/3eb9239ff78f3716114c10be7ab45693.PNG', 40.00, 1, 1, '2021-07-06 22:58:07', '2021-07-06 22:58:07'),
(25, 1, 2, 'Shorts', NULL, 'images/62ec57510b8cbf7f79c3e46bde9d44d5.PNG', 70.00, 1, 1, '2021-07-13 14:04:26', '2021-07-13 14:04:26'),
(26, 1, 2, 'Coat', NULL, 'images/123aaeaaedc04495c3b71818ad42ea7f.PNG', 180.00, 1, 1, '2021-07-13 14:06:57', '2021-07-13 14:06:57'),
(27, 1, 2, 'coat set', NULL, 'images/64a4b111cb7d42c3952f425102e00ccd.PNG', 250.00, 1, 1, '2021-07-13 14:07:57', '2021-07-13 14:07:57');

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

CREATE TABLE `promo_codes` (
  `id` int(11) NOT NULL,
  `promo_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `promo_name_ar` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promo_code` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `promo_type` int(11) NOT NULL,
  `discount` float NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promo_codes`
--

INSERT INTO `promo_codes` (`id`, `promo_name`, `promo_name_ar`, `promo_code`, `description`, `description_ar`, `promo_type`, `discount`, `status`, `created_at`, `updated_at`) VALUES
(4, '10% DICSOUNT ON FIRST ORDER', NULL, 'NEW10', 'Get the 10 % off on any services with us,', NULL, 2, 10, 1, '2021-07-06 11:43:14', '2021-07-06 11:43:14');

-- --------------------------------------------------------

--
-- Table structure for table `promo_types`
--

CREATE TABLE `promo_types` (
  `id` int(6) UNSIGNED NOT NULL,
  `type_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promo_types`
--

INSERT INTO `promo_types` (`id`, `type_name`, `created_at`, `updated_at`) VALUES
(1, 'Fixed', '2019-07-24 18:30:00', '2019-07-24 18:30:00'),
(2, 'Percentage', '2019-07-24 18:30:00', '2019-07-24 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_name_ar` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `service_time` int(11) NOT NULL,
  `description_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `service_name_ar`, `description`, `service_time`, `description_ar`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'WASH  AND FOLD', 'service Ar 2', '24 hours', 24, 'second descriptions', 'images/ab7285a443c32138b1caedd3922d6959.jpg', 1, '2021-04-21 01:06:46', '2021-07-10 13:42:54'),
(2, 'DRYCLEAN', 'service Ar', '24 hours', 24, 'ar description', 'images/91bab58c7f0316890d6ef9db06d46ac9.jpg', 1, '2021-04-21 01:06:09', '2021-06-25 09:30:07'),
(3, 'WASH AND IRON', 'service Ar 3', '24 hours', 24, 'second descriptions ', 'images/1809e221fe62e5e8a764aa90d172592e.jpg', 1, '2021-04-21 01:06:46', '2021-07-06 23:50:55'),
(4, 'PREMIUM LAUNDRY', NULL, '24 hours', 24, NULL, 'images/c93b5cd17337802f401717c22dcf3ca5.jpg', 1, '2021-06-28 22:51:36', '2021-07-10 13:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `service_areas`
--

CREATE TABLE `service_areas` (
  `id` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `pincode` varchar(225) NOT NULL,
  `delivery_changes` double(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_areas`
--

INSERT INTO `service_areas` (`id`, `title`, `pincode`, `delivery_changes`, `created_at`, `updated_at`) VALUES
(1, 'Uttam Nagar', '110059', 50.00, '2021-05-12 11:55:49', '2021-07-03 04:48:49'),
(2, 'Janak Puri', '110060', 50.00, '2021-05-12 11:56:30', '2021-07-03 04:49:11'),
(3, 'Dawaka', '110075', 50.00, '2021-05-12 11:58:10', '2021-07-03 04:49:29'),
(5, 'gurgaon', '1220011', 50.00, '2021-05-22 07:26:19', '2021-07-03 05:00:21'),
(6, 'fazilpur', '122018', 50.00, '2021-05-22 12:13:40', '2021-07-03 05:00:51'),
(7, 'Agon gurgaon', '122104', 0.00, '2021-07-13 08:54:14', '2021-07-13 08:54:14'),
(8, 'Ullawas gurgaon', '122101', 50.00, '2021-07-13 08:59:08', '2021-07-13 08:59:26'),
(9, 'sector 8 gurgaon', '122001', 50.00, '2021-07-13 19:26:42', '2021-07-13 19:26:42'),
(10, 'DLF phase 2', '122008', 50.00, '2021-07-13 19:30:26', '2021-07-13 19:30:26'),
(11, 'DLF phase 3', '122010', 50.00, '2021-07-13 19:30:50', '2021-07-13 19:30:50'),
(12, 'dlf', '122002', 50.00, '2021-07-13 19:31:46', '2021-07-13 19:31:46'),
(13, 'Sector 45', '122003', 50.00, '2021-07-13 19:32:57', '2021-07-13 19:32:57'),
(14, 'sector 56', '122011', 50.00, '2021-07-13 19:33:20', '2021-07-13 19:33:20'),
(15, 'Gurgaon village', '122006', 50.00, '2021-07-13 19:35:33', '2021-07-13 19:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `status_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `status_name`, `created_at`, `updated_at`) VALUES
(1, 'Active', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Inactive', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE `time_slots` (
  `id` int(11) NOT NULL,
  `time_from` varchar(225) NOT NULL,
  `time_to` varchar(225) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_slots`
--

INSERT INTO `time_slots` (`id`, `time_from`, `time_to`, `created_at`, `updated_at`) VALUES
(1, '09 am', '11 am', '2021-04-26 12:03:26', '2021-05-21 08:58:35'),
(2, '11 am', '1 pm', '2021-04-26 12:04:01', '2021-05-21 08:59:04'),
(3, '1 pm', '3 pm', '2021-04-26 12:15:22', '2021-05-21 09:00:11'),
(4, '3 pm', '5 pm', '2021-04-26 12:15:22', '2021-05-21 09:02:45'),
(5, '5 pm', '7 pm', '2021-04-26 12:03:26', '2021-05-21 09:03:36');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `unit_code` varchar(225) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_code`, `created_at`, `updated_at`) VALUES
(1, 'Pcs', NULL, '2021-07-06 17:56:50'),
(2, 'kg', NULL, NULL);

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
-- Table structure for table `user_carts`
--

CREATE TABLE `user_carts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cart_status` varchar(225) NOT NULL,
  `selected_service_ids` varchar(255) NOT NULL,
  `estimated_cloths` varchar(255) DEFAULT NULL,
  `additional_item_ids` varchar(255) DEFAULT NULL,
  `subtotal` double(10,2) NOT NULL DEFAULT '0.00',
  `delivery_changes` double(5,2) NOT NULL DEFAULT '0.00',
  `additional_charges` double(10,2) NOT NULL DEFAULT '0.00',
  `discount` double(10,2) NOT NULL DEFAULT '0.00',
  `mem_total_discount` double(5,2) NOT NULL DEFAULT '0.00',
  `promocode_id` int(11) NOT NULL DEFAULT '0',
  `total_amt` double(10,2) NOT NULL DEFAULT '0.00',
  `pickup_date` varchar(225) DEFAULT NULL,
  `pickup_time` varchar(225) DEFAULT NULL,
  `drop_date` varchar(225) DEFAULT NULL,
  `drop_time` varchar(225) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_carts`
--

INSERT INTO `user_carts` (`id`, `user_id`, `cart_status`, `selected_service_ids`, `estimated_cloths`, `additional_item_ids`, `subtotal`, `delivery_changes`, `additional_charges`, `discount`, `mem_total_discount`, `promocode_id`, `total_amt`, `pickup_date`, `pickup_time`, `drop_date`, `drop_time`, `created_at`, `updated_at`) VALUES
(11, 13, 'ordered', '', NULL, NULL, 37.00, 50.00, 0.00, 0.00, 0.00, 0, 57.00, '21-05-13', '05 pm to 06 pm', '21-05-14', '09 am to 10 am', '2021-05-11 11:13:35', '2021-05-27 08:20:07'),
(12, 13, 'ordered', '', NULL, NULL, 37.00, 50.00, 0.00, 0.00, 0.00, 0, 57.00, '21-05-14', '02 pm to 03 pm', '21-05-15', '09 am to 10 am', '2021-05-13 12:13:03', '2021-05-27 08:20:07'),
(13, 13, 'ordered', '', NULL, NULL, 37.00, 50.00, 0.00, 0.00, 0.00, 0, 57.00, '21-05-14', '02 pm to 03 pm', '21-05-15', '11 am to 12 pm', '2021-05-14 06:47:14', '2021-05-27 08:20:07'),
(14, 13, 'ordered', '', NULL, NULL, 37.00, 50.00, 0.00, 0.00, 0.00, 0, 57.00, '21-05-14', '02 pm to 03 pm', '21-05-15', '09 am to 10 am', '2021-05-14 06:55:28', '2021-05-27 08:20:07'),
(15, 13, 'ordered', '', NULL, NULL, 37.00, 20.00, 0.00, 0.00, 0.00, 0, 57.00, '21-05-14', '04 pm to 05 pm', '21-05-15', '11 am to 12 pm', '2021-05-14 09:17:15', '2021-05-27 08:20:07'),
(16, 13, 'created', '', NULL, NULL, 37.00, 10.00, 0.00, 0.00, 0.00, 0, 47.00, NULL, NULL, NULL, NULL, '2021-05-14 10:04:43', '2021-06-11 08:04:24'),
(17, 22, 'created', '', NULL, NULL, 37.00, 0.00, 0.00, 0.00, 0.00, 0, 57.00, NULL, NULL, NULL, NULL, '2021-05-17 08:00:28', '2021-05-27 08:20:07'),
(18, 22, 'created', '', NULL, NULL, 37.00, 0.00, 0.00, 0.00, 0.00, 0, 57.00, NULL, NULL, NULL, NULL, '2021-05-17 08:00:28', '2021-05-27 08:20:07'),
(19, 16, 'ordered', '', NULL, NULL, 37.00, 20.00, 0.00, 3.15, 0.00, 2, 57.00, '21-05-20', '02 pm to 03 pm', '21-05-21', '09 am to 10 am', '2021-05-18 18:29:46', '2021-05-27 08:20:07'),
(20, 14, 'ordered', '', NULL, NULL, 69.50, 10.00, 0.00, 0.00, 0.00, 0, 79.50, '21-05-29', '11 am to 1 pm', '21-05-30', '11 am to 1 pm', '2021-05-20 06:51:28', '2021-05-28 13:16:51'),
(21, 23, 'created', '', NULL, NULL, 37.00, 0.00, 0.00, 0.00, 0.00, 0, 57.00, NULL, NULL, NULL, NULL, '2021-05-20 12:47:40', '2021-05-27 08:20:07'),
(22, 16, 'ordered', '', NULL, NULL, 37.00, 20.00, 0.00, 30.00, 0.00, 3, 57.00, '21-05-22', '09 am to 11 am', '21-05-23', '11 am to 1 pm', '2021-05-21 08:32:59', '2021-05-27 08:20:07'),
(23, 24, 'created', '', NULL, NULL, 37.00, 50.00, 0.00, 0.00, 0.00, 0, 87.00, NULL, NULL, NULL, NULL, '2021-05-23 08:09:34', '2021-07-04 08:59:59'),
(24, 16, 'ordered', '', NULL, NULL, 150.50, 20.00, 0.00, 30.00, 0.00, 3, 170.50, '21-05-29', '11 am to 1 pm', '21-05-30', '11 am to 1 pm', '2021-05-24 09:46:06', '2021-05-28 13:24:09'),
(25, 14, 'created', '', NULL, NULL, 16.50, 10.00, 0.00, 0.00, 0.00, 0, 26.50, NULL, NULL, NULL, NULL, '2021-05-28 13:29:42', '2021-06-16 11:15:53'),
(26, 16, 'created', '', NULL, NULL, 23.00, 50.00, 0.00, 0.00, 0.00, 0, 73.00, NULL, NULL, NULL, NULL, '2021-05-28 14:11:06', '2021-07-24 09:23:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(11) NOT NULL,
  `order_id` varchar(225) NOT NULL,
  `fcm_msg_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `order_id`, `fcm_msg_id`, `user_id`, `created_at`) VALUES
(2, 'ORD30542021', 2, 13, '2021-05-04 13:02:04'),
(3, 'ORD85519272', 7, 13, '2021-05-04 13:02:48'),
(4, 'ORD30542021', 3, 13, '2021-05-04 13:30:05'),
(5, 'ORD30542021', 2, 13, '2021-05-04 13:30:27'),
(6, 'ORD18316715', 4, 13, '2021-05-06 10:14:48'),
(8, 'ORD18316715', 4, 13, '2021-05-07 06:22:15'),
(9, 'ORD18316715', 5, 13, '2021-05-07 09:01:04'),
(10, 'ORD85519272', 5, 13, '2021-05-07 09:02:14'),
(12, 'ORD85519272', 2, 13, '2021-05-07 09:03:51'),
(13, 'ORD18316715', 2, 13, '2021-05-07 09:05:32'),
(14, 'ORD85519272', 3, 13, '2021-05-07 09:06:50'),
(15, 'ORD85519272', 4, 13, '2021-05-07 09:07:01'),
(16, 'ORD85519272', 5, 13, '2021-05-07 09:07:25'),
(17, 'ORD85519272', 7, 13, '2021-05-07 09:08:34'),
(23, 'ORD54113423', 2, 16, '2021-05-07 09:30:39'),
(24, 'ORD54113423', 5, 16, '2021-05-07 09:31:59'),
(26, 'ORD47759552', 2, 13, '2021-05-13 11:35:48'),
(27, 'ORD47759552', 3, 13, '2021-05-13 11:36:17'),
(30, 'ORD93571319', 2, 13, '2021-05-14 05:51:27'),
(31, 'ORD47759552', 4, 13, '2021-05-14 06:33:07'),
(32, 'ORD54113423', 3, 16, '2021-05-15 07:41:57'),
(35, 'ORD54113423', 6, 16, '2021-05-15 07:55:56'),
(36, 'ORD54113423', 7, 16, '2021-05-15 07:56:33'),
(37, 'ORD93571319', 3, 13, '2021-05-17 05:30:04'),
(38, 'ORD18316715', 3, 13, '2021-05-17 08:58:51'),
(39, 'ORD93571319', 4, 13, '2021-05-17 08:59:09'),
(40, 'ORD93571319', 7, 13, '2021-05-17 12:55:06'),
(41, 'ORD62365215', 3, 16, '2021-05-20 07:49:55'),
(43, 'ORD62365215', 4, 16, '2021-05-20 07:59:15'),
(44, 'ORD62365215', 6, 16, '2021-05-20 07:59:39'),
(45, 'ORD62365215', 7, 16, '2021-05-20 07:59:56'),
(46, 'ORD62933240', 5, 16, '2021-05-22 07:40:39'),
(48, 'ORD94918353', 7, 13, '2021-05-22 07:43:01'),
(49, 'ORD62933240', 7, 16, '2021-05-22 12:14:45'),
(50, 'ORD64812029', 2, 14, '2021-05-28 13:17:39'),
(51, 'ORD64812029', 3, 14, '2021-05-28 13:21:30'),
(52, 'ORD64812029', 4, 14, '2021-05-28 13:21:33'),
(53, 'ORD49788851', 2, 16, '2021-05-28 13:25:11'),
(55, 'ORD49788851', 3, 16, '2021-05-28 13:31:37'),
(56, 'ORD46425248', 2, 13, '2021-05-29 06:35:43'),
(62, 'ORD28048230', 5, 13, '2021-06-10 14:44:42'),
(63, 'ORD28048230', 6, 13, '2021-06-10 14:45:02'),
(84, 'ORD49942765', 8, 13, '2021-06-18 11:39:12'),
(90, 'ORD13680444', 8, 16, '2021-06-18 13:26:17'),
(91, 'ORD13680444', 2, 16, '2021-06-19 10:18:37'),
(92, 'ORD51952650', 2, 16, '2021-06-19 10:19:50'),
(93, 'ORD51952650', 3, 16, '2021-06-19 10:20:07'),
(94, 'ORD51952650', 4, 16, '2021-06-19 10:20:11'),
(95, 'ORD13680444', 3, 16, '2021-06-19 10:20:14'),
(96, 'ORD51952650', 8, 16, '2021-06-19 10:21:12'),
(97, 'ORD22384757', 2, 14, '2021-06-19 10:21:38'),
(98, 'ORD78420504', 2, 14, '2021-06-19 10:21:55'),
(99, 'ORD78420504', 3, 14, '2021-06-19 10:22:00'),
(100, 'ORD22384757', 3, 14, '2021-06-19 10:22:48'),
(101, 'ORD22384757', 4, 14, '2021-06-19 10:22:51'),
(102, 'ORD78420504', 4, 14, '2021-06-19 10:23:02'),
(103, 'ORD49942765', 2, 13, '2021-06-19 10:23:24'),
(104, 'ORD41474742', 2, 14, '2021-06-19 10:26:04'),
(105, 'ORD41474742', 3, 14, '2021-06-19 10:26:25'),
(106, 'ORD13680444', 4, 16, '2021-06-19 10:27:37'),
(107, 'ORD41474742', 4, 14, '2021-06-19 10:27:48'),
(108, 'ORD78420504', 5, 14, '2021-06-19 10:28:57'),
(109, 'ORD41474742', 5, 14, '2021-06-19 10:31:26'),
(110, 'ORD41474742', 6, 14, '2021-06-19 10:32:01'),
(111, 'ORD41474742', 7, 14, '2021-06-19 10:32:24'),
(112, 'ORD49942765', 3, 13, '2021-06-19 10:32:54'),
(113, 'ORD49942765', 5, 13, '2021-06-19 10:33:04'),
(114, 'ORD49942765', 6, 13, '2021-06-19 10:33:32'),
(115, 'ORD49942765', 7, 13, '2021-06-19 10:33:55'),
(116, 'ORD78420504', 6, 14, '2021-06-19 10:34:06'),
(118, 'ORD36168909', 3, 13, '2021-06-21 10:32:44'),
(119, 'ORD36168909', 4, 13, '2021-06-21 10:36:30'),
(123, 'ORD36168909', 2, 13, '2021-06-21 10:53:54'),
(128, 'ORD28048230', 7, 13, '2021-06-22 11:39:39'),
(129, 'ORD36168909', 7, 13, '2021-06-23 04:03:55'),
(132, 'ORD28048230', 8, 13, '2021-06-23 07:14:33'),
(136, 'ORD49942765', 4, 13, '2021-06-23 12:25:49'),
(137, 'ORD28048230', 2, 13, '2021-06-23 13:33:43'),
(138, 'ORD28048230', 3, 13, '2021-06-23 13:34:01'),
(139, 'ORD28048230', 4, 13, '2021-06-23 13:36:16'),
(140, 'ORD20917430', 2, 13, '2021-06-23 13:43:56'),
(142, 'ORD20917430', 4, 13, '2021-06-23 13:46:13'),
(143, 'ORD20917430', 8, 13, '2021-06-23 13:46:30'),
(144, 'ORD61074446', 2, 13, '2021-06-23 14:01:44'),
(145, 'ORD61074446', 3, 13, '2021-06-23 14:02:14'),
(146, 'ORD61074446', 4, 13, '2021-06-23 14:04:28'),
(147, 'ORD61074446', 8, 13, '2021-06-23 14:04:34'),
(148, 'ORD20917430', 7, 13, '2021-06-23 14:30:09'),
(149, 'ORD29207158', 2, 16, '2021-06-25 05:59:48'),
(150, 'ORD29207158', 3, 16, '2021-06-25 06:13:34'),
(151, 'ORD29207158', 4, 16, '2021-06-25 06:13:47'),
(152, 'ORD29207158', 7, 16, '2021-06-25 06:14:02'),
(153, 'ORD27567819', 3, 16, '2021-06-25 06:15:55'),
(154, 'ORD27567819', 4, 16, '2021-06-25 06:16:36'),
(155, 'ORD27567819', 8, 16, '2021-06-25 06:20:54'),
(156, 'ORD77917615', 3, 16, '2021-06-26 05:11:06'),
(157, 'ORD84499264', 3, 16, '2021-06-30 16:22:43'),
(159, 'ORD82138327', 3, 16, '2021-06-30 16:24:09'),
(160, 'ORD84499264', 4, 16, '2021-06-30 16:27:04'),
(162, 'ORD84499264', 8, 16, '2021-06-30 16:29:14'),
(163, 'ORD27991677', 2, 13, '2021-07-03 09:10:27'),
(168, 'ORD27991677', 8, 13, '2021-07-03 12:46:22'),
(169, 'ORD27991677', 3, 13, '2021-07-03 13:04:42'),
(171, 'ORD82138327', 4, 16, '2021-07-03 16:47:22'),
(172, 'ORD82138327', 8, 16, '2021-07-03 18:50:39'),
(173, 'ORD40194001', 2, 16, '2021-07-05 05:20:49'),
(175, 'ORD40194001', 3, 16, '2021-07-05 07:21:40'),
(176, 'ORD40194001', 4, 16, '2021-07-05 07:22:22'),
(177, 'ORD40194001', 8, 16, '2021-07-05 07:22:37'),
(178, 'ORD77917615', 4, 16, '2021-07-05 08:04:36'),
(179, 'ORD82952690', 3, 16, '2021-07-06 05:15:13'),
(182, 'ORD82952690', 8, 16, '2021-07-06 05:49:01'),
(183, 'ORD82952690', 4, 16, '2021-07-06 05:51:46'),
(184, 'ORD82952690', 6, 16, '2021-07-06 05:59:23'),
(186, 'ORD82952690', 7, 16, '2021-07-06 06:03:32'),
(187, 'ORD58077285', 3, 16, '2021-07-17 11:40:04'),
(188, 'ORD18324539', 3, 16, '2021-08-10 06:55:24'),
(189, 'ORD67953123', 3, 16, '2021-08-10 06:56:17'),
(190, 'ORD20917430', 3, 13, '2021-08-26 18:23:05'),
(192, 'ORD36774436', 3, 16, '2021-09-04 04:37:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additional_items`
--
ALTER TABLE `additional_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_images`
--
ALTER TABLE `banner_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bar_codes`
--
ALTER TABLE `bar_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_products`
--
ALTER TABLE `cart_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refer_code` (`refer_code`);

--
-- Indexes for table `customer_passbooks`
--
ALTER TABLE `customer_passbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_boys`
--
ALTER TABLE `delivery_boys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_boy_types`
--
ALTER TABLE `delivery_boy_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_notifications`
--
ALTER TABLE `driver_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earning_status`
--
ALTER TABLE `earning_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fare_managements`
--
ALTER TABLE `fare_managements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fcm_notification_messages`
--
ALTER TABLE `fcm_notification_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_duration`
--
ALTER TABLE `membership_duration`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `order_histories`
--
ALTER TABLE `order_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_histories`
--
ALTER TABLE `payment_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_responses`
--
ALTER TABLE `payment_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_status`
--
ALTER TABLE `payment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_types`
--
ALTER TABLE `promo_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_areas`
--
ALTER TABLE `service_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_carts`
--
ALTER TABLE `user_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additional_items`
--
ALTER TABLE `additional_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2263;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner_images`
--
ALTER TABLE `banner_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bar_codes`
--
ALTER TABLE `bar_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart_products`
--
ALTER TABLE `cart_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `customer_passbooks`
--
ALTER TABLE `customer_passbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `delivery_boys`
--
ALTER TABLE `delivery_boys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `delivery_boy_types`
--
ALTER TABLE `delivery_boy_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `driver_notifications`
--
ALTER TABLE `driver_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `earning_status`
--
ALTER TABLE `earning_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fare_managements`
--
ALTER TABLE `fare_managements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fcm_notification_messages`
--
ALTER TABLE `fcm_notification_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `membership_duration`
--
ALTER TABLE `membership_duration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `order_histories`
--
ALTER TABLE `order_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `payment_histories`
--
ALTER TABLE `payment_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_responses`
--
ALTER TABLE `payment_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_status`
--
ALTER TABLE `payment_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `promo_types`
--
ALTER TABLE `promo_types`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_areas`
--
ALTER TABLE `service_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `time_slots`
--
ALTER TABLE `time_slots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_carts`
--
ALTER TABLE `user_carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
