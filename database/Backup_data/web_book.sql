-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2023 at 04:28 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_book`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `image_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `name`, `slug`, `status`, `image_url`) VALUES
(1, '2023-09-12 09:52:41', '2023-10-19 03:09:19', '21Da01Qyn3', 'Ra93xvuoQtsI', 1, 'aaa'),
(2, '2023-09-12 09:52:41', NULL, 'TNh1BMwssR', 'ydz4eRiHPAXa', 1, 'aaa'),
(3, '2023-09-12 09:52:41', NULL, 'AucBqRcIst', 'UHVKkS0xRtVM', 1, 'aaa'),
(4, '2023-09-12 09:52:41', NULL, '0005dt8k9f', 'P0CmsqYEl0WL', 1, 'aaa'),
(5, '2023-09-12 09:52:41', NULL, '4dwhC2Z2iT', 'uWmKzIVqeWYX', 1, 'aaa'),
(6, '2023-09-12 09:52:42', NULL, 'rd1dctEEgo', 'mFiJEcIUnqjR', 1, 'aaa'),
(7, '2023-09-12 09:52:42', NULL, 'H94ye7S0j4', 'sZUrbL9uXWC1', 1, 'aaa'),
(8, '2023-09-12 09:52:42', NULL, 'iEPu3PknYX', 'WvWpPUpDdqW6', 1, 'aaa'),
(9, '2023-09-12 09:52:42', NULL, 'ntm2KdVZ0A', 'iR0CdGSGmCH9', 1, 'aaa'),
(10, '2023-09-12 09:52:42', NULL, '5XFaP1oh6R', '89BWFN5mpb2Q', 1, 'aaa'),
(11, '2023-09-12 09:52:42', NULL, 'pzaMi6GxMT', 'kUARnwxkqoYw', 0, 'aaa'),
(12, '2023-09-12 09:52:42', NULL, 'iX6jk0BLjF', 'EVuZNYnun67J', 0, 'aaa'),
(13, '2023-09-12 09:52:42', NULL, 'uohVcNFSw3', 'qCBkGFVr8fPU', 1, 'aaa'),
(14, '2023-09-12 09:52:42', NULL, 'M83HoH4rby', 'lsWSh08cGumY', 0, 'aaa'),
(15, '2023-09-12 09:52:42', NULL, 'TtRMwcIF2J', 'YYf5Pha9xMro', 1, 'aaa'),
(16, '2023-09-12 09:52:42', NULL, 'cOZqf8aCg8', 'rUx3mlMnmTwt', 0, 'aaa'),
(17, '2023-09-12 09:52:42', NULL, 'hLQON0FGO1', 'uIgmpWYLSrYh', 0, 'aaa'),
(18, '2023-09-12 09:52:42', NULL, 'cSkHy4sDr1', 'lnkkKih32tDH', 1, 'aaa'),
(19, '2023-09-12 09:52:42', NULL, 'oSyeVUzXH7', 'S0Neq9fWoPNz', 0, 'aaa'),
(20, '2023-09-12 09:52:42', NULL, '2OzXVRYRE8', 'GuKq05D3o6oS', 1, 'aaa'),
(21, '2023-09-12 09:52:42', NULL, '5U3k5qDf6A', '3iBdb8Bw1PwY', 0, 'aaa'),
(22, '2023-09-12 09:52:42', NULL, 'uGfQjPh35s', '0frJrYQkcLM2', 0, 'aaa'),
(23, '2023-09-12 09:52:43', NULL, 'JbOZb2BFUr', 'zrjiB7xo110I', 0, 'aaa'),
(24, '2023-09-12 09:52:43', NULL, 'JdSemkHME7', 'uzDmTwdtm1fZ', 0, 'aaa'),
(25, '2023-09-12 09:52:43', NULL, 'FL2fEYpsk0', 'OzSZhxy72Rtu', 1, 'aaa'),
(26, '2023-09-12 09:52:43', NULL, '8Br6mJjBJb', 'vpizyq9W85Ip', 0, 'aaa'),
(27, '2023-09-12 09:52:43', NULL, 'TuGHd1kNln', 'nRPf06oGxIqy', 1, 'aaa'),
(28, '2023-09-12 09:52:43', NULL, 'R7hkRwfISE', 'U5VgrTr0BNev', 0, 'aaa'),
(29, '2023-09-12 09:52:43', NULL, 'l259K5Evbg', 'ETbvm8MnZh8L', 1, 'aaa'),
(30, '2023-09-12 09:52:43', NULL, 'fqTMKCy3cz', 'TNRMoWQcNliT', 0, 'aaa'),
(31, '2023-09-12 09:52:43', NULL, 'MEuUXPX8Fm', '8YkbpLPryjG1', 0, 'aaa'),
(32, '2023-09-12 09:52:43', NULL, 'nqv0XlrdPo', 'TGBsnqzcRSLa', 1, 'aaa'),
(33, '2023-09-12 09:52:43', NULL, 'EKdAqHqx6D', '29HY5sJJpkQA', 1, 'aaa'),
(34, '2023-09-12 09:52:43', NULL, 'm3lOkNci3R', '21T38uhtmePK', 1, 'aaa'),
(35, '2023-09-12 09:52:43', NULL, 'znQiLeneKR', 'iqva5zdarRIK', 1, 'aaa'),
(36, '2023-09-12 09:52:43', NULL, 'dA24MKkT8N', 'IXwFa0I0Htjr', 1, 'aaa'),
(37, '2023-09-12 09:52:43', NULL, '887rKDsod1', 'cjzbXQVbjVcv', 0, 'aaa'),
(38, '2023-09-12 09:52:43', NULL, 'IGtGbMzcYQ', 'YELKGvBcILGa', 0, 'aaa'),
(39, '2023-09-12 09:52:43', NULL, 'ulOWVdgeHa', 'wyYAkXYl1DxQ', 1, 'aaa'),
(40, '2023-09-12 09:52:43', NULL, '5xxY6aPEQq', 'Tp6JrEhj57eO', 0, 'aaa'),
(41, '2023-09-12 09:52:44', NULL, 'gcCs74Y7SJ', 'Qu8Qp1fS4OZA', 0, 'aaa'),
(42, '2023-09-12 09:52:44', NULL, 'fLgSP9looq', 't6XGbzBT8kzX', 0, 'aaa'),
(43, '2023-09-12 09:52:44', NULL, 'aidaNTe8Ea', 'reeCc0N4Dhtw', 1, 'aaa'),
(44, '2023-09-12 09:52:44', NULL, 'ZsCa0IgWvz', 'PK4WqtXiUENT', 0, 'aaa'),
(45, '2023-09-12 09:52:44', NULL, 'pveVLJg8Lu', 'i5vGQ40SEmDA', 0, 'aaa'),
(46, '2023-09-12 09:52:44', NULL, 'pQU7ObXVvK', 'bb11CEcKHMOL', 1, 'aaa'),
(47, '2023-09-12 09:52:44', NULL, 'CEgBmyi0S2', '4BJutpGPpT1u', 1, 'aaa'),
(48, '2023-09-12 09:52:44', NULL, 'T0GAxRlOb2', 'wfMIzsp3QYmb', 1, 'aaa'),
(49, '2023-09-12 09:52:44', NULL, 'MQaPCsaYQw', 'CRF1ttT6iTgW', 0, 'aaa'),
(50, '2023-09-12 09:52:44', NULL, 'pFQAIeKooS', 'ipDMq2vD1WvO', 0, 'aaa'),
(51, '2023-09-12 09:52:44', NULL, 'fV7juY58To', 'nES1ODhHGdCL', 0, 'aaa'),
(52, '2023-09-12 09:52:44', NULL, 'Ow0J7UQEpl', 'QCrLeHu3J8Pi', 1, 'aaa'),
(53, '2023-09-12 09:52:44', NULL, 'LCwKS3PvEE', 'erKjYh4jQJr2', 1, 'aaa'),
(54, '2023-09-12 09:52:44', NULL, '1kTw9I1EYL', 'uIkChoFiM3pz', 0, 'aaa'),
(55, '2023-09-12 09:52:44', NULL, 'HjTWuPnKZf', 'FhYTCQqpmClf', 1, 'aaa'),
(56, '2023-09-12 09:52:44', NULL, 'ssKuWX0EWW', 'QLmEZNfpT5LI', 1, 'aaa'),
(57, '2023-09-12 09:52:44', NULL, 'yRvo0OgGhe', 'JZKouwQ0NFtd', 1, 'aaa'),
(58, '2023-09-12 09:52:45', NULL, '9msbsXJbQl', 'iUQX5oBnHAoj', 0, 'aaa'),
(59, '2023-09-12 09:52:45', NULL, 'GVvYk4T8Qv', 'AHxsyqj2TcqH', 1, 'aaa'),
(60, '2023-09-12 09:52:45', NULL, 'zgmGsnmYKC', 'f55WRPqMn6ey', 0, 'aaa'),
(61, '2023-09-12 09:52:45', NULL, 'YS98XPXIAx', 'B3Zspe9aZjYA', 1, 'aaa'),
(62, '2023-09-12 09:52:45', NULL, 'aLJ2pWxGIc', 'DWbi3a4Ny0NU', 1, 'aaa'),
(63, '2023-09-12 09:52:45', NULL, '6MkBwaSoXW', 'Hr5WHhfOOT3x', 1, 'aaa'),
(64, '2023-09-12 09:52:45', NULL, 'EPVgAY751w', 'dQFctzMIdVUf', 1, 'aaa'),
(65, '2023-09-12 09:52:45', NULL, 'C5vCXfkFyx', 'GfjOiYQILIsy', 1, 'aaa'),
(66, '2023-09-12 09:52:45', NULL, 'iK7qtkYIcy', 'Dwdt2oFcKeLF', 0, 'aaa'),
(67, '2023-09-12 09:52:45', NULL, 'mxCulrmYcm', 'n6UO2TPW7ZMU', 1, 'aaa'),
(68, '2023-09-12 09:52:45', NULL, 'YnCvJJ4SWU', '2s6wRebSmiUh', 0, 'aaa'),
(69, '2023-09-12 09:52:45', NULL, 'RVSqBt02qV', 'ARX4b1ndFzNe', 1, 'aaa'),
(70, '2023-09-12 09:52:45', NULL, 'RZVBf96SSn', 'XY7Cal8Jvmwn', 0, 'aaa'),
(71, '2023-09-12 09:52:45', NULL, 'DvUslZvMdg', 'FJ0ypJhn5OZI', 0, 'aaa'),
(72, '2023-09-12 09:52:45', NULL, 'hF6KZH98Ew', '9aInGtG11h8z', 0, 'aaa'),
(73, '2023-09-12 09:52:45', NULL, 'UdJ3JeHFrm', 'NJkgeDVCxxKa', 0, 'aaa'),
(74, '2023-09-12 09:52:45', NULL, '7XvMSGRpyO', 'sb8fi4y9RfWM', 0, 'aaa'),
(75, '2023-09-12 09:52:45', NULL, 'Dzx8mzXecR', 'PQeZ9ygiqCvp', 0, 'aaa'),
(76, '2023-09-12 09:52:46', NULL, 'PPuw9RxAwB', 'OCTuuZQz2wqA', 1, 'aaa'),
(77, '2023-09-12 09:52:46', NULL, 'UQMukMlkNO', '1d1WfPJDzUM1', 1, 'aaa'),
(78, '2023-09-12 09:52:46', NULL, 'O4Xwan9uSb', 'FCl00F9u17E0', 0, 'aaa'),
(79, '2023-09-12 09:52:46', NULL, 'xwlEFwNiGP', 'mpuMNQkgweF2', 1, 'aaa'),
(80, '2023-09-12 09:52:46', NULL, 'OLXE3qgaF3', 'DlB2gpYlKpy3', 1, 'aaa'),
(81, '2023-09-12 09:52:46', NULL, 'AMtLkueAm4', 'Vf8QAnjdeDCP', 0, 'aaa'),
(82, '2023-09-12 09:52:46', NULL, 'OgLKv0otji', 'COK9kZ9TwoF7', 1, 'aaa'),
(83, '2023-09-12 09:52:46', NULL, 'P8vJZAY3Mk', 'OvhBhMo8yLDd', 1, 'aaa'),
(84, '2023-09-12 09:52:46', NULL, '6M8ud5rjmV', 'J3eobJNuu0Ok', 0, 'aaa'),
(85, '2023-09-12 09:52:46', NULL, 'WwCE9oz5iV', 'vNFdmL8lQyTP', 0, 'aaa'),
(86, '2023-09-12 09:52:46', NULL, 'nRIk4U3cFz', 'NZc4mwQnB97v', 1, 'aaa'),
(87, '2023-09-12 09:52:46', NULL, 'dF19r8wAB6', 'QDD09E3qEl3T', 1, 'aaa'),
(88, '2023-09-12 09:52:46', NULL, 'eVu2vttpvV', 'd65pqlmXcXBI', 0, 'aaa'),
(89, '2023-09-12 09:52:46', NULL, 'siW9stKAEk', 'sMyCa84eA1e2', 0, 'aaa'),
(90, '2023-09-12 09:52:46', NULL, '50wQWcUcxD', 'WwvoZWIW8neU', 0, 'aaa'),
(91, '2023-09-12 09:52:46', NULL, 'Fwrm8a18rd', 'BiowZDoDk4Ud', 0, 'aaa'),
(92, '2023-09-12 09:52:46', NULL, 'gnVV18GnAl', 'ZYYVdQrdsjHC', 1, 'aaa'),
(93, '2023-09-12 09:52:46', NULL, '014nYqCHqq', '7wDvfMCNYjsk', 0, 'aaa'),
(94, '2023-09-12 09:52:47', NULL, 'K5v9bayOyd', 'IuXlDxvu9TQd', 1, 'aaa'),
(95, '2023-09-12 09:52:47', NULL, 'SNgp2mYCXH', 'z1pajWGNY0nv', 0, 'aaa'),
(96, '2023-09-12 09:52:47', NULL, 'QMZvHyudhs', 'pedjAUM1LjVZ', 1, 'aaa'),
(97, '2023-09-12 09:52:47', NULL, 'NXUHwwAQx1', 'd5GxoSh48X0n', 1, 'aaa'),
(98, '2023-09-12 09:52:47', NULL, 'lU21g8Ii1D', '1cUT5FKAw9zG', 0, 'aaa'),
(99, '2023-09-12 09:52:47', NULL, 'ofGdHD7IOY', 'S7RFFAoqcbmi', 0, 'aaa'),
(100, '2023-09-12 09:52:47', NULL, '3Qh7EG0DKs', 'tuo4YmcYu7sY', 1, 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `the_comment` text NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `liked_products`
--

CREATE TABLE `liked_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `liked_products`
--

INSERT INTO `liked_products` (`id`, `created_at`, `updated_at`, `user_id`, `product_id`) VALUES
(1, NULL, NULL, 20, 2),
(2, NULL, NULL, 20, 3),
(3, NULL, NULL, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2023_06_26_113121_create_users_info_table', 1),
(4, '2023_06_26_113610_create_origins_table', 1),
(5, '2023_06_26_113611_create_publishers_table', 1),
(6, '2023_06_26_113612_create_products_table', 1),
(7, '2023_06_26_114149_create_categories_table', 1),
(8, '2023_06_26_114852_create_orders_table', 1),
(9, '2023_07_04_140333_create_products_in_categories_table', 1),
(10, '2023_07_05_113435_create_product_images_table', 1),
(11, '2023_07_05_114158_create_liked_products_table', 1),
(12, '2023_07_05_114221_create_products_in_carts_table', 1),
(13, '2023_07_05_114255_create_products_in_orders_table', 1),
(14, '2023_07_25_140110_create_rent_prices_table', 1),
(15, '2023_07_31_115422_create_reviews_table', 1),
(16, '2023_08_02_071315_create_failed_jobs_table', 1),
(17, '2023_10_12_200302_create_comments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total` double(8,2) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `total`, `user_id`) VALUES
(1, '2023-10-12 12:55:03', NULL, 200.00, 1),
(2, '2023-10-28 02:30:32', NULL, 200.00, 101);

-- --------------------------------------------------------

--
-- Table structure for table `origins`
--

