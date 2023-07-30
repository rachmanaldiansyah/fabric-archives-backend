-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2023 at 05:20 AM
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
-- Database: `db_arsip_fullstack`
--

-- --------------------------------------------------------

--
-- Table structure for table `ijazah`
--

CREATE TABLE `ijazah` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `no_ijazah` varchar(255) NOT NULL,
  `nisn` varchar(255) NOT NULL,
  `nis` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jk` varchar(255) NOT NULL,
  `nama_orangtua` varchar(255) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `arsip_ijazah` varchar(255) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ijazah`
--

INSERT INTO `ijazah` (`id`, `uuid`, `no_ijazah`, `nisn`, `nis`, `nama`, `jk`, `nama_orangtua`, `prodi`, `arsip_ijazah`, `userId`, `createdAt`, `updatedAt`) VALUES
(3, '7f87c38c-b3f9-4d5b-83c5-ba064d6fee7e', 'M-SMK/06-3/0000001', '0054723235', '2021.10.1002', 'Abdul Rohman Rohiman', 'Laki-laki', 'Asep Mulyadi', 'Teknik Komputer & Jaringan', 'bafybeifmpbk6zlkvjh6sthyuk4uxai4t3tz5qrtag6czl5susvgyvuq4hi', 2, '2023-07-27 03:47:34', '2023-07-27 03:47:34'),
(4, '85b441ae-07be-487c-8ce3-cbc246d46d96', 'M-SMK/06-3/0000002', '0048911314', '2021.10.1010', 'Candra Kurnia Saputra', 'Laki-laki', 'Asep Mulyadi', 'Teknik Komputer & Jaringan', 'bafybeifmpbk6zlkvjh6sthyuk4uxai4t3tz5qrtag6czl5susvgyvuq4hi', 2, '2023-07-27 04:07:03', '2023-07-27 04:07:03'),
(6, 'c56b07aa-dedf-4186-bd5a-ff75c55a8bdc', 'M-SMK/06-3/0000003', '0054446888', '2021.10.1009', 'Ayu Nurhayati', 'Perempuan', 'Dadi Sumarna', 'Teknik Komputer & Jaringan', 'archives\\ijazah\\arsip_ijazah-1690458449936-Screenshot 2023-07-27 142152.png', 2, '2023-07-27 11:47:29', '2023-07-29 23:58:00'),
(7, '8b1f5271-55d7-4429-9e2a-c10371c67528', 'M-SMK/06-3/0000004', '0054295104', '2021.10.1217', 'Cinta Ramadhani', 'Perempuan', 'Mulyana Subagja', 'Multimedia', 'bafybeie3voq3qhuwnk2qebhzz6qzlexos67bm36hq4352hgnwzqgbehine', 2, '2023-07-29 23:42:04', '2023-07-30 00:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `sertifikat`
--

CREATE TABLE `sertifikat` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `no_sertifikat` varchar(255) NOT NULL,
  `nis` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jk` varchar(255) NOT NULL,
  `keahlian` varchar(255) NOT NULL,
  `arsip_sertifikat` varchar(255) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sertifikat`
--

INSERT INTO `sertifikat` (`id`, `uuid`, `no_sertifikat`, `nis`, `nama`, `jk`, `keahlian`, `arsip_sertifikat`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, 'd0e6dc58-a07d-4caa-8c93-1a59affaf23d', '2021.10.1002', '2021.10.1002', 'Abdul Rohman Rohiman', 'Laki-laki', 'Teknik Komputer & Jaringan', 'bafybeifmpbk6zlkvjh6sthyuk4uxai4t3tz5qrtag6czl5susvgyvuq4hi', 2, '2023-07-27 05:42:25', '2023-07-30 00:05:42'),
(3, 'b6272e2d-ddc1-4fc3-8b82-7164d7c95205', '2021.10.1003', '2021.10.1003', 'Ahmad Safarudin', 'Laki-laki', 'Teknik Komputer & Jaringan', 'bafybeiejxfyhnne3hgqsjleyntitelwfhd65h5w27dsdxk6fjramyblyuy', 2, '2023-07-30 00:04:56', '2023-07-30 00:04:56'),
(4, '5f5b5adf-ae71-47d0-8c7b-8e85b7b793a5', '2021.10.1006', '2021.10.1006', 'Andi Riyandi', 'Laki-laki', 'Teknik Komputer & Jaringan', 'bafybeiaxsfbm5zbmmy6detq5bkaa3qryfc5swzb2rdqbbwod7a2ssm3uky', 2, '2023-07-30 00:28:05', '2023-07-30 00:28:05'),
(5, '372e2362-88cd-48b3-a64f-ce723151ec25', '2021.10.1015', '2021.10.1015', 'Fierza Nazril Aziz', 'Laki-laki', 'Multimedia', 'bafybeiggl3dfdqzebngyedhpux3m3fegmycoatywkbxni6j4j3m2z3w5vu', 4, '2023-07-30 02:52:02', '2023-07-30 02:52:02');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('-se8pLtv7wAZ5LXYqoZ49pQoZTJxhc5h', '2023-07-31 02:04:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-30 02:04:48', '2023-07-30 02:04:48'),
('0ob8HDW_SeR8RMqwMVk3u7N92P5T4lDb', '2023-07-30 23:31:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-29 23:31:34', '2023-07-29 23:31:34'),
('2eDXAxLIZztNhX34pzxFTz59l0j3mE8R', '2023-07-31 02:52:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-30 02:52:02', '2023-07-30 02:52:02'),
('3DTkyKUZelHjWr8EhBCbk2vD70IhL7s6', '2023-07-31 02:31:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-30 02:31:33', '2023-07-30 02:31:33'),
('3z0EVN4QtavNtlXx95piDRmPDoSLX4Kh', '2023-07-30 23:30:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-29 23:30:50', '2023-07-29 23:30:50'),
('3Z2bwgE-nvE-6HM5hZhXTYPv2VMoyjeK', '2023-07-31 00:08:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-30 00:08:06', '2023-07-30 00:08:06'),
('4MakJ0HinX2IRTYBwzkJbHNGulc2GbBj', '2023-07-30 07:52:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-29 07:52:23', '2023-07-29 07:52:23'),
('6RjnrhaLpNLfktj_xWCXQ6UvwaW4dbh0', '2023-07-30 11:55:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-29 11:55:23', '2023-07-29 11:55:23'),
('7hLnQxA33Wrrbl7Uk77j2DwAmdWcG-RL', '2023-07-31 00:24:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-30 00:24:54', '2023-07-30 00:24:54'),
('7KkKX4oRNKoI9KbDjsVLyZ7GM0ljfMTk', '2023-07-30 07:52:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-29 07:52:13', '2023-07-29 07:52:13'),
('7Ro07hl1x5keT7QCVbcfTo8-6YJpLthW', '2023-07-30 23:57:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-29 23:57:47', '2023-07-29 23:57:47'),
('8GKdF_j2Q5Hf_TY0XLWdBcG8mWtSUrt6', '2023-07-30 23:41:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-29 23:41:36', '2023-07-29 23:41:36'),
('9gpJ-RKU8g-N7ykGJEzzI2KF8dZFVKRE', '2023-07-30 23:31:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-29 23:31:02', '2023-07-29 23:31:02'),
('9gvA3g_jj59fCpeckhxlXAsjJpuOPgI4', '2023-07-30 12:38:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"d9459a46-77b9-4b89-97ca-e828a7e71ca2\"}', '2023-07-29 11:45:25', '2023-07-29 12:38:16'),
('agWdSQrlcZdR8jbIvEjVL7VqKF0C6ygm', '2023-07-31 00:28:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-30 00:28:05', '2023-07-30 00:28:05'),
('DnEvs3dhXyEwBDuPgDnhiGgXnL_bQQLq', '2023-07-30 23:31:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-29 23:31:36', '2023-07-29 23:31:36'),
('ElgsMUYVzwGmmbm8rylKqUyiwpNFMPps', '2023-07-31 02:31:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-30 02:31:44', '2023-07-30 02:31:44'),
('EPlIjpbyXy1EtdgR6hE-az2nLxOmfbqU', '2023-07-30 07:53:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-29 07:53:41', '2023-07-29 07:53:41'),
('eVC3vzCFsOETdDKGZ703Z86cxj2-Gl4X', '2023-07-31 00:27:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-30 00:27:20', '2023-07-30 00:27:20'),
('EZ1MAAdHPbYtuCsbE58eYMOHl7LwWx0A', '2023-07-31 02:31:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-30 02:31:51', '2023-07-30 02:31:51'),
('fQO5QLbbLVUlDyC3h_oNLaicSZhluIOr', '2023-07-31 02:34:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-30 02:34:29', '2023-07-30 02:34:29'),
('Fvh0mULKeNXVKHx07G-FHUacMfHeIyoS', '2023-07-31 02:30:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-30 02:30:21', '2023-07-30 02:30:21'),
('gAOB7-zE-TEzz4amdqlGuR9_uCKS8et6', '2023-07-31 02:31:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-30 02:31:26', '2023-07-30 02:31:26'),
('ginCUaSSlZBaJvvJi1CYnPU61TljjF_9', '2023-07-30 23:31:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-29 23:31:41', '2023-07-29 23:31:41'),
('HBKZtRowPc_A5VQIBxaC6vVshyd0etFx', '2023-07-30 23:42:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-29 23:42:04', '2023-07-29 23:42:04'),
('hIPGnI-x9OxqzrLeu0av3wGuLqUka8Vd', '2023-07-30 11:45:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-29 11:45:24', '2023-07-29 11:45:24'),
('iadISBcx4ou0Fspl2FgAjUvl1TDiv-9T', '2023-07-31 03:17:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"728dfecb-0298-4316-8ddf-313a3040138c\"}', '2023-07-30 02:51:12', '2023-07-30 03:17:48'),
('iDTeX2VnuhoDhFmvcd4-e9ku6889uR1U', '2023-07-31 02:34:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-30 02:34:37', '2023-07-30 02:34:37'),
('IMv3Q_7TUEJH5EIMYEN7Y0w8qgJLVxu5', '2023-07-30 07:53:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-29 07:53:31', '2023-07-29 07:53:31'),
('kBtoMf30LSWzgw0wUHWVvk75eIur3F1s', '2023-07-31 02:34:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-30 02:34:24', '2023-07-30 02:34:24'),
('mNq7te3xoltO2SQX2T1SDg7bI-5WiVsy', '2023-07-30 07:42:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-29 07:42:48', '2023-07-29 07:42:48'),
('MoQPFKbVaJLM4U16kyymdT5jDDw_di_k', '2023-07-30 23:29:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-29 23:29:49', '2023-07-29 23:29:49'),
('N3ECEw8F-2WqCde0dRVNO6IzXZFOZjq1', '2023-07-30 23:31:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-29 23:31:38', '2023-07-29 23:31:38'),
('PN4Fjhh1ymxG64843YHs1k2wa1ewjmR9', '2023-07-30 08:37:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-29 08:38:01', '2023-07-29 08:38:01'),
('T52XQqvZ9HjDZH8sU9vMuWhSP4CTm4vR', '2023-07-30 07:44:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-29 07:44:30', '2023-07-29 07:44:30'),
('tLrf5U1XZECdu6XBkY7EjpQr8HPCrbpi', '2023-07-31 00:24:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-30 00:24:37', '2023-07-30 00:24:37'),
('UUsLv2mHoJNbv6EM6Xqh54KlMvVazHYm', '2023-07-30 23:52:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-29 23:52:55', '2023-07-29 23:52:55'),
('vI_qxa0TfG02AI2eqAU6_ubfWdVhkYfK', '2023-07-31 00:04:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-30 00:04:56', '2023-07-30 00:04:56'),
('w-V4vGOBEN1wZgK20k52evvdYziJ728W', '2023-07-31 02:51:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-30 02:51:12', '2023-07-30 02:51:12'),
('wccm9I8FBVWPm3tEe2Ut_rke0AXdkF4_', '2023-07-30 23:58:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-29 23:58:00', '2023-07-29 23:58:00'),
('WCzVyVUcksHWi2H_AEfdZ8MsWhPnW_N5', '2023-07-30 23:55:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-29 23:55:54', '2023-07-29 23:55:54'),
('XKRqKY0oVumYCzl2wAS_IupZ9omszdPM', '2023-07-30 08:38:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"d9459a46-77b9-4b89-97ca-e828a7e71ca2\"}', '2023-07-29 07:53:41', '2023-07-29 08:38:43'),
('XWpl_LRYqCinFdUUiHslJj_-oSCJHk__', '2023-07-30 12:07:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-29 12:07:44', '2023-07-29 12:07:44'),
('yVbp4tbMrdGk0g_PnB-LdDHVBjI2WGyD', '2023-07-31 02:32:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-30 02:32:02', '2023-07-30 02:32:02'),
('ZldYZTBMf0-rq6aa_b5gZ_AY-bZEAm41', '2023-07-31 00:27:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-30 00:27:14', '2023-07-30 00:27:14'),
('zNEPiQWCn_JxNMmpcAsQBpoxlfe9mx0y', '2023-07-31 00:05:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-30 00:05:42', '2023-07-30 00:05:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roles` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `nama`, `email`, `password`, `roles`, `createdAt`, `updatedAt`) VALUES
(1, '9d5083d8-373f-47c9-9e08-6ee77950de59', 'Ahyar Ali Maulidin', 'ahyar@kesiswaan.maarif.ac.id', '$argon2id$v=19$m=65536,t=3,p=4$gak2jeNcBdg8hST4PvamLQ$TzcWkn1Wo9ve36jjk8kReurSTw3/Z4durk81amqiYLY', 'kesiswaan', '2023-07-27 01:50:00', '2023-07-27 01:50:00'),
(2, 'd9459a46-77b9-4b89-97ca-e828a7e71ca2', 'Asep Sudrajat', 'asep@admin.maarif.ac.id', '$argon2id$v=19$m=65536,t=3,p=4$EMQmPZLXJKBqFaKe8tdTFQ$SGDPXYMea7O4eElXkmDIRJTLMXgjGbVM7DFvO5GRnHs', 'admin', '2023-07-27 01:58:21', '2023-07-27 01:58:21'),
(3, '4a09f7e9-9004-438d-9771-5ca59a2edb7d', 'VMT Media', 'vmt.media@mitra.maarif.ac.id', '$argon2id$v=19$m=65536,t=3,p=4$W8EKnaW9a97flDP4nFMyGw$SzNutIiYfP41K+0Tsv5k/z2/44IynCmDW5ueVNs7Gr4', 'mitra penerbit', '2023-07-27 07:05:26', '2023-07-27 07:05:26'),
(4, '728dfecb-0298-4316-8ddf-313a3040138c', 'Dadi Sumarna', 'dadi@admin.maarif.ac.id', '$argon2id$v=19$m=65536,t=3,p=4$n4RaElPaRoL9gGcQGHRcMw$jfWHJ8wJzARIYwASjzE9U/O5JxqtN3oL2mW6fUGzMYk', 'admin', '2023-07-27 23:22:50', '2023-07-27 23:22:50'),
(5, '16a77082-1536-4ca5-b7e5-9b9bad8320fe', 'Yuni Sri Wulandari', 'yuni.sri@kepsek.maarif.ac.id', '$argon2id$v=19$m=65536,t=3,p=4$CJbXuK25BqZPryjlZp9Dtg$w+s8YYQZGIWN2nNou/s362GdnWfLtaREDLRI+5QDCkA', 'kepala sekolah', '2023-07-29 07:52:13', '2023-07-29 07:52:13'),
(6, '78d68362-468e-4789-b8b1-7e1c4cfb02e8', 'Cyberlabs Org', 'cyberlabs@mitra.maarif.ac.id', '$argon2id$v=19$m=65536,t=3,p=4$34Z/KVBTW1POqvxb5z+fgQ$6562u1kQgmLE1aIB+bx8qAC8EAxzf4Rp7MntDJTQmGs', 'mitra penerbit', '2023-07-30 02:34:24', '2023-07-30 02:34:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ijazah`
--
ALTER TABLE `ijazah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `sertifikat`
--
ALTER TABLE `sertifikat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ijazah`
--
ALTER TABLE `ijazah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sertifikat`
--
ALTER TABLE `sertifikat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ijazah`
--
ALTER TABLE `ijazah`
  ADD CONSTRAINT `ijazah_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sertifikat`
--
ALTER TABLE `sertifikat`
  ADD CONSTRAINT `sertifikat_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
