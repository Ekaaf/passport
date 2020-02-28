-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 28, 2020 at 01:09 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vivasoft`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_professional` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `user_id`, `name`, `is_professional`, `created_at`, `updated_at`) VALUES
(255, 12, 'Mrs. Alverta Stoltenberg Jr.', 0, '2020-02-28 17:28:23', NULL),
(256, 16, 'Prof. Arlie Ondricka', 1, '2020-02-28 17:28:24', NULL),
(257, 17, 'Fermin Christiansen', 0, '2020-02-28 17:28:25', NULL),
(258, 18, 'Brown Heidenreich', 0, '2020-02-28 17:28:25', NULL),
(259, 19, 'Zula Hill MD', 1, '2020-02-28 17:28:25', NULL),
(260, 21, 'Stan Weissnat', 0, '2020-02-28 17:28:25', NULL),
(261, 24, 'Dr. Kari Bosco III', 1, '2020-02-28 17:28:26', NULL),
(262, 25, 'Dr. Willy Zulauf', 0, '2020-02-28 17:28:26', NULL),
(263, 26, 'Hassan Kuvalis', 1, '2020-02-28 17:28:26', NULL),
(264, 28, 'Alexanne Jakubowski', 0, '2020-02-28 17:28:27', NULL),
(265, 29, 'Dorris Gutkowski Jr.', 0, '2020-02-28 17:28:27', NULL),
(266, 30, 'Antwon Beer', 0, '2020-02-28 17:28:27', NULL),
(267, 31, 'Eleonore Metz', 0, '2020-02-28 17:28:27', NULL),
(268, 33, 'Lillian Kerluke IV', 1, '2020-02-28 17:28:28', NULL),
(269, 34, 'Sheila Ondricka', 0, '2020-02-28 17:28:28', NULL),
(270, 35, 'Kory Lockman', 1, '2020-02-28 17:28:28', NULL),
(271, 36, 'Marguerite Gutmann', 1, '2020-02-28 17:28:28', NULL),
(272, 38, 'Hyman Gibson', 0, '2020-02-28 17:28:29', NULL),
(273, 39, 'Celine Abshire', 0, '2020-02-28 17:28:29', NULL),
(274, 40, 'Tom Rogahn', 0, '2020-02-28 17:28:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `update_at`) VALUES
(153, 'Category0', '2020-02-28 17:29:19', NULL),
(154, 'Category1', '2020-02-28 17:29:20', NULL),
(155, 'Category2', '2020-02-28 17:29:20', NULL),
(156, 'Category3', '2020-02-28 17:29:20', NULL),
(157, 'Category4', '2020-02-28 17:29:20', NULL),
(158, 'Category5', '2020-02-28 17:29:20', NULL),
(159, 'Category6', '2020-02-28 17:29:20', NULL),
(160, 'Category7', '2020-02-28 17:29:20', NULL),
(161, 'Category8', '2020-02-28 17:29:20', NULL),
(162, 'Category9', '2020-02-28 17:29:20', NULL),
(163, 'Category10', '2020-02-28 17:29:20', NULL),
(164, 'Category11', '2020-02-28 17:29:20', NULL),
(165, 'Category12', '2020-02-28 17:29:20', NULL),
(166, 'Category13', '2020-02-28 17:29:20', NULL),
(167, 'Category14', '2020-02-28 17:29:20', NULL),
(168, 'Category15', '2020-02-28 17:29:21', NULL),
(169, 'Category16', '2020-02-28 17:29:21', NULL),
(170, 'Category17', '2020-02-28 17:29:21', NULL),
(171, 'Category18', '2020-02-28 17:29:21', NULL),
(172, 'Category19', '2020-02-28 17:29:21', NULL),
(173, 'Category20', '2020-02-28 17:29:21', NULL),
(174, 'Category21', '2020-02-28 17:29:21', NULL),
(175, 'Category22', '2020-02-28 17:29:21', NULL),
(176, 'Category23', '2020-02-28 17:29:21', NULL),
(177, 'Category24', '2020-02-28 17:29:21', NULL),
(178, 'Category25', '2020-02-28 17:29:21', NULL),
(179, 'Category26', '2020-02-28 17:29:21', NULL),
(180, 'Category27', '2020-02-28 17:29:21', NULL),
(181, 'Category28', '2020-02-28 17:29:21', NULL),
(182, 'Category29', '2020-02-28 17:29:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `user_id` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_paid` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `name`, `is_paid`, `created_at`, `updated_at`) VALUES
(55, '11', 'Jared Pagac', 1, '2020-02-28 17:28:23', NULL),
(56, '12', 'Forrest Murphy', 1, '2020-02-28 17:28:23', NULL),
(57, '13', 'Geovanny Buckridge', 0, '2020-02-28 17:28:23', NULL),
(58, '14', 'Prof. General Murray Sr.', 0, '2020-02-28 17:28:23', NULL),
(59, '15', 'Ms. Delores Kessler', 0, '2020-02-28 17:28:24', NULL),
(60, '18', 'Mr. Luciano Gerlach', 0, '2020-02-28 17:28:25', NULL),
(61, '20', 'Amelia Miller', 1, '2020-02-28 17:28:25', NULL),
(62, '21', 'Vita Pfannerstill', 1, '2020-02-28 17:28:25', NULL),
(63, '22', 'Prof. Bertrand Heidenreich', 1, '2020-02-28 17:28:26', NULL),
(64, '23', 'Miss Jammie Murazik Jr.', 0, '2020-02-28 17:28:26', NULL),
(65, '25', 'Ms. Layla Macejkovic', 0, '2020-02-28 17:28:26', NULL),
(66, '26', 'Missouri Will MD', 0, '2020-02-28 17:28:26', NULL),
(67, '27', 'Donato Okuneva II', 0, '2020-02-28 17:28:27', NULL),
(68, '30', 'Dennis Cole', 0, '2020-02-28 17:28:27', NULL),
(69, '32', 'Carolina Lockman', 0, '2020-02-28 17:28:28', NULL),
(70, '34', 'Esteban Schimmel', 1, '2020-02-28 17:28:28', NULL),
(71, '35', 'Saul Shanahan', 1, '2020-02-28 17:28:28', NULL),
(72, '37', 'Thelma Glover', 0, '2020-02-28 17:28:29', NULL),
(73, '38', 'Betty Veum', 1, '2020-02-28 17:28:29', NULL),
(74, '40', 'Wilmer Walker', 1, '2020-02-28 17:28:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_logs`
--

CREATE TABLE `customer_logs` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `count` tinyint(5) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_logs`
--

INSERT INTO `customer_logs` (`id`, `customer_id`, `date`, `count`, `created_at`, `updated_at`) VALUES
(14, 56, '2020-02-28', 7, '2020-02-28 12:46:30', '2020-02-28 13:02:02');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `category_id`, `author_id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(183, 154, 255, 'A simple news title', 'The actual news; it should be a long text.', '2020-02-28 12:09:39', '2020-02-28 12:09:39'),
(185, 154, 255, '', '', '2020-02-28 18:10:16', NULL),
(186, 154, 256, '', '', '2020-02-28 18:11:19', NULL),
(187, 154, 256, '', '', '2020-02-28 18:21:57', NULL),
(188, 154, 256, '', '', '2020-02-28 18:33:58', NULL),
(189, 154, 256, '', '', '2020-02-28 18:35:39', NULL),
(190, 154, 256, '', '', '2020-02-28 18:52:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(2) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `created_at`, `updated_at`) VALUES
(1, 'test@gmail.com', '$2y$10$8gtQz6BfQffb669x6t6hUuQJ65kNmoh70O9RUDU55W52nlD7FioQi', 3, '2020-02-28 09:37:07', NULL),
(11, 'vida.daugherty@dibbert.org', '$2y$10$68YvUdBEHfvlI5Hu66hwp.FDRZArCyQ5LYOwcuWV8Rk/.8QG/3pAG', 2, '2020-02-28 17:28:22', NULL),
(12, 'hudson.dicki@lynch.info', '$2y$10$GXsotRzGi5V63Md9oqvTm.EtELytroP42oQG3pZEAaF83GkxA55jG', 3, '2020-02-28 17:28:23', NULL),
(13, 'shayna16@bartoletti.org', '$2y$10$q5Cwzt9KxROgTraF9Qd/xOCWoPLfg09UAgY0coHv9BCfz1QFjLo0G', 2, '2020-02-28 17:28:23', NULL),
(14, 'uconn@yahoo.com', '$2y$10$H9ifMe2ZHjqLkglhd5Y4W.nZOyqrRXoGjkI5o3wAHzQ77Zm.o9vk6', 2, '2020-02-28 17:28:23', NULL),
(15, 'josefa97@yahoo.com', '$2y$10$175up9Cla8n4gJtzKKpsYeNbPJIBGgt8ILbQ0lyQ.BNI4uItfs.RO', 2, '2020-02-28 17:28:24', NULL),
(16, 'toy.michael@smith.com', '$2y$10$yTn3UxuResvPT3ED7lzrvebOiqG3MyGD1M3exSE2BlNzsKWCNOgLq', 1, '2020-02-28 17:28:24', NULL),
(17, 'yessenia05@gmail.com', '$2y$10$zUKuM7cf1BPRPLEJrTbveeVH38txbGoEFRaYjrH9Fx1G8r5USwIf2', 1, '2020-02-28 17:28:25', NULL),
(18, 'crawford.gleason@gmail.com', '$2y$10$gNtaxU.ZD9eMTNdS4Mep8.m5R1CjP/oM23pTWD1rbr56tGKb5L8RG', 3, '2020-02-28 17:28:25', NULL),
(19, 'fmaggio@yahoo.com', '$2y$10$zO5ymfS3GGWkRZ3gWci3keP/rGNB9NXfA.XTCvS/BZt4loJaiTdvq', 1, '2020-02-28 17:28:25', NULL),
(20, 'ubarton@yahoo.com', '$2y$10$aP7ttA6vA0DPVyoZlYY7Nu5QbWcybzsiWw2.hFRIbE6t4zL0stnH6', 2, '2020-02-28 17:28:25', NULL),
(21, 'hettinger.layne@abbott.biz', '$2y$10$rEjCjJLhUX2//zEH4EAdi.ZerYfDGmugzFuBTaAyyHbUOY0vbyk/S', 3, '2020-02-28 17:28:25', NULL),
(22, 'stehr.alyson@hotmail.com', '$2y$10$MbPrr45eXic9tqKyucZs8u9pDwak7EQvvqDBzJT6qvzHE7AeMuSou', 2, '2020-02-28 17:28:26', NULL),
(23, 'phoebe38@hotmail.com', '$2y$10$SLockUOI/tX2yv65yyXD5O1c3hiTZpaybnfp5vkC.tXqTagwIU0e.', 2, '2020-02-28 17:28:26', NULL),
(24, 'jerde.river@gmail.com', '$2y$10$5nYga.Vxmm6rLAUCwLB4Xu.916gJ.GgmRdQ/BJbbz/AW2lQu6hZie', 1, '2020-02-28 17:28:26', NULL),
(25, 'hortense77@yahoo.com', '$2y$10$LNmPz.5adMhDWICx.X2QWO3Zg76pJDrGz/cHHbvHW5x9LUl8JGlMi', 3, '2020-02-28 17:28:26', NULL),
(26, 'ubatz@kirlin.net', '$2y$10$/RLyLH7AN7xicspGTCzKv..9jl2HRsCevelIL7VNQIqH/CwZ4MkIO', 3, '2020-02-28 17:28:26', NULL),
(27, 'clint65@bins.org', '$2y$10$EXAvAnFfmB05DFWrYpZiouAVhdn3LIg6RviJQudSIcVCV12HBdH5W', 2, '2020-02-28 17:28:27', NULL),
(28, 'israel.grady@hotmail.com', '$2y$10$fO0sRTy284OxcayKoDbkkOq8rQYLiwoHr2PkktcHzBhO7bDhPhsty', 1, '2020-02-28 17:28:27', NULL),
(29, 'idella.goyette@yahoo.com', '$2y$10$sDgUKI6TXbbXV/7OJtayPuCD4ZZ0ql5bd.0We.yD6egvxMqIlcul2', 1, '2020-02-28 17:28:27', NULL),
(30, 'forest.wunsch@yahoo.com', '$2y$10$J9KdP5cEaW6t7yQBkuNHeOA1lH6P3s85dRWbRLIK3CbPO1Y6gmMsS', 3, '2020-02-28 17:28:27', NULL),
(31, 'cristobal.kunde@medhurst.info', '$2y$10$C9FRguz7PZfYUlJCTIdiUOsFuYdsLyJjWibEjDy6yWaSh/rQeA3Ye', 1, '2020-02-28 17:28:27', NULL),
(32, 'kilback.clint@dubuque.com', '$2y$10$2vmN9cytUruHfYrS8jFx4u5Od3ZtZEjURBkDBT2tUWzwpNo4cgdea', 2, '2020-02-28 17:28:27', NULL),
(33, 'frances56@yahoo.com', '$2y$10$at1XxRimwgMdt5cDq0Q3qeShpH01uMAILHkQH3YNqYuGqQkV9d2oO', 1, '2020-02-28 17:28:28', NULL),
(34, 'frieda.lind@hotmail.com', '$2y$10$4lp0SXzIb3E7l/7aiSzwfeAXlv38t9dmfBzdhAz2tpeGyY0toAB7m', 3, '2020-02-28 17:28:28', NULL),
(35, 'echristiansen@wolf.biz', '$2y$10$nr6sQYgq6w8u4E7u0e8LWe8cjLBkefDMZ449/SueL.KnhLMFvGVC6', 3, '2020-02-28 17:28:28', NULL),
(36, 'william44@gmail.com', '$2y$10$vdISnbk/mqvgCB3j/B3MOuF0S8B/TPB/GUpDwcGE/97RCUvkP5tDS', 1, '2020-02-28 17:28:28', NULL),
(37, 'sanford.charlotte@hotmail.com', '$2y$10$YD76DTLPJRKcV/uLgrKtcuHdbtO.FrZU4hGHFK.rT9kcwoDxntQsy', 2, '2020-02-28 17:28:28', NULL),
(38, 'lafayette47@gmail.com', '$2y$10$6q3t06wdrCVxgG0vybgJE.Owku.Q5kD7dZbVgFS7GiujoLCLnpZcW', 3, '2020-02-28 17:28:29', NULL),
(39, 'ivon@hotmail.com', '$2y$10$w1hMN.zXVKUjFw1BKjhfS.a35guOxL8PkF/ztd7yAiPZKtVoxV/jC', 1, '2020-02-28 17:28:29', NULL),
(40, 'dean.dach@farrell.com', '$2y$10$agMRcpoNRsH3PzByuOG3beVbNok33ILSjj83XYbCCF8552XmCaBlO', 3, '2020-02-28 17:28:29', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_authors_1_idx` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title_UNIQUE` (`title`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_logs`
--
ALTER TABLE `customer_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_customer_logs_1_idx` (`customer_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_news_1_idx` (`category_id`),
  ADD KEY `fk_news_2_idx` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `customer_logs`
--
ALTER TABLE `customer_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `authors`
--
ALTER TABLE `authors`
  ADD CONSTRAINT `fk_authors_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `customer_logs`
--
ALTER TABLE `customer_logs`
  ADD CONSTRAINT `fk_customer_logs_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `fk_news_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_news_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