CREATE TABLE `origins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `origins`
--

INSERT INTO `origins` (`id`, `created_at`, `updated_at`, `name`, `status`, `slug`) VALUES
(1, '2023-09-12 09:53:28', NULL, 'khakha', 1, 'khakha');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `price` double(8,2) NOT NULL,
  `publisher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `origin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `publish_year` int(11) DEFAULT NULL,
  `book_layout` tinyint(4) DEFAULT NULL COMMENT '0:paperback; 1:hardcover',
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `thickness` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `number_of_pages` int(11) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `name`, `slug`, `description`, `short_description`, `status`, `price`, `publisher_id`, `origin_id`, `publish_year`, `book_layout`, `height`, `width`, `thickness`, `weight`, `number_of_pages`, `author`, `quantity`) VALUES
(1, '2023-09-12 09:53:49', NULL, 'J25P6VtdJE', 'HoZfpZo6Uo', '6SOcdt27bNL3UEj3voAkaiC1ZvVXzlzQb7bV3fOJTQCyD0hdDMmBFmghIhj7nEMlMqpb6Y6fQbtZsI9QXsp7x1FkIaHy7jwUx0MG9XJDZlyXJfeiNuvsZuYyFzuYFCXCgTLFAW0vnofJnoSajiY020xBJSoqlWB7rJa4A0anDfLKGcdcvf5dvIl0xzqP1S7n1epZJhYG', 'TDTtOtOECBggjpu78ND5rW2vtlK9VKcr0ULIgyu4kWJ2FqTSTv', 1, 11206.00, 1, 1, 2023, 0, 94, 93, 92, 100, 100, 'BBRkFFgg9W', 1),
(2, '2023-09-12 09:53:49', NULL, 'mVAjVzabjg', 'jGr5tsrRt3', 'DAWQBmcZtsqxFMs9xG03lffVYYDPOna4bA7v65a8PQXbGCoooc1IrWiV9tz2reZfUOLPXY56MS1EkpcNkq8278QTul7PlBptYdQtyywJ5LrNkVZOsH7ZgwAB5vBGJKNJeRRD6RJbIUxHAnt9FPhoS4vVrVlp2wsQiqIxnuG0kEAI0WjQKxzZhhQ7Rc6WSqSVk9yN6jpj', 'itnushDvIkk0jCPtgW1PW7aW8WLZl9HptmpW7mNcNhsgejJbu3', 1, 19544.00, 1, 1, 2021, 1, 98, 90, 93, 100, 91, 'P0xBlklI7J', 1),
(3, '2023-09-12 09:53:49', NULL, '0XMr11t0Jt', 'Qx8EKgYyeu', 'NFCkZy9nFQUsX3ot4iM8TO214FGV8lEorDQAWKEtrEiVoglEdhjUTg1j0ls2LTEYtwUct57s2FA0PqMdOPS4WNUrI6mCegPyagVpI5IOO0owXr9foFj5hgJ2z2YDasDv8bUNxXwFEIf179A0t4SIAu2RZ4hYiXjQ2BkgvDpjExReYwYwb6xn3WnIREqD3GqlBPG824Zk', 'AzdiyBIXkUctPpi2OXBJI54917EdIcBQZbn2TLCkVcsSJ7HoxI', 1, 17031.00, 1, 1, 2022, 0, 94, 91, 95, 100, 90, 'EO96W6qXvL', 1),
(4, '2023-09-12 09:53:49', NULL, '7lN1UA9F7v', 'jM3JA5d0VD', 'DkMmoMTJAuCJ6OViiywzkjIgvvscTKqOltewIAMsQgFtSbllMoJ0T5GvggWHSaGpYNTH4j7Po0jdt3xxAbQxe8Ug71SLUxaMLwVNQzOst8ezLElbIu34TtDHOadNChuKKrBXPLnooy0cSoFOwRqMsFGL1Ueu8Hjl0EwJctQe49dfpNTDpwN6lcGDGJtqvOHSR12K0BI7', 'YcqW8p7w4h8UTGZ9LA7RUIQLvu5BvAYra0gsD3Y2TMqsBChs9A', 1, 14890.00, 1, 1, 2023, 0, 100, 100, 96, 92, 90, 'Gsa1pQh2gS', 1),
(5, '2023-09-12 09:53:49', NULL, 'X2LZDUVRO2', 'E5m7qLz5JR', 'CwfxkJYksMWhGiWBIX10TKWezLk0ldMxNW3r0xWJUbhTNstqtVBNqsFsvNb6CSo6VtoF9xlqUpIb2JNVoRQHwTixC5pkvlTbwge43lJ7jHccAXM1LHKi3D8yBzGvW28bPzgcEGaWI0PsY38sSt4xolOc34TO2DD5lQ6nW3MAt4MpHmsNKuny2eMhwnluMtMia9g9QWFW', 'G1qW02FvjkMdzYejqIGqltxNmoQhlwQ6SzdG5Vj34LdoMWVMum', 1, 18565.00, 1, 1, 2023, 0, 93, 91, 97, 95, 97, 'h7KkhkLe5g', 1),
(6, '2023-09-12 09:53:49', NULL, 'B2FNcONH3E', 'AV9WBJviqB', 'TrhKYtiWHePbUHRhi6g1A1gkUt8H6EzOrZVgWkJj4gJSkuTvNBu60BkKzrEk1D2jDiKhvRChuepDCsKfhtklQc20OJ8Lut6JHI6Lr1vKZd4QspYJpL7LDy4l2BsRZflh0C5DPNHArl6rwF1z7tPXmb6LiQUyDfRjYID4RV4HujGBZuWvY1rC8EixkBjyvpjX1ydHIlii', 'O9yS2u33nrryloi6u5tuegC7Rjw64vHEchmMAM4cHnu6dlIQ62', 1, 12056.00, 1, 1, 2020, 0, 100, 95, 93, 90, 92, 'm2MQMhe5K2', 1),
(7, '2023-09-12 09:53:49', NULL, 'udd6i1rzfs', 'NsIQ5dwXvf', 'n18fcsUQ5rqxJ5dRZNqJxmpbCPcd8h0aoG7Mp8Lc6yzJKKhQqLBSI8QtTMjeo9v7RB0xNisjjD5VQpNlYrru01iDtByefHDmtauedtFXDZZDRJSjHFsZy9BTe1szggk0U2jvuHtpv4vLtF5Yxis6mfZL9uflAdfnBDa5HCuOREEaKb7nM6NWJiADEZv0Jg6ak0yxjMYa', 'Y2vugsk7bzJPHxqItzua628bcvzeTCB2Isisdhl2p5zjORdrwp', 1, 10266.00, 1, 1, 2022, 1, 100, 93, 94, 98, 98, 'njCjXQMizc', 1),
(8, '2023-09-12 09:53:49', NULL, 'f5qejuQQxp', 'oouSpHKgry', '2UKvNzrMq0I6Em4sLd2NB5SynI1qOHe9G6zMnBbE2fdDZu8GWfizySnwh0I874MdwGLARXPgTV6wyIW9PQSwUacMPov5JMa6pvQiT08KYr6j0DQz0MBbIR5Bplrjzur4PXpttiVgaBMmnOHjLtSKn84bcEOBC32616aCmxZJVpJXIecfAHblg1IqOB2tNkm8vBrBrlae', 'TzNEcz45WY4AyCJGriqJVI8VVlpMdO0IdUalQAiVToXnxi4yO5', 1, 10279.00, 1, 1, 2022, 0, 92, 96, 99, 93, 99, 'DrupecnxRJ', 1),
(9, '2023-09-12 09:53:49', NULL, 'ejyjhO6bEu', 'VPLriSjBcl', 'eSE1oDKlYbTLLMpSd3jW7jTIvcODuMWcKeqMaaPHoJm2ci4asd4sYHAWhHuXwN8vcrzaqQjJ0hLmEFWCRD32vIxqafnSH8HowwpNwZUcpwLDB32Py2fqye42tewonG2acBglasJjUoZckmkVFg6U0UAHRq6jjcQXByfy1u9gc6f61iURjMHGCOscpMEdUxkl8Akgjis0', '4em82c09HR538JT4Za4idYMHWDRfA69OLGC0I9WrhLpF7HF1iU', 1, 12098.00, 1, 1, 2021, 1, 92, 92, 91, 92, 94, 'qabuU0uYEU', 1),
(10, '2023-09-12 09:53:49', NULL, 'PooEEUHXH9', 'AXkcTeijNP', 'CyEH44nYD75qHBrWD8wvyvUChtdhLeUCWEJJN0MB9EZPb1cPXlsd32qFozEjtzcU48dO8oYbqG1VF8gdeg9duOw4sJi2oRD8a2TH0KYaOa0PCQajEW8qM6mX7OD7p9cNoLvIXT9R2AYoDp36efW65F2fmEynQukjMRlrzsa16XTBs0TVez9aoQ6yrveijOYk3Epx0F1K', 'jRofziq87H7GW9dy5Qv8Mk92UosRjOUHe6GPgcRDlzc3zJUyx0', 1, 12118.00, 1, 1, 2022, 1, 98, 91, 100, 91, 97, 'FjWiD7uKe4', 1),
(11, '2023-09-12 09:53:49', NULL, 'VXUEAmOSbx', 'osunjbyiiZ', 'j9GfDrfRQSWIEK3lYFS7sH5TC6KXkuwQcGfCeoT1EJYdj7KMXGptnxOQqLB7sK6neth3JPjrwiUrhWKclarBpEUaAUqfGPTJJjJ90J8nPJbml9nwTacrfRFw8qAAgXrEGIfoB1lS8lodnk8YSvR4Kv3Z6FL5ySZdEpJbOugkAiuZETfDeue4LBVjr976TKQaVqmCnNH6', 'QZyr11lqPD9KcfnhBo3ebE40S4VQWFOcsvWn184TGkwQs55huM', 1, 16146.00, 1, 1, 2023, 1, 93, 99, 96, 95, 96, 'gFMGYXpIHy', 1),
(12, '2023-09-12 09:53:49', NULL, 'P4ry8hEX5U', 'yPRKt1BDjV', '4k9fMd2OqiIGtFL0kbQEBe8AN9hldAs4vHN3MdNOHqbppbWspzW5SCSd5wmBByMsEF7FfR0O4PbYIpJKYHFAmf7VediPialpy1S8UqsomWbBGmcQJDQPF7LPMapTG3AgfE7av2xwQbB8FxIZ97IaUrFfsjSt8ehiy9VDhT7iecOAH14wHTWZvqXznd8vqpkgGcjF7PDh', '59j1Yq68E4rlPitPTOcoDaxMXtb5SX8nqLPRRBlPW6kePK16xj', 1, 13995.00, 1, 1, 2023, 1, 94, 92, 92, 90, 95, 'r5RNw9eNLb', 1),
(13, '2023-09-12 09:53:49', NULL, 'kYLh2TKYAm', 'Zou6LPvaPE', 'mzKQKGlQrFZjKziu8ClSc7fwDsZnnSfncYTnqWpGKkwdCWjtDS4wc1mKaKUUF4yb6BcxqK2lH3HAYBo8H2k7cpIOsWQoVCzU0c8EF8qc4bPNNaq8L5wk6fQHKsqx6lEU46daT3xi4OPKO3Fy0sYCOcRJEeDUITuLAd0ewByO52qcU5ylqBHgOVksJOWDQZv8zF6Ti7Wj', 'rVbYNjUhZBR2fxtcVsLBuPne3ZlQWaQlqXI14rElq5K1FSunRA', 1, 13634.00, 1, 1, 2022, 0, 90, 93, 96, 97, 95, 'glbVFd61ZI', 1),
(14, '2023-09-12 09:53:49', NULL, 'vwRsTCqg3H', 'cUWlgZcRD2', 'kXg68CTl4bOZmCmBGhdpxuJSUup673kuDqDY9e57rHohqCw2JdFvVwGnZ36vfBu8uO7C0l7jOBHcjCAoGa0nfhftw052DPguCFijIqkkMvEsOWnEkPKL91ptvdoRlr23RXdFsehemQMaS96LcAo9sIRban6m8Z5XmNfx97X6ZUAiozhAHPmzSOwOLlwsvD8lVxOn26Yi', '5bFDnF4TnKTAgSxHBjZea6CstXnfFzQEO02WEm4fh54tn2WDqa', 1, 17886.00, 1, 1, 2023, 0, 95, 97, 96, 99, 97, 'jQtNBvOADN', 1),
(15, '2023-09-12 09:53:49', NULL, 'yTqyIQ9HiU', 'ghOlxgMqty', 'QldhWKVSYimWK4Lc2gXAIpxilYgbuT1HNCfWuv9siGraVfypfoO9UcisWUYLAKjY5MmPS8GYDHyiZ3IYPofMDykHCW7LGCJaxaH2C5rRnTf4V3YWTGCSA6wrff2iyRlX92OCck90xo7FaBDWW2y6Foeks7nRnfpn4tSrklIPXc0pY8SoHazimyCrpaNAVUfpGzbru3u3', 't8r8WsOjmGVWp12EzvOdownYTbz7cB9lp8ODLBdxYYhXhMsoWH', 1, 16350.00, 1, 1, 2021, 0, 91, 95, 97, 90, 97, 'SmFeirUQDR', 1),
(16, '2023-09-12 09:53:49', NULL, 'Ji9WRCmrZb', 'sJS7MsLuNI', '7iofQRcNjfscrGW38vpGXKrZwgozwVKupiibLvz1w6vxE7gm8kY0ygN0ZfWIk1w1HOaXL4cr2EKU6Xv38fIxsUpiOaF1zLGHFQ7YIImEp7XZ26rdr2Zvv4HuOyjUGHEDhFsZsGuAx53wL3mj5lutGbatbsKPJpfoUiXGfFMudCqOWBqQMydM2vCMc51a7oH4sxcSEUPZ', 'ro3KcOix6jZ3yNr5qUFAJ6qBzM605M8J8eHDteEEIECfdZ7buN', 1, 15778.00, 1, 1, 2023, 1, 93, 100, 96, 96, 94, 'MzPYywZ5Lj', 1),
(17, '2023-09-12 09:53:49', NULL, 'PcFJahXFAP', 'Nj1A2TbgYr', 'lj7c14JZRho8AdBZu2FfZXq6xqpzB2zQxSaGdyLLK5mrP1p9JWygacwalRAIWZIxOK1kHNptDAArbK9aoWr5YyuCUeUZFnAjAtBZivPGgoo36MzrlrIn4FzgoWeRF1ksq2GNnJn7v8YHgfUQ40YslCzTyT8RPhX4bT2PFA6RVkqNpveSEbX2yIQPvOaCtiT1X3bo0sTy', 'CwJbJ24tedchkTcitLTvZN2Fd2mVXfLP7FJUUWuINvgL3KRzTg', 1, 16276.00, 1, 1, 2022, 0, 94, 95, 97, 100, 99, 'n3b7iIxDYO', 1),
(18, '2023-09-12 09:53:49', NULL, 'y6ZbJpFbYx', 'nOLlExJ7JQ', 'gcDIBqMqGMuCZxcW8dXRARCDNsFxyNqgRZs53azEuMd25hip5SIfwpI4l75qq3v8dUlcfuA8rsHr3R4cC4z4MVhxfWJ0HwVrm0nlApb8IJms1Z76S6sJ6im4xoGf1JSMb1j1hF2AMI9ajLHOfUnNx8eRb9zPxEC1Yl5GUOnss5PXCzPE53H3dLipkLujl6MICkh8YJv2', 'o0fJ0VLWDALX5f4qJEHcCjVYsQEiGm6gFdraZvl8lKlRhBmnBq', 1, 12003.00, 1, 1, 2022, 1, 92, 100, 91, 100, 98, 'szyxCQ1Fr5', 1),
(19, '2023-09-12 09:53:49', NULL, 'wjzLs8erFH', '13yCSgZQP9', 'HYUOxGEyUYE3DuLapPPb1kOHxCZI4SyXgpcHceNbyntLiWHTdp67OVfrEDj49zk3Fu4pr0ABAHmn9V1PvhZKusgpEN0XrFUFifggqpC3SznQE3wqKFXq0yeWkLb1S3D3443ej0558by2KQKkwPFyPG0sKGrLhiUimktXxR4rKtBdeBdwfk5nGPvaQYiidmAgOiedCODj', 'aiIrRdrumY5PXbD8gyQEQkES9XIM5m2imySNUQzWfqfQs5ZnPJ', 1, 11760.00, 1, 1, 2021, 1, 90, 90, 94, 98, 98, 'Kds9VSVogi', 1),
(20, '2023-09-12 09:53:49', NULL, 'a8XFO88bDM', 'OpiD1JXM6Y', '2i89IISxZF1PKB5Ac8IFeLXDjOFbE4O5pwZVW4TJXqJpHpdwnktsC5xUkwoSaAG1P1zzeABAu2tfGwDL8vEeiytaMpdl4p51YtQSNrDpIqRFPr3DrAlxNbOTFJsqshLhUM3YpesLK2EthsZ74yYBnQep3a66KM7bsk8DDFgGIcHNL4tyGZRUw8fUAaVTCeVx6bpsWwjT', 'eS6QsosxIWOMy5Q6eL57ZUNu2GpZbOED8HqaaeY5Cp9vZSppF3', 1, 12617.00, 1, 1, 2020, 0, 97, 99, 90, 93, 92, 'seDT1zq2sy', 1),
(21, '2023-09-12 09:53:49', NULL, '8yygRVy0kj', 't9N5plBhYJ', 'WztJGFkpmFyq8FrsK6paXUz8SWjnD4zJLKLwYAuZme59GNWcMxXsTG9oyzYhJ3ODtFFdvApVaPrLjTT4etf1XwrdLdxqaR17pytIwVRf4iKgDjA3yALprpeX7Rf7ilQwCIHLHevdYrtpXD6p2ye2UjztH1aBU84mRKWaKrki6hluhoPqku3TNrZXEDICPw0CM6Ueg35Y', 'dOfDcnvM6qHgmqk3sYD8OU21Hjn3OfXhYYCzoKVrumAJlmNild', 1, 17576.00, 1, 1, 2020, 0, 100, 90, 90, 91, 90, 'O7rXZ2Ytlu', 1),
(22, '2023-09-12 09:53:49', NULL, '5RnnsjHdHv', 'Wbq7xzcB6R', 'SJ2ysuwyH6ygG5GyYxUoeSTnSf6LLTxriN0GAlqnzLsiKyI5n8vj9qdMy2Qk5sZNgax4FBeujrpo5BJ48CvPRkfcQHxkFFKs5zEx2ZcZzcFOVfMkcLSYoNDXMmUeEkKzN7qIOqYnIlpjfdLlJLWT6hJjI8ptAEmY83QhGzfBISP2Dzlxq5l9CVnZeks2SArc4PYOEzpq', 'vNgk8VnWirFa0nhl3H8s4iQsl1TrWewwV8FXvhLZrupe5mNToX', 1, 18219.00, 1, 1, 2020, 0, 98, 95, 91, 92, 99, 'mUa04Lgi6q', 1),
(23, '2023-09-12 09:53:49', NULL, 'zA478ZocPv', 'rXx5v9paBz', 'Lqn1XkU1mUOBDupGDvijvTcgfyYbYLLe68ueX1SUTC5LoRVeF2jx6yVDBE3X3h3cMe8ZsFXmN2nmC3ASK7vMmKjIhDhz23bE25IjQ8tqG7NMKvdrMfKY7Lv7eOMMrFbi3dmdQgOeAtmGUgXTN4gG1MgVGPSyWQb9PHTprvFuWQQdfJvaAAftLJoPAwfKAE8jFZz6K9Ck', '4X8UqYc8zBUtNQQWqncjUEfN83DdvDxxI3GtJWtkVnLOAyhLZR', 1, 19833.00, 1, 1, 2022, 0, 97, 95, 94, 90, 94, 'wgHSEPm1Mc', 1),
(24, '2023-09-12 09:53:49', NULL, 'WBfK3b45XK', 'A8sXYVzWR4', 'YabvLW8kEginPA9vGC68ro8OLwPzp4vbWSJ4Va80Kvx21fZfFjXI9xG7WLuQUswPGJLXEYPm9oCSV4gzo74YDhcBnODz6DP1T47qsHoAEdDIqrlccPX5hEsbSDavwy2oEFrgVzHggUZXNOqA89aeU4MzTVPxuClnyPQupHNhRqhzf35lSGzU6ePELlHbMzSbKgd2c5Fc', 'LnVW4TVpAExRMsa69fac6bGhlT6PZ8gu6bYd3BRIg8juPp29Z5', 1, 13741.00, 1, 1, 2022, 0, 100, 99, 93, 90, 95, 'iRAQ0wcMt0', 1),
(25, '2023-09-12 09:53:49', NULL, 'onO2ukXs3U', 'U4tY4pv2jn', 'l7wh80YudZFl0iJtaYkgBFMwAVbIRBNtghH0A55s98RWmozRKphfLvh9QfN377EYdxb2elMT7dAJyeYpPCyMFfcu8M7NQ1qJxalmVjvLi1h50izTaNdtZY8LoEBGWi3UbpvnPNe1izCN8rEqPSZcLyiQFtcFJsjOJm2rKx7PraSO87yziU0jDT9I5ba4rqJmZwg6XmjX', '2diL1JlKhk92mKgGm34UFHMaPkriSrd4lETI1LYtTRmpcCf8ld', 1, 19268.00, 1, 1, 2021, 0, 98, 96, 99, 90, 92, 'HP3OLnEjaT', 1),
(26, '2023-09-12 09:53:49', NULL, 'i4gsiLAHkQ', 'ZQ7rrkDaUJ', 'yVlEA0QIf7nYxCojYeITFjB3CMJeESRxgaVaVzaCRfjIMVzttfisDGyTgl4Q4WAdV7XDc52M7dAypa6vp3DzZgm3rp2IM7ZBh5Bl7nevyKxGLWmlAP5bH9Gb9PSE7sKYcYfZXt18eZbuzpEjt3mpa8E0QoqNSE6ZBgCeWnnHvU38ul6k8LZ7KcgDteQGBLE5VRCGrxnQ', '01wdqS51hqIfRp7Dt81LXRY2Ljuc2y4WIv4ip714CrJVGKVba6', 1, 10480.00, 1, 1, 2022, 1, 96, 95, 93, 96, 98, 'CzQEB3UtRD', 1),
(27, '2023-09-12 09:53:49', NULL, 'rsoRaJpjhk', 'DJ9buyLWEu', 'juDtjaQQ8AtAS0QvWWFxNfxzYHNdbmWIzPiMLpKItzZ7QqEbUlXyjU8ITdAxi1OZOgtWO0ZygM43KvOnGu3OTUbZYnLZIvLVRvxTAaE5SKYi8huQ7AJlb4Iy3a4sM2kRXEF3HEWd9QvCTuAnRMUYq09k7RVihvckHn6Iz4HyjU5gNxdL11rEt3ggNFDCpFKmAE0VUWj9', '956TunBgRLLKAFBfzvfhnNwXqQiUM4jGsYi8GbwFXrnUNwt1Qz', 1, 12664.00, 1, 1, 2022, 0, 97, 95, 91, 94, 91, 'TTg33QOBpa', 1),
(28, '2023-09-12 09:53:49', NULL, '8mbAxdikMc', 'VaadOPSiZF', 'tTcguFenVXgR4H8BmZKwZiS9U0pxeyL6OwkTxMPavSA1PtwI46fyXNK3bFvbIPk9k8cUYZ8X7UECQhD8akQ0ap1u2kVqy1OLg06XjaDLWLtIB9mHE6rHqm9d8RudvFFiWwRZ7hj9e7GTi5baFJGzuQbaW0gmcA8i31pgQgCqASwwYI8Noq8iIMvZpOqLCZvUWcLqZ95P', 'DnajoBNJVZgBJEN4PLZWhVBm4p7y2yzec7cVnWYoProknXez8H', 1, 14449.00, 1, 1, 2021, 0, 90, 92, 97, 99, 97, 'flsuPqn0me', 1),
(29, '2023-09-12 09:53:49', NULL, 'SVBM8ZQpCW', 'asjZzJmZs3', '2bpS9acJRcVuduDHNLLGWv64swvI76Hz7Ft3JPJ1ezaJs7hQSgy89iag5PqDLbR6OWWBRIQd1nq58z1tWpgHou0hRSuSs9MX6Tn78tLXsXQLzKP5OXWss4fKPJSzhzxumDQRilC3VarpAehkUGWyBP8bv4NUDUVe6udoYnlULmn64aNIexvAIY4ae3kkGIE4xqozg1nb', 'kLB5qoI65XyyWA9sAxlSqrm3QASYiJO87BE2lTfD5qt8kHPf4k', 1, 19052.00, 1, 1, 2023, 0, 99, 90, 92, 97, 96, 'rRWxnIJzPA', 1),
(30, '2023-09-12 09:53:49', NULL, '6wbzYzmXlB', '4ietBmP8g0', 'qEHx01rXAEH7Lj6LeXyzTFiTuzhFJyeV5phXBzjRe1KrC78n1I3R2DqcU065DbWWb89XKFMZNAVqYM5kSukOWUr2RTre39R7ekWsCX28aXY6PSU540tkDjT1hBSL9joxyDXLwC47GKaGCH0jslKBlIKw1N6VdtL16mH3fnyVNGnuvC7eaQtnLOi39iBlgue9UHeDjj5E', 'vnCutxwGWnzeUk6hohztGa704NI3RE3CXaSOxVZgqgzqHhaHYW', 1, 13314.00, 1, 1, 2021, 1, 99, 97, 96, 99, 99, '3xRepx1txb', 1),
(31, '2023-09-12 09:53:49', NULL, 'j0GJ122MfE', 'IIBKpJcYaW', 'FLgmOCy6C091VjUSuISDjtitnGRH7sYXtVlOl1wI7gj6b5MNe20QLcKCozw8f1FWJGP2MTjOms5NdgfoXFFPMVmLncTc478gD9ulmOogVhByc28U4L8UGCsP67z9qaQ3bBUhlbYat8WbQqUKmRXoBuYeWEwL3yOcCzoZ7HzIx5anUVt9ZGff0UKOvN2TXdfN2oijnXa5', 'PdO0XeadOmR5f1Vf61g8myop3zqOrq6F5vsPK4VopEt0xweqxY', 1, 11960.00, 1, 1, 2023, 1, 97, 96, 95, 91, 92, 'wRLomg28VY', 1),
(32, '2023-09-12 09:53:49', NULL, 'opRsH2ad5f', 'W4BjLFW3T5', 'qRoY8SH0IfPFgzkMr5xepeSJqPsfyGPNYAqaCVERCRPJvzTYuvWWgl9HnZZCwtyznRxPl6Z5fAr4YW7FeyzYc8R6HvVSacButNTfEwwE6WcyXMfpw4voieHQvua0xkehC1uQrGR1vmDRFzzyUhVTynIHl0myNTtv0kQKPJBHIPwVsaOewmVkaDBuQgVPtN2yv6fgBJQ0', 'mQ9fmpzH2kOx3hv0kdJ5qOi7pDpnjh5czPhpnu1u9oGB99vskT', 1, 15192.00, 1, 1, 2021, 0, 99, 99, 95, 92, 91, 'AbjtxhL3tK', 1),
(33, '2023-09-12 09:53:49', NULL, 'rcLGSBi06m', 'VAoBIsHIfJ', 'wwaw3P7dBV1cAHqSim2gKXvxCyAIO7JcnHHaoWvDIWyAW6r0bZbkEtMYb5EHgtyQuqPvlUzYJ41wVJo00zjuqq7J5zwY03CLQbqqbWsyhst8QZ7yLhlEHHl0TK1ja9pMM1A9XKOS58F4M8xMcDYns1BxDeRhdL3vhCvExP2p9cTJ0oAGrPY2Bph4wBvsC3wNlKm1iMDk', 'ZqxlY1XwmBwNQSqmbxDBxhuyRDOy4wuzyrMrgKfHR3zhD3O5Qu', 1, 11182.00, 1, 1, 2023, 0, 98, 92, 91, 94, 98, 'kWn68qz3F2', 1),
(34, '2023-09-12 09:53:49', NULL, 'ZkyT52nOxR', 'IQULmCBVZZ', '4YfmyvwNzzxaE6z6dhR4CT8pjqTaf9WZPiSlZWpav3OTYbxmpeS1KYGAIPdUTrQd1FSiazZpYoIIIsLt9c7NdOPt2yeVyTBV5PgqOJvDPET2ItBmyU7kApRAXHe60DcNHwwga30wEl0Oxaqm9er8P3BZiGEFvPhbKpp1ozg5kfvejTur1QwipOFedOv9djoWvMwxRxPq', '0tu5iZsJtK9UZOT8YAzQYOr4J98vVmeKcxbn4a2U0myiiAnQzi', 1, 10733.00, 1, 1, 2022, 1, 91, 100, 91, 90, 95, 'HB5uyQAeYJ', 1),
(35, '2023-09-12 09:53:49', NULL, 'gGH2z652qL', 'jmfjy2WTEf', 'GVs4aGoi5SlCtUzItNPew7OnEdxhXm9hO77PABVC66JBzM3VNXckasKxjqIW95bhZktfljzZ0MKRrLN6vaM9PuWCGMOUZ6rNiogN9FA5h5gQcyIZB6vTrCpfB6fSleywYeRwYDst9OnZ6wlvrHALzYilMSJomuv6Ucuvs9owFxtU6k2QCoGY8UmuP1y6pr3cbZBaTCZo', 'Qc51llyJagYmHoiCZ6gzPylun6SSeLc9OuOz5mToJWe8B2Lz92', 1, 13932.00, 1, 1, 2022, 0, 98, 98, 98, 98, 96, 'FBPiyIFDyU', 1),
(36, '2023-09-12 09:53:49', NULL, 'Rp2IQhrhC8', 'cRqCwJjwjy', 'kksyrMwMZgLM8RTe5Ck6u0Tg7TejrZQ2tE8Tz8JudcGCtUcTi88HlP6LBxOqvXQTnVIuHwXEabLjWw3bYf2p4NlW6SWMezg73Mtl9DXF54g2flNTckk4ZvCU3sR1wQv5Bh234Ffr4XVrGOlTfLlxSamx7EJua80Xhspo1pMjy1lDQk7M1ZbwN8FT3ebvzvRPltcHXOuF', 'NEPEPopRP4jp2wuQPlQ4yu0ZjvvjMPViiO5KLS4JdBZauzPldK', 1, 12782.00, 1, 1, 2020, 0, 98, 96, 91, 94, 95, 'rFD9jYGVPP', 1),
(37, '2023-09-12 09:53:49', NULL, 'Qa2uxp9yXO', '1cNDoZ6K2J', '7QoJTFSJ0uQ0Qo2ZDaVx2PjNWDuh5m4qgSw4xYVIpaTw5LMQ9WozZ7uc9R7TohK3zo7Wb3TxXsaA282jjpPcdE9HDINCzsbDzGwWa4hnxRHgowYBPsHjJXo6GOruDpFTV3cNzSe3m4vhwWB1wfhqfKx5ASfaEv0ag8Taru73j7CDIm5AV5e123afUuwvFptDeVHBKlYV', 'ZcqGt7OsIeJaffg5EZm7yD4oSJSzQqjsLuCvzsonBsz5MKwnVl', 1, 14250.00, 1, 1, 2020, 1, 95, 90, 97, 99, 92, 'cFdNb0cLZv', 1),
(38, '2023-09-12 09:53:49', NULL, 'hJrvGr7tJQ', 'gIeuMWqZuR', 'q3RSp7fmo0qiu4V2rvQUqbDAVnLBkti9Cya6Q8ysXp4uhLji1KnEVhMiAxcmgTkKNYhOXeGKLZ6PDxaMF77PEE7k8atsELSPUuxP5pmxDlBHEZRShXEEmEJEK6XhLmGGm2PYfWZVZWnzm19L0AEHRFR1ZASYptxygLPITjQuu9idy06aUk9uUra0VkFJqOGR5wH8rhB4', 'lBBEoVC2QTfeJdGupRziD3z0eJB43bd056BVs7LHC4ZJNvqQcY', 1, 13482.00, 1, 1, 2021, 1, 99, 95, 92, 100, 90, 'ogYrqIAJLP', 1),
(39, '2023-09-12 09:53:49', NULL, '77SufdWZbb', 'tZ5x4Sd3fn', 'OK97AxfapIlD4zZtwDwi9tKd4jorZydMnBvdIEJgIhqlw7yg434UpQ3SotL6FWP4MM2iMdgSk251uOgcv0XxD1Vk1RUfvMub50ky1u8Jn2e446ewXFPbmCRebVw2PIAb11aNvdbHXirJtkjTfFCxFxoDdQcHzHiskqJDut58SkXZndf89LhD7spBKm69x7GVIXMCsHsb', '28qu94pAzQL3ynXmtMCpYM8RuATaZrOrNuqCkjNUbudOrfkQkW', 1, 10896.00, 1, 1, 2020, 0, 100, 94, 99, 95, 99, 'GhKDTBGmmO', 1),
(40, '2023-09-12 09:53:49', NULL, 'h6CaEsMsNg', 'abcshEu94f', 'k8j5ZyTo1FiXXPxd84nPPZ7IE1GRvdM94AomZOTymBSPAvHdlt7HrGoTTqwTwudPZq0alzf1KVu6CYJNVJksGiz5KC8Ip4eSCtVtNUwkW916ZzG4j2VnqqCLun52k2lNfd5dMgGcdzPbT832TpoAqPzunZWHbTEY4Axfq2jDs3w5auOv4lNO3jczVRKIPuqOtYcaQCyq', 'rHqug5UP2xxLhlS8kzjzgntJnsaaHv2fDnXTTZM8jW49ajSgKA', 1, 13839.00, 1, 1, 2022, 1, 100, 90, 100, 94, 92, 'Y4l6xwOK5Q', 1),
(41, '2023-09-12 09:53:49', NULL, 'Czz4aX1EnP', 'aeWnthaGuj', '4URLJadw2Tog335O5eSNPTrM5AqFGEcsIPy2U6ObFgRhLyUpqo1tjwTqWrTfhsS2spB0KIDND0qwL2K7MFrsOZmkJ0rtNQfCsXlWg3N8jPkw8ZtlSg1Yn1zzVHcxWzesMBJDxhCW43shLPLmzVGqid2mftY4AYrLefftpeoukoX4b2eQ7LU9aOJQwyDM9Ch7veD5Pv6e', 'J1M5iMKTOaQPLzETA5m5SAoSN6Ex4duEfXc1YiEw674p2b5CPe', 1, 18527.00, 1, 1, 2022, 1, 99, 90, 90, 94, 97, 'F8s0Ds25V3', 1),
(42, '2023-09-12 09:53:49', NULL, '12qmr65IYb', 'kL1eQrSkSw', 'e0Q16FiXYTOcCmYP0PZNwdWtigzaLRbTjBuCPjfJjLGjLJShki0SRKqMllPihNYVeuF6GD04kYif4XTLQHlFKrTjqUtNi05PRHpa2IHLeY752a7uccZkqTZ5pjPbxUswkYhIEsdno2Vn5JWXWDJHZU2UY6wjSRsYIVFgfdA9nOMdcI7FgKptKpIR9GZuD2CKHWXy8MFI', 'R3pKZ92fxr6lKkjfwwEqJZrWgnWoFB2D8fv8Du7SKHtfss0C3w', 1, 11188.00, 1, 1, 2020, 1, 96, 98, 99, 93, 100, 'Uo3N2dKobh', 1),
(43, '2023-09-12 09:53:49', NULL, '3cvJQrGyUB', 'bF0IxZjwiM', 'nQFqJ4lcWbA7WyuUnO9HKPo7zg1yPjlbIGUVFryDndBeOt94aMylH1K4uRQ578KIeFXcN9NMK7YT0WLPmw9go8RlB00AOORWwkleevkwceXHTZR50XtJp1BNBbC33pu9ybD1vNm7xmJXOysBi8FvE9I7gwD8RBOn2f2XzFBVvpC0W0bdnAdZi8CA2Ceg0AyMrxe5dqGZ', 'WSFxwDYsvZDgsdMkyLNKDHGWPpX95MDnEfkI7spHZ8rRHfcu2o', 1, 17505.00, 1, 1, 2020, 0, 95, 99, 94, 96, 92, 'CRXDXlbDL5', 1),
(44, '2023-09-12 09:53:49', NULL, '0NakyWROHp', 'v25zMlYO8E', 'hPZJWDCZmEVyzOctR5fI9U7EQa4HcVNQWHQeYr0s0L7ly8RcD1HFle5pemvSrw0V9RIt34qA0PAD2XaWSmWwhGqNJnUeehBNdnjeUexM39YglCpMTqpGDz979ZobXNFe8BcHXP7nHKMLXYKTONAmW3hK1V4OuQuxo7fE3Z3Uz7WZCt0xfg7lT5NH7GPSlYQ9ruMzqpMy', 'ZiOus6XAAheZTBmZ0DZ5Dr0XEQolmSJOvlE5bgd4JXRpk10sLo', 1, 14229.00, 1, 1, 2023, 0, 92, 98, 95, 91, 94, 'WWsPv1G19b', 1),
(45, '2023-09-12 09:53:49', NULL, 'qRYyS9Orqf', 'jsUFJYRIg4', 'JQjmV0Ga88LRVzUgAseAGIhEyJmSktmX0nWt2cSYrh0budBAoq9LnbOw29VHEoE1wLqr38mTzg5IJOZsJpp89WhYfIx5KwAJeoLqEBOuEMpFJyXL4iswlBZkPlGyTEtAfLgAzGILcu4ZzC8yngbHWrN8Soyp4cfiEd61VvVS7SVXliPHf34WA5MnGO1dMrQwgGO41r12', 'IvO2xvU2KmmZK7BFUpH5GvjQEoD4OkCa1zbKq3LId4v0AIu15J', 1, 14359.00, 1, 1, 2020, 0, 95, 97, 90, 98, 100, 'TfRBdkvDy7', 1),
(46, '2023-09-12 09:53:49', NULL, 'qDPubw5HTi', 'ScjRNB9qlz', '8vW5qgvuOOSl7sN0iagNWFYYVPsVcj0EEDQfxDUa7vwYIuD7wdOmP2HJbjLfuDEWTsr4aJgE30fMzzf3JOiEAwBs0nPmEGOBjEPz7Ys7MhC8oE2FJxlIcr82RPJKOnMrfoDy462LLlr1CNy397YNGdqlzMl8nrVPvCI3MpjeS5XAKEdGSpzpcfqigEakW8EqtM3l7izq', '9Y9uQWLWAJhPqC2UvacHs4s3fKKGuLGwB7zRBdFP8yk1zUlwgO', 1, 19777.00, 1, 1, 2023, 0, 95, 99, 93, 91, 94, 'prVlG4ybHE', 1),
(47, '2023-09-12 09:53:49', NULL, 'RTNZ8syAO2', 'Ff1CqQuSnt', 'fGFzJw4yoroVtWRHTt7nLshC0SaGYQwcql7T2Kob5HRWvZRRaw7VT6dsWEDnHPiEnIJkj0FFPNSGiBguSgS6TQ6wsQ9TaHOHnCRrI49O38bQCWB7U0cqEd5ghMiRNAO9RbAmE2M7QM6f85wPM3tAKA9xADrBnQZFK78D4RbhOIZ8OOcuRV5NEaA8tZmPgzExTDwzKdzn', 'tajjBrx0Tp5A7ySEcucSsqzj1fm8zdyU6QJou4Vnv95SThI6Tk', 1, 16203.00, 1, 1, 2022, 1, 100, 90, 90, 93, 97, 'dBQrre5gJE', 1),
(48, '2023-09-12 09:53:49', NULL, 'jWytdfPIji', 'Y5rjez6JWr', '5yBbHe6WMQQqQb6RpYmrZ85jlkwSf7tdI1sM283dsZyIyHQ7yHQavtvXmLucd2c48e43JY9ofFJBt3NuGvlLFMeVyiUUvgvmpO3whcHvJ3Vwp43zDilxsoiHvvVJt2ErpK9Q7eg2QrstMmQGE9NqWHVQVHkxM8t9BWFTcUqC0P1zMGeG2M1IzCmxt8JgyBfXp2qGEpBk', 'Cyc2HoRJq63sQXrf2W1DRHonsQOUVywFa05NV9dkMFIoycBdjU', 1, 18194.00, 1, 1, 2022, 0, 99, 97, 100, 94, 98, 'NbmTz3DPT9', 1),
(49, '2023-09-12 09:53:49', NULL, 'dBjdhvDUQ5', 'PW6M3KjPi2', 'AQOkJPjcC1vDXGr2eQjFBe9ViInHcSNY3lzvqCnzRHQ816GkxkBqevX1wHgHh32Fib55WBF535O26DoEeb3u7tDmOAR5QTR7CXvGa52jYVhk2AzMRc6pY76IUANEmrVe3AzEl5bPHzUFgQI3Eo0KiwjYKdBrp4RlckYLdbZvuDVpBmKAN6KHzNN9Dohdf7lcnwfsaTvW', 'RkgZPu1tVql96TTiCD8tX2eTc48r3bDpVzSjznAG5Hz1fnANHW', 1, 16644.00, 1, 1, 2022, 1, 100, 98, 91, 90, 96, 'Dpu0Hnfrzm', 1),
(50, '2023-09-12 09:53:49', NULL, 'XMtEb1KdPD', 'P5PAL2sqRr', 'AJf2ZvgpMyMq8EAc27CSvuiu1QNOxInDeo4iGxz5u1d8wxqEMQME7ORyMvdXkzfXlrFBMLtQfhM5EBBH6wN6gIchhum80K5WuQldQUHLsFIXJJhKswTfDryb4Gcw9l0mMzJjvtKvkWzXGZMtTMyNJuZJRwP575xBqUJIdbVJhkyyClX868EbCSt26sjeHxA0kUYdgt7b', 'Ddrt20xR25VHEokA5CyTJNjycA5Mjg55kEulbY8CUbwLXzaXSx', 1, 15268.00, 1, 1, 2020, 0, 93, 96, 100, 91, 96, 'dLiv7wnlH4', 1),
(51, '2023-09-12 09:53:49', NULL, 'qKX7GQWR2L', '19BWU0ju6Q', 'tuBaPbnkDq3tLeqvWKpMofQFTSNX4CPrU1q2KieE8iBiJvvZCVIGV16icB9Cdk8ne4jX5670oKR5SJMwVWG2FSqSo32PZQa66mTcsZ0lZMd3dp0dLi9OMcNl3Wz1cJly4uuv1dxWVgF2fspHq6fkL2y0aycS0cwPjnCFfvZE8Ew6SLs3dsf4IDjfA6G7Vm0BaEG636Mi', '1p7zaa54oQtcLTwhDY1k8NYMwoB8EFCbGLC6k5YlkfbTTIrdap', 1, 14294.00, 1, 1, 2023, 0, 100, 100, 90, 98, 91, 'pk83Va7CCK', 1),
(52, '2023-09-12 09:53:49', NULL, '8hcrFJMR6p', 'LpyvL5QbUi', 'ccxykimkTQESTd3CREAdNHHJhfmqPNe0PkxgBysttS1cxMQ6tlCCXqdGEdalXb7iFHn0sXAv2RyziKSsMeZ7esm75fHJOslT7lVKIltdaOpX0eBNieDjo9NttQQxz7sOmUzIEXvGm7Ykr4D9JWxIRTW3I2wiqI7fNPINiD0bxWSZAxgoDuDxK5VvolJpVCarKawuZkCN', '7B00Yay3yQs6j1ONtM9GgHVzkRfojoLcnad40lj1yiAmKLrG9H', 1, 17026.00, 1, 1, 2021, 1, 94, 98, 92, 91, 100, 'ka1FcWOkYj', 1),
(53, '2023-09-12 09:53:49', NULL, 'PhmVdUjM0D', 'gaHSrgdNwy', 'uZVVr3Y8F48EIuAHpAQKsaqB02ydV9GnRzQXwNVYfd72p423yAyJUCKr891ZbeVbDhF6MFfvkYsWETiatPHVVtP69GFvT854GbMYLOKQIxwM0IoMSCrNrVjdfh0ugoto3JK4K5duhO69EI2zFPh4zugmKupkk1s7Pyyc2nGXTN0ocNeFWnLGnPM3azbZHn1Hs8hSkAzo', '9Elk9RB1g45S39VNeobc5unP6haUKsNUf6U01lKkZH5WpGxU8l', 1, 10240.00, 1, 1, 2021, 1, 96, 96, 92, 94, 99, 'hOWh6td27J', 1),
(54, '2023-09-12 09:53:49', NULL, '7SDnnqmTMH', 'FZpkVLw7ad', 'UZofvUEZ0i4alQwztcMQ06D2ZLybC1PrYboMt1pCnMsOOLPIE7sOgT35YzS9v8wXUwc6tQxLLwqJjt2PH2Hzmy8Gri9kLFxrGdCKMGdLoWAy1m9ZoMIJzUjOT80tEsZbzVqvwpLXSJ214oGOHxVcJ8B17hCMQJ7MUO9S1wsNdzYJnbbFyoo0hDkYf9ycgFpDsxXW6OeF', 'YFQZO2d17uGdyEy3RUdQsyoEQoNMG2OSTo9XJOKljkXs5NNxRj', 1, 14959.00, 1, 1, 2021, 0, 100, 92, 99, 95, 94, 'fetgNYaXnR', 1),
(55, '2023-09-12 09:53:49', NULL, 'ACisp7vdXo', 'OD9ZS4I2T9', 'e7l8DSzcHYz373LlD0TmZj69RN3pjT86FEFVlqT5rXJuefAbUYnl9qZfY87mAvDMLie1tpOQX4F940CiOYaURxHxuks1LAfIWR2z5i6Zi13ZgelS1A816D35zzURA5BUdVcCun5rauxGR9XQTbqkpH0vVekDkl5V1X6jxY40F1rETDnm1uTtvHo3CWvzj2bLuUrFzyGf', 'S67HCKpv3FvA2EcYGQGi25LrvTOl4avXwD23ewAkdNV68O5JS0', 1, 10340.00, 1, 1, 2022, 0, 94, 91, 97, 92, 96, 'oqCJn36pjV', 1),
(56, '2023-09-12 09:53:49', NULL, 'xuTQPHHqAR', '51oY5a6TLl', 'Ci0WSVMfxjBALMHqKVpfKwAYRGZOjBLa81pBS4HQllo8M4BUQ09YOGkStyyNbGqKr1qmOLmpo3fjyNlGfPC1QJFEOjovUS3J7aNcesOYrUAcoFp8CfstrRrWzLq0n8kHdADsRI6wuX3LYwwS3RJ1ygy5xkJcDSmE24eWYnzN4RLDYXHo5erHwNJ2UDjFYLbcsIK1aZk2', 'LxB6RcNGakokNpF3m48A7WBlpXDjNkCgt5cf66J5gDaSYsQI6D', 1, 18335.00, 1, 1, 2021, 0, 99, 90, 91, 94, 95, '5F69d5qsf8', 1),
(57, '2023-09-12 09:53:49', NULL, 'ZOB5iS7ERs', 'MdOKTCcU2t', 'K294FlPHTQrrp7YxiPfwK8WBeibS1z3gcIraVCLVVvFJeZO2dLhYa3HbsJvZmgfrrHk9Bllf34t2nnMFMd2DMj1rJBy4IVojOKilv3WMqBhF1ViE9WuUQCEUYMBSletSKxScVTKLKKrMzCP5tcXNjnzxDEsmS1unUqVbpyNZuTkKkYdPMolcR82DgO7ZekfQ4yby3vJ3', 'dx6hJ3P2MY8IcMA8br9l3g43KE2AL73u2QX4r6xrwJ3v649fqM', 1, 13118.00, 1, 1, 2023, 0, 95, 97, 91, 98, 100, 'O2IYlZEwoS', 1),
(58, '2023-09-12 09:53:49', NULL, 'TTWiGrmWC4', 'WVNmNQXaVh', 'SCYDWtUA9WQ6McE3arYcrrh3ycYNKKFM3C6HZin6MLP0FfYw7UYBRbSoUWQlGjjwRKA8SC2hCRxJCFg1JMuUsVzqjCk5fdzcZbeepbmDFBclJUG0Cus9ZyUSt5kvQRGDnffuhBqLl2a0Ibzh4Key1AhwiiX24zvd9lPa575fFyJS1OIzSB6xuWMsG0vDh4ODnEPatTI4', 'xo24o2106FXncOQtOGZI20gCUHHQIjB6nX48zGQfmslJazZD8v', 1, 16225.00, 1, 1, 2023, 1, 96, 98, 100, 90, 97, 'qicJmvU2A3', 1),
(59, '2023-09-12 09:53:50', NULL, 'Kc3GkfilKn', 'Z6DiYhjaTN', 'E4FVdg34xTquKR0Sbh161wTEfKQt4Ozfsv4xwdf21qmo2oI2zYkufR6Dg4bdi2AxaDZHZW48gmvhYEDnt7Bh9nuWBDntVPea2iwv8Zc45tVPKQAR8lr5tFJqkzSBsV2a2g0vJxtZ5hUekwf2IawNs7DK3yJFsot3pQOCrl9q3VNikv6wN61TBFnZrB2v5hn0PBtmq6CH', '4kDwlvyA10kb4DvcXguUgT4jwc800RQixG8ujShi0I7QByluaf', 1, 10220.00, 1, 1, 2023, 0, 97, 96, 93, 96, 95, 'eZBEPiImiM', 1),
(60, '2023-09-12 09:53:50', NULL, 'Vn4INalCf0', 'iwlaZZVizp', 'ZZeE96c5iD0v4MbGe5iq7jj4RTqVN10ktMqSUIEz9x9RrKqxalRfmm7ubgycD6cbI0n3fzntHCcJBz2rDA66DHrEiXjU0yuFKuWfFuixyKnj2ZljTVVFKu6EaN4dzXBfuKUMQkL730gGnuh0SXY2pcsLTOEaClERO3pT3QvGL2IGnDVrfmMwIKTuQttmrcKIN6CyqrkB', '5ezKv3bvlfygKemGE9o6FQXIHTMt1vi1sCVbDoV21XlFaOUOsP', 1, 18452.00, 1, 1, 2022, 1, 98, 97, 100, 92, 98, 'VEGQt4uKGp', 1),
(61, '2023-09-12 09:53:50', NULL, 'AZcYT7d13p', 'YNNWBtKlqa', 'd3NM9TjGPdgMfGYKZlfNVbP6hndG7xFJGEujPrhtJrU6FJGHJ3HB3EwwPei2PRvFatbwCzP4jadnYLeXNVGi4iCpY6huJvHFGtnK2wvYlMwWIxuC34o8ejp6zncuZ0uhfdnfBvbKbi2NA8kHwhqwKLjrpagmh8Bw1iRutmIf2NtFt5PDqAE6ApYK7vAJ0VZUVelQc1kN', 'ynw9bDsJFYr89uCaknvOf7latcPEOx1UFaVQUFAsN7OD45QGOQ', 1, 11308.00, 1, 1, 2021, 0, 92, 100, 100, 96, 99, 'SlqTPthg1M', 1),
(62, '2023-09-12 09:53:50', NULL, 'Y6H8W3FAhV', 'Lc9nYmZUUK', 'RUwbyDZLq2VoW0aDVaM9ws6JPyZTNrrlpE7HMnK9tSp0gABoF334RYOWWqDQkq8zkhOA9BKwxrOHORQnyeFTcbG72okXOsaSw0YUotyeE4CXGpfu93BwccjlsM67tw3ANcCrsvmoFQWA84iVTveptHLbSPjQsEQISBHr4iLOO6y5vULSBND52uuB4y6aD8SxBSGgpKyJ', 'LPGLObA8J6Nq6khOQufseGEFrHH74dhmn50VIp9p8om3PZEUTn', 1, 14449.00, 1, 1, 2020, 0, 97, 90, 92, 96, 92, '9pdGbozhp1', 1),
(63, '2023-09-12 09:53:50', NULL, '2EDqF1idr2', 'F3rldNOwbU', 'a4dO16ywD5J96KaOt0jFr7c2fyz7WfMpvmbkugco0t40wPMLLc9p0m52x0Li80YAJOlOVSuadoEqrkve074C02CiwyQXT7k3Ca7GtnAZkz0dRyKYn5FH9yDZe6OlfefPe1wcFIfxB7dQ0LwBvxX8iuOzbx0kuYOml1zg7afzzjWBVY8f6IvqTFNR2ozB8K81kB6ah06f', 'qbegnER6iE6Uzgejst5EEXXjvEGsYMLUWMPeQpPlSf848BhZxW', 1, 13985.00, 1, 1, 2020, 1, 97, 99, 94, 94, 100, 'x6G3nbNYzo', 1),
(64, '2023-09-12 09:53:50', NULL, '0CMhunvdgp', 'cPZ8zwAt3P', 'rFEHrkiTsziP7KxJo8FNeF8eyeJucGSwrgXAVtljk4arKEhRVaUOF3oMjsEzfqK6l4uXzzF4HTmC4mluG9IJGZ3UyCLYEfzQ29JacWFRPUEAm4ZjU6G3KZUWkHM3SinLYo2gFh0AnlAzrvccryNwR077Zzc30B1Rt8jQ9wgxZDF7aDNPA4NcuPfirzh4F6C9FyiOaeCo', 'CwCm25vDwSXuJfEqVoXOOMXwpF2SleQgXP8g6eT79GSAvbsELH', 1, 16599.00, 1, 1, 2020, 1, 97, 94, 95, 94, 96, 'MJxmAgEuEA', 1),
(65, '2023-09-12 09:53:50', NULL, 'MiFYgUVJZm', 'JroPQKiqlA', 'ZF5KCnoBLImN94os37WC9JCZ9qs1HWf8hbJntxLpHZoodydm7uZZW6JXOr8qTVzY5XwEOOoEq6nflmQlUyVn8U4IM0XQG51mrL3VVQpdffcW3R35nupiE8gHJdoyK8YAQlzoMBjxj1Yj209ufC6L3CcpWiY8cI62kYOEaDsyKFAVwq0YaRuZzWA9f6JlCcEJ8qZ2OAnD', 'oABvnbHrmJQcYxoZK2eMKzj3yzq6AilnjkaSolYMFaL2ArsIsc', 1, 15316.00, 1, 1, 2022, 0, 90, 97, 93, 99, 96, 'xGJqn6Uoex', 1),
(66, '2023-09-12 09:53:50', NULL, 'fmOfLdvy0Q', 'pJDxEr2VZS', 'mMQk1zZ7ewPKrtgkMBliQLoasvX3iSy0UJrey9trFHZ7XuJqeiM9yHEjhWOML4cgehDBELMKkLsYwyGMouZuUZg9iO1uIX80V6ZWy7aRBvRqGrUyTIOVzcp1NH9mH3K3d3zpYQxuWZUYyZ5x8IBZsz01c2Kz4NzTEPbP2VRxnPCwpF3ahrk4CMYRWJDAcG16RmJkVdxY', 'NxfboiLcbBfxtL8vTx8fUAK4d9KhWFi5DvsZV4hKohoZgrVtxs', 1, 12220.00, 1, 1, 2021, 1, 94, 98, 90, 99, 91, 'FdlE83rK9f', 1),
(67, '2023-09-12 09:53:50', NULL, 'PNxfeU9TPR', 'n0wW6P3fg0', 'YgKECOcUhpr5k4no939fUzZ7x5tYP8yXpQwAUDPDRxHqqu56TSkXDvkhb8Yzeg4I8wNJsCeqh6jCeLCRSiRCwWVkasS70J8bMFo8CPb041PAEoyVTAOKcGcoXIEDGhCnlK8vr8o5QrbVDW5r5leRYuPlKxsvyma87LuAD8bSEw7Iz4JNKjgUMU9BFdzGufSPmzcGzBFK', '0z3NoS3HaJ8TVXCI53OxXP4hW2xRvyb46DE3SkB4RGAglVPMJ9', 1, 18771.00, 1, 1, 2021, 0, 100, 91, 100, 91, 93, 'D1AN1CUDy0', 1),
(68, '2023-09-12 09:53:50', NULL, 'Bpim068WzY', 'A6JnPnFzRt', 'KfHhOtZJSZe2vx4G7DyASpqP2mzKZSogWcnqXUB2BOGSK3WJnayNjbRewfqBRdbjm6NnOV5GKLMAuzAmQ8Q1KjUUl08KJz2TZvcboRS8nfRKVnHQBHcZisfrjBEjcRpT7dCLxyrOAFsTqKRh9L5RBFEustn2SSCyOuoUfc6uUoae0vG8pczPdAAQhzrPm8OP7yJbeWU4', '4hK5P8cFpBbrcPOARx7dSJwx7jNzSg6F4ugGm9wh9Cz1dli5BW', 1, 14445.00, 1, 1, 2020, 1, 97, 100, 94, 97, 100, 'xTY7oCPL0W', 1),
(69, '2023-09-12 09:53:50', NULL, 'C4363SgkhP', 'L3ll6z13va', 'ravzLMVWEt30wDGIWNk3b61t1X9cTrQHAdCSHEmOeAH5FBgPM11u4iOVR3r4qLg3VzeKQZZx3O8xON3cK63jNIeHjYRMKwtEOKOLoC9MlfTFsAP0gF2sfdKq8pldh5y8ELLaCmLntkHI3sDeuMf2G7wJBGlusSHITfglAo4M1VAFDwWMiTnykqCUFMdsUjYEhhqqs49j', 'sGOoRIwhYswpMSazmXJwGUEcr1aGVFvSYbAKXRbA5tmkhjn3dt', 1, 10040.00, 1, 1, 2023, 0, 98, 98, 90, 97, 91, 'RSl5bKgx6f', 1),
(70, '2023-09-12 09:53:50', NULL, 'hx80AJ7zFd', '6J0Yyjj9sC', '9qNQHz7apDkHa7qkeMOLdbG7jd6abHrYO8FABrtFwVXuO5pNsR5iexoO2JJ003DZuvzZq8fmhB9AVsfxDnzweaKoMPittMzn0cukRg7lv7SJnOG54WSZtD4feIsUrsU84GQf1UYi4jGEXlKuVH7ThgtVF9q1cpBbjWJXWFX95ohoSsDvDY4RRDbp0JAcHBd1pTbRthjF', 'P5qAdeEAQPPDbs57XrUGctVWInp1lKkGdxQI9ykxtMdtgGKqSV', 1, 19639.00, 1, 1, 2022, 1, 96, 97, 96, 95, 95, 'fN4MmnI0hp', 1),
(71, '2023-09-12 09:53:50', NULL, 'pIs03VffqD', 'h3Hj0uje5e', 'jz01HDC5U3iJvLkY38gvdthS2EKG79BAX0zSKY99P5mloDLvXfSTGZEtxCntBMHqVrtiEI6FH7c6reGw1m0hlGhx0QMvdDvzk6PnulixKHCz5pO1WxXtDmchrpkiMOR98LTyga1Av1FhNI7dXifqCnV5QSl7Td4c9A5fzauy2mXexUicKZ0dvzIdBW1zPNyaiPwuqu9U', 'Qw1rsDBohDGssZ01w3AkIOJT4fyBD9AOOJxltTYU8ICNl6KOzC', 1, 10985.00, 1, 1, 2021, 0, 93, 92, 90, 92, 98, '2uGWqwqZEI', 1),
(72, '2023-09-12 09:53:50', NULL, 'Tq9fgvsURo', 'YYN2CNzlUg', '2XbmBSP1T5nPQvNTIbRk0ryNlY8jpgqzzUOzQs2Ec7PG9FETGD6sFee5mBoQkb7x1AxaKbO3fpDBFKryqo33vdg473LfzomcGET1k8WqyZjN5CR26h58ikGO4u0V5Bk8ZDokAS4e9hSf4Hpybhmzeip0Jd1ZJNkP9QMfcVjUCgipazg6i7lKspR0Cg6kG7zdE0O1KQlx', 'VnOBRx0svtj2mFkhx5PBdMvvCTtAjZORBncRFxWCJRNyi7NY5q', 1, 13231.00, 1, 1, 2023, 0, 97, 98, 100, 92, 99, 'DddihAUhsQ', 1),
(73, '2023-09-12 09:53:50', NULL, 'TjXwE3ysGp', 'KupkwYQCoG', 'lDZXBdyNHDkODTTB4o160dRx7rvZne7mEdMmCUlNroF5jmJze5xcvPNg5r75iPyXnVaGNfqr0IrY2QM3yCZpAnjNiTOFGU1lZITAkionvYJLxfz5q8pijfFyqcO6wG5YNDPkkvgbbvJvOu1Dcz2HTjP1xNDVROIpIFQiu8zMytP3o0AfsEtjWuRkTCIs8FldIFPVDgTz', 'TFsGarUShfhTXN5Q67AWpEJPZp0YGjuOpvKJUKjZrFh8wzSI0b', 1, 14744.00, 1, 1, 2023, 1, 98, 95, 92, 96, 93, 'zU3XjMYrr0', 1),
(74, '2023-09-12 09:53:50', NULL, '8wdIAibciN', 'fIXyXmXQ2e', 'CxrOpjGGAkFhkbS2mUaXyT96n32Byg4RgdIO4sQznho9mapoO5hHz1aPgporMuaewGTqxHa97WMf2Z2X8li4SRqf4DCChzIEfAAVWHv1A9pyvfi1siUCH4Fm2HMywbokkqhF9KZEN8ZcOuR5azCd5v8iPwqAw21PKX0DaczhkhG4I0F4pg6TIDwaxpzPliA6BPAEHeEp', 'SldXEK3MQpeWpam6O5sJ2VS0ylLfj3TZ6Gpyddr3RtFHQjoad5', 1, 10943.00, 1, 1, 2020, 0, 91, 100, 97, 93, 94, 'XlRrb9VBGR', 1),
(75, '2023-09-12 09:53:50', NULL, 'u7italMkCd', 'gQi2tmy0Mj', 'cAPLTp3XKusFJ8CR9ITjQ723mRIZimzSzsmiio09U1cF4owkEn9zO1Sy1JsJf4NR1XUTVsetUI6YFVe9fhSaBTQWSdTONMvZ48ZsHv8oiDpyoN4WUUCLKUWedrZxFzGctP0FUPUwdrY5RYLqRexXWS4PLkAAPmXZBwPJoPGXJX5LvGPh9jMJPx1p0hNpOJWVnnWozhsT', 'A05leEm1dUaPAzELwmbZov5YpkE2ZUbbi4MGJxe6clXyKePauV', 1, 15468.00, 1, 1, 2023, 1, 97, 94, 97, 97, 92, 'Z2dR2roYcy', 1),
(76, '2023-09-12 09:53:50', NULL, 'qp4SpL2bAK', 'zuNOX7H8Cc', 'MYIZf63FmOz0FuPOCz4XSx51uUDGtE1FJkRUTj20VrbNgrkqh0qd9J53eyoxWJhgNpRwGKfka65O7ws1bW0G1Le5Nk1gUHftR9fhaVJQlOrf6fkVxvOftxG6n6PDtcJLNs7oqE4HRDo3ypsHOdPPvfxV3hjkIy6ToRYoXm45kxx25KmPUfPUUg8Gy2x7UepS0hc0H2JP', 'aZSHN0iUYqwBlmA06loRzoUvrmmp4D3P7w3RrveDuDMCun38pa', 1, 14890.00, 1, 1, 2021, 1, 99, 95, 92, 93, 91, 'aaeIGHyu8t', 1),
(77, '2023-09-12 09:53:50', NULL, 'UEzt9PO92Z', '6T9HxzQz2k', 'Ood2UXQ6JOwKvYd81bZpuYA19LZ1RKCYRn7WwpG3XkvHctEvwoZsjZdUXQxBTnN5ZnRiD3LPtjqSFiB4Ipgw6kU4MJKhDLZFNj8HQaLA5HKegDFCtQYlrcdFt4M2nAG9o3EPgAXXSm4mqTrs5JzajICtLvpJajzSQVEkpkUtPI74e78qX6ORQ4EBulpRErOqrILYoGSj', 'Uucg3Ggu6oAcqHFUVpnOBZtuVNPWXvtwKLhnMD3z5uR1gJprUv', 1, 10540.00, 1, 1, 2021, 0, 99, 91, 91, 90, 95, '3N8NMleWEI', 1),
(78, '2023-09-12 09:53:50', NULL, '0SGDLexvCb', 'h8BYNHRUul', 'FEJwT0zZeIPcp16nIfOoRPSuQctRwEHIPmTe5TeFVDNn30vOGu4GMCnA0iqM2yfpNihIyJEDATzO4bObWbsA6WE0rBSlex167XzuGfoPHIlxQR1IBeErA9fdlg0J7K3vsbRDQPUdgyvCtNjTCvKIjccgYFByO6Pv72sSIR2GOYID2gdfvkyFj2ueQUXQq7er0wLwfP8V', 'pkYE6Qb1638EQ4e3YcliXtYmEaaJbeZsE9bSoSiSmhfTwqFodG', 1, 13722.00, 1, 1, 2021, 1, 91, 99, 92, 100, 99, 'fOXQFGfUxp', 1),
(79, '2023-09-12 09:53:50', NULL, 'Y5ucusZ5DE', 'dNGO4siWuU', 'wtGuisI10MFZjpSqQiyVKZiDaCgRSVbrB7V3LW8PmhDrNMYVb0m4ExJgnEIHNlb5aZAGdbrV5hmC94UbrR8nwhyj3bj8yLUoHYlQJMd8XiVhG5R8MueOWC0UdfqK5GZdWMaKaBcRB3eDx52iqZX2yZjhgbrWh6waV8ot67Azt8wEmOcYANZD7y9rkBWK2gTcD7CO1Bzk', 'jyvptirvDgcpCrQibMEbgZ2h1MUnBeuBMAg3zHzfZbcSDVWRot', 1, 12503.00, 1, 1, 2023, 1, 100, 98, 98, 98, 94, 'a8zMfHaCJw', 1),
(80, '2023-09-12 09:53:50', NULL, '1K6RbSsBii', '5AhKa8PjS7', 'vVj5xf2KMxhhEsgZJ7ldlMxSPmoYaZdi37A7QR2aa00BrbTLfmRFBGxEf97NPe1SKPebkH2TcrhYX6xDZ1TADqVnd7Dp2bhE5etHzXaTiSqwLJLRb9bypXiASaBohFoGFzRH36Ol1QnGFox0S6gW6IPNN5KPMPzSH4zKAqnbMUOYSYTI2ATRZGnDS6e2jxm63YOpmgML', 'u5bnqOEAcLTGfl0iDRX9koyP9L9mx2druGPqKCp35I9MQQfJUd', 1, 15621.00, 1, 1, 2023, 1, 92, 94, 96, 95, 92, 'XFU6EOk9vr', 1),
(81, '2023-09-12 09:53:50', NULL, 'UrUoKIeMUA', 'CB8JgxRsrk', 'ix5aY54q8FvFFyaO2eH9GxxxwWcBPZK4OS9JsANYzt1V4uVgyUmxMWWTl0xpJQh3iNmpVK59VN5TdmpqZAfTvKQ3ZPfsxtzOypZ0DtCHOM5vrqBlVAeHfXyUmd5fZETKkCrgHRhF7na8ZVV3q23ufphG7BXfdh8PMVG3aRzI1cFa3Yk5OklRNOGJU6gDgfLfodOekFVq', 'ayBzcKiti9xy8qxtuSLBoiejUnSJwQsYO2hJACssWOVkBExU4H', 1, 19535.00, 1, 1, 2020, 1, 92, 96, 95, 95, 95, 'OJK4NLOPaN', 1),
(82, '2023-09-12 09:53:50', NULL, 'IG8l2GWl01', '00sG6cjUCC', 'hs0ZZfg8UEYoRBlPr3VmAatINbkPOQeE7erP4pec8g0h1FgFpM7wGru197CkmDFnqPRRNnnYZjjBFC2LJkrGZvEFwiPhW27Xu7dIt20TFJel1ptvr6Jw4UIoBbFKnGWSSF0HmSkWK6IVeKQDVmmj39lS0WWED4b6zx2ZfYiZKzSWeNT51pZ5xU2Tpu2kdBnxPw45IfKE', 'XO12YMv7vrVMeounoJG6oxSAxkDi3bg11y9zogFBLOyE3CWtZ5', 1, 19061.00, 1, 1, 2023, 1, 95, 100, 99, 92, 92, 'WptT3iWCU4', 1),
(83, '2023-09-12 09:53:50', NULL, 'FuEXDtDwbo', 'e7VtbgouOh', 'rq2lX04x6U00jepeJy7RcCVQ1L3yVaXFb9m2Ki5ATFWjn4uA9y4NAIvlR2NpQhgJyLLyWSQyrYcpBed1xdruyjlXq0sancOqGOE2E0zs8YWY9Wya5PgtQo3YzpRmSZIl0VAunEEvhMGQRu8uBnJFlnTzDDD2ZryhwstEsd7gLrSatxoNXiInitW4BwuQaYp9pWQ50Wsj', 'QcZ3VGW1HQs02gt7ozmMYGKliNOmfdcVLRY0cJ943kIvwffdyX', 1, 10702.00, 1, 1, 2021, 1, 91, 100, 99, 92, 99, 'udsmkECgRA', 1),
(84, '2023-09-12 09:53:50', NULL, 'lWqlCKn10W', 'oBG2xal892', 'L3PpORdBx2uMRxIzrC0fj5EDoYwDAM1VEY2wFYdRxO8RLMtybToFMYrHQfiQaHaBtjnLEobpuXpob0Qx4TRwQ4OYAMwFTwggN7q4NlrUqPjAWuYpGC0zZGY2M9PhXYy1rx3iisiiRmnzyEWaSHpmGOFZmtrb6D5LY12iVdCE96z2VgoNEPDdCo2MB7cou5zjG4sxieQL', 'TvfY062xCVvAVSVNE6UKlKQmEFFndlQHj993IW6NMoBUEWej4z', 1, 15987.00, 1, 1, 2022, 0, 98, 92, 93, 92, 92, '7Uly5J0P7D', 1),
(85, '2023-09-12 09:53:50', NULL, 'BZmzDvIo3E', 'En3V6P4UCI', 'DsCXx247aDlI5atYRhJyQjxVsocPCJ1jUC456x5r0uIAKq9J5LoLGOyg2pUjaTOP3wqhiQ3pHx2Fuy5mX2n0Cdr8B2gjgfhSEz4RRxuDCIQP4KxvvYquP9DcxMgN9GSC2AiIO81i3xf2q6qyQbOQJ2z6bicYwYUfnvSLhrGs6fBS1Fp6vjwWBwUSZrsmtA4uexfBQrLF', 'KLiXMb3lf1uePINulwiaHBlGJRBRDwbXmrQzHnK2FcpxeFnNuG', 1, 17312.00, 1, 1, 2020, 1, 92, 97, 95, 93, 95, 'oaCBvdwpZ6', 1),
(86, '2023-09-12 09:53:50', NULL, 'C8ZUyCmx6q', 'MerVwVAlVd', 'm3ei0VlxwOajaxUVcy2JcpQM1kKuWrM5FhXYZWhs0FsLwSYNlqmNJp3wYFkKQcRNc8zgaath1e1Z8FVh0RJazi9szHvgVQmUmPlPI1JQxaUAyBa1g64kfcyfTwWLbuNp3oeZ5yP5JgLvCpuEFplDYyAegEz5pRIzBPitSPzSUwBiDSgcs7CO3rBAMV49VKrvmQCIWbSb', 'tVQOk2AHr0Z3G3tnLv4vR9owGpCI0kPV368zm1Eu3OI81Ioslr', 1, 15387.00, 1, 1, 2020, 0, 92, 94, 91, 93, 100, 'QB1Tvd0TS2', 1),
(87, '2023-09-12 09:53:50', NULL, 'J2mgBFfwYA', 'jSpcvOFgj5', 'L5674wgore1UtJ5uaDv0p6L4emUwmDHkx5SCyyTEPpPOjXNkoZX213myRpfCxV96jMfIGtZYd1OpQ5XmDHNhR1KEujRb7U9TmjOP8CQ6DSCxAcGZwG0EQztYFGxJwtikhbVIBjkuTdd7ttlKApLFCuzY8N9lOCuRKQLgUFh53596N7Rf5a4FY0fbzkX8QCF5xX7vDPoJ', 'gFhCVKbeXdhE7OFjG3WQ25zN1Hfwq0RsNp7wyYqdmnAUgO7RJw', 1, 19841.00, 1, 1, 2020, 1, 95, 97, 92, 94, 97, 'L8VAduiScs', 1),
(88, '2023-09-12 09:53:50', NULL, 'NUktMfeLcJ', 'g2Awz7Y1ZF', '1AQPJmRZP9K0f6RlmHs88ZcBpTF1GbULlENCOKbWgSg1DQxrMIcNQM2jmsvxzJqTWg3OGc687m3tA68zenzAM4rTpYIphjMhvTGDnxWFJ8FPF7XmG3FtfX53aUPxmhtmN15Csqsk73J7ZJ4cyLssBR3Itm6T5dRx3UmvbxW5fXGZEimxPywIoEnIO3H4ChmdUxQCwTwm', 'Lj30cztBAEwKrvl4Q1oGIyHA1JJWO1FrJyGaK5PXwQx5SoMnoH', 1, 15407.00, 1, 1, 2023, 0, 91, 94, 100, 97, 93, 'jaJE05oWvz', 1),
(89, '2023-09-12 09:53:50', NULL, 'jD8yjVNsTs', 'tQDiQXGZZz', 'LKOglFUo0jc5RilsVE6IyCoEgBeK2nfqTGWSc3IzIf4w68JFL9OnYEpgFNot8xtiaaKEWCPt7ztE2s5DMwcrglzMKmNeoIydmX97SsZsXuz8549JkIkakDIVVludx1MQv87gRjgQIEDA63qedCNuDhCdNg9Ekw7PgA2C2s8ZNLhSJKudsrPoJdzVuzXigZEbLnuVFJJL', 'WBSceQ9AGTCNLTP0vPzyaPBLB4iWQx07s0UcWrn5EmXWItdRxf', 1, 11189.00, 1, 1, 2022, 0, 100, 94, 99, 95, 94, 'Wd1bYbKMmw', 1),
(90, '2023-09-12 09:53:50', NULL, '6tudViNVRJ', 'cHLoYzATqD', 'rXqx6NOfwLdYJuvMdxB2hG8NqGJukgDKwJyjCmcJ8f6M8kEeBLPCWGgUyuZi39nLij3vWtvCS642gxbAleIVnp8Jfi34OsV0BkXolPnRb2qxeAeroYwbGa0ZfWtEPnQJEUKG2nHC2i0id5wNwe50VkRHJ5JjUnO3ELXtPv330IOo7yx4ZcT6fb2PN7U0ggqi37IvKYFi', 'r2F0tIBJB78w1YNkOqiZ9H38Bo5sF0iqLLmFqGV21ykO8XHwQl', 1, 19277.00, 1, 1, 2020, 1, 93, 92, 92, 99, 94, 'uY7Ss7osX2', 1),
(91, '2023-09-12 09:53:50', NULL, 'boDCyagnDX', 'vMKau2fBNC', 'oFKHGK6X28ODqRzHgBnT9d0gOBTN7IrxKS772sKJrlxBS4P0G0aeLGvzW03zY1tlH5VrRkgO3ZL1Cd95KTjzg9UETLOMsdePcMCMHtbIeliqfRMxPA73YXK6ciEWBxxQJVSznXrEipk4ZhY5DIPoNkfg9mSw2wkfyxuEGesv5a78PqTU0i9dD6yAoqAJ1OMKIFFxRyiO', 'TwZoA03HwI2uKITPhlmDCF0nOpGFXCQg4QipTPzJSp6YGvTHjg', 1, 19337.00, 1, 1, 2022, 0, 96, 96, 93, 98, 93, 'pNVh6CtsDA', 1),
(92, '2023-09-12 09:53:50', NULL, 'txk1FqFC9n', 'mFbt1jeNbl', 'bGs5ZrwNP71nXZrmc3OWPhX1RnMNlplXDJZxQUy4uK2esmCERPoYmyxU8w4SuSORhz6DMphb6olP1gE6CoYtDSqvEMyf1D2I24RzpYKIQ8hpBDvmdpIbP010C47h0yXy5cFLIzG5eud14hjOkANDuwXvoTZmLDxOcDMcLuwi1hBSsso5Y4WKT57eDfrKFF2AZOlDJdGf', '5Tdau2JXCdmAQdfWBi1bYCFMVQYnbUotIvJp6l0JFH6KoxVlgl', 1, 10621.00, 1, 1, 2022, 1, 97, 97, 96, 90, 98, 'BgDVIcO0U2', 1),
(93, '2023-09-12 09:53:50', NULL, 'iSEAngIVJC', 'qAeuJU8Rew', 'tYG5jCDvoHM1U4hlR1Dh8q6htDSithj3Fezm5x9Bbimq1ivhQkKdsohA3RoW2sqmf82dKX8MihtKg68cnqiTsmif3xKNnwHXglRTqRNu61M4mFnh5uzEMD0dIU9XAFSv0Ai0wK8llSXCDpjAtBySaJLr1qIEBE7rJtgFmpiXLdDbMzbyTmNFX81qISV2LTjGOqCYiFE0', 'AEAXsKyVf8OphB89RVuToFQjXePrY4hgyf4xrRlr79ds99fr8w', 1, 11325.00, 1, 1, 2021, 1, 95, 92, 100, 97, 96, 'GQfY4wbIUe', 1),
(94, '2023-09-12 09:53:50', NULL, 'rHHOBoHSFm', 'gimrGCxKdO', 'peayCqFoqKMgTwpJLjX8bITPdNaAfgfScICfpwNFqmLrBprECw5ZOYUivGDnXSRbUFrN7EJmJ73S4DNjtf2XH0pRqYUcbkKdORiIm0WNNJbET2fjf6I4aMWu30TkfAOhGefag14230Rg29ciC0dMnhMkANha5YNzVCovsoeWEf4wFIq9K8eqXPAc4avLjJSSQqnuFUFo', '9A9rl1UUGvIGjknjy6HdAhZmIkRvLNVeBcCqobPIifGHmMIZBC', 1, 14292.00, 1, 1, 2020, 1, 97, 91, 92, 92, 90, 'zNltZ9e8ee', 1),
(95, '2023-09-12 09:53:50', NULL, 'QCoAeKD6CK', 'nkSdXAPJUM', 'Drt0MsC45YhCq6YbMxrHIocVBbIWKbqk04J3plsexFV3Yf3NXvi94NxVfCFXO40G2X6PurO4wEXVyeIY20EVI0VxQlNh6s1S86kmW5OB6sbOkiY1nYX9RrgsrCS71PWt3j8lxn6MQoKY00pn8vCkR0tAmXSCo1dLnD6KGJfo0iT2SVw2odLL9kaBICfCeSDr3D1MbwsN', 'hKrGtDHYqEvgb0d0wiY4iIVR8fSYDjW5WSAymEXHlPglcR7zYw', 1, 19064.00, 1, 1, 2023, 0, 100, 91, 93, 100, 90, 'vtTE4Sazqb', 1),
(96, '2023-09-12 09:53:50', NULL, 'vHfDZT5uHE', 'AHCf8UDvmd', 'uIGvre4Hivmt0ba7WsI6YyPnUiTnD9yOi6goFa5AzS3Rbhccc8tO4YSLYNdKS7cze2F5I8y0RGqAeH5N8SlQjPy3rHb0CY0Rvb2KMiPrymi5C7YigifuMolIzI0hLJYvdDhO5kpIwoS35xT3xAH0vE4NEed003al0BAAKXHDU5U4mTOS96q2Md57NKhPuTaVe9HwUS6Y', 'YzDRe0Obzp5Eclt6cOzwRp8Z1SaELYsh9Fss6tHgVzM5SQcHKq', 1, 18441.00, 1, 1, 2023, 1, 100, 99, 91, 96, 94, 'PzJDsH8nZW', 1),
(97, '2023-09-12 09:53:50', NULL, 'cQ9EqrNxia', 'mGTQPRkux6', 'pwOdY2VX186tKtu2UMVmIowHY6IbzB0QAYWrwITryr7bYet8VFBCMQZU1KRQ0MniyfhomsC3LTcDjsW2kAZgM8SLgtrf2pG0YEFkW2hA0V9HhbnjOkeofE9MC2XylnICZeqKwQOp48iDnlKwyj75v089ydNfbLpVSYjiLhNWztnUi7CdRH2WKbExw1IGWM59SHMGXBX7', '1K8X5YUReDqPHxoFoQqmjzKb0AzkWLokQRusumye8DAhIMrwCe', 1, 18302.00, 1, 1, 2023, 0, 93, 100, 100, 98, 96, '5PF5aNkezH', 1),
(98, '2023-09-12 09:53:50', NULL, 'VOLr8Xa9UO', 'szad9o4uSV', 'iA3VT9lkMPBNd7oyj29Af85HUhRvhBLzTiOTc09qx5PyQUdXVigELeULTRtcC27zJ7jYIo0Q2gp3eoNFpvmzw6LbLYBs4EaSpuaHebTmVxYrh63KYgZk4o30uG7xqv5F2WyXi7MH4H41fONbKzxoPuIR0WlYzA06Am3iSXMVz0pkwMNXW8uhFASkOpDHeeRXw6MmUapt', 'nC2jFagemMFeqb9Xawi1HAO0rNlUVzH2w8GlJeZ3oT5WM9wurv', 1, 11406.00, 1, 1, 2023, 1, 96, 95, 98, 98, 91, 'IaKd1KIZuJ', 1),
(99, '2023-09-12 09:53:50', NULL, 'TzxBfdWzJ8', 'R7oymgIYUH', 'mGXvUDakfjFV0VkEcbX9m32Kq6XoQWcMDrjmKTuXDTTOoEFC9joPTx8fxbEgrgw843Iht7h3FWYNBZOlftjSKMN9LSgcN7U0o0ZuhSHuL5pTex6n0W6A4zVV5CAZeZAll2sWLZpJgvvTBxbRtfp0tA5nu4ThRAeKyhRfGyTJHaNfZN8zaMeiIPyhNjE3qx4RgmUvabsH', 'wp8aOk5XyfmIU0jNebrnOf6gzLFM4OCTnyXkLc0TEpjxLsLZvn', 1, 15073.00, 1, 1, 2021, 1, 94, 96, 98, 91, 90, 'J8yJzYf5vp', 1),
(100, '2023-09-12 09:53:50', NULL, '8kWFWgYlqN', 'ej3luzYdhc', 'TJpci00ai84h2WeP2L51fgyRlFIA87MCHEdC4Dbql10GbcgCDUMtQvmonZw6BmJnhu9JUdq4VpeI3vV3blknwLSC3ttqLSvE7rKfaoIKTjkuDFrgVYdYQkUB6NwGhJDjMtUlNBA1hmsjnymTpw54P3Aqi40bTK5XuUixySi3DFKL8GLB641kWtLZUH34fzHG18LQ3ZBk', 'SaqwR83Wy4cnD3rqCzF5coEp0B7eTPJTMQo3Jqw1Ip5Y37P8aV', 1, 17533.00, 1, 1, 2021, 1, 93, 97, 90, 100, 91, 'Tmjed8VH3E', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_in_carts`
--

