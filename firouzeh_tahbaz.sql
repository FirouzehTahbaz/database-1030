-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2021 at 11:49 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `firouzeh_tahbaz`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `college_name` varchar(255) NOT NULL,
  `college_from` date DEFAULT NULL,
  `college_to` date DEFAULT NULL,
  `course` varchar(155) NOT NULL,
  `status` tinytext NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `college_name`, `college_from`, `college_to`, `course`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ROYAL CONSERVATORY OF MUSIC', '0000-00-00', '2010-10-05', 'ARTIST EDUCATOR CERTIFICATE', 'active', '2021-08-13 18:31:24', '2021-08-13 18:31:24'),
(2, 'UNIVERSITY OF TEHRAN', '2019-08-05', '2019-08-05', 'MASTER DEGREE IN ARCHITECTURE', 'active', '2021-08-13 18:34:45', '2021-08-13 18:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(11) NOT NULL,
  `company_name` varchar(155) NOT NULL,
  `work_from` date NOT NULL,
  `work_to` date NOT NULL,
  `position` varchar(155) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinytext NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` text NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `company_name`, `work_from`, `work_to`, `position`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Wipro manul manul', '2019-10-10', '0000-00-00', 'Node js backend developer', 'projects more then 20+', 'active', '2021-08-11 17:36:24', '2021-08-11 23:06:24'),
(5, 'WEBMASTER & GRAPHIC DESIGNER', '2011-10-19', '2012-09-19', 'VENTURE FOOD TRUCKS ', 'Building customized websites Designing visually attractive and interactive pages Daily maintenance of code, debugging issues Presenting findings clearly and concisely to key  Resolving different browsers issues A/B testing of different website elements or', 'active', '2021-08-13 20:55:13', '2021-08-14 02:25:13');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `title` varchar(155) DEFAULT NULL,
  `image` varchar(155) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ali-baba-thumb.jpg', '2021-08-13 21:48:32', '2021-08-13 21:48:32'),
(2, NULL, 'islamic-tiles-thumb.jpg', '2021-08-13 21:48:32', '2021-08-13 21:48:32'),
(3, NULL, 'lee-ann-thumb.jpg', '2021-08-13 21:48:32', '2021-08-13 21:48:32'),
(4, NULL, 'rc-show-2020.jpg', '2021-08-13 21:48:32', '2021-08-13 21:48:32'),
(5, NULL, 'venture-thumb.jpg', '2021-08-13 21:48:32', '2021-08-13 21:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `first_name` varchar(155) DEFAULT NULL,
  `last_name` varchar(155) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `mobile_no` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `hash` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `first_name`, `last_name`, `gender`, `mobile_no`, `token`, `hash`, `createdAt`, `updatedAt`) VALUES
(1, 'firouzeh2014@gmail.com', '$2a$12$vPkk/4VEWCrBKZ25JvQrYefGil9lAHqTQHgzkdTHUQxcoPTM05z7G', 'Firouzeh Tahbaz', NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
