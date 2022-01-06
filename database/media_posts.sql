-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2022 at 07:23 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `media_posts`
--

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
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2021_12_07_160443_create_roles_table', 1),
(18, '2021_12_07_160524_create_user_role_table', 1),
(19, '2021_12_07_174853_create_posts_table', 2);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `artist` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `artist`, `title`, `likes`, `description`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Kenji Dasal', 'Genshin Impact - Kamisato Ayaka', 255, 'Kamisato Ayaka is a playable Cryo character in Genshin Impact. She is the eldest daughter of the Kamisato Clan and sister of Kamisato Ayato.', 'http://127.0.0.1:8000/images/ayaka.png', '2021-12-25 14:38:07', '2021-12-30 14:38:07'),
(2, 'Kenji Dasal', 'Raiden Shogun (Ei / Ba al / Beelzebub)', 255, 'The Raiden Shogun, real name Raiden Ei, is a playable Electro character in Genshin Impact. She is the vessel of Beelzebul, the current Electro Archon of Inazuma.', 'http://127.0.0.1:8000/images/Baal.png', '2021-12-25 14:38:07', '2021-12-30 14:38:07'),
(3, 'Kenji Dasal', 'Genshin Impact - Tartaglia (Childe)', 255, 'Tartaglia, also known by his alias "Childe", is a playable Hydro character in Genshin Impact. He is the Eleventh of the Fatui Harbingers.', 'http://127.0.0.1:8000/images/Childe.png', '2021-12-25 14:38:07', '2021-12-30 14:38:07'),
(4, 'Kenji Dasal', 'Genshin Impact - Guizhong', 255, 'Guizhong (Chinese: 归终 Guīzhōng) was the Lord of Dust. She is best known as one of the gods who presided over the Guili Assembly, which she established alongside Morax and Marchosius.', 'http://127.0.0.1:8000/images/Guizhong.png', '2021-12-25 14:38:07', '2021-12-30 14:38:07'),
(5, 'Kenji Dasal', 'Genshin Impact - 2 main Characters (Aether [right blonde character] and Lumine [left blonde character]) and Klee next to lumine, Sayu sleeping, Qiqi holding onto Aether and Diona being angry.', 255, 'This is a concept art for Halloween skins for the characters.', 'http://127.0.0.1:8000/images/halloweengenshin.png', '2021-12-25 14:38:07', '2021-12-30 14:38:07'),
(6, 'Kenji Dasal', 'Genshin Impact - Arataki Itto', 255, 'Arataki Itto (Japanese: 荒瀧一斗(あらたきいっと) Arataki Itto) is a playable Geo character in Genshin Impact. A descendant of the crimson oni, Itto is also the leader and founder of the Arataki Gang.', 'http://127.0.0.1:8000/images/Itto.png', '2021-12-25 14:38:07', '2021-12-30 14:38:07'),
(7, 'Kenji Dasal', 'Genshin Impact - Kujou Sara', 255, 'Kujou Sara is a playable Electro character in Genshin Impact.A tengu, Sara is the adopted daughter of the Kujou Clan of the Tenryou Commission. Loyal to both her clan and the Shogun.', 'http://127.0.0.1:8000/images/Sara.png', '2021-12-25 14:38:07', '2021-12-30 14:38:07'),
(8, 'Kenji Dasal', 'Original - Summer 01', 255, 'This is one of few Summer Arts that I have finished', 'http://127.0.0.1:8000/images/KonanColored.png', '2021-12-25 14:38:07', '2021-12-30 14:38:07'),
(9, 'Kenji Dasal', 'Original - Summer 02', 255, 'This is one of few Summer Arts that I have finished', 'http://127.0.0.1:8000/images/NewSummerfull.png', '2021-12-25 14:38:07', '2021-12-30 14:38:07'),
(10, 'Kenji Dasal', 'Genshin Impact - Teppei', 255, 'Teppei was a member of the Watatsumi Army that fought against the Raiden Shogun oppressive rule and Vision Hunt Decree and died trying to help the player', 'http://127.0.0.1:8000/images/Teppei.png', '2021-12-25 14:38:07', '2021-12-30 14:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'An Administrator user', '2021-12-07 16:37:07', '2021-12-07 16:37:07'),
(2, 'user', 'An Ordinary User', '2021-12-07 16:37:07', '2021-12-07 16:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, 'Kenji Dasal', 'kdasal@larafest.ie', NULL, '$2y$10$aRnPw7KosaLQ0vOdtxcCh.2MZpByKrEeJD.9a0iIjdCVQ3Mfg3mqi', '3zs3hHuIGFDdT66QIHTPFMFAmSdpQvYmSFGb4FanNm2UDDhS9d7vxxS6zLwh', '2021-12-07 16:37:07', '2021-12-07 16:37:07'),
(2, 'Aito Ryu', 'Aryu@larafest.ie', NULL, '$2y$10$xyXgPZK6HUv5LvOIAXjPhOAXYfDCbu55uVjSiCcBCKoPAHD2g7E8W', NULL, '2021-12-07 16:37:07', '2021-12-07 16:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_role_user_id_foreign` (`user_id`),
  ADD KEY `user_role_role_id_foreign` (`role_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `user_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_role_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