CREATE TABLE `products_in_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `rent_time` int(10) UNSIGNED NOT NULL,
  `pick_up_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_in_carts`
--

INSERT INTO `products_in_carts` (`id`, `created_at`, `updated_at`, `user_id`, `product_id`, `quantity`, `rent_time`, `pick_up_date`) VALUES
(2, NULL, NULL, 20, 2, 1, 7, NULL),
(4, NULL, NULL, 1, 1, 1, 3, NULL),
(5, NULL, NULL, 1, 4, 1, 3, '2023-10-28');

-- --------------------------------------------------------

--
-- Table structure for table `products_in_categories`
--

CREATE TABLE `products_in_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_in_categories`
--

INSERT INTO `products_in_categories` (`id`, `product_id`, `category_id`) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 1),
(4, 4, 2),
(5, 5, 2),
(6, 6, 2),
(7, 7, 1),
(8, 8, 2),
(9, 9, 2),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 2),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 22, 2),
(23, 23, 1),
(24, 24, 2),
(25, 25, 1),
(26, 26, 2),
(27, 27, 1),
(28, 28, 2),
(29, 29, 1),
(30, 30, 1),
(31, 31, 1),
(32, 32, 2),
(33, 33, 1),
(34, 34, 2),
(35, 35, 2),
(36, 36, 1),
(37, 37, 2),
(38, 38, 1),
(39, 39, 1),
(40, 40, 2),
(41, 41, 1),
(42, 42, 2),
(43, 43, 2),
(44, 44, 1),
(45, 45, 2),
(46, 46, 1),
(47, 47, 2),
(48, 48, 1),
(49, 49, 1),
(50, 50, 1),
(51, 51, 2),
(52, 52, 2),
(53, 53, 2),
(54, 54, 1),
(55, 55, 2),
(56, 56, 1),
(57, 57, 2),
(58, 58, 1),
(59, 59, 2),
(60, 60, 2),
(61, 61, 1),
(62, 62, 1),
(63, 63, 1),
(64, 64, 1),
(65, 65, 2),
(66, 66, 1),
(67, 67, 2),
(68, 68, 2),
(69, 69, 1),
(70, 70, 1),
(71, 71, 1),
(72, 72, 2),
(73, 73, 2),
(74, 74, 2),
(75, 75, 1),
(76, 76, 1),
(77, 77, 2),
(78, 78, 2),
(79, 79, 1),
(80, 80, 1),
(81, 81, 1),
(82, 82, 2),
(83, 83, 1),
(84, 84, 1),
(85, 85, 1),
(86, 86, 1),
(87, 87, 1),
(88, 88, 2),
(89, 89, 1),
(90, 90, 1),
(91, 91, 1),
(92, 92, 2),
(93, 93, 2),
(94, 94, 2),
(95, 95, 2),
(96, 96, 2),
(97, 97, 1),
(98, 98, 2),
(99, 99, 2),
(100, 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_in_orders`
--

