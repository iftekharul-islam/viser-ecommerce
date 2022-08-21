-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 21, 2022 at 06:48 AM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 8.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `viser-ecommerce`
--

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_09_080801_add_is_admin_column_to_users_table', 1),
(9, '2022_08_20_222123_create_sales_table', 2),
(10, '2022_08_21_005725_create_orders_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_name`, `order_no`, `amount`, `status`, `paid_by`, `created_at`, `updated_at`) VALUES
(1, 'Ms. Lelah Lebsack', '30114', '200.00', 'Processing', 'Cash On Delivery', '2022-08-21 11:02:16', '2022-08-21 11:02:16'),
(2, 'Jabari Romaguera IV', '86786', '200.00', 'Processing', 'Cash On Delivery', '2022-08-21 11:02:16', '2022-08-21 11:02:16'),
(3, 'Wayne Lesch', '39812', '200.00', 'Processing', 'Cash On Delivery', '2022-08-21 11:02:16', '2022-08-21 11:02:16'),
(4, 'Dr. Vaughn Wintheiser PhD', '62740', '200.00', 'Processing', 'Cash On Delivery', '2022-08-21 11:02:16', '2022-08-21 11:02:16'),
(5, 'Katelyn Collins', '28231', '200.00', 'Processing', 'Cash On Delivery', '2022-08-21 11:02:16', '2022-08-21 11:02:16'),
(6, 'Herbert O\'Reilly PhD', '78589', '200.00', 'Processing', 'Cash On Delivery', '2022-08-21 11:02:16', '2022-08-21 11:02:16'),
(7, 'Arlie Murray', '62686', '200.00', 'Processing', 'Cash On Delivery', '2022-08-21 11:02:16', '2022-08-21 11:02:16'),
(8, 'Natalie Lowe', '43336', '200.00', 'Processing', 'Cash On Delivery', '2022-08-21 11:02:16', '2022-08-21 11:02:16'),
(9, 'Darrel Dicki', '25296', '200.00', 'Processing', 'Cash On Delivery', '2022-08-21 11:02:16', '2022-08-21 11:02:16'),
(10, 'Magnus Treutel Jr.', '80876', '200.00', 'Processing', 'Cash On Delivery', '2022-08-21 11:02:16', '2022-08-21 11:02:16'),
(11, 'Kassandra Monahan', '61938', '200.00', 'Processing', 'Cash On Delivery', '2022-08-21 11:02:16', '2022-08-21 11:02:16'),
(12, 'Avery Sauer', '80848', '200.00', 'Processing', 'Cash On Delivery', '2022-08-21 11:02:16', '2022-08-21 11:02:16'),
(13, 'Micaela Leannon', '83335', '200.00', 'Processing', 'Cash On Delivery', '2022-08-21 11:02:16', '2022-08-21 11:02:16'),
(14, 'Dayne O\'Kon', '29941', '200.00', 'Processing', 'Cash On Delivery', '2022-08-21 11:02:16', '2022-08-21 11:02:16'),
(15, 'Al Bernier', '76888', '200.00', 'Processing', 'Cash On Delivery', '2022-08-21 11:02:16', '2022-08-21 11:02:16'),
(16, 'Evans Hayes', '31827', '200.00', 'Processing', 'Cash On Delivery', '2022-08-21 11:02:16', '2022-08-21 11:02:16'),
(17, 'Braulio Lehner', '14987', '200.00', 'Processing', 'Cash On Delivery', '2022-08-21 11:02:16', '2022-08-21 11:02:16'),
(18, 'Dr. Lila Stanton', '61735', '200.00', 'Processing', 'Cash On Delivery', '2022-08-21 11:02:16', '2022-08-21 11:02:16'),
(19, 'Fleta Ledner', '59100', '200.00', 'Processing', 'Cash On Delivery', '2022-08-21 11:02:16', '2022-08-21 11:02:16'),
(20, 'Dr. Kattie Haley III', '64190', '200.00', 'Processing', 'Cash On Delivery', '2022-08-21 11:02:16', '2022-08-21 11:02:16');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint UNSIGNED NOT NULL,
  `store` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `store`, `brand`, `product_category`, `product_name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Merl Rolfson', 'Woodrow Klein', 'Katharina Yost', 'Christelle Price', '500.00', '2022-08-21 11:02:22', '2022-08-21 11:02:22'),
(2, 'Dr. Nannie Sawayn', 'Dr. Quinton Rogahn', 'Veda Baumbach', 'Mrs. Sophie Mante V', '500.00', '2022-08-21 11:02:22', '2022-08-21 11:02:22'),
(3, 'Courtney Lehner', 'Santino Satterfield', 'Mr. Jayden Ernser', 'Cloyd Ritchie', '500.00', '2022-08-21 11:02:22', '2022-08-21 11:02:22'),
(4, 'Mr. Beau Reichert Jr.', 'Noe Koepp', 'Kamryn Quitzon DVM', 'Prof. Eleanore Powlowski', '500.00', '2022-08-21 11:02:22', '2022-08-21 11:02:22'),
(5, 'Sadye Greenfelder', 'Delta Schmidt', 'Gerda Kessler', 'Dr. Caleigh Block MD', '500.00', '2022-08-21 11:02:22', '2022-08-21 11:02:22'),
(6, 'Dalton Ondricka', 'Erna Carroll DVM', 'Hobart Carroll', 'Bernhard Franecki', '500.00', '2022-08-21 11:02:22', '2022-08-21 11:02:22'),
(7, 'Roxane Haley', 'Bradford Metz DVM', 'Alysson Fay', 'Dr. Pattie Koepp', '500.00', '2022-08-21 11:02:22', '2022-08-21 11:02:22'),
(8, 'Annalise Douglas PhD', 'Icie Strosin', 'Maximus Doyle', 'Prof. Micheal Corwin', '500.00', '2022-08-21 11:02:22', '2022-08-21 11:02:22'),
(9, 'Trent Funk', 'Mrs. Graciela Bosco IV', 'Vita Donnelly', 'Jerrod Gleichner III', '500.00', '2022-08-21 11:02:22', '2022-08-21 11:02:22'),
(10, 'Mr. Elmer Rowe PhD', 'Paxton Botsford', 'Felix Haley DVM', 'Flavio Rosenbaum', '500.00', '2022-08-21 11:02:22', '2022-08-21 11:02:22'),
(11, 'Melvin Lind DVM', 'Miss Anais Bartoletti Sr.', 'Noble Marvin DDS', 'Kyler Littel', '500.00', '2022-08-21 11:02:22', '2022-08-21 11:02:22'),
(12, 'Prof. Bobbie Reichert', 'Dr. Stuart Turner', 'Rosalyn Batz V', 'Prof. Marcelino Mills', '500.00', '2022-08-21 11:02:22', '2022-08-21 11:02:22'),
(13, 'Tiffany Franecki', 'Mr. Kyler Stoltenberg PhD', 'Monica Baumbach', 'Abagail Smith IV', '500.00', '2022-08-21 11:02:22', '2022-08-21 11:02:22'),
(14, 'Brycen Block', 'Ludie Homenick', 'Florence Bauch', 'Dr. Brycen Wilderman II', '500.00', '2022-08-21 11:02:22', '2022-08-21 11:02:22'),
(15, 'Prof. Maymie Brakus', 'Miss Kirsten Hickle III', 'Prof. Adan Waelchi', 'Dr. Neal Kovacek Jr.', '500.00', '2022-08-21 11:02:22', '2022-08-21 11:02:22'),
(16, 'Travis Orn', 'Elvie Kassulke', 'Prof. Ron Rippin', 'Lenora Klocko', '500.00', '2022-08-21 11:02:22', '2022-08-21 11:02:22'),
(17, 'Alan Bode', 'Joyce DuBuque', 'Kayleigh Goyette', 'Cornell Wintheiser', '500.00', '2022-08-21 11:02:22', '2022-08-21 11:02:22'),
(18, 'Jacky Dietrich DDS', 'Alden Jacobi', 'Anais Dooley', 'Avis Hauck', '500.00', '2022-08-21 11:02:22', '2022-08-21 11:02:22'),
(19, 'Damien Gerhold', 'Mrs. Irma Russel IV', 'Mr. Maxime Miller V', 'Dr. Isaias Quitzon III', '500.00', '2022-08-21 11:02:22', '2022-08-21 11:02:22'),
(20, 'Ms. Catalina Cummerata', 'Mr. Easter Murphy V', 'Filomena Haley PhD', 'Dr. Vito Sporer I', '500.00', '2022-08-21 11:02:22', '2022-08-21 11:02:22');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Super Admin', 'admin@mail.com', NULL, '$2y$10$aln4pqkY4xBCytcex6DFh.rP1ejQcI/YhmahS3.9NOgFsl9s1GTce', NULL, '2022-08-20 20:54:52', '2022-08-20 20:54:52', 1),
(2, 'Clinton Bradley', 'user@mail.com', NULL, '$2y$10$uOmWvYTyKUQwqE7xLgXkj.2qoG.NpGxHNDywSi6UJZFTS/INz0egy', NULL, '2022-08-20 21:16:52', '2022-08-20 21:16:52', 0);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
