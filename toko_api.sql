-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 01, 2023 at 02:19 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku_tamus`
--

CREATE TABLE `buku_tamus` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waktu_kunjungan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waktu_kepergian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keperluan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buku_tamus`
--

INSERT INTO `buku_tamus` (`id`, `nama`, `no_telp`, `alamat`, `waktu_kunjungan`, `waktu_kepergian`, `keperluan`, `created_at`, `updated_at`) VALUES
(1, 'Timmothy Hartmann', '+1-320-332-7306', '1755 Harris Rapids\nWest Kaley, NJ 79009', '1997-09-12', '1971-09-26', 'Saepe quo non.', '2023-12-01 06:14:47', '2023-12-01 06:14:47'),
(2, 'Laurine Smitham', '+1.747.828.8788', '94234 Caterina Track\nPort Dorothyburgh, NM 25501', '2013-03-22', '1992-09-16', 'Et aut porro excepturi consectetur.', '2023-12-01 06:14:47', '2023-12-01 06:14:47'),
(3, 'Miss Brooke Kirlin IV', '1-754-321-0760', '73204 Elena Road Apt. 198\nLake Millie, OR 31084-1552', '1987-01-25', '1983-09-27', 'Molestiae expedita odio laboriosam.', '2023-12-01 06:14:47', '2023-12-01 06:14:47'),
(4, 'Prof. Jeromy Keebler Jr.', '559-630-7996', '6229 Stanton Roads\nLake Jacksonfort, NV 26862', '1972-07-08', '1974-07-23', 'Quo quod autem.', '2023-12-01 06:14:47', '2023-12-01 06:14:47'),
(5, 'Adelle Altenwerth', '1-640-361-8928', '520 Colleen Forest Apt. 857\nAbigayleville, IN 62452', '2005-04-27', '2021-12-04', 'Quis aspernatur recusandae nesciunt iure.', '2023-12-01 06:14:47', '2023-12-01 06:14:47'),
(6, 'Giovanni Corkery', '281-588-2435', '87543 Haag Throughway\nDachmouth, FL 84067', '2023-07-30', '2002-03-15', 'Quia cumque assumenda amet.', '2023-12-01 06:14:47', '2023-12-01 06:14:47'),
(7, 'Haylee Cormier', '352.906.2269', '5261 Fredrick Crossroad\nKimview, IL 45894-3943', '2020-04-13', '1973-10-26', 'Incidunt quod ab sint vero.', '2023-12-01 06:14:47', '2023-12-01 06:14:47'),
(8, 'Mr. Dorcas Homenick', '(754) 812-1540', '3498 Derek Greens Suite 078\nVictorside, MS 59785', '1982-09-16', '1998-12-23', 'Aut sunt porro voluptatem.', '2023-12-01 06:14:47', '2023-12-01 06:14:47'),
(9, 'Josie Runolfsdottir', '+1-334-610-4748', '44544 Estefania Vista Apt. 647\nJustuschester, UT 87791', '1994-11-14', '1972-09-04', 'Dolorem vel debitis.', '2023-12-01 06:14:47', '2023-12-01 06:14:47'),
(10, 'Prof. Audie Gulgowski', '1-575-592-5209', '56117 Jacobs Islands Suite 315\nRigobertostad, WI 12519', '2008-06-27', '1973-03-15', 'Et velit quis porro dolore minima quam.', '2023-12-01 06:14:47', '2023-12-01 06:14:47');

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
-- Table structure for table `mahasiswas`
--

CREATE TABLE `mahasiswas` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_26_055936_create_produks_table', 1),
(6, '2023_11_14_061441_create_mahasiswas_table', 1),
(7, '2023_12_01_103824_create_buku_tamus_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'user_token', 'e0c32a076981ce6dafed25d8998e58715b8ee8dc4a14a3437eec6de6eba1855a', '[\"*\"]', NULL, NULL, '2023-12-01 06:14:53', '2023-12-01 06:14:53'),
(2, 'App\\Models\\User', 1, 'user_token', 'db9a7bee9001b8c088560e8fba38a5be24fdfdbfc1737bd2964b70e0c983020e', '[\"*\"]', NULL, NULL, '2023-12-01 06:18:57', '2023-12-01 06:18:57'),
(3, 'App\\Models\\User', 1, 'user_token', 'd7306e40b59b92d8c593c769f47a5afd783fab93a7af259c6a14a4172fa0f634', '[\"*\"]', NULL, NULL, '2023-12-01 06:32:36', '2023-12-01 06:32:36'),
(4, 'App\\Models\\User', 1, 'user_token', 'd907b736cf8e5eb9744de26f72900979b4558fe9b7bda66205b34a783ca9f62a', '[\"*\"]', NULL, NULL, '2023-12-01 06:32:47', '2023-12-01 06:32:47'),
(5, 'App\\Models\\User', 1, 'user_token', '3936bc0318b86c8d7e08b220c8b2287b8913228943aea3d4e02691820d870143', '[\"*\"]', NULL, NULL, '2023-12-01 06:35:24', '2023-12-01 06:35:24'),
(6, 'App\\Models\\User', 1, 'user_token', '40e4ab7a39312e29abb6d5d3485e8eb95da84cc6be5fc2fbd8491efb15d9030d', '[\"*\"]', NULL, NULL, '2023-12-01 06:38:20', '2023-12-01 06:38:20');

-- --------------------------------------------------------

--
-- Table structure for table `produks`
--

CREATE TABLE `produks` (
  `id` bigint UNSIGNED NOT NULL,
  `kode_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin', NULL, NULL, '$2y$10$vH8/mqOQ3sVwhRuTQCqpQOw.KHLI5081HbArX5kRCF/80kKmouxqO', NULL, '2023-12-01 06:14:47', '2023-12-01 06:14:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku_tamus`
--
ALTER TABLE `buku_tamus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `produks`
--
ALTER TABLE `produks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `produks_kode_produk_unique` (`kode_produk`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku_tamus`
--
ALTER TABLE `buku_tamus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `produks`
--
ALTER TABLE `produks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
