-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2023 at 02:44 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(18, 'gfgfhg', 'bvg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'bghvhg', 'nghff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'hgytyguhu', 'fyythghg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'hghgyjg', 'hvhj', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'hghgyjg', 'hvhj', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(100) NOT NULL,
  `comments` text NOT NULL,
  `user_id` int(100) NOT NULL,
  `post_id` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(100) NOT NULL,
  `title` varchar(225) NOT NULL,
  `slug` varchar(225) NOT NULL,
  `content` longtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(225) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(50) NOT NULL,
  `category_id` int(50) NOT NULL,
  `like` int(100) DEFAULT NULL,
  `view` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `status`, `image`, `created_at`, `updated_at`, `user_id`, `category_id`, `like`, `view`) VALUES
(1, 'hgeyg', 'hegyfutf', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, NULL, NULL),
(2, 'gdef', 'eytyt', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, NULL, NULL),
(3, 'gdef', 'eytyt', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, NULL, NULL),
(4, 'ffd', 'fgdfd', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, NULL, NULL),
(5, 'ffd', 'fgdfd', 'hgdhg', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, NULL, NULL),
(6, 'hgdf', 'yeft', 'ergyt', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, NULL, NULL),
(7, 'hgdf', 'yeft', 'ergyt', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, NULL, NULL),
(8, 'ytrtetrtrtr', 'fytgf', '                trrer            ', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, NULL, NULL),
(9, 'ytrtetrtrtr', 'fytgf', '                trrer            ', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, NULL, NULL),
(10, 'rabina', 'ghimire', 'gshgfd', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 22, NULL, NULL),
(11, 'dsre', 'dsxrex', '', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 22, NULL, NULL),
(12, 'dsre', 'dsxrex', '', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 22, NULL, NULL),
(13, 'dsre', 'dsxrex', '', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 22, NULL, NULL),
(14, 'hgdhg', 'hdgyg', 'hgfg', 1, 'uploads/WIN_20201212_14_10_57_Pro.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 22, NULL, NULL),
(15, 'hgdhg', 'hdgyg', 'hgfg', 1, 'uploads/WIN_20201212_14_10_57_Pro.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 22, NULL, NULL),
(16, '', '', '', 1, 'uploads/', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, NULL, NULL),
(17, 'Libero aut officiis ', 'Enim voluptate aliqu', 'Incidunt sunt illo', 1, 'uploads/IMG_20220415_115528.JPG', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`) VALUES
(3, 'tyuyirt', 'tyuyi', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `full_name` varchar(100) DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `status`, `full_name`, `is_admin`, `created_at`) VALUES
(14, 'rusma@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 'Rusma', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `id` int(50) NOT NULL,
  `user_id` int(10) NOT NULL,
  `country` varchar(150) DEFAULT NULL,
  `city` varchar(180) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip_code` int(50) DEFAULT NULL,
  `facebook_profile` varchar(100) DEFAULT NULL,
  `twitter_profile` varchar(100) DEFAULT NULL,
  `phone` int(15) DEFAULT NULL,
  `profile_image` varchar(12) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `user_id`, `country`, `city`, `state`, `zip_code`, `facebook_profile`, `twitter_profile`, `phone`, `profile_image`, `gender`) VALUES
(2, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 10, 'Nepal', 'ktm', 'bagmati', 1234, 'rusma', 'rusma', 9841, NULL, 'female'),
(5, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 12, 'amer', 'bvdf', 'nbfh', 2345, 'jfhg', 'jfher', 0, NULL, ''),
(8, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `created_at` (`created_at`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