CREATE TABLE `products_in_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` double(8,2) UNSIGNED NOT NULL,
  `product_quantity` int(10) UNSIGNED NOT NULL,
  `pick_up_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `expected_pick_up_date` date NOT NULL,
  `expected_return_date` date NOT NULL,
  `deposit` decimal(20,2) NOT NULL,
  `deposit_return` decimal(20,2) NOT NULL,
  `status` varchar(255) NOT NULL,
  `returned_bad_quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `returned_good_quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lated` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:false; 1:true',
  `rent_time` int(10) UNSIGNED NOT NULL DEFAULT 7
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_in_orders`
--

INSERT INTO `products_in_orders` (`id`, `created_at`, `updated_at`, `order_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `pick_up_date`, `return_date`, `expected_pick_up_date`, `expected_return_date`, `deposit`, `deposit_return`, `status`, `returned_bad_quantity`, `returned_good_quantity`, `lated`, `rent_time`) VALUES
(1, '2023-10-12 12:55:03', NULL, 1, 1, 'J25P6VtdJE', 200.00, 1, NULL, NULL, '2023-10-12', '2023-11-11', 11206.00, 11006.00, 'wait_for_pick_up', 0, 0, 0, 30),
(2, '2023-10-28 02:30:32', NULL, 2, 4, '7lN1UA9F7v', 200.00, 1, NULL, NULL, '2023-10-28', '2024-01-26', 14890.00, 14690.00, 'wait_for_pick_up', 0, 0, 0, 90);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image_url` text NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '0:normal, 1:front cover, 2:back cover'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `created_at`, `updated_at`, `product_id`, `image_url`, `type`) VALUES
(1, '2023-09-12 09:53:49', NULL, 1, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(2, '2023-09-12 09:53:49', NULL, 1, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(3, '2023-09-12 09:53:49', NULL, 2, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(4, '2023-09-12 09:53:49', NULL, 2, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(5, '2023-09-12 09:53:49', NULL, 3, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(6, '2023-09-12 09:53:49', NULL, 3, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(7, '2023-09-12 09:53:49', NULL, 4, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(8, '2023-09-12 09:53:49', NULL, 4, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(9, '2023-09-12 09:53:49', NULL, 5, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(10, '2023-09-12 09:53:49', NULL, 5, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(11, '2023-09-12 09:53:49', NULL, 6, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(12, '2023-09-12 09:53:49', NULL, 6, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(13, '2023-09-12 09:53:49', NULL, 7, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(14, '2023-09-12 09:53:49', NULL, 7, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(15, '2023-09-12 09:53:49', NULL, 8, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(16, '2023-09-12 09:53:49', NULL, 8, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(17, '2023-09-12 09:53:49', NULL, 9, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(18, '2023-09-12 09:53:49', NULL, 9, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(19, '2023-09-12 09:53:49', NULL, 10, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(20, '2023-09-12 09:53:49', NULL, 10, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(21, '2023-09-12 09:53:49', NULL, 11, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(22, '2023-09-12 09:53:49', NULL, 11, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(23, '2023-09-12 09:53:49', NULL, 12, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(24, '2023-09-12 09:53:49', NULL, 12, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(25, '2023-09-12 09:53:49', NULL, 13, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(26, '2023-09-12 09:53:49', NULL, 13, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(27, '2023-09-12 09:53:49', NULL, 14, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(28, '2023-09-12 09:53:49', NULL, 14, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(29, '2023-09-12 09:53:49', NULL, 15, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(30, '2023-09-12 09:53:49', NULL, 15, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(31, '2023-09-12 09:53:49', NULL, 16, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(32, '2023-09-12 09:53:49', NULL, 16, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(33, '2023-09-12 09:53:49', NULL, 17, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(34, '2023-09-12 09:53:49', NULL, 17, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(35, '2023-09-12 09:53:49', NULL, 18, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(36, '2023-09-12 09:53:49', NULL, 18, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(37, '2023-09-12 09:53:49', NULL, 19, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(38, '2023-09-12 09:53:49', NULL, 19, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(39, '2023-09-12 09:53:49', NULL, 20, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(40, '2023-09-12 09:53:49', NULL, 20, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(41, '2023-09-12 09:53:49', NULL, 21, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(42, '2023-09-12 09:53:49', NULL, 21, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(43, '2023-09-12 09:53:49', NULL, 22, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(44, '2023-09-12 09:53:49', NULL, 22, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(45, '2023-09-12 09:53:49', NULL, 23, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(46, '2023-09-12 09:53:49', NULL, 23, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(47, '2023-09-12 09:53:49', NULL, 24, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(48, '2023-09-12 09:53:49', NULL, 24, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(49, '2023-09-12 09:53:49', NULL, 25, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(50, '2023-09-12 09:53:49', NULL, 25, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(51, '2023-09-12 09:53:49', NULL, 26, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(52, '2023-09-12 09:53:49', NULL, 26, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(53, '2023-09-12 09:53:49', NULL, 27, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(54, '2023-09-12 09:53:49', NULL, 27, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(55, '2023-09-12 09:53:49', NULL, 28, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(56, '2023-09-12 09:53:49', NULL, 28, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(57, '2023-09-12 09:53:49', NULL, 29, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(58, '2023-09-12 09:53:49', NULL, 29, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(59, '2023-09-12 09:53:49', NULL, 30, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(60, '2023-09-12 09:53:49', NULL, 30, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(61, '2023-09-12 09:53:49', NULL, 31, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(62, '2023-09-12 09:53:49', NULL, 31, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(63, '2023-09-12 09:53:49', NULL, 32, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(64, '2023-09-12 09:53:49', NULL, 32, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(65, '2023-09-12 09:53:49', NULL, 33, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(66, '2023-09-12 09:53:49', NULL, 33, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(67, '2023-09-12 09:53:49', NULL, 34, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(68, '2023-09-12 09:53:49', NULL, 34, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(69, '2023-09-12 09:53:49', NULL, 35, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(70, '2023-09-12 09:53:49', NULL, 35, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(71, '2023-09-12 09:53:49', NULL, 36, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(72, '2023-09-12 09:53:49', NULL, 36, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(73, '2023-09-12 09:53:49', NULL, 37, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(74, '2023-09-12 09:53:49', NULL, 37, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(75, '2023-09-12 09:53:49', NULL, 38, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(76, '2023-09-12 09:53:49', NULL, 38, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(77, '2023-09-12 09:53:49', NULL, 39, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(78, '2023-09-12 09:53:49', NULL, 39, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(79, '2023-09-12 09:53:49', NULL, 40, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(80, '2023-09-12 09:53:49', NULL, 40, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(81, '2023-09-12 09:53:49', NULL, 41, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(82, '2023-09-12 09:53:49', NULL, 41, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(83, '2023-09-12 09:53:49', NULL, 42, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(84, '2023-09-12 09:53:49', NULL, 42, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(85, '2023-09-12 09:53:49', NULL, 43, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(86, '2023-09-12 09:53:49', NULL, 43, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(87, '2023-09-12 09:53:49', NULL, 44, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(88, '2023-09-12 09:53:49', NULL, 44, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(89, '2023-09-12 09:53:49', NULL, 45, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(90, '2023-09-12 09:53:49', NULL, 45, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(91, '2023-09-12 09:53:49', NULL, 46, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(92, '2023-09-12 09:53:49', NULL, 46, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(93, '2023-09-12 09:53:49', NULL, 47, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(94, '2023-09-12 09:53:49', NULL, 47, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(95, '2023-09-12 09:53:49', NULL, 48, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(96, '2023-09-12 09:53:49', NULL, 48, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(97, '2023-09-12 09:53:49', NULL, 49, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(98, '2023-09-12 09:53:49', NULL, 49, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(99, '2023-09-12 09:53:49', NULL, 50, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(100, '2023-09-12 09:53:49', NULL, 50, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(101, '2023-09-12 09:53:49', NULL, 51, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(102, '2023-09-12 09:53:49', NULL, 51, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(103, '2023-09-12 09:53:49', NULL, 52, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(104, '2023-09-12 09:53:49', NULL, 52, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(105, '2023-09-12 09:53:49', NULL, 53, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(106, '2023-09-12 09:53:49', NULL, 53, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(107, '2023-09-12 09:53:49', NULL, 54, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(108, '2023-09-12 09:53:49', NULL, 54, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(109, '2023-09-12 09:53:49', NULL, 55, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(110, '2023-09-12 09:53:49', NULL, 55, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(111, '2023-09-12 09:53:49', NULL, 56, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(112, '2023-09-12 09:53:49', NULL, 56, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(113, '2023-09-12 09:53:49', NULL, 57, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(114, '2023-09-12 09:53:49', NULL, 57, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(115, '2023-09-12 09:53:49', NULL, 58, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(116, '2023-09-12 09:53:49', NULL, 58, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(117, '2023-09-12 09:53:50', NULL, 59, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(118, '2023-09-12 09:53:50', NULL, 59, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(119, '2023-09-12 09:53:50', NULL, 60, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(120, '2023-09-12 09:53:50', NULL, 60, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(121, '2023-09-12 09:53:50', NULL, 61, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(122, '2023-09-12 09:53:50', NULL, 61, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(123, '2023-09-12 09:53:50', NULL, 62, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(124, '2023-09-12 09:53:50', NULL, 62, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(125, '2023-09-12 09:53:50', NULL, 63, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(126, '2023-09-12 09:53:50', NULL, 63, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(127, '2023-09-12 09:53:50', NULL, 64, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(128, '2023-09-12 09:53:50', NULL, 64, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(129, '2023-09-12 09:53:50', NULL, 65, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(130, '2023-09-12 09:53:50', NULL, 65, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(131, '2023-09-12 09:53:50', NULL, 66, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(132, '2023-09-12 09:53:50', NULL, 66, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(133, '2023-09-12 09:53:50', NULL, 67, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(134, '2023-09-12 09:53:50', NULL, 67, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(135, '2023-09-12 09:53:50', NULL, 68, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(136, '2023-09-12 09:53:50', NULL, 68, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(137, '2023-09-12 09:53:50', NULL, 69, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(138, '2023-09-12 09:53:50', NULL, 69, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(139, '2023-09-12 09:53:50', NULL, 70, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(140, '2023-09-12 09:53:50', NULL, 70, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(141, '2023-09-12 09:53:50', NULL, 71, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(142, '2023-09-12 09:53:50', NULL, 71, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(143, '2023-09-12 09:53:50', NULL, 72, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(144, '2023-09-12 09:53:50', NULL, 72, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(145, '2023-09-12 09:53:50', NULL, 73, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(146, '2023-09-12 09:53:50', NULL, 73, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(147, '2023-09-12 09:53:50', NULL, 74, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(148, '2023-09-12 09:53:50', NULL, 74, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(149, '2023-09-12 09:53:50', NULL, 75, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(150, '2023-09-12 09:53:50', NULL, 75, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(151, '2023-09-12 09:53:50', NULL, 76, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(152, '2023-09-12 09:53:50', NULL, 76, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(153, '2023-09-12 09:53:50', NULL, 77, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(154, '2023-09-12 09:53:50', NULL, 77, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(155, '2023-09-12 09:53:50', NULL, 78, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(156, '2023-09-12 09:53:50', NULL, 78, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(157, '2023-09-12 09:53:50', NULL, 79, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(158, '2023-09-12 09:53:50', NULL, 79, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(159, '2023-09-12 09:53:50', NULL, 80, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(160, '2023-09-12 09:53:50', NULL, 80, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(161, '2023-09-12 09:53:50', NULL, 81, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(162, '2023-09-12 09:53:50', NULL, 81, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(163, '2023-09-12 09:53:50', NULL, 82, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(164, '2023-09-12 09:53:50', NULL, 82, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(165, '2023-09-12 09:53:50', NULL, 83, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(166, '2023-09-12 09:53:50', NULL, 83, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(167, '2023-09-12 09:53:50', NULL, 84, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(168, '2023-09-12 09:53:50', NULL, 84, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(169, '2023-09-12 09:53:50', NULL, 85, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(170, '2023-09-12 09:53:50', NULL, 85, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(171, '2023-09-12 09:53:50', NULL, 86, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(172, '2023-09-12 09:53:50', NULL, 86, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(173, '2023-09-12 09:53:50', NULL, 87, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(174, '2023-09-12 09:53:50', NULL, 87, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(175, '2023-09-12 09:53:50', NULL, 88, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(176, '2023-09-12 09:53:50', NULL, 88, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(177, '2023-09-12 09:53:50', NULL, 89, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(178, '2023-09-12 09:53:50', NULL, 89, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(179, '2023-09-12 09:53:50', NULL, 90, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(180, '2023-09-12 09:53:50', NULL, 90, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(181, '2023-09-12 09:53:50', NULL, 91, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(182, '2023-09-12 09:53:50', NULL, 91, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(183, '2023-09-12 09:53:50', NULL, 92, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(184, '2023-09-12 09:53:50', NULL, 92, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(185, '2023-09-12 09:53:50', NULL, 93, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(186, '2023-09-12 09:53:50', NULL, 93, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(187, '2023-09-12 09:53:50', NULL, 94, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(188, '2023-09-12 09:53:50', NULL, 94, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(189, '2023-09-12 09:53:50', NULL, 95, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(190, '2023-09-12 09:53:50', NULL, 95, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(191, '2023-09-12 09:53:50', NULL, 96, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(192, '2023-09-12 09:53:50', NULL, 96, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(193, '2023-09-12 09:53:50', NULL, 97, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(194, '2023-09-12 09:53:50', NULL, 97, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(195, '2023-09-12 09:53:50', NULL, 98, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(196, '2023-09-12 09:53:50', NULL, 98, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(197, '2023-09-12 09:53:50', NULL, 99, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(198, '2023-09-12 09:53:50', NULL, 99, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2),
(199, '2023-09-12 09:53:50', NULL, 100, '2020_12_17_16_50_30_12-390x510_1691504141.jpg', 1),
(200, '2023-09-12 09:53:50', NULL, 100, '2020_12_17_16_50_30_1-390x510_1691504141.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `created_at`, `updated_at`, `name`, `status`, `slug`) VALUES
(1, '2023-09-12 09:53:22', NULL, 'kha', 1, 'kha');

-- --------------------------------------------------------

--
-- Table structure for table `rent_prices`
--

CREATE TABLE `rent_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) UNSIGNED NOT NULL,
  `number_of_days` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rent_prices`
--

INSERT INTO `rent_prices` (`id`, `created_at`, `updated_at`, `product_id`, `price`, `number_of_days`) VALUES
(1, '2023-09-12 09:53:49', NULL, 1, 200.00, 1),
(2, '2023-09-12 09:53:49', NULL, 1, 200.00, 7),
(3, '2023-09-12 09:53:49', NULL, 1, 200.00, 30),
(4, '2023-09-12 09:53:49', NULL, 1, 200.00, 90),
(5, '2023-09-12 09:53:49', NULL, 2, 200.00, 1),
(6, '2023-09-12 09:53:49', NULL, 2, 200.00, 7),
(7, '2023-09-12 09:53:49', NULL, 2, 200.00, 30),
(8, '2023-09-12 09:53:49', NULL, 2, 200.00, 90),
(9, '2023-09-12 09:53:49', NULL, 3, 200.00, 1),
(10, '2023-09-12 09:53:49', NULL, 3, 200.00, 7),
(11, '2023-09-12 09:53:49', NULL, 3, 200.00, 30),
(12, '2023-09-12 09:53:49', NULL, 3, 200.00, 90),
(13, '2023-09-12 09:53:49', NULL, 4, 200.00, 1),
(14, '2023-09-12 09:53:49', NULL, 4, 200.00, 7),
(15, '2023-09-12 09:53:49', NULL, 4, 200.00, 30),
(16, '2023-09-12 09:53:49', NULL, 4, 200.00, 90),
(17, '2023-09-12 09:53:49', NULL, 5, 200.00, 1),
(18, '2023-09-12 09:53:49', NULL, 5, 200.00, 7),
(19, '2023-09-12 09:53:49', NULL, 5, 200.00, 30),
(20, '2023-09-12 09:53:49', NULL, 5, 200.00, 90),
(21, '2023-09-12 09:53:49', NULL, 6, 200.00, 1),
(22, '2023-09-12 09:53:49', NULL, 6, 200.00, 7),
(23, '2023-09-12 09:53:49', NULL, 6, 200.00, 30),
(24, '2023-09-12 09:53:49', NULL, 6, 200.00, 90),
(25, '2023-09-12 09:53:49', NULL, 7, 200.00, 1),
(26, '2023-09-12 09:53:49', NULL, 7, 200.00, 7),
(27, '2023-09-12 09:53:49', NULL, 7, 200.00, 30),
(28, '2023-09-12 09:53:49', NULL, 7, 200.00, 90),
(29, '2023-09-12 09:53:49', NULL, 8, 200.00, 1),
(30, '2023-09-12 09:53:49', NULL, 8, 200.00, 7),
(31, '2023-09-12 09:53:49', NULL, 8, 200.00, 30),
(32, '2023-09-12 09:53:49', NULL, 8, 200.00, 90),
(33, '2023-09-12 09:53:49', NULL, 9, 200.00, 1),
(34, '2023-09-12 09:53:49', NULL, 9, 200.00, 7),
(35, '2023-09-12 09:53:49', NULL, 9, 200.00, 30),
(36, '2023-09-12 09:53:49', NULL, 9, 200.00, 90),
(37, '2023-09-12 09:53:49', NULL, 10, 200.00, 1),
(38, '2023-09-12 09:53:49', NULL, 10, 200.00, 7),
(39, '2023-09-12 09:53:49', NULL, 10, 200.00, 30),
(40, '2023-09-12 09:53:49', NULL, 10, 200.00, 90),
(41, '2023-09-12 09:53:49', NULL, 11, 200.00, 1),
(42, '2023-09-12 09:53:49', NULL, 11, 200.00, 7),
(43, '2023-09-12 09:53:49', NULL, 11, 200.00, 30),
(44, '2023-09-12 09:53:49', NULL, 11, 200.00, 90),
(45, '2023-09-12 09:53:49', NULL, 12, 200.00, 1),
(46, '2023-09-12 09:53:49', NULL, 12, 200.00, 7),
(47, '2023-09-12 09:53:49', NULL, 12, 200.00, 30),
(48, '2023-09-12 09:53:49', NULL, 12, 200.00, 90),
(49, '2023-09-12 09:53:49', NULL, 13, 200.00, 1),
(50, '2023-09-12 09:53:49', NULL, 13, 200.00, 7),
(51, '2023-09-12 09:53:49', NULL, 13, 200.00, 30),
(52, '2023-09-12 09:53:49', NULL, 13, 200.00, 90),
(53, '2023-09-12 09:53:49', NULL, 14, 200.00, 1),
(54, '2023-09-12 09:53:49', NULL, 14, 200.00, 7),
(55, '2023-09-12 09:53:49', NULL, 14, 200.00, 30),
(56, '2023-09-12 09:53:49', NULL, 14, 200.00, 90),
(57, '2023-09-12 09:53:49', NULL, 15, 200.00, 1),
(58, '2023-09-12 09:53:49', NULL, 15, 200.00, 7),
(59, '2023-09-12 09:53:49', NULL, 15, 200.00, 30),
(60, '2023-09-12 09:53:49', NULL, 15, 200.00, 90),
(61, '2023-09-12 09:53:49', NULL, 16, 200.00, 1),
(62, '2023-09-12 09:53:49', NULL, 16, 200.00, 7),
(63, '2023-09-12 09:53:49', NULL, 16, 200.00, 30),
(64, '2023-09-12 09:53:49', NULL, 16, 200.00, 90),
(65, '2023-09-12 09:53:49', NULL, 17, 200.00, 1),
(66, '2023-09-12 09:53:49', NULL, 17, 200.00, 7),
(67, '2023-09-12 09:53:49', NULL, 17, 200.00, 30),
(68, '2023-09-12 09:53:49', NULL, 17, 200.00, 90),
(69, '2023-09-12 09:53:49', NULL, 18, 200.00, 1),
(70, '2023-09-12 09:53:49', NULL, 18, 200.00, 7),
(71, '2023-09-12 09:53:49', NULL, 18, 200.00, 30),
(72, '2023-09-12 09:53:49', NULL, 18, 200.00, 90),
(73, '2023-09-12 09:53:49', NULL, 19, 200.00, 1),
(74, '2023-09-12 09:53:49', NULL, 19, 200.00, 7),
(75, '2023-09-12 09:53:49', NULL, 19, 200.00, 30),
(76, '2023-09-12 09:53:49', NULL, 19, 200.00, 90),
(77, '2023-09-12 09:53:49', NULL, 20, 200.00, 1),
(78, '2023-09-12 09:53:49', NULL, 20, 200.00, 7),
(79, '2023-09-12 09:53:49', NULL, 20, 200.00, 30),
(80, '2023-09-12 09:53:49', NULL, 20, 200.00, 90),
(81, '2023-09-12 09:53:49', NULL, 21, 200.00, 1),
(82, '2023-09-12 09:53:49', NULL, 21, 200.00, 7),
(83, '2023-09-12 09:53:49', NULL, 21, 200.00, 30),
(84, '2023-09-12 09:53:49', NULL, 21, 200.00, 90),
(85, '2023-09-12 09:53:49', NULL, 22, 200.00, 1),
(86, '2023-09-12 09:53:49', NULL, 22, 200.00, 7),
(87, '2023-09-12 09:53:49', NULL, 22, 200.00, 30),
(88, '2023-09-12 09:53:49', NULL, 22, 200.00, 90),
(89, '2023-09-12 09:53:49', NULL, 23, 200.00, 1),
(90, '2023-09-12 09:53:49', NULL, 23, 200.00, 7),
(91, '2023-09-12 09:53:49', NULL, 23, 200.00, 30),
(92, '2023-09-12 09:53:49', NULL, 23, 200.00, 90),
(93, '2023-09-12 09:53:49', NULL, 24, 200.00, 1),
(94, '2023-09-12 09:53:49', NULL, 24, 200.00, 7),
(95, '2023-09-12 09:53:49', NULL, 24, 200.00, 30),
(96, '2023-09-12 09:53:49', NULL, 24, 200.00, 90),
(97, '2023-09-12 09:53:49', NULL, 25, 200.00, 1),
(98, '2023-09-12 09:53:49', NULL, 25, 200.00, 7),
(99, '2023-09-12 09:53:49', NULL, 25, 200.00, 30),
(100, '2023-09-12 09:53:49', NULL, 25, 200.00, 90),
(101, '2023-09-12 09:53:49', NULL, 26, 200.00, 1),
(102, '2023-09-12 09:53:49', NULL, 26, 200.00, 7),
(103, '2023-09-12 09:53:49', NULL, 26, 200.00, 30),
(104, '2023-09-12 09:53:49', NULL, 26, 200.00, 90),
(105, '2023-09-12 09:53:49', NULL, 27, 200.00, 1),
(106, '2023-09-12 09:53:49', NULL, 27, 200.00, 7),
(107, '2023-09-12 09:53:49', NULL, 27, 200.00, 30),
(108, '2023-09-12 09:53:49', NULL, 27, 200.00, 90),
(109, '2023-09-12 09:53:49', NULL, 28, 200.00, 1),
(110, '2023-09-12 09:53:49', NULL, 28, 200.00, 7),
(111, '2023-09-12 09:53:49', NULL, 28, 200.00, 30),
(112, '2023-09-12 09:53:49', NULL, 28, 200.00, 90),
(113, '2023-09-12 09:53:49', NULL, 29, 200.00, 1),
(114, '2023-09-12 09:53:49', NULL, 29, 200.00, 7),
(115, '2023-09-12 09:53:49', NULL, 29, 200.00, 30),
(116, '2023-09-12 09:53:49', NULL, 29, 200.00, 90),
(117, '2023-09-12 09:53:49', NULL, 30, 200.00, 1),
(118, '2023-09-12 09:53:49', NULL, 30, 200.00, 7),
(119, '2023-09-12 09:53:49', NULL, 30, 200.00, 30),
(120, '2023-09-12 09:53:49', NULL, 30, 200.00, 90),
(121, '2023-09-12 09:53:49', NULL, 31, 200.00, 1),
(122, '2023-09-12 09:53:49', NULL, 31, 200.00, 7),
(123, '2023-09-12 09:53:49', NULL, 31, 200.00, 30),
(124, '2023-09-12 09:53:49', NULL, 31, 200.00, 90),
(125, '2023-09-12 09:53:49', NULL, 32, 200.00, 1),
(126, '2023-09-12 09:53:49', NULL, 32, 200.00, 7),
(127, '2023-09-12 09:53:49', NULL, 32, 200.00, 30),
(128, '2023-09-12 09:53:49', NULL, 32, 200.00, 90),
(129, '2023-09-12 09:53:49', NULL, 33, 200.00, 1),
(130, '2023-09-12 09:53:49', NULL, 33, 200.00, 7),
(131, '2023-09-12 09:53:49', NULL, 33, 200.00, 30),
(132, '2023-09-12 09:53:49', NULL, 33, 200.00, 90),
(133, '2023-09-12 09:53:49', NULL, 34, 200.00, 1),
(134, '2023-09-12 09:53:49', NULL, 34, 200.00, 7),
(135, '2023-09-12 09:53:49', NULL, 34, 200.00, 30),
(136, '2023-09-12 09:53:49', NULL, 34, 200.00, 90),
(137, '2023-09-12 09:53:49', NULL, 35, 200.00, 1),
(138, '2023-09-12 09:53:49', NULL, 35, 200.00, 7),
(139, '2023-09-12 09:53:49', NULL, 35, 200.00, 30),
(140, '2023-09-12 09:53:49', NULL, 35, 200.00, 90),
(141, '2023-09-12 09:53:49', NULL, 36, 200.00, 1),
(142, '2023-09-12 09:53:49', NULL, 36, 200.00, 7),
(143, '2023-09-12 09:53:49', NULL, 36, 200.00, 30),
(144, '2023-09-12 09:53:49', NULL, 36, 200.00, 90),
(145, '2023-09-12 09:53:49', NULL, 37, 200.00, 1),
(146, '2023-09-12 09:53:49', NULL, 37, 200.00, 7),
(147, '2023-09-12 09:53:49', NULL, 37, 200.00, 30),
(148, '2023-09-12 09:53:49', NULL, 37, 200.00, 90),
(149, '2023-09-12 09:53:49', NULL, 38, 200.00, 1),
(150, '2023-09-12 09:53:49', NULL, 38, 200.00, 7),
(151, '2023-09-12 09:53:49', NULL, 38, 200.00, 30),
(152, '2023-09-12 09:53:49', NULL, 38, 200.00, 90),
(153, '2023-09-12 09:53:49', NULL, 39, 200.00, 1),
(154, '2023-09-12 09:53:49', NULL, 39, 200.00, 7),
(155, '2023-09-12 09:53:49', NULL, 39, 200.00, 30),
(156, '2023-09-12 09:53:49', NULL, 39, 200.00, 90),
(157, '2023-09-12 09:53:49', NULL, 40, 200.00, 1),
(158, '2023-09-12 09:53:49', NULL, 40, 200.00, 7),
(159, '2023-09-12 09:53:49', NULL, 40, 200.00, 30),
(160, '2023-09-12 09:53:49', NULL, 40, 200.00, 90),
(161, '2023-09-12 09:53:49', NULL, 41, 200.00, 1),
(162, '2023-09-12 09:53:49', NULL, 41, 200.00, 7),
(163, '2023-09-12 09:53:49', NULL, 41, 200.00, 30),
(164, '2023-09-12 09:53:49', NULL, 41, 200.00, 90),
(165, '2023-09-12 09:53:49', NULL, 42, 200.00, 1),
(166, '2023-09-12 09:53:49', NULL, 42, 200.00, 7),
(167, '2023-09-12 09:53:49', NULL, 42, 200.00, 30),
(168, '2023-09-12 09:53:49', NULL, 42, 200.00, 90),
(169, '2023-09-12 09:53:49', NULL, 43, 200.00, 1),
(170, '2023-09-12 09:53:49', NULL, 43, 200.00, 7),
(171, '2023-09-12 09:53:49', NULL, 43, 200.00, 30),
(172, '2023-09-12 09:53:49', NULL, 43, 200.00, 90),
(173, '2023-09-12 09:53:49', NULL, 44, 200.00, 1),
(174, '2023-09-12 09:53:49', NULL, 44, 200.00, 7),
(175, '2023-09-12 09:53:49', NULL, 44, 200.00, 30),
(176, '2023-09-12 09:53:49', NULL, 44, 200.00, 90),
(177, '2023-09-12 09:53:49', NULL, 45, 200.00, 1),
(178, '2023-09-12 09:53:49', NULL, 45, 200.00, 7),
(179, '2023-09-12 09:53:49', NULL, 45, 200.00, 30),
(180, '2023-09-12 09:53:49', NULL, 45, 200.00, 90),
(181, '2023-09-12 09:53:49', NULL, 46, 200.00, 1),
(182, '2023-09-12 09:53:49', NULL, 46, 200.00, 7),
(183, '2023-09-12 09:53:49', NULL, 46, 200.00, 30),
(184, '2023-09-12 09:53:49', NULL, 46, 200.00, 90),
(185, '2023-09-12 09:53:49', NULL, 47, 200.00, 1),
(186, '2023-09-12 09:53:49', NULL, 47, 200.00, 7),
(187, '2023-09-12 09:53:49', NULL, 47, 200.00, 30),
(188, '2023-09-12 09:53:49', NULL, 47, 200.00, 90),
(189, '2023-09-12 09:53:49', NULL, 48, 200.00, 1),
(190, '2023-09-12 09:53:49', NULL, 48, 200.00, 7),
(191, '2023-09-12 09:53:49', NULL, 48, 200.00, 30),
(192, '2023-09-12 09:53:49', NULL, 48, 200.00, 90),
(193, '2023-09-12 09:53:49', NULL, 49, 200.00, 1),
(194, '2023-09-12 09:53:49', NULL, 49, 200.00, 7),
(195, '2023-09-12 09:53:49', NULL, 49, 200.00, 30),
(196, '2023-09-12 09:53:49', NULL, 49, 200.00, 90),
(197, '2023-09-12 09:53:49', NULL, 50, 200.00, 1),
(198, '2023-09-12 09:53:49', NULL, 50, 200.00, 7),
(199, '2023-09-12 09:53:49', NULL, 50, 200.00, 30),
(200, '2023-09-12 09:53:49', NULL, 50, 200.00, 90),
(201, '2023-09-12 09:53:49', NULL, 51, 200.00, 1),
(202, '2023-09-12 09:53:49', NULL, 51, 200.00, 7),
(203, '2023-09-12 09:53:49', NULL, 51, 200.00, 30),
(204, '2023-09-12 09:53:49', NULL, 51, 200.00, 90),
(205, '2023-09-12 09:53:49', NULL, 52, 200.00, 1),
(206, '2023-09-12 09:53:49', NULL, 52, 200.00, 7),
(207, '2023-09-12 09:53:49', NULL, 52, 200.00, 30),
(208, '2023-09-12 09:53:49', NULL, 52, 200.00, 90),
(209, '2023-09-12 09:53:49', NULL, 53, 200.00, 1),
(210, '2023-09-12 09:53:49', NULL, 53, 200.00, 7),
(211, '2023-09-12 09:53:49', NULL, 53, 200.00, 30),
(212, '2023-09-12 09:53:49', NULL, 53, 200.00, 90),
(213, '2023-09-12 09:53:49', NULL, 54, 200.00, 1),
(214, '2023-09-12 09:53:49', NULL, 54, 200.00, 7),
(215, '2023-09-12 09:53:49', NULL, 54, 200.00, 30),
(216, '2023-09-12 09:53:49', NULL, 54, 200.00, 90),
(217, '2023-09-12 09:53:49', NULL, 55, 200.00, 1),
(218, '2023-09-12 09:53:49', NULL, 55, 200.00, 7),
(219, '2023-09-12 09:53:49', NULL, 55, 200.00, 30),
(220, '2023-09-12 09:53:49', NULL, 55, 200.00, 90),
(221, '2023-09-12 09:53:49', NULL, 56, 200.00, 1),
(222, '2023-09-12 09:53:49', NULL, 56, 200.00, 7),
(223, '2023-09-12 09:53:49', NULL, 56, 200.00, 30),
(224, '2023-09-12 09:53:49', NULL, 56, 200.00, 90),
(225, '2023-09-12 09:53:49', NULL, 57, 200.00, 1),
(226, '2023-09-12 09:53:49', NULL, 57, 200.00, 7),
(227, '2023-09-12 09:53:49', NULL, 57, 200.00, 30),
(228, '2023-09-12 09:53:49', NULL, 57, 200.00, 90),
(229, '2023-09-12 09:53:49', NULL, 58, 200.00, 1),
(230, '2023-09-12 09:53:49', NULL, 58, 200.00, 7),
(231, '2023-09-12 09:53:50', NULL, 58, 200.00, 30),
(232, '2023-09-12 09:53:50', NULL, 58, 200.00, 90),
(233, '2023-09-12 09:53:50', NULL, 59, 200.00, 1),
(234, '2023-09-12 09:53:50', NULL, 59, 200.00, 7),
(235, '2023-09-12 09:53:50', NULL, 59, 200.00, 30),
(236, '2023-09-12 09:53:50', NULL, 59, 200.00, 90),
(237, '2023-09-12 09:53:50', NULL, 60, 200.00, 1),
(238, '2023-09-12 09:53:50', NULL, 60, 200.00, 7),
(239, '2023-09-12 09:53:50', NULL, 60, 200.00, 30),
(240, '2023-09-12 09:53:50', NULL, 60, 200.00, 90),
(241, '2023-09-12 09:53:50', NULL, 61, 200.00, 1),
(242, '2023-09-12 09:53:50', NULL, 61, 200.00, 7),
(243, '2023-09-12 09:53:50', NULL, 61, 200.00, 30),
(244, '2023-09-12 09:53:50', NULL, 61, 200.00, 90),
(245, '2023-09-12 09:53:50', NULL, 62, 200.00, 1),
(246, '2023-09-12 09:53:50', NULL, 62, 200.00, 7),
(247, '2023-09-12 09:53:50', NULL, 62, 200.00, 30),
(248, '2023-09-12 09:53:50', NULL, 62, 200.00, 90),
(249, '2023-09-12 09:53:50', NULL, 63, 200.00, 1),
(250, '2023-09-12 09:53:50', NULL, 63, 200.00, 7),
(251, '2023-09-12 09:53:50', NULL, 63, 200.00, 30),
(252, '2023-09-12 09:53:50', NULL, 63, 200.00, 90),
(253, '2023-09-12 09:53:50', NULL, 64, 200.00, 1),
(254, '2023-09-12 09:53:50', NULL, 64, 200.00, 7),
(255, '2023-09-12 09:53:50', NULL, 64, 200.00, 30),
(256, '2023-09-12 09:53:50', NULL, 64, 200.00, 90),
(257, '2023-09-12 09:53:50', NULL, 65, 200.00, 1),
(258, '2023-09-12 09:53:50', NULL, 65, 200.00, 7),
(259, '2023-09-12 09:53:50', NULL, 65, 200.00, 30),
(260, '2023-09-12 09:53:50', NULL, 65, 200.00, 90),
(261, '2023-09-12 09:53:50', NULL, 66, 200.00, 1),
(262, '2023-09-12 09:53:50', NULL, 66, 200.00, 7),
(263, '2023-09-12 09:53:50', NULL, 66, 200.00, 30),
(264, '2023-09-12 09:53:50', NULL, 66, 200.00, 90),
(265, '2023-09-12 09:53:50', NULL, 67, 200.00, 1),
(266, '2023-09-12 09:53:50', NULL, 67, 200.00, 7),
(267, '2023-09-12 09:53:50', NULL, 67, 200.00, 30),
(268, '2023-09-12 09:53:50', NULL, 67, 200.00, 90),
(269, '2023-09-12 09:53:50', NULL, 68, 200.00, 1),
(270, '2023-09-12 09:53:50', NULL, 68, 200.00, 7),
(271, '2023-09-12 09:53:50', NULL, 68, 200.00, 30),
(272, '2023-09-12 09:53:50', NULL, 68, 200.00, 90),
(273, '2023-09-12 09:53:50', NULL, 69, 200.00, 1),
(274, '2023-09-12 09:53:50', NULL, 69, 200.00, 7),
(275, '2023-09-12 09:53:50', NULL, 69, 200.00, 30),
(276, '2023-09-12 09:53:50', NULL, 69, 200.00, 90),
(277, '2023-09-12 09:53:50', NULL, 70, 200.00, 1),
(278, '2023-09-12 09:53:50', NULL, 70, 200.00, 7),
(279, '2023-09-12 09:53:50', NULL, 70, 200.00, 30),
(280, '2023-09-12 09:53:50', NULL, 70, 200.00, 90),
(281, '2023-09-12 09:53:50', NULL, 71, 200.00, 1),
(282, '2023-09-12 09:53:50', NULL, 71, 200.00, 7),
(283, '2023-09-12 09:53:50', NULL, 71, 200.00, 30),
(284, '2023-09-12 09:53:50', NULL, 71, 200.00, 90),
(285, '2023-09-12 09:53:50', NULL, 72, 200.00, 1),
(286, '2023-09-12 09:53:50', NULL, 72, 200.00, 7),
(287, '2023-09-12 09:53:50', NULL, 72, 200.00, 30),
(288, '2023-09-12 09:53:50', NULL, 72, 200.00, 90),
(289, '2023-09-12 09:53:50', NULL, 73, 200.00, 1),
(290, '2023-09-12 09:53:50', NULL, 73, 200.00, 7),
(291, '2023-09-12 09:53:50', NULL, 73, 200.00, 30),
(292, '2023-09-12 09:53:50', NULL, 73, 200.00, 90),
(293, '2023-09-12 09:53:50', NULL, 74, 200.00, 1),
(294, '2023-09-12 09:53:50', NULL, 74, 200.00, 7),
(295, '2023-09-12 09:53:50', NULL, 74, 200.00, 30),
(296, '2023-09-12 09:53:50', NULL, 74, 200.00, 90),
(297, '2023-09-12 09:53:50', NULL, 75, 200.00, 1),
(298, '2023-09-12 09:53:50', NULL, 75, 200.00, 7),
(299, '2023-09-12 09:53:50', NULL, 75, 200.00, 30),
(300, '2023-09-12 09:53:50', NULL, 75, 200.00, 90),
(301, '2023-09-12 09:53:50', NULL, 76, 200.00, 1),
(302, '2023-09-12 09:53:50', NULL, 76, 200.00, 7),
(303, '2023-09-12 09:53:50', NULL, 76, 200.00, 30),
(304, '2023-09-12 09:53:50', NULL, 76, 200.00, 90),
(305, '2023-09-12 09:53:50', NULL, 77, 200.00, 1),
(306, '2023-09-12 09:53:50', NULL, 77, 200.00, 7),
(307, '2023-09-12 09:53:50', NULL, 77, 200.00, 30),
(308, '2023-09-12 09:53:50', NULL, 77, 200.00, 90),
(309, '2023-09-12 09:53:50', NULL, 78, 200.00, 1),
(310, '2023-09-12 09:53:50', NULL, 78, 200.00, 7),
(311, '2023-09-12 09:53:50', NULL, 78, 200.00, 30),
(312, '2023-09-12 09:53:50', NULL, 78, 200.00, 90),
(313, '2023-09-12 09:53:50', NULL, 79, 200.00, 1),
(314, '2023-09-12 09:53:50', NULL, 79, 200.00, 7),
(315, '2023-09-12 09:53:50', NULL, 79, 200.00, 30),
(316, '2023-09-12 09:53:50', NULL, 79, 200.00, 90),
(317, '2023-09-12 09:53:50', NULL, 80, 200.00, 1),
(318, '2023-09-12 09:53:50', NULL, 80, 200.00, 7),
(319, '2023-09-12 09:53:50', NULL, 80, 200.00, 30),
(320, '2023-09-12 09:53:50', NULL, 80, 200.00, 90),
(321, '2023-09-12 09:53:50', NULL, 81, 200.00, 1),
(322, '2023-09-12 09:53:50', NULL, 81, 200.00, 7),
(323, '2023-09-12 09:53:50', NULL, 81, 200.00, 30),
(324, '2023-09-12 09:53:50', NULL, 81, 200.00, 90),
(325, '2023-09-12 09:53:50', NULL, 82, 200.00, 1),
(326, '2023-09-12 09:53:50', NULL, 82, 200.00, 7),
(327, '2023-09-12 09:53:50', NULL, 82, 200.00, 30),
(328, '2023-09-12 09:53:50', NULL, 82, 200.00, 90),
(329, '2023-09-12 09:53:50', NULL, 83, 200.00, 1),
(330, '2023-09-12 09:53:50', NULL, 83, 200.00, 7),
(331, '2023-09-12 09:53:50', NULL, 83, 200.00, 30),
(332, '2023-09-12 09:53:50', NULL, 83, 200.00, 90),
(333, '2023-09-12 09:53:50', NULL, 84, 200.00, 1),
(334, '2023-09-12 09:53:50', NULL, 84, 200.00, 7),
(335, '2023-09-12 09:53:50', NULL, 84, 200.00, 30),
(336, '2023-09-12 09:53:50', NULL, 84, 200.00, 90),
(337, '2023-09-12 09:53:50', NULL, 85, 200.00, 1),
(338, '2023-09-12 09:53:50', NULL, 85, 200.00, 7),
(339, '2023-09-12 09:53:50', NULL, 85, 200.00, 30),
(340, '2023-09-12 09:53:50', NULL, 85, 200.00, 90),
(341, '2023-09-12 09:53:50', NULL, 86, 200.00, 1),
(342, '2023-09-12 09:53:50', NULL, 86, 200.00, 7),
(343, '2023-09-12 09:53:50', NULL, 86, 200.00, 30),
(344, '2023-09-12 09:53:50', NULL, 86, 200.00, 90),
(345, '2023-09-12 09:53:50', NULL, 87, 200.00, 1),
(346, '2023-09-12 09:53:50', NULL, 87, 200.00, 7),
(347, '2023-09-12 09:53:50', NULL, 87, 200.00, 30),
(348, '2023-09-12 09:53:50', NULL, 87, 200.00, 90),
(349, '2023-09-12 09:53:50', NULL, 88, 200.00, 1),
(350, '2023-09-12 09:53:50', NULL, 88, 200.00, 7),
(351, '2023-09-12 09:53:50', NULL, 88, 200.00, 30),
(352, '2023-09-12 09:53:50', NULL, 88, 200.00, 90),
(353, '2023-09-12 09:53:50', NULL, 89, 200.00, 1),
(354, '2023-09-12 09:53:50', NULL, 89, 200.00, 7),
(355, '2023-09-12 09:53:50', NULL, 89, 200.00, 30),
(356, '2023-09-12 09:53:50', NULL, 89, 200.00, 90),
(357, '2023-09-12 09:53:50', NULL, 90, 200.00, 1),
(358, '2023-09-12 09:53:50', NULL, 90, 200.00, 7),
(359, '2023-09-12 09:53:50', NULL, 90, 200.00, 30),
(360, '2023-09-12 09:53:50', NULL, 90, 200.00, 90),
(361, '2023-09-12 09:53:50', NULL, 91, 200.00, 1),
(362, '2023-09-12 09:53:50', NULL, 91, 200.00, 7),
(363, '2023-09-12 09:53:50', NULL, 91, 200.00, 30),
(364, '2023-09-12 09:53:50', NULL, 91, 200.00, 90),
(365, '2023-09-12 09:53:50', NULL, 92, 200.00, 1),
(366, '2023-09-12 09:53:50', NULL, 92, 200.00, 7),
(367, '2023-09-12 09:53:50', NULL, 92, 200.00, 30),
(368, '2023-09-12 09:53:50', NULL, 92, 200.00, 90),
(369, '2023-09-12 09:53:50', NULL, 93, 200.00, 1),
(370, '2023-09-12 09:53:50', NULL, 93, 200.00, 7),
(371, '2023-09-12 09:53:50', NULL, 93, 200.00, 30),
(372, '2023-09-12 09:53:50', NULL, 93, 200.00, 90),
(373, '2023-09-12 09:53:50', NULL, 94, 200.00, 1),
(374, '2023-09-12 09:53:50', NULL, 94, 200.00, 7),
(375, '2023-09-12 09:53:50', NULL, 94, 200.00, 30),
(376, '2023-09-12 09:53:50', NULL, 94, 200.00, 90),
(377, '2023-09-12 09:53:50', NULL, 95, 200.00, 1),
(378, '2023-09-12 09:53:50', NULL, 95, 200.00, 7),
(379, '2023-09-12 09:53:50', NULL, 95, 200.00, 30),
(380, '2023-09-12 09:53:50', NULL, 95, 200.00, 90),
(381, '2023-09-12 09:53:50', NULL, 96, 200.00, 1),
(382, '2023-09-12 09:53:50', NULL, 96, 200.00, 7),
(383, '2023-09-12 09:53:50', NULL, 96, 200.00, 30),
(384, '2023-09-12 09:53:50', NULL, 96, 200.00, 90),
(385, '2023-09-12 09:53:50', NULL, 97, 200.00, 1),
(386, '2023-09-12 09:53:50', NULL, 97, 200.00, 7),
(387, '2023-09-12 09:53:50', NULL, 97, 200.00, 30),
(388, '2023-09-12 09:53:50', NULL, 97, 200.00, 90),
(389, '2023-09-12 09:53:50', NULL, 98, 200.00, 1),
(390, '2023-09-12 09:53:50', NULL, 98, 200.00, 7),
(391, '2023-09-12 09:53:50', NULL, 98, 200.00, 30),
(392, '2023-09-12 09:53:50', NULL, 98, 200.00, 90),
(393, '2023-09-12 09:53:50', NULL, 99, 200.00, 1),
(394, '2023-09-12 09:53:50', NULL, 99, 200.00, 7),
(395, '2023-09-12 09:53:50', NULL, 99, 200.00, 30),
(396, '2023-09-12 09:53:50', NULL, 99, 200.00, 90),
(397, '2023-09-12 09:53:50', NULL, 100, 200.00, 1),
(398, '2023-09-12 09:53:50', NULL, 100, 200.00, 7),
(399, '2023-09-12 09:53:50', NULL, 100, 200.00, 30),
(400, '2023-09-12 09:53:50', NULL, 100, 200.00, 90);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `rating` tinyint(3) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `created_at`, `updated_at`, `user_id`, `user_name`, `product_id`, `content`, `rating`) VALUES
(3, '2023-10-12 14:12:26', NULL, 1, '4fGbFi kztpCS', 2, 'fdsf', 1),
(5, '2023-10-12 14:18:51', NULL, 1, '4fGbFi kztpCS', 2, 'sdasd', 1),
(6, '2023-10-12 14:29:28', NULL, 1, '4fGbFi kztpCS', 2, 'asdsad', 5),
(7, '2023-10-12 14:31:43', NULL, 1, '4fGbFi kztpCS', 2, 'asdasd', 5),
(8, '2023-10-16 02:42:23', NULL, 1, '4fGbFi kztpCS', 3, 'dasdkasd', 5),
(15, '2023-10-16 06:16:07', NULL, 1, '4fGbFi kztpCS', 1, 'sadasd', 5),
(16, '2023-10-17 08:58:50', NULL, 1, '4fGbFi kztpCS', 2, 'sadasdasda', 5),
(17, '2023-10-17 09:02:18', NULL, 1, '4fGbFi kztpCS', 2, 'jhgjh', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `phone_number` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `level`, `status`, `remember_token`, `phone_number`, `created_at`, `updated_at`) VALUES
(1, 'QSgiJgHBAR', 'vld178Na9F@gmail.com', '$2y$10$6H60VbJ2EYsQtYP19FJqWu4uVQcMXM23Gxy/9JqY2DweVejNhH6/y', 1, 1, NULL, '8852332313', '2023-09-12 09:52:41', NULL),
(2, 'cWgnmJv0QU', 'cHr9FUJixQ@gmail.com', '$2y$10$t4eBZlN2k/scqtzgD.Mpgu8wEPwwTr6AcjNExAbqWTaz9mPYsz0jy', 0, 1, NULL, '3540824504', '2023-09-12 09:52:41', NULL),
(3, 'zDveqsXQY4', 'O8jA1eAUny@gmail.com', '$2y$10$EJBj8FpBKTOvfA9/SGKwjenQlw0GVcwefd7.gL5pF5bZnldP8oPHW', 0, 1, NULL, '5274721551', '2023-09-12 09:52:41', NULL),
(4, '1zLU8DY1ku', 'PsZgn3iKSs@gmail.com', '$2y$10$G2nP5DtSX4XzDkdCPCodLONiQZaL/omvbAQeD/kKNZulBfGNP/mEa', 0, 1, NULL, '1579756446', '2023-09-12 09:52:41', NULL),
(5, '22hmdfkhtR', 'MZEszE1Wh0@gmail.com', '$2y$10$ROm6jzWZUvg7aMtH/.db4OErVa4vOqmfYAxbfEQSwfwAWOr37dq1q', 0, 1, NULL, '2516317306', '2023-09-12 09:52:41', NULL),
(6, 'lkPJtnOOBR', 'JFKnonBe3U@gmail.com', '$2y$10$4WXVrWmKZdCyvSDEQeh.iOcpBxQDRD/NAUyLh/QU2RMJl.gk4FDry', 0, 1, NULL, '5627844254', '2023-09-12 09:52:42', NULL),
(7, 'BTUMGJh4Ls', '6TgOzE3uCA@gmail.com', '$2y$10$ZqWTfsYksj8h55t529QkD.xe12mJ/3xW51M7ACc12K.AmGXBkxWPa', 1, 0, NULL, '7532766671', '2023-09-12 09:52:42', NULL),
(8, 'QK3KU2sYrH', 'TMQsaP7u5l@gmail.com', '$2y$10$xt9b14d5R4tdYgBrw13Dk.30RMEjAhQ0stjyIT9dmQRmjG6uWMnaS', 1, 0, NULL, '3976572268', '2023-09-12 09:52:42', NULL),
(9, 'o5DizbOuka', 'Uxn8vp0zge@gmail.com', '$2y$10$kdBDv9hk6whsZ8NT5W6QkuF5HufH6FRsh1OXwBFHCa/qsQ8ZAzu2G', 1, 0, NULL, '2955316959', '2023-09-12 09:52:42', NULL),
(10, 'Ns06kOcphn', 'dGjYJo5SCu@gmail.com', '$2y$10$.TquI9rhckCnNW33AQ.Xle8hfaa2I9g1/gIAqnqVafvA4PBont126', 1, 0, NULL, '5861832138', '2023-09-12 09:52:42', NULL),
(11, '2AOcKHd0gr', 'l3Srz1R5pQ@gmail.com', '$2y$10$LCqBsg8iM8Sw.GHGMak4Hef.JCFhTKpVEip13qvX9y62MtO8sC8kS', 1, 0, NULL, '3633252190', '2023-09-12 09:52:42', NULL),
(12, 'FiGlsYBcOQ', 'm1te8VHoNf@gmail.com', '$2y$10$NcppLhKlKCWvvNfRc.anQeYghLmUyuEs/YE3sSyUyZX.unrzcX9Ty', 1, 1, NULL, '1000191427', '2023-09-12 09:52:42', NULL),
(13, '0meaBY9L9D', 'kdC9IfzTZY@gmail.com', '$2y$10$SXPRv4aQQqzumBaET/qB1e/Z3EBd9l/1UUAEkqntUoLLiBTBzoy4y', 1, 1, NULL, '9079343244', '2023-09-12 09:52:42', NULL),
(14, 'x1uYFzapwq', 'TmD9JOejEz@gmail.com', '$2y$10$VIzLZk6fUAXCoAkIQg6LXO0PI/tT3NRMAUKFa5AwpVUkU3wCvh9la', 0, 1, NULL, '5717898702', '2023-09-12 09:52:42', NULL),
(15, 'c3lG3o7Qxy', 'VKrOVj1QBv@gmail.com', '$2y$10$IFUzclfUIkD3Anzj3XW6Nu02kLgNqODqoffnqcOQ8IzIY6cA8YEEG', 1, 0, NULL, '2172593696', '2023-09-12 09:52:42', NULL),
(16, 'BvyKC2mDsL', 'tdN4HVdiqq@gmail.com', '$2y$10$Z3VT2VNea/hwfh1Hp5sTS.PTSFgM.B0WIIFLkCdVrtJBWJZq7eGa.', 0, 1, NULL, '2806187101', '2023-09-12 09:52:42', NULL),
(17, 'ctnpJX0eDy', 'RojrijleEJ@gmail.com', '$2y$10$wCpEFY60T1knYFxdi7.M2ufR4qUWJef3sQE9fmSRLFjH.39tLrYWa', 1, 0, NULL, '7596345371', '2023-09-12 09:52:42', NULL),
(18, 'n0eiq8YJTD', 'OJxIiA7N9h@gmail.com', '$2y$10$oT.U2.M.0AWHDnClJxehLuvNvtH5589WvdZ6o7LDOGzzrIqpLxWeS', 1, 0, NULL, '8987617224', '2023-09-12 09:52:42', NULL),
(19, 'dN34kOFbSZ', 'J1m0xrvgZO@gmail.com', '$2y$10$UgkLrSoMW.FNQwdV.7mpCu0Rf.l.7WmSeagOXUEmBueiAeERLiZp6', 1, 0, NULL, '7029884067', '2023-09-12 09:52:42', NULL),
(20, 'SnwSYWpja9', 'MFJAiec0CO@gmail.com', '$2y$10$rqAF6g.Ga.Ox8uUtAN3D0.OJhUtZysNEOZLGOr1WUzsYvnV9XrQC.', 0, 1, NULL, '6615113137', '2023-09-12 09:52:42', NULL),
(21, 'GAZJyehi7J', 'ObH69881F8@gmail.com', '$2y$10$vKn.w1cZA.mO.oalHzJccO7hZHQyf7wxfBm9dCfMQpZsgDtyS0xXy', 1, 0, NULL, '1486713717', '2023-09-12 09:52:42', NULL),
(22, 'zR7nn4mEtr', 'DJ5pmOnJ2c@gmail.com', '$2y$10$N0V/mlTyLfzQix4LbSy4Qe.YQxDtX61z1S2IYjNfMzjULCambh.0q', 1, 0, NULL, '3129373146', '2023-09-12 09:52:42', NULL),
(23, 't4uHjAYAXY', 'lNAPUYesxJ@gmail.com', '$2y$10$EAz7OuVf6IEr80KHxms7ge10sTjdyssl1hP.BnJ6j8U1w9k6hUsFq', 0, 0, NULL, '1140271906', '2023-09-12 09:52:43', NULL),
(24, 'DlRnD6I9PZ', '1C1dFTZBq1@gmail.com', '$2y$10$hoBBkwUvklyK9ynoHOCizeMO5sstXnWB7YQaXhrczN.0Cl.9GU5eG', 0, 1, NULL, '6581881947', '2023-09-12 09:52:43', NULL),
(25, 'ZdWO8KJw60', 'ALiDfFOCdC@gmail.com', '$2y$10$gzffhTMhydPtZAkHshjFBuGbGycbr7zaem/elXDyfsi7pFSLXKGhC', 0, 0, NULL, '5513937178', '2023-09-12 09:52:43', NULL),
(26, 'I1iDEQMrnm', 'PLEkLt4QpN@gmail.com', '$2y$10$nwrfF8TDBNHg4h50.7w2xumfDZcMVeSlE0JbztntYME1LP0LS4ToS', 0, 0, NULL, '1889782977', '2023-09-12 09:52:43', NULL),
(27, 'GGPkqwPeao', '6Lzq37WF36@gmail.com', '$2y$10$eUqYCt0y2Hz/l2bi3lZgTuly2ddQ04.w7aXN6p6tsJpzos2yY30Tu', 0, 1, NULL, '7078342465', '2023-09-12 09:52:43', NULL),
(28, 'AxUEtUpUmm', 'mTGc2Xzf6e@gmail.com', '$2y$10$8uoQ.hBcat1av95.PkatJ.za8Ju3MvhGrn1u.FGPqpwqtfHn6tE8m', 1, 0, NULL, '1040305777', '2023-09-12 09:52:43', NULL),
(29, 'HzH49xtR5z', 'BQLOMQ7BTz@gmail.com', '$2y$10$IdZA9TJePfaOaHwJfFLVReHbVgiz1ufLVkfBU/1O9g1I5n3tnwTIa', 1, 1, NULL, '8047365173', '2023-09-12 09:52:43', NULL),
(30, 'ZOSCEhVSS9', 'YHa2MMXkOF@gmail.com', '$2y$10$yi0oVGV1clXuU2AV9auhfu2DP3n9HKGeFSq4jH/dgOZ9FymeX/CuG', 1, 0, NULL, '3232864709', '2023-09-12 09:52:43', NULL),
(31, 'UmWnJxp3PD', 'X7R9fhtuWe@gmail.com', '$2y$10$mcQhO9ZOHUhtLimn29u78e/On75TpSeB4NWoQ.SUjvEN2hzwC58BC', 1, 1, NULL, '911271378', '2023-09-12 09:52:43', NULL),
(32, 'EIFnMcaZeL', 'C1YxIiMndk@gmail.com', '$2y$10$aM4c9gjNFpwmR0jYzCyyOuTJD/Q3WMImpDouD22ki7d68dOPAsjSW', 1, 1, NULL, '8351868338', '2023-09-12 09:52:43', NULL),
(33, 'XzIa4exITQ', '3sbXTaeBqK@gmail.com', '$2y$10$GoSWZ9kXdfHNCcytH9IVLuvVizu50HD8tffnrepKpCCT2qoEDjlUW', 0, 1, NULL, '5963273033', '2023-09-12 09:52:43', NULL),
(34, '0619ayzRGj', 'hcyVZAhVmS@gmail.com', '$2y$10$TA6IPdqHWeUB/vYsUT9dP.KYqpOky4rJbY3EjKO.qKuwLfI6VG/Mu', 1, 1, NULL, '7536370178', '2023-09-12 09:52:43', NULL),
(35, 'NzYA52l98N', 'rOedSVGIYs@gmail.com', '$2y$10$sNcsFzc0jEy0hSvYS.8aAekQmz/BpLA2c.KMN7UC30527wOhmoqHu', 1, 1, NULL, '5259769573', '2023-09-12 09:52:43', NULL),
(36, 'NdpAjqGdjS', 'QIeqqQXgih@gmail.com', '$2y$10$fjv2Kjg.dI18p4M1vF0oFetyWXEqcj29Qf9N2e6ebZWhZ/2VOVXQa', 1, 0, NULL, '1275436871', '2023-09-12 09:52:43', NULL),
(37, 'mzQz9VIEjC', 'YIwgyYR35H@gmail.com', '$2y$10$gFLK/3bBRAt6pCYuq6xCieX13aD6cpbL0LKPw9P2l0dLxRGxqLKBm', 1, 1, NULL, '6551995928', '2023-09-12 09:52:43', NULL),
(38, 'IIqg9jNUmw', 'zxgnjQ5Wbw@gmail.com', '$2y$10$292LZebeS35dcAbv05DJa.mvMU8VR7fl3bluB0wmxrxjS1CIoFxr6', 1, 1, NULL, '517318979', '2023-09-12 09:52:43', NULL),
(39, '7XOBZnKp1V', 'hEUCSx0Ioe@gmail.com', '$2y$10$Kf6gymw.fBB/PqZABeNu9uglzOGy6UVcAcD.eDqa7uEymwLAyPG/u', 0, 1, NULL, '8287211174', '2023-09-12 09:52:43', NULL),
(40, 'CyPS6guUt9', 'k1YtbkTt1p@gmail.com', '$2y$10$Rj935rb1Z1HVxiusTZ2EXuDTbipI1SIDwHLH0hrz5/6GsX8YQSxES', 1, 0, NULL, '3426017178', '2023-09-12 09:52:43', NULL),
(41, 'tp2M4FCWHB', 'NoItFpbxcs@gmail.com', '$2y$10$04viUaJIFcn7U4S6wWKsKOpa3P.yiUkLhVNX1i5nXSs/1vnBUYol2', 0, 1, NULL, '4099142566', '2023-09-12 09:52:44', NULL),
(42, 'zSKB0w33ea', 'pLdgul1j63@gmail.com', '$2y$10$HSR37EHBlnSBc8KA88qAse3g/34xPFk4TbJPAmT1aCM0Ui7URxusW', 1, 0, NULL, '5361031284', '2023-09-12 09:52:44', NULL),
(43, '7mzbxi2XzA', 'hwZ6xWvqNg@gmail.com', '$2y$10$ICAZsL3IS6HGSKEgnehWdupOhsPvmF/XlGEUscoFbf6sbBGf0Up.G', 0, 0, NULL, '7224170290', '2023-09-12 09:52:44', NULL),
(44, 'ddLzKTUWep', 'jvUs2v2bYq@gmail.com', '$2y$10$glp5KHI0Oc1PiSu7tGOYguhfmoWoraaFN1b2v7mal6sCca5a6DXcK', 1, 1, NULL, '7182297800', '2023-09-12 09:52:44', NULL),
(45, 'Md0cjvrxkx', 'Uxmjux7X17@gmail.com', '$2y$10$b9JtE0WU4ZZkAjN1S4zZlux9yxyOs344v3CZ9tdE6vDeVflzi7T7m', 1, 0, NULL, '8737863372', '2023-09-12 09:52:44', NULL),
(46, 'WVAW3StCuh', 'eca1bwvf8S@gmail.com', '$2y$10$kGZL9KttNGLF9aw8vE7yBO76Yco6PyQPIt8omH2U9tAtNoZOJ263e', 0, 0, NULL, '4727717833', '2023-09-12 09:52:44', NULL),
(47, 'Iu0HOrQaK6', 'k9G5Hyj5U3@gmail.com', '$2y$10$Vwtk4yNjKtoFcSHid.7Qxu9j.DJq.vK39FU8nnjk3b35FPdi9odgy', 0, 0, NULL, '3673438696', '2023-09-12 09:52:44', NULL),
(48, '1PRMh2GL3T', 'rIPC0T11Q3@gmail.com', '$2y$10$Osnd/7WIUfhV7uuGslQT8emcul1W9GeK0I0hqiQD9x/Sy0obv3wnW', 0, 0, NULL, '8671703341', '2023-09-12 09:52:44', NULL),
(49, 'gEdvXIbcxS', 'weCyTkaJk7@gmail.com', '$2y$10$s0OaWODbkJ1vaLN6cSy5aelwLpPzBxvOP.d2mfHWq6dVIMk7kACVG', 0, 0, NULL, '650664634', '2023-09-12 09:52:44', NULL),
(50, 'wtcvnY04dg', 'XIaScQA2sL@gmail.com', '$2y$10$RhDudm2/dl.Ni5wbk3SIv.uk6vaNSRz1GXDmpiHhm4mlNFxrJvDyC', 0, 1, NULL, '4672560304', '2023-09-12 09:52:44', NULL),
(51, '9wBYTQqErt', 'rxDfgtmhBV@gmail.com', '$2y$10$YwugXsKPKwuBbdqHw6.BzOOE2f9gAfG6mBOIij2quH.pL6svdVMym', 0, 1, NULL, '4598147012', '2023-09-12 09:52:44', NULL),
(52, 'Bg54Ra9oyb', 'TBceW0fKZ5@gmail.com', '$2y$10$Ohsn2bcZMWPaVNOdRDBoIu5VmwI4gPIDVpPMhfL/ouYuT5stv/VW2', 1, 0, NULL, '8331976793', '2023-09-12 09:52:44', NULL),
(53, 'ctcd0pM8tB', 'sxOel4a0zw@gmail.com', '$2y$10$psfh5tMrr/dD4CcDqfejhOY4gDq691zabZ6JhTv9K3sFeBOy1mee2', 0, 1, NULL, '7294433233', '2023-09-12 09:52:44', NULL),
(54, 'zshJhHAY2u', 'vizAU9xyr6@gmail.com', '$2y$10$Nqb0cgtl3UKXo8vm5AzigOwaZJrzBm.vy2wyz93noRUPS55d0YUD2', 0, 1, NULL, '8943672464', '2023-09-12 09:52:44', NULL),
(55, 'OmD1UCjaS6', 'UZdg1e5oJq@gmail.com', '$2y$10$Pl9/6AtwBZLvrCKIJT7OceEIwMn7FBaxfiLHGDaZ8ve9lbaHP5Qk2', 0, 0, NULL, '6540847482', '2023-09-12 09:52:44', NULL),
(56, 'tC635Xa3eu', 'dn3L4EpJFS@gmail.com', '$2y$10$uRy3pc6Gc7BqQ4u6EmsIpu4meRGC/TMAvOf.JMWyoQjDk7g/hJnDS', 1, 1, NULL, '1117756363', '2023-09-12 09:52:44', NULL),
(57, 'AM07j0vKUP', 'HdT7FM2SwQ@gmail.com', '$2y$10$xpeaKa07KOULz18AszJTPOTHLJ4t3Mh5PdqjWPDOH.ZfbGel7ROr6', 0, 1, NULL, '9251743096', '2023-09-12 09:52:44', NULL),
(58, 'fWc0j7qAcb', 'HaXDLVyn3C@gmail.com', '$2y$10$8Qe93niZusQxXsYTk8VYO./xK9GuSX7Wg8wGOZaOjZR1Uu.jN9QMK', 1, 0, NULL, '1773259856', '2023-09-12 09:52:45', NULL),
(59, 'QB2NzuoSnQ', 'atDKiiSPT4@gmail.com', '$2y$10$mUceE/NbYK2aDH0ZriwGJeuC3z8iZMRS5MDNLsQ2xDt281.6C.9QS', 0, 0, NULL, '7420832017', '2023-09-12 09:52:45', NULL),
(60, '8yiJpu3tKB', 'f68Tif0z19@gmail.com', '$2y$10$4ZSJMhPguyDeI8sAX9wEXO2SBxmquUKt.c/L6QMYq7aOPyGTmHbV2', 0, 0, NULL, '5639749425', '2023-09-12 09:52:45', NULL),
(61, 'mFBj4dwnMR', 'bZ9D34c1R7@gmail.com', '$2y$10$/iJ51Iy1n2cYBRId55ffaemGqAOXlTYmwFdG9WA9Icg6cHJ7mPdmK', 1, 0, NULL, '8479775705', '2023-09-12 09:52:45', NULL),
(62, '5ulqOIgojG', 'fiaqRmvTCC@gmail.com', '$2y$10$8X8WWKljKqcTjLUaxHjExOskDshR4LVvW/K507QGD6dBmAxylgtIW', 0, 1, NULL, '9326008360', '2023-09-12 09:52:45', NULL),
(63, 'wC23B4yhRD', '2crErJgjtV@gmail.com', '$2y$10$V53w0Iy74f0MfCts2hWtYOZ3CQY872a/k0vf7qRTC0fLdSBpS36L.', 1, 0, NULL, '8748301607', '2023-09-12 09:52:45', NULL),
(64, 'GRz840Hnqb', 'LBsOYvqK6X@gmail.com', '$2y$10$4WhNOrp6SkoCSx1ZQPQd/un.jDZtImJ6zHgRiAtUOD0VT8xEWGdC2', 0, 0, NULL, '8191988439', '2023-09-12 09:52:45', NULL),
(65, 'vdwcTObLib', 'i0WnSnhuoK@gmail.com', '$2y$10$ZOrLDYGHgWhkKSjWr6kkj.u7KrHkPClyNzpKkfTvKcNlu1OSEqqai', 0, 1, NULL, '4903502232', '2023-09-12 09:52:45', NULL),
(66, 'eyrGBzh4es', 'aDLCMyUEpe@gmail.com', '$2y$10$HbFbV9HvS.6SWTgVX52zbuGoJgNGSzAjb..nYQNT2RURHE43T4TrK', 0, 1, NULL, '6358739278', '2023-09-12 09:52:45', NULL),
(67, 'KNHqgUurwH', 'gxUYkHEIIf@gmail.com', '$2y$10$/m4dHpzRlHHEJcwqOzV.G.wQNZiFiQeQTQq4ykjnhyO2B.JG/3OCS', 0, 1, NULL, '3333665579', '2023-09-12 09:52:45', NULL),
(68, '6wDqWF3KYG', 'qXyGugMvmi@gmail.com', '$2y$10$pY3IocGY9WESiHONQ9ORrOkTtrRdXo50YMZKw9piGdoV0jORt5DYS', 0, 0, NULL, '294773985', '2023-09-12 09:52:45', NULL),
(69, '26i2OxLgoI', 'vXJi27Q0Qf@gmail.com', '$2y$10$g2SRMYAdDbfoQEpwVZxrC.LdaQXzIBkq.yQSU9B8J347nGH8hEh7C', 0, 1, NULL, '2118800949', '2023-09-12 09:52:45', NULL),
(70, 'U5wEmsmu13', 'Sif4UyfVBK@gmail.com', '$2y$10$FUbIMGNvpEhd2LoDlSF./uL4fyLnqQ48F1Be09yXCFaxcZyVx/ezW', 1, 1, NULL, '1679835713', '2023-09-12 09:52:45', NULL),
(71, 'WNwy29uvpQ', '3opEIZHDk5@gmail.com', '$2y$10$A7AbrVsgfKEy/lpEJ8k/q.MIfdY3ToEhhzTin/3GzYYDnw6nRzwu6', 1, 1, NULL, '4822404847', '2023-09-12 09:52:45', NULL),
(72, 'j9NCnhpjrz', 'Xefysy7TB1@gmail.com', '$2y$10$ADACqSLLBpLMgAB3oggbYOU6OW/tGU.99AiyKO7Ptew9i0d/Ps9Ya', 1, 1, NULL, '8516044024', '2023-09-12 09:52:45', NULL),
(73, 'ZzqCKcKNNH', '5r1OfP4tSX@gmail.com', '$2y$10$R2nXcx12Nd3p7kevBZc.pOatwMaAUXqYLmSLXmifbeyGQagNF73Rm', 1, 0, NULL, '7768956472', '2023-09-12 09:52:45', NULL),
(74, '4ynjd5q4G1', 'qbGMD8lzIZ@gmail.com', '$2y$10$0m1sOge9kSIc5wbmY9Piwe2rqvhIoLOdjjxZ9tjDT472aI49Ut4A2', 1, 1, NULL, '6331627295', '2023-09-12 09:52:45', NULL),
(75, '3doxfjt3Nz', 'lB1jVLZRlq@gmail.com', '$2y$10$52TultJsTUeQUz1yAf7YWOFnGtfUEh4cV.cL4DmMirFrP9JZIJYc.', 0, 1, NULL, '2883732179', '2023-09-12 09:52:45', NULL),
(76, 'txylvDkKst', 'y7V7M6EfI0@gmail.com', '$2y$10$IobzJycS8cgp/wTQNCP/OuvV1NC7zot8raJMuYQOcmLxr9450G8KG', 0, 1, NULL, '5474185286', '2023-09-12 09:52:46', NULL),
(77, '1X4FzBQGbe', 'rrUdQQDjNb@gmail.com', '$2y$10$Y1A1LOTnp4WE1xd5fwncgOpI8jlHRcgWLP9K4JtQMQp2WguHwDQLi', 0, 1, NULL, '4678023823', '2023-09-12 09:52:46', NULL),
(78, 'uxAL2md0fs', 'QagqsZGKhF@gmail.com', '$2y$10$N3kkzfITHNj23U3mR5AcDe97Xp3MUq21P/WLXpHQRG6KOUJuymAYq', 1, 1, NULL, '1636508674', '2023-09-12 09:52:46', NULL),
(79, '535JyJP5ie', 'MgAo8tzrjz@gmail.com', '$2y$10$pc2pUqZQtIBNIa1CaKElmOzhJSRJUPI2ykFQ5bFW//UhDDpxAkDIW', 0, 0, NULL, '6913554150', '2023-09-12 09:52:46', NULL),
(80, 'eQ7dzp9E1f', 'cc8Vcnxdcn@gmail.com', '$2y$10$bLy2XskmvwgavG7VpLeCDeORHrYoQ61J/H56SzZcZwwLJNyPV8W8G', 1, 0, NULL, '9038340384', '2023-09-12 09:52:46', NULL),
(81, 'D7QifLm6pE', 'zr9oEUjX30@gmail.com', '$2y$10$70aIxI4/EukZ5qAb.QPR5u9cvUfsxUY50I0b.H1gnSXID87BLONaO', 0, 1, NULL, '2621639469', '2023-09-12 09:52:46', NULL),
(82, 'r0oGvIyMMj', 'Dkz3WIWFIK@gmail.com', '$2y$10$2bqrgQLPptpQBxuVkvVRruk1XjteBL87fMk/46RvBgMMKfcl5zQEW', 1, 1, NULL, '6288967407', '2023-09-12 09:52:46', NULL),
(83, 'O9JEMef3dL', 'E32BxyqdPc@gmail.com', '$2y$10$4qXiBR2cJJWAqguw1nF35uQOEoiNyocd82OyaY.9CPHD7x8Fg5cNq', 0, 0, NULL, '4406803257', '2023-09-12 09:52:46', NULL),
(84, 'Whzu6Q7Y8c', '6qr7zoUtM4@gmail.com', '$2y$10$l7Mv0h/qGiptTlHsMxUoEOIUXh9zBN6J14kqn2vrsgcgfoKZkCXNO', 0, 0, NULL, '6765134777', '2023-09-12 09:52:46', NULL),
(85, 'BjCZQx8OVJ', 'CnwHA3N6Ho@gmail.com', '$2y$10$/5vH3mg7IzwTEBtaHYeBmO4iWb2PUAUxb2hZbFq.KiHVJC8LnlE9i', 1, 1, NULL, '9811709355', '2023-09-12 09:52:46', NULL),
(86, 'gTlkGT10dP', 'sgRbiLfcPC@gmail.com', '$2y$10$NFNDMZzwFsxDgU5skSI14./UzxUxnDGyDp9OCu742Z/9CrvZmn91C', 0, 1, NULL, '3540326624', '2023-09-12 09:52:46', NULL),
(87, 'OJl4bJuE9u', 'vaLC2kR1MI@gmail.com', '$2y$10$8H.ly4zv7Zx.z2NUD0NWYu6YVIKFrTy/ITtlGz9UCXaF8cf8MLPo6', 0, 0, NULL, '4870462017', '2023-09-12 09:52:46', NULL),
(88, '3aX6XdjyzW', 'RVRKX7WIXZ@gmail.com', '$2y$10$9IJ9VZs.oyDuvTIB6Sb0sefDqzcr2SNQlT9RMpm79Zwg2yzpR0u3K', 0, 1, NULL, '9972588962', '2023-09-12 09:52:46', NULL),
(89, 'm79JRV40ie', 'pnxUECXuGI@gmail.com', '$2y$10$FHXC.F4GUQ5ZHj5BfID3OOnjdB0r/ded5.MYUNI9T7tSbQbOqUkTC', 1, 0, NULL, '4969362987', '2023-09-12 09:52:46', NULL),
(90, 'svb6RPDIoA', 'OtrAYxn5u4@gmail.com', '$2y$10$JzbJ.Lv8aI8IvvAuHXGdQewsUWHT5rINghDrzXYiR9aXC0CYMoIpK', 1, 0, NULL, '4668739201', '2023-09-12 09:52:46', NULL),
(91, 'XjJAMeAy6c', 'qWXi8beKAk@gmail.com', '$2y$10$win0fIxQ/STN9yYRtspQR.9mfA/AGXMM5hDLfF6n8CT5qkhSxmYrm', 1, 0, NULL, '3120876683', '2023-09-12 09:52:46', NULL),
(92, '5fR13N62kE', '8EsFHrbZQ5@gmail.com', '$2y$10$f8.qtGf/jobh9olUmzbqqucxqWgz4mahzA13Ba8EBzSIhWeo/XTji', 0, 1, NULL, '9832932509', '2023-09-12 09:52:46', NULL),
(93, 'T6DeRR9TkO', 'eXemE7jwrm@gmail.com', '$2y$10$Am9EA6JEW50TGik0kg2oAeOlP7BMjiSt/uFcDIsnGAwYn8CS2J9GC', 1, 1, NULL, '4470647486', '2023-09-12 09:52:46', NULL),
(94, 'ErMRkFC0yl', 'r0EyH1dKRR@gmail.com', '$2y$10$jtFecJQY9SLhjHXycBdbq.1dctJfiZT7smBrvVPUJPNx9S0CEnW3y', 1, 0, NULL, '5745918420', '2023-09-12 09:52:47', NULL),
(95, 'eJJ6cgkxin', 'oKOfCykxP4@gmail.com', '$2y$10$uoZt3oVl8I62rCwTsOPXjOAlhRwExgfZ6WCNu6Tkxg1DtDEFrU/Eu', 0, 0, NULL, '9291790235', '2023-09-12 09:52:47', NULL),
(96, '9At3SP749f', 'zFYwP0Gr8O@gmail.com', '$2y$10$6CX2qoXchyhRxgfur4X26Ov2qzKa83rCj/SPUVTiGSZ0GAtAVibua', 1, 1, NULL, '4374617132', '2023-09-12 09:52:47', NULL),
(97, 'mXArdEhNYw', 'jV88TiVQZp@gmail.com', '$2y$10$W19XVss7QfYuRG2ITGoRae1rVzTGzcASM2aJBW4YZiDYXXs.D5KZ.', 1, 0, NULL, '4935221801', '2023-09-12 09:52:47', NULL),
(98, 'kWJECsU5z7', 'K2s1E4FmB5@gmail.com', '$2y$10$ARgPfTksnLT9ONaowlhqnugploV6LEHV6MsIuGi6jqAXaa9nq2Rq6', 0, 1, NULL, '4667838362', '2023-09-12 09:52:47', NULL),
(99, 'DhxB7h0bEZ', 'AfotIvuQVP@gmail.com', '$2y$10$xDDN6bcLNEwPFigrpa4AL.0NPSm4GH0i6eSLIrjhX98irhwUeQtIy', 1, 1, NULL, '610070049', '2023-09-12 09:52:47', NULL),
(100, '1d4MvYGfhK', 'LVTgLMZ8St@gmail.com', '$2y$10$RWT14fcKGSBkzGwZ/rBlg.sRgESuMrWuaQ8shvuqquWC69mWrb7ai', 1, 1, NULL, '4281563322', '2023-09-12 09:52:47', NULL),
(101, 'Vhaooforjob', 'Vhaooforjob@gmail.com', '$2y$10$fTvGBfDi2aD4v.GZ87cxQeTKw.epl3.2lKOCjLxmd22iT4rsqgWq2', 1, 1, NULL, '0949847277', '2023-10-28 01:16:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_info`
--

