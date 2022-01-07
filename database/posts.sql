-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2022 at 05:35 PM
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
(1, 'Kenji Dasal', 'Genshin Impact - Kamisato Ayaka', 25, 'Kamisato Ayaka is a playable Cryo character in Genshin Impact. She is the eldest daughter of the Kamisato Clan and sister of Kamisato Ayato.', 'ayaka.png', '2022-01-05 00:00:00', '2022-01-07 00:00:00'),
(2, 'Kenji Dasal', 'Raiden Shogun (Ei / Ba\'al / Beelzebub)', 255, 'The Raiden Shogun (Japanese: 雷らい電でん将しょう軍ぐん Raiden Shougun), real name Raiden Ei (Japanese: 雷らい電でん影えい Raiden Ei), is a playable Electro character in Genshin Impact.\r\n\r\nShe is the vessel of Beelzebul, the current Electro Archon of Inazuma, and meditates ins', 'Baal.png', '2022-01-05 00:00:00', '2022-01-07 00:00:00'),
(3, 'Kenji Dasal', 'Genshin Impact - Tartaglia (Childe)', 255, 'Tartaglia, also known by his alias \"Childe\", is a playable Hydro character in Genshin Impact.\r\nHe is the Eleventh of the Fatui Harbingers. Following danger wherever he goes, Childe is always eager for a challenge, making him extremely dangerous despite be', 'Childe.png', '2022-01-05 00:00:00', '2022-01-07 00:00:00'),
(4, 'Kenji Dasal', 'Genshin Impact - Guizhong', 255, 'Guizhong (Chinese: 归终 Guīzhōng) was the Lord of Dust (Chinese: 尘王魔神 \"Dust Monarch Demon God\"). She is best known as one of the gods who presided over the Guili Assembly, which she established alongside Morax and Marchosius, and for her mechanisms such as ', 'Guizhong.png', '2022-01-05 00:00:00', '2022-01-07 00:00:00'),
(5, 'Kenji Dasal', 'Genshin Impact - 2 main Characters (Aether [right blonde character] and Lumine [left blonde character]) and Klee next to lumine, Sayu sleeping, Qiqi holding onto Aether and Diona being angry.', 255, 'This is a concept art for Halloween skins for the characters.', 'halloweengenshin.png', '2022-01-05 00:00:00', '2022-01-07 00:00:00'),
(6, 'Kenji Dasal', 'Genshin Impact - Arataki Itto', 255, 'Arataki Itto (Japanese: 荒瀧一斗(あらたきいっと) Arataki Itto) is a playable Geo character in Genshin Impact.\r\nA descendant of the crimson oni, Itto is also the leader and founder of the Arataki Gang.\r\n', 'Itto.png', '2022-01-05 00:00:00', '2022-01-07 00:00:00'),
(7, 'Kenji Dasal', 'Genshin Impact - Kujou Sara', 255, 'Kujou Sara (Japanese: 九く条じょう裟さ羅ら Kujou Sara) is a playable Electro character in Genshin Impact.\r\nA tengu, Sara is the adopted daughter of the Kujou Clan of the Tenryou Commission. Loyal to both her clan and the Shogun, Kujou Sara carries out her orders to', 'Sara.png', '2022-01-05 00:00:00', '2022-01-07 00:00:00'),
(8, 'Kenji Dasal', 'Original - Summer 01', 255, 'This is one of few Summer Arts that I have finished', 'KonanColored.png', '2022-01-05 00:00:00', '2022-01-07 00:00:00'),
(9, 'Kenji Dasal', 'Original - Summer 02', 255, 'This is one of few Summer Arts that I have finished', 'NewSummerfull.png', '2022-01-05 00:00:00', '2022-01-07 00:00:00'),
(10, 'Kenji Dasal', 'Genshin Impact - Teppei', 255, 'Teppei was a member of the Watatsumi Army that fought against the Raiden Shogun\'s oppressive rule and Vision Hunt Decree. He first served in the logistics division before being sent to the front lines and assigned to the Gobious Platoon.', 'Teppei.png', '2022-01-05 00:00:00', '2022-01-07 00:00:00'),
(17, 'Kenji Dasal', 'testing', 255, 'testing rn', 'ayaka.png', '2022-01-06 00:00:00', '2022-01-07 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
