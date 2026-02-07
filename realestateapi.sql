-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 06, 2026 at 06:08 AM
-- Server version: 8.0.42
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realestateapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_02_06_041546_create_real_estates_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `real_estates`
--

CREATE TABLE `real_estates` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `real_state_type` enum('house','department','land','commercial_ground') COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `external_number` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `internal_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neighborhood` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rooms` int NOT NULL,
  `bathrooms` decimal(4,1) NOT NULL,
  `comments` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `real_estates`
--

INSERT INTO `real_estates` (`id`, `name`, `real_state_type`, `street`, `external_number`, `internal_number`, `neighborhood`, `city`, `country`, `rooms`, `bathrooms`, `comments`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Kshlerin Plain', 'house', 'Elta Ports', '12A', NULL, 'Lucystad', 'South Karolann', 'US', 3, 2.0, NULL, NULL, '2026-02-05 23:32:59', '2026-02-05 23:32:59'),
(2, 'Gerhold Vista', 'house', 'Chandler Terrace', '12A', NULL, 'Effertzville', 'Rathburgh', 'US', 3, 2.0, NULL, NULL, '2026-02-05 23:32:59', '2026-02-05 23:32:59'),
(3, 'Kuhic Stravenue', 'house', 'Homenick Keys', '12A', NULL, 'West Verna', 'Port Ashleightown', 'US', 3, 2.0, NULL, NULL, '2026-02-05 23:32:59', '2026-02-05 23:32:59'),
(4, 'Andres Trace', 'house', 'Angelo Overpass', '12A', NULL, 'Horaceside', 'North Lacyburgh', 'US', 3, 2.0, NULL, NULL, '2026-02-05 23:32:59', '2026-02-05 23:32:59'),
(5, 'Kulas Row', 'house', 'Bosco Flats', '12A', NULL, 'West Jarretview', 'New Nelston', 'US', 3, 2.0, NULL, NULL, '2026-02-05 23:32:59', '2026-02-05 23:32:59'),
(6, 'Mandy Spring', 'house', 'Howell Mews', '12A', NULL, 'Deliaville', 'New Camilaville', 'US', 3, 2.0, NULL, NULL, '2026-02-05 23:32:59', '2026-02-05 23:32:59'),
(7, 'Oberbrunner Mountains', 'house', 'Kessler Skyway', '12A', NULL, 'Port Jasminmouth', 'Krystalfurt', 'US', 3, 2.0, NULL, NULL, '2026-02-05 23:32:59', '2026-02-05 23:32:59'),
(8, 'Thiel Vista', 'house', 'Adams Ridges', '12A', NULL, 'Parkerside', 'Borertown', 'US', 3, 2.0, NULL, NULL, '2026-02-05 23:32:59', '2026-02-05 23:32:59'),
(9, 'Orval Spurs', 'house', 'Dare Wall', '12A', NULL, 'North Loriland', 'Heathcoteberg', 'US', 3, 2.0, NULL, NULL, '2026-02-05 23:32:59', '2026-02-05 23:32:59'),
(10, 'Vandervort Forges', 'house', 'Maggie Meadows', '12A', NULL, 'Schuppestad', 'East Elliot', 'US', 3, 2.0, NULL, NULL, '2026-02-05 23:32:59', '2026-02-05 23:32:59'),
(11, 'Frami Road', 'house', 'Mallory Flats', '12A', NULL, 'Zacherybury', 'North Lucaston', 'US', 3, 2.0, NULL, NULL, '2026-02-05 23:32:59', '2026-02-05 23:32:59'),
(12, 'Braun Square', 'house', 'Harber Pines', '12A', NULL, 'West Mabellebury', 'Lexitown', 'US', 3, 2.0, NULL, NULL, '2026-02-05 23:32:59', '2026-02-05 23:32:59'),
(13, 'Emiliano Garden', 'house', 'Bertrand Vista', '12A', NULL, 'Mosciskiville', 'Wuckertstad', 'US', 3, 2.0, NULL, NULL, '2026-02-05 23:32:59', '2026-02-05 23:32:59'),
(14, 'Gwen Ports', 'house', 'Titus Walks', '12A', NULL, 'East Jaylanside', 'North Aylinport', 'US', 3, 2.0, NULL, NULL, '2026-02-05 23:32:59', '2026-02-05 23:32:59'),
(15, 'Hilpert Pike', 'house', 'Collier Extensions', '12A', NULL, 'East Efrainton', 'Hermistonville', 'US', 3, 2.0, NULL, NULL, '2026-02-05 23:32:59', '2026-02-05 23:32:59'),
(16, 'Annabel Meadows', 'house', 'Deron Loaf', '12A', NULL, 'East Madelynchester', 'Lake Jermaineton', 'US', 3, 2.0, NULL, NULL, '2026-02-05 23:32:59', '2026-02-05 23:32:59'),
(17, 'Kurt Mews', 'house', 'Tess Crest', '12A', NULL, 'North Edytheside', 'Port Leathachester', 'US', 3, 2.0, NULL, NULL, '2026-02-05 23:32:59', '2026-02-05 23:32:59'),
(18, 'Stracke Gardens', 'house', 'Erdman Burg', '12A', NULL, 'Kendallside', 'North Lewis', 'US', 3, 2.0, NULL, NULL, '2026-02-05 23:32:59', '2026-02-05 23:32:59'),
(19, 'Clark Manor', 'house', 'Ron Ranch', '12A', NULL, 'New Kaliport', 'Rennermouth', 'US', 3, 2.0, NULL, NULL, '2026-02-05 23:32:59', '2026-02-05 23:32:59'),
(20, 'Maryjane Lakes', 'house', 'Keeling Branch', '12A', NULL, 'South Jaronborough', 'South Alfredo', 'US', 3, 2.0, NULL, NULL, '2026-02-05 23:32:59', '2026-02-05 23:32:59');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', NULL, '$2y$12$eeSRp4my1MXfDQu9S16BlOpwdiwax5Yn3L3c48YMOnFzmdNrfvJX2', NULL, '2026-02-05 23:32:59', '2026-02-05 23:32:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `real_estates`
--
ALTER TABLE `real_estates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `real_estates`
--
ALTER TABLE `real_estates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