CREATE TABLE `users_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_info`
--

INSERT INTO `users_info` (`id`, `created_at`, `updated_at`, `user_id`, `last_name`, `first_name`, `gender`, `dob`) VALUES
(1, '2023-09-12 09:52:41', NULL, 1, '4fGbFi', 'kztpCS', 1, '2023-08-10'),
(2, '2023-09-12 09:52:41', NULL, 2, 'EVmgcW', 'dpHjnK', 1, '2023-05-29'),
(3, '2023-09-12 09:52:41', NULL, 3, '4AXvG7', 'tJzIFB', 1, '2023-09-06'),
(4, '2023-09-12 09:52:41', NULL, 4, 'IGi8GQ', 'HQWqjq', 0, '2023-09-07'),
(5, '2023-09-12 09:52:41', NULL, 5, 'NtXd2r', 'efpYDq', 0, '2023-05-04'),
(6, '2023-09-12 09:52:42', NULL, 6, '9vEuSH', 'n8206Y', 0, '2023-06-16'),
(7, '2023-09-12 09:52:42', NULL, 7, 'ipI4jn', '2kr9Fl', 0, '2023-03-24'),
(8, '2023-09-12 09:52:42', NULL, 8, '9eHE3w', 'UPUz04', 0, '2023-07-02'),
(9, '2023-09-12 09:52:42', NULL, 9, 'RowFLw', '2nffIA', 0, '2023-09-05'),
(10, '2023-09-12 09:52:42', NULL, 10, 'RlaL8V', '36l0MF', 0, '2023-04-07'),
(11, '2023-09-12 09:52:42', NULL, 11, '6j3Bf7', 'UCcUFE', 0, '2023-06-15'),
(12, '2023-09-12 09:52:42', NULL, 12, 'l74T1q', 'eGehTe', 0, '2023-06-28'),
(13, '2023-09-12 09:52:42', NULL, 13, 'bITs1A', 'FIFeRe', 1, '2023-07-09'),
(14, '2023-09-12 09:52:42', NULL, 14, 'aqneam', '4WhNUN', 0, '2023-05-12'),
(15, '2023-09-12 09:52:42', NULL, 15, 'vtKkmi', 'cUWnFL', 1, '2023-08-21'),
(16, '2023-09-12 09:52:42', NULL, 16, 'EOSUUK', 'OnFhhf', 0, '2023-06-17'),
(17, '2023-09-12 09:52:42', NULL, 17, 'jQoDSo', '7gLIvQ', 1, '2023-03-30'),
(18, '2023-09-12 09:52:42', NULL, 18, 'h5Sz3C', 'QJlv3F', 1, '2023-08-06'),
(19, '2023-09-12 09:52:42', NULL, 19, 'AXgpq8', 'RPWK30', 1, '2023-03-30'),
(20, '2023-09-12 09:52:42', NULL, 20, 'QJQL9e', 'tUak4t', 0, '2023-06-14'),
(21, '2023-09-12 09:52:42', NULL, 21, '2ZyCi1', 'O2ZFFB', 1, '2023-04-05'),
(22, '2023-09-12 09:52:42', NULL, 22, 'OB7lXm', 'GDtM5Q', 0, '2023-05-03'),
(23, '2023-09-12 09:52:43', NULL, 23, '9yqJh6', '5V6RSV', 1, '2023-06-25'),
(24, '2023-09-12 09:52:43', NULL, 24, 'yeiOe5', 'F6GhR9', 0, '2023-06-10'),
(25, '2023-09-12 09:52:43', NULL, 25, 'qX89hw', 'xN2osa', 0, '2023-07-09'),
(26, '2023-09-12 09:52:43', NULL, 26, 'rkn3Q7', 'iYvrzQ', 0, '2023-06-17'),
(27, '2023-09-12 09:52:43', NULL, 27, '6413Xo', 'ewLQ9Q', 1, '2023-05-19'),
(28, '2023-09-12 09:52:43', NULL, 28, 'vMY5CB', 'k9uSd4', 1, '2023-07-02'),
(29, '2023-09-12 09:52:43', NULL, 29, 'xMaLX8', 'DdTAXV', 1, '2023-04-09'),
(30, '2023-09-12 09:52:43', NULL, 30, 'ZHQXjy', '0Utf6D', 0, '2023-05-14'),
(31, '2023-09-12 09:52:43', NULL, 31, 'Mrx0HZ', 'GLTVyC', 0, '2023-08-03'),
(32, '2023-09-12 09:52:43', NULL, 32, 'LUcrtP', 'drdk3K', 1, '2023-08-18'),
(33, '2023-09-12 09:52:43', NULL, 33, 'L69jfC', 'FxPvzJ', 0, '2023-04-25'),
(34, '2023-09-12 09:52:43', NULL, 34, 'ghEMPO', 'CDZMBd', 1, '2023-08-21'),
(35, '2023-09-12 09:52:43', NULL, 35, 'vliO7N', 'suAzlX', 0, '2023-06-05'),
(36, '2023-09-12 09:52:43', NULL, 36, 'aK2epO', 'OFt4b1', 0, '2023-08-27'),
(37, '2023-09-12 09:52:43', NULL, 37, 'ECQc6X', '0DUq88', 0, '2023-08-11'),
(38, '2023-09-12 09:52:43', NULL, 38, 'm1bjZc', 'CSIgoh', 0, '2023-05-29'),
(39, '2023-09-12 09:52:43', NULL, 39, 'brZXGJ', 'pA6kw4', 0, '2023-05-07'),
(40, '2023-09-12 09:52:43', NULL, 40, 'iwEDoD', 'uLO3x2', 1, '2023-05-20'),
(41, '2023-09-12 09:52:44', NULL, 41, 'orqfND', 'Kamzmg', 1, '2023-05-13'),
(42, '2023-09-12 09:52:44', NULL, 42, '0VXgz7', 'C5qjC9', 0, '2023-06-25'),
(43, '2023-09-12 09:52:44', NULL, 43, 'ZBToOC', '1JvtK6', 1, '2023-07-08'),
(44, '2023-09-12 09:52:44', NULL, 44, 'THXg8u', 'fI1Am9', 1, '2023-08-19'),
(45, '2023-09-12 09:52:44', NULL, 45, 'LFnhIS', 'hGPwyQ', 0, '2023-07-12'),
(46, '2023-09-12 09:52:44', NULL, 46, 'l2tZ9S', 'HjKmm1', 0, '2023-05-28'),
(47, '2023-09-12 09:52:44', NULL, 47, 'vtxFmr', 'nvW3uF', 0, '2023-08-03'),
(48, '2023-09-12 09:52:44', NULL, 48, 'o7iOM6', 'cgYhEQ', 0, '2023-07-01'),
(49, '2023-09-12 09:52:44', NULL, 49, 'yA6v8M', 'iJO4eI', 0, '2023-05-29'),
(50, '2023-09-12 09:52:44', NULL, 50, 'ZVUZso', 'DwhGwY', 1, '2023-05-18'),
(51, '2023-09-12 09:52:44', NULL, 51, 'Gnt8Sz', 'L1zu7T', 0, '2023-07-25'),
(52, '2023-09-12 09:52:44', NULL, 52, 'wIUBhv', 'Z5e2tM', 1, '2023-06-14'),
(53, '2023-09-12 09:52:44', NULL, 53, '3KWQMU', 'H75BuX', 0, '2023-04-09'),
(54, '2023-09-12 09:52:44', NULL, 54, '0tnyxN', '03SWR1', 1, '2023-08-02'),
(55, '2023-09-12 09:52:44', NULL, 55, 'DvGqOe', 'iFd4tZ', 1, '2023-05-05'),
(56, '2023-09-12 09:52:44', NULL, 56, 'VpimRA', 'H5OHdL', 0, '2023-05-11'),
(57, '2023-09-12 09:52:44', NULL, 57, 'KRHkrM', '4xLUrO', 1, '2023-04-27'),
(58, '2023-09-12 09:52:45', NULL, 58, 'UxiROa', '3vyx3G', 0, '2023-08-15'),
(59, '2023-09-12 09:52:45', NULL, 59, '9OOov1', 'Q5QwPh', 1, '2023-06-09'),
(60, '2023-09-12 09:52:45', NULL, 60, 'o58XzH', 'nRN2ED', 1, '2023-06-13'),
(61, '2023-09-12 09:52:45', NULL, 61, '4zNOlK', 'dRJo17', 0, '2023-05-01'),
(62, '2023-09-12 09:52:45', NULL, 62, 'nekkgV', 'TFqJd6', 0, '2023-06-27'),
(63, '2023-09-12 09:52:45', NULL, 63, 'wEDfNL', 'CiavZe', 1, '2023-05-09'),
(64, '2023-09-12 09:52:45', NULL, 64, '56KmuV', '36dQZX', 1, '2023-03-28'),
(65, '2023-09-12 09:52:45', NULL, 65, 'HXVD9f', '7y4RUx', 1, '2023-04-27'),
(66, '2023-09-12 09:52:45', NULL, 66, 'V72SyL', '7MKjag', 0, '2023-05-12'),
(67, '2023-09-12 09:52:45', NULL, 67, 'BAWfE4', 'xtGJMM', 1, '2023-03-18'),
(68, '2023-09-12 09:52:45', NULL, 68, 'JkulfK', 'A0w99o', 0, '2023-06-30'),
(69, '2023-09-12 09:52:45', NULL, 69, '7OGRaE', 'QOZtpf', 0, '2023-04-19'),
(70, '2023-09-12 09:52:45', NULL, 70, 'vIUxDY', 'UTcUh9', 1, '2023-07-27'),
(71, '2023-09-12 09:52:45', NULL, 71, 'itdX4g', 'GPQJGX', 0, '2023-05-05'),
(72, '2023-09-12 09:52:45', NULL, 72, 'Co2GzR', 'BfFew9', 0, '2023-08-29'),
(73, '2023-09-12 09:52:45', NULL, 73, 'yPdbVz', '2L01Ft', 1, '2023-05-01'),
(74, '2023-09-12 09:52:45', NULL, 74, 'QXm8m1', 'rUzlIq', 0, '2023-08-29'),
(75, '2023-09-12 09:52:45', NULL, 75, 'jXZm02', 'V8zCAj', 1, '2023-08-16'),
(76, '2023-09-12 09:52:46', NULL, 76, 'UqHZuG', 'hcSGyn', 1, '2023-05-06'),
(77, '2023-09-12 09:52:46', NULL, 77, 'xMgji7', 'G2hINI', 1, '2023-07-21'),
(78, '2023-09-12 09:52:46', NULL, 78, '9hbAbb', 'tDaWrR', 1, '2023-09-10'),
(79, '2023-09-12 09:52:46', NULL, 79, 'wRqt6D', 'P1cD0P', 0, '2023-06-18'),
(80, '2023-09-12 09:52:46', NULL, 80, 'LpUURe', 'zOTggG', 1, '2023-07-30'),
(81, '2023-09-12 09:52:46', NULL, 81, 'rEK7RF', '9LUrMp', 1, '2023-08-01'),
(82, '2023-09-12 09:52:46', NULL, 82, 'bKwWQF', 'oJ7r0N', 0, '2023-03-23'),
(83, '2023-09-12 09:52:46', NULL, 83, '8xMuES', 'aC5HkU', 1, '2023-09-10'),
(84, '2023-09-12 09:52:46', NULL, 84, 'XiD7fE', 'I42ntg', 1, '2023-08-24'),
(85, '2023-09-12 09:52:46', NULL, 85, '7eQitN', '7shFsY', 1, '2023-03-21'),
(86, '2023-09-12 09:52:46', NULL, 86, 'gViYxb', 'eve5tR', 1, '2023-08-13'),
(87, '2023-09-12 09:52:46', NULL, 87, 'U4HTrB', 'H2amjh', 1, '2023-05-28'),
(88, '2023-09-12 09:52:46', NULL, 88, 'xX0Lcj', '5lBjxA', 1, '2023-03-23'),
(89, '2023-09-12 09:52:46', NULL, 89, 'HUmCEL', 'mKtiLA', 1, '2023-07-07'),
(90, '2023-09-12 09:52:46', NULL, 90, 'A58F0K', 'eLFgME', 0, '2023-03-26'),
(91, '2023-09-12 09:52:46', NULL, 91, 'kijNOh', 'OLa1dm', 1, '2023-03-25'),
(92, '2023-09-12 09:52:46', NULL, 92, 'rWQ1iC', 'WOtkv7', 0, '2023-04-29'),
(93, '2023-09-12 09:52:46', NULL, 93, 'BxnmVb', 'pHNATk', 0, '2023-03-27'),
(94, '2023-09-12 09:52:47', NULL, 94, 'SKviZp', 'ec3Edo', 0, '2023-05-04'),
(95, '2023-09-12 09:52:47', NULL, 95, 'lDQ5f6', 'LRtIlr', 0, '2023-09-06'),
(96, '2023-09-12 09:52:47', NULL, 96, 'ieOGiR', 'QgWmw8', 0, '2023-07-23'),
(97, '2023-09-12 09:52:47', NULL, 97, 'GyNauQ', '5vsn63', 0, '2023-05-29'),
(98, '2023-09-12 09:52:47', NULL, 98, 'COwE5C', 'af1v0k', 0, '2023-04-23'),
(99, '2023-09-12 09:52:47', NULL, 99, 'RU7CEG', 'g8jWJE', 1, '2023-07-24'),
(100, '2023-09-12 09:52:47', NULL, 100, 'NWwqyc', 'kOhmqu', 0, '2023-07-11'),
(101, '2023-10-28 01:16:00', NULL, 101, 'Hảo', 'Đỗ Văn', 1, '2003-09-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_product_id_foreign` (`product_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `liked_products`
--
ALTER TABLE `liked_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `liked_products_user_id_foreign` (`user_id`),
  ADD KEY `liked_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `origins`
--
ALTER TABLE `origins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_publisher_id_foreign` (`publisher_id`),
  ADD KEY `products_origin_id_foreign` (`origin_id`);

--
-- Indexes for table `products_in_carts`
--
ALTER TABLE `products_in_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_in_carts_user_id_foreign` (`user_id`),
  ADD KEY `products_in_carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `products_in_categories`
--
ALTER TABLE `products_in_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_in_categories_product_id_foreign` (`product_id`),
  ADD KEY `products_in_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `products_in_orders`
--
ALTER TABLE `products_in_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_in_orders_order_id_foreign` (`order_id`),
  ADD KEY `products_in_orders_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rent_prices`
--
ALTER TABLE `rent_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rent_prices_product_id_foreign` (`product_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`);

--
-- Indexes for table `users_info`
--
ALTER TABLE `users_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_info_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `liked_products`
--
ALTER TABLE `liked_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `origins`
--
ALTER TABLE `origins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `products_in_carts`
--
ALTER TABLE `products_in_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products_in_categories`
--
ALTER TABLE `products_in_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `products_in_orders`
--
ALTER TABLE `products_in_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rent_prices`
--
ALTER TABLE `rent_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `users_info`
--
ALTER TABLE `users_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `liked_products`
--
ALTER TABLE `liked_products`
  ADD CONSTRAINT `liked_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `liked_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_origin_id_foreign` FOREIGN KEY (`origin_id`) REFERENCES `origins` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_publisher_id_foreign` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products_in_carts`
--
ALTER TABLE `products_in_carts`
  ADD CONSTRAINT `products_in_carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_in_carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_in_categories`
--
ALTER TABLE `products_in_categories`
  ADD CONSTRAINT `products_in_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_in_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_in_orders`
--
ALTER TABLE `products_in_orders`
  ADD CONSTRAINT `products_in_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_in_orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rent_prices`
--
ALTER TABLE `rent_prices`
  ADD CONSTRAINT `rent_prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_info`
--
ALTER TABLE `users_info`
  ADD CONSTRAINT `users_info_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
