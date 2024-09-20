-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2024 at 12:54 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `activity_system`
--

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_09_18_114905_create_activities_table', 1),
(6, '2024_09_18_115247_create_user_activities_table', 1),
(7, '2024_09_18_143634_create_activities_table', 2),
(8, '2024_09_18_143934_create_user_activities_table', 3),
(9, '2024_09_19_122752_create_activity_user_table', 3),
(10, '___2024_09_18_143934_create_user_activities_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', 'c7f6a89eaa8652a6a16b89eae3ffc0050623e3014226cf57a4a96a18d4d10811', '[\"*\"]', NULL, NULL, '2024-09-18 07:12:09', '2024-09-18 07:12:09'),
(2, 'App\\Models\\User', 1, 'auth_token', '92f2e66c7182277b5f687fc9104a3b6f141cb495d83096e20a5ca880241c6966', '[\"*\"]', NULL, NULL, '2024-09-19 00:55:21', '2024-09-19 00:55:21'),
(3, 'App\\Models\\User', 9, 'API Token', '8f57003ba788403a8f76d2f4e585f6e651c2c9f9e330c102643d96822df9eb07', '[\"*\"]', '2024-09-20 04:18:50', NULL, '2024-09-20 04:13:42', '2024-09-20 04:18:50'),
(4, 'App\\Models\\User', 3, 'API Token', '980e919a5a5b158d68854a6f2065423fc5d3e875caa915654108d3ed665138d4', '[\"*\"]', NULL, NULL, '2024-09-20 04:14:39', '2024-09-20 04:14:39'),
(5, 'App\\Models\\User', 3, 'API Token', '4507a56d7abb4a2aa8dfd8cc2e197449890e5ba40cf103a89222910f3b7a2791', '[\"*\"]', NULL, NULL, '2024-09-20 04:16:59', '2024-09-20 04:16:59'),
(6, 'App\\Models\\User', 3, 'API Token', 'bd3349aa6d91fca6a4e579e5611fb0b229ed5d7e8604203c4830cc63f5a227b8', '[\"*\"]', NULL, NULL, '2024-09-20 04:36:31', '2024-09-20 04:36:31'),
(7, 'App\\Models\\User', 3, 'API Token', '1ff447331ab5009d059b6e2ac62b3135de902be643b76ad78f25cf613fd72815', '[\"*\"]', NULL, NULL, '2024-09-20 04:36:34', '2024-09-20 04:36:34'),
(8, 'App\\Models\\User', 3, 'API Token', 'd3fc2bcaedcd43d34e5b77f82fe4f92b90aec33d00d2f83afac9f40d6925150e', '[\"*\"]', NULL, NULL, '2024-09-20 04:38:11', '2024-09-20 04:38:11'),
(9, 'App\\Models\\User', 3, 'API Token', '423006f7ff3c6a7414a4dbaeb1d32d3f4caed6bade2c6512a4b0f5078e0a5097', '[\"*\"]', NULL, NULL, '2024-09-20 04:38:13', '2024-09-20 04:38:13'),
(10, 'App\\Models\\User', 3, 'API Token', '823d16ee9a99b9ae2774215ca1418db7fc1ee793c747e7dd9ae5ddadef3b33ee', '[\"*\"]', NULL, NULL, '2024-09-20 04:41:12', '2024-09-20 04:41:12'),
(11, 'App\\Models\\User', 3, 'API Token', 'c0667e5efe6fe69fdfcb150398947d9dd9ea429a1bc6b19403e1fddf603c723e', '[\"*\"]', NULL, NULL, '2024-09-20 04:44:36', '2024-09-20 04:44:36'),
(12, 'App\\Models\\User', 3, 'API Token', '3aa49b6ca97395e9f3e9c9909fe8e4df9a8d97c4ce8865c112b407cd9b29b8eb', '[\"*\"]', NULL, NULL, '2024-09-20 04:45:01', '2024-09-20 04:45:01'),
(13, 'App\\Models\\User', 3, 'API Token', 'ed795f57728943c887b09510d12d1b9c0c0de887f353441a69dc4b6ecc19e83e', '[\"*\"]', NULL, NULL, '2024-09-20 04:45:16', '2024-09-20 04:45:16'),
(14, 'App\\Models\\User', 3, 'API Token', '2631d4c4910bee412d92bafb373148b69e1a223feb3f4c151d168c9a1269c103', '[\"*\"]', NULL, NULL, '2024-09-20 04:46:46', '2024-09-20 04:46:46'),
(15, 'App\\Models\\User', 3, 'API Token', 'bf195e4fec8d518d6974cdbb2b4621472111baf50305b9b9a68d8220de6062a5', '[\"*\"]', NULL, NULL, '2024-09-20 04:47:23', '2024-09-20 04:47:23'),
(16, 'App\\Models\\User', 3, 'API Token', 'c66d4a06aca7c3b3fb66c12d9ca52276661d52bec9bfc2dc7bcea227244eb5a3', '[\"*\"]', NULL, NULL, '2024-09-20 04:49:21', '2024-09-20 04:49:21'),
(17, 'App\\Models\\User', 3, 'API Token', '22b6ebe3120a75eec4313fc4187b9398c85b0d86b84c2edc2d252c47493833c0', '[\"*\"]', NULL, NULL, '2024-09-20 04:49:24', '2024-09-20 04:49:24'),
(18, 'App\\Models\\User', 3, 'API Token', '8dcb05be631548ba540cdcba8f3628d9e0079863743fd0a069bbd4153f35a7cd', '[\"*\"]', NULL, NULL, '2024-09-20 04:49:25', '2024-09-20 04:49:25'),
(19, 'App\\Models\\User', 3, 'API Token', '1240b7e63b80ce4eba1c0de8641f611dc88c11e3ef5049f8405db10a8fe896ba', '[\"*\"]', NULL, NULL, '2024-09-20 04:49:53', '2024-09-20 04:49:53'),
(20, 'App\\Models\\User', 3, 'API Token', '97d17a3ba69bc78e360cfc748bd1cd3d7d40bffecfcf9358f86350b6de502112', '[\"*\"]', NULL, NULL, '2024-09-20 04:50:50', '2024-09-20 04:50:50'),
(21, 'App\\Models\\User', 3, 'API Token', '238d1b6d3f7b524c6416629fae0cba256e28fd31809022d3367141d75635734d', '[\"*\"]', NULL, NULL, '2024-09-20 04:50:52', '2024-09-20 04:50:52'),
(22, 'App\\Models\\User', 3, 'API Token', '839ca3ccfd19feca07082b2ef8b3c4453a73d0bd75b5f8d4b2c36d350ca4658b', '[\"*\"]', NULL, NULL, '2024-09-20 04:50:53', '2024-09-20 04:50:53'),
(23, 'App\\Models\\User', 3, 'API Token', '920cf6f37f752df837b2ce415f979e2c46298a5949b6b69992cc6957414d9bfc', '[\"*\"]', NULL, NULL, '2024-09-20 04:50:55', '2024-09-20 04:50:55'),
(24, 'App\\Models\\User', 3, 'API Token', '5501b199224d1c8726a37bf64fa54cdaf128fa8615051cc02f3360136f91d145', '[\"*\"]', NULL, NULL, '2024-09-20 04:51:44', '2024-09-20 04:51:44'),
(25, 'App\\Models\\User', 3, 'API Token', '4b55ea53d4402c5fcd16ff8e7d8a013364dbb81263310d91cbf2b7d214aeb432', '[\"*\"]', NULL, NULL, '2024-09-20 04:51:45', '2024-09-20 04:51:45'),
(26, 'App\\Models\\User', 3, 'API Token', '6ad4e09004b9cfc65cad6ddffef354965ecd2ed55792b0a18320a7a8da90dd49', '[\"*\"]', NULL, NULL, '2024-09-20 04:51:47', '2024-09-20 04:51:47'),
(27, 'App\\Models\\User', 3, 'API Token', '0846b0f5e1fbbec307e52aaab3d473d7e4f71dd9326fbc0259626dd2719f50f6', '[\"*\"]', NULL, NULL, '2024-09-20 04:53:34', '2024-09-20 04:53:34'),
(28, 'App\\Models\\User', 3, 'API Token', '9bdb4293d35fec880d73126b0efa4386468ce40f66a597ee04672d5c0eb57135', '[\"*\"]', NULL, NULL, '2024-09-20 04:53:36', '2024-09-20 04:53:36'),
(29, 'App\\Models\\User', 3, 'API Token', '3e9e8a861164cf826fd53453a36dc7fed191daac8347871ab42c48d200252d70', '[\"*\"]', NULL, NULL, '2024-09-20 04:58:31', '2024-09-20 04:58:31'),
(30, 'App\\Models\\User', 3, 'API Token', 'b04e30d90718b893edfae0e1e3762abe66bb0a703ff8120485e53e317fb19d71', '[\"*\"]', NULL, NULL, '2024-09-20 04:58:33', '2024-09-20 04:58:33'),
(31, 'App\\Models\\User', 3, 'API Token', '4893552cfc43dbbfebed6d52f0fcde7eb77408ce6a097ea0871e07d88ad554ac', '[\"*\"]', NULL, NULL, '2024-09-20 05:00:35', '2024-09-20 05:00:35'),
(32, 'App\\Models\\User', 3, 'API Token', '758fd1253215d12091ef47d031bfafc33c490a46b591465b740bd59e1dfeed18', '[\"*\"]', NULL, NULL, '2024-09-20 05:00:37', '2024-09-20 05:00:37'),
(33, 'App\\Models\\User', 3, 'API Token', '4da7f4dc007f21217e62e29a27d68797a40c9cf1c5c5cc983b7d5e285ecc9739', '[\"*\"]', NULL, NULL, '2024-09-20 05:00:39', '2024-09-20 05:00:39'),
(34, 'App\\Models\\User', 3, 'API Token', '7e64f953b6cc76a968e019c84db343c70443fe4c9be70c8e7a75d4f73d833637', '[\"*\"]', NULL, NULL, '2024-09-20 05:00:51', '2024-09-20 05:00:51'),
(35, 'App\\Models\\User', 3, 'API Token', 'bd068f239f36b77b3cc7586f8531672ac30ae41c1d0e79f49818452b0b0ca7ef', '[\"*\"]', NULL, NULL, '2024-09-20 05:03:22', '2024-09-20 05:03:22'),
(36, 'App\\Models\\User', 3, 'API Token', 'fb37ddfcf0ad148405681ab6ff764938d8544dc7cd21605962062b6c13a1e307', '[\"*\"]', NULL, NULL, '2024-09-20 05:03:27', '2024-09-20 05:03:27'),
(37, 'App\\Models\\User', 3, 'API Token', '56716e75cc30fd261e9f185d2062294bdda4994c5f8a943a2fc5a982f610304d', '[\"*\"]', NULL, NULL, '2024-09-20 05:03:31', '2024-09-20 05:03:31'),
(38, 'App\\Models\\User', 3, 'API Token', 'c8d1e39572813b4f8c6a30a1970be192a12fdd8c574fc4967e143e2a3f2ca66d', '[\"*\"]', NULL, NULL, '2024-09-20 05:03:38', '2024-09-20 05:03:38'),
(39, 'App\\Models\\User', 3, 'API Token', '365da639d7dcd59a0ed06ad9271fa93c0f384f91d3ce53d645db4bb460f98dc6', '[\"*\"]', NULL, NULL, '2024-09-20 05:07:26', '2024-09-20 05:07:26'),
(40, 'App\\Models\\User', 3, 'API Token', '227e99ea4fbf6edda70711ee1965e1be65542e73e55e49db18bf715c6f7dbd2d', '[\"*\"]', NULL, NULL, '2024-09-20 05:07:52', '2024-09-20 05:07:52'),
(41, 'App\\Models\\User', 3, 'API Token', '813a6e4b13f51c5aebb47aeb1ffee6fe901f22fc8d8b6d0559f1c9d7d4b7ae12', '[\"*\"]', NULL, NULL, '2024-09-20 05:07:54', '2024-09-20 05:07:54'),
(42, 'App\\Models\\User', 3, 'API Token', 'a9ed38da55305132740b1ce39f501c402e139ce19b990ead5c2739a1e33a9197', '[\"*\"]', NULL, NULL, '2024-09-20 05:07:57', '2024-09-20 05:07:57'),
(43, 'App\\Models\\User', 3, 'API Token', '69a1214262ba8bddaefab70635bba651db18ba8f2eef3e195b854b4d678ee700', '[\"*\"]', NULL, NULL, '2024-09-20 05:08:01', '2024-09-20 05:08:01'),
(44, 'App\\Models\\User', 3, 'API Token', '6b9f356a59ea7607367839a111d9a64c34bf100eb9ab7ecae72e79996b41ae0b', '[\"*\"]', NULL, NULL, '2024-09-20 05:08:06', '2024-09-20 05:08:06'),
(45, 'App\\Models\\User', 3, 'API Token', '37240398986c44bfcf5e5ed9632fc98338e6537ed6615a6a41aad9a3d955c55d', '[\"*\"]', NULL, NULL, '2024-09-20 05:08:12', '2024-09-20 05:08:12'),
(46, 'App\\Models\\User', 3, 'API Token', '20ac5c2939d1874a6a1d3dfc9b57ad6440bae172595df28b92a00806afbeed9d', '[\"*\"]', NULL, NULL, '2024-09-20 05:08:35', '2024-09-20 05:08:35'),
(47, 'App\\Models\\User', 3, 'API Token', '5b4c313a96787143ea87397f9094a15dbd56b7b6341a9c8b1de6ee526a7d169b', '[\"*\"]', NULL, NULL, '2024-09-20 05:08:41', '2024-09-20 05:08:41'),
(48, 'App\\Models\\User', 3, 'API Token', 'c4a97bf56cf1b42c0e24700acf93c8cc02329cedcac65b510122c37f294f8054', '[\"*\"]', NULL, NULL, '2024-09-20 05:08:47', '2024-09-20 05:08:47'),
(49, 'App\\Models\\User', 3, 'API Token', 'a7cddae262e14ef08dc9a6867b4e8a1a447833dd39e74d42fd44c723787117c1', '[\"*\"]', NULL, NULL, '2024-09-20 05:11:22', '2024-09-20 05:11:22'),
(50, 'App\\Models\\User', 3, 'API Token', 'df21ecfebeae7a8ed2596e2a19d9c5faba05492862a947105878d1cb23a6a3ae', '[\"*\"]', NULL, NULL, '2024-09-20 05:11:27', '2024-09-20 05:11:27'),
(51, 'App\\Models\\User', 3, 'API Token', '6d8a0694a132cdf0d869b683d18c02071284098452b056f5330bbea16dfa7eb9', '[\"*\"]', NULL, NULL, '2024-09-20 05:12:15', '2024-09-20 05:12:15'),
(52, 'App\\Models\\User', 3, 'API Token', '9cafdafd9d245c4a0c6ad915b2f6b92f8661323560339212470522c24ed408c1', '[\"*\"]', NULL, NULL, '2024-09-20 05:12:19', '2024-09-20 05:12:19'),
(53, 'App\\Models\\User', 3, 'API Token', '6c9935b87ac647b20d5147110c27bc0bbd6450f152073a12cf9ecd2cfea51057', '[\"*\"]', NULL, NULL, '2024-09-20 05:13:50', '2024-09-20 05:13:50'),
(54, 'App\\Models\\User', 3, 'API Token', 'ab10973a724f97d9ddb4c64cad891de48569cda39f144b10eded40b095caed93', '[\"*\"]', NULL, NULL, '2024-09-20 05:13:56', '2024-09-20 05:13:56'),
(55, 'App\\Models\\User', 3, 'API Token', '0a3ff06de22a0eed1edbf78ae3e006f016ff8469444ddd173cfb8bf1db4674eb', '[\"*\"]', NULL, NULL, '2024-09-20 05:14:13', '2024-09-20 05:14:13'),
(56, 'App\\Models\\User', 3, 'API Token', '73b66158c18bbaf99cdb6b390693bcc4f5d5770dee24a1891c40c9c7124f07e8', '[\"*\"]', NULL, NULL, '2024-09-20 05:15:55', '2024-09-20 05:15:55'),
(57, 'App\\Models\\User', 3, 'API Token', '4962cf448c36a5bb77dd6aa0f89c741a4159d29c5fd6a3b08abee31baba654fa', '[\"*\"]', NULL, NULL, '2024-09-20 05:16:18', '2024-09-20 05:16:18'),
(58, 'App\\Models\\User', 3, 'API Token', '14fca19f66a957f4f525650969439c6223415f9de2c0ec92104a04d3ceb0c59f', '[\"*\"]', NULL, NULL, '2024-09-20 05:18:41', '2024-09-20 05:18:41'),
(59, 'App\\Models\\User', 3, 'API Token', 'cad9b71e26de23051ff13c4d92bf534ad510772468082dcb8e5c7f23de979ce0', '[\"*\"]', NULL, NULL, '2024-09-20 05:19:21', '2024-09-20 05:19:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','superadmin') NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'admin@gmail.com', 'superadmin', NULL, '$2y$12$SxwaEyJYdTlsZZKIY.uhou/WYFPyulW/zrVhsATJM9aokzyxuxytS', 'superadmin', NULL, '2024-09-19 01:06:41', '2024-09-19 01:06:41'),
(7, 'anuj@gmail.com', 'anuj kumar', NULL, '$2y$12$mjLVX8zEr5qbtDdqhwCAmO8HM.eNm3jGO5Rn2Bn8WgYM9r8UtLn.u', 'user', NULL, '2024-09-19 03:15:42', '2024-09-19 03:15:42'),
(8, 'anuj@yahoo.com', 'anuj', NULL, '$2y$12$u.GDeTzFf1onGYCg4oecTuxCwyE9vcf3xVykT0PvyPI0GBlxVNCYu', 'user', NULL, '2024-09-20 00:02:40', '2024-09-20 00:02:40'),
(9, 'anuj@mail.com', 'Anuj', NULL, '$2y$12$JjMxawx3./RkPenG8kGK8e4KB.Q9/Yj72ivKO9WGw6WpiuVVij1c2', 'user', NULL, '2024-09-20 03:48:47', '2024-09-20 03:48:47'),
(10, 'raj@gmail.com', 'Rajesh', NULL, '$2y$12$uqndRocqbPKOBtSAE2ewT.i9SkzPGGTB4i4bgCpaF9/YfEGvD7GFm', 'user', NULL, '2024-09-20 04:15:46', '2024-09-20 04:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_activities`
--

CREATE TABLE `user_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `activity_id_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_activities`
--

INSERT INTO `user_activities` (`id`, `user_id`, `activity_id_id`, `date`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(5, 7, NULL, '2024-09-20', 'Meeting', 'For project', 'images/6NZgGU0hVxiQWGKNhqMyahiD6Mp5g0w3oxvnFa8J.jpg', '2024-09-20 02:54:00', '2024-09-20 02:54:00'),
(7, 3, NULL, '2024-09-21', 'Meeting', 'meeting', 'images/Ld0qZBemuaawIHhZWk9jAewMIukc5uwN5ufeTSz9.png', '2024-09-20 03:14:19', '2024-09-20 05:21:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_activities`
--
ALTER TABLE `user_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_activities_date_index` (`date`),
  ADD KEY `user_activities_user_id_activity_id_index` (`user_id`) USING BTREE;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_activities`
--
ALTER TABLE `user_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_activities`
--
ALTER TABLE `user_activities`
  ADD CONSTRAINT `user_activities_activity_id_foreign` FOREIGN KEY (`activity_id_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
