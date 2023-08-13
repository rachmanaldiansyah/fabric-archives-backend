-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Agu 2023 pada 00.33
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

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
-- Struktur dari tabel `ijazah`
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
  `konfirmasi_kepsek` varchar(255) NOT NULL DEFAULT 'False',
  `konfirmasi_kesiswaan` varchar(255) NOT NULL DEFAULT 'False',
  `userId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ijazah`
--

INSERT INTO `ijazah` (`id`, `uuid`, `no_ijazah`, `nisn`, `nis`, `nama`, `jk`, `nama_orangtua`, `prodi`, `arsip_ijazah`, `konfirmasi_kepsek`, `konfirmasi_kesiswaan`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, '68521404-45e2-46a4-af95-41a462c85767', 'M-SMK/21-3/0104854', '0054723235', '2021.10.1002', 'Abdul Rohman Rohiman', 'Laki-laki', 'Asep Suryana', 'Teknik Komputer & Jaringan', 'bafybeid6nig2w6crqk6vnc5jkoyvepowupoxjaqp6ijfuvz5mkq6b3jx5y', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-02 21:36:20', '2023-08-12 04:21:29'),
(2, '0e6ab245-49eb-4eaa-89eb-0649b3ebfbd3', 'M-SMK/21-3/0104860', '0057272155', '2021.10.1003', 'Ahmad Safarudin', 'Laki-laki', 'Dandi Sudrajat', 'Teknik Komputer & Jaringan', 'bafybeichg2ovj4wogdwppmgixkbgmxzdbc7g3iucf26pa26qdqharse4gu', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-02 21:40:02', '2023-08-12 04:21:33'),
(3, '1716172f-9e5e-425c-a62e-d49b595131ca', 'M-SMK/21-3/0104855', '0047253021', '2021.10.1004', 'Ahyar Ali Maulidin', 'Laki-laki', 'Mustofa Subagja', 'Teknik Komputer & Jaringan', 'bafybeic3wbhzwqq4kh75wzpr2dbnc3hamfn66dhhd6uaxogy2r2b7uiiza', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-02 21:50:47', '2023-08-11 14:40:01'),
(4, '65741498-a3f4-490f-9fa4-9b11264d0001', 'M-SMK/21-3/0104962', '0047228918', '2021.10.1005', 'Amelia Mulyani', 'Perempuan', 'Kemal Malik', 'Teknik Komputer & Jaringan', 'bafybeif32j76ottxn4htkdizcov6mljgjbsmjmd3bf2wmy3vpokmncjqrm', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-02 21:52:49', '2023-08-11 14:40:03'),
(5, 'd789c4e4-1841-433d-b563-ba03c3a1f7c1', 'M-SMK/21-3/0105654', '0054446888', '2021.10.1009', 'Ayu Nurhayati', 'Perempuan', 'Heru Heriyandi', 'Teknik Komputer & Jaringan', 'bafybeidek5fxgvexlxh2piwri3s4ipia64vqupj7y4hh54woqfo5yls4v4', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-02 21:55:09', '2023-08-11 14:40:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sertifikat`
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
  `konfirmasi_kepsek` varchar(255) NOT NULL DEFAULT 'False',
  `konfirmasi_mitra` varchar(255) NOT NULL DEFAULT 'False',
  `userId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sertifikat`
--

INSERT INTO `sertifikat` (`id`, `uuid`, `no_sertifikat`, `nis`, `nama`, `jk`, `keahlian`, `arsip_sertifikat`, `konfirmasi_kepsek`, `konfirmasi_mitra`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, '766e5e2f-99e9-4124-b3f5-395a52cf0029', '2021.10.1002', '2021.10.1002', 'Abdul Rohman Rohiman', 'Laki-laki', 'Teknik Komputer & Jaringan', 'bafybeih6tahpkkvjp7ez3jx2x5psiicud7dbascivmk2453pr7jcbdc4ne', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-03 03:38:38', '2023-08-12 04:37:31'),
(2, '18e74ce6-78a4-4d08-98b8-c1dcfec1e543', '2021.10.1003', '2021.10.1003', 'Ahmad Safarudin', 'Laki-laki', 'Teknik Komputer & Jaringan', 'bafybeihr3cmd2ip663iga4iejwungnxa7x52r5snpoxcwlzxihgtfwnjzm', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-03 03:43:06', '2023-08-03 07:28:39'),
(3, '43d53ebc-eb9b-4cc5-a3cb-0f4f7809e5f6', '2021.10.1004', '2021.10.1004', 'Ahyar Ali Maulidin', 'Laki-laki', 'Teknik Komputer & Jaringan', 'bafybeicilcgfw2zy4khwoapwji25quk2towcclha6bnopro3nw7dg3qemy', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-03 03:43:43', '2023-08-11 02:36:36'),
(4, 'ec89a580-2a49-4665-a6ad-e78b2e8d5f49', '2021.10.1005	', '2021.10.1005	', 'Amelia Mulyani', 'Perempuan', 'Teknik Komputer & Jaringan', 'bafybeiditzn7b55ef6wcrquq7smszikgj3mzjrfikmecs7eyx2llk5kkue', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-03 03:44:55', '2023-08-03 07:28:35'),
(5, '4ba6d045-ee3c-4da9-aa7d-acec720b0a9d', '2021.10.1009', '2021.10.1009', 'Ayu Nurhayati', 'Perempuan', 'Teknik Komputer & Jaringan', 'bafybeidhfi5fm43o4amm6kms5h57yilmrplqhdn4gokekk7dsxymhhdn3y', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-03 03:48:54', '2023-08-03 07:28:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('-43JNy0nQxkFSsbqHplORHEPL1HRhWje', '2023-08-13 22:32:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 22:32:39', '2023-08-12 22:32:39'),
('2s3vaPXdBPBc99eUQWeZ_gJSatSUkb5M', '2023-08-13 00:55:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 00:55:28', '2023-08-12 00:55:28'),
('4Sb4Mr-oKLpXoO34sVQ0fc9JOn09xMWI', '2023-08-13 03:03:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 03:03:18', '2023-08-12 03:03:18'),
('5HhLewaowLgMp2wqFbA3Dw3LNEzirkGB', '2023-08-13 03:04:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 03:04:25', '2023-08-12 03:04:25'),
('6CrVGGn_VqwY90fI22kEb8q-SOY-KeG7', '2023-08-13 04:24:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:24:59', '2023-08-12 04:24:59'),
('6HTsB8dcVMHJiOb8N9CBGLW5tm7Vuhby', '2023-08-13 04:46:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:46:17', '2023-08-12 04:46:17'),
('6RRvRYSOfaiYNMjikq_Un7vefcu-WN-n', '2023-08-13 04:41:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:41:49', '2023-08-12 04:41:49'),
('82MkiLpc8rZsQItDMbFHwh3fv2Vv_kpv', '2023-08-13 04:38:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:38:21', '2023-08-12 04:38:21'),
('89bCyIJY5KeeMJn47Why1yrLhuBFuIA0', '2023-08-13 03:20:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 03:20:40', '2023-08-12 03:20:40'),
('8AVmHSOeO3u7olo0NhYC2PNGgi4wgyn8', '2023-08-13 07:41:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 07:41:57', '2023-08-12 07:41:57'),
('8tX0Q5P2mRIbPTfA85fCHtsXzio-hiTj', '2023-08-13 00:14:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 00:14:19', '2023-08-12 00:14:19'),
('8_bbHkVgH2YhO4yQm1v_exXMPpjhfW1h', '2023-08-13 04:41:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:41:58', '2023-08-12 04:41:58'),
('Ai8m3_1VzKJjHKXx2RQ5yVqtFgDqComq', '2023-08-13 04:15:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:15:44', '2023-08-12 04:15:44'),
('AM9vLuvcO4Tl9Ie3TJhD7W7pYvfYqBdg', '2023-08-13 04:20:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:20:51', '2023-08-12 04:20:51'),
('Asp8HxP0Fc3JUycX7SSQqhkcUsyWo09U', '2023-08-13 00:29:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 00:29:50', '2023-08-12 00:29:50'),
('BFGPg7qY6cNrJaZCCpiHgp6VudQ9E9vy', '2023-08-13 02:26:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 02:26:54', '2023-08-12 02:26:54'),
('BlJFCLKYPDKmMKKGdC63oFTgV40Uiw9f', '2023-08-13 04:15:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:15:24', '2023-08-12 04:15:24'),
('cdS8JqgrIyllY2-sH7DZhS9IEvWl0LXH', '2023-08-13 04:14:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:14:43', '2023-08-12 04:14:43'),
('dhJFjWftQ9ASnvcYHN3uGb2x0LzSBMSg', '2023-08-13 04:35:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:35:30', '2023-08-12 04:35:30'),
('eW_7SfMsCCUK7OTrj96GrWNVqZp03XVI', '2023-08-13 04:16:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:16:09', '2023-08-12 04:16:09'),
('f3jt1tMV7H99nDuQF9mwh7yZ4makvqnr', '2023-08-13 03:04:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 03:04:04', '2023-08-12 03:04:04'),
('FDGRa2jr86jQfZDVqn5TeX9Foy8mK1Go', '2023-08-13 04:24:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:24:53', '2023-08-12 04:24:53'),
('FEb8sxG1Obs-EDU0JzpHgxL93jJNP8D9', '2023-08-13 04:21:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:21:33', '2023-08-12 04:21:33'),
('FsPiw7gbypXjZWqReBCq8Mxn4hKsHSQJ', '2023-08-13 00:40:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 00:40:51', '2023-08-12 00:40:51'),
('fx4cmoA0pqwnjKVi0txTD3JeHul1NnFr', '2023-08-13 01:50:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 01:50:50', '2023-08-12 01:50:50'),
('fztrpaNtEVHKTabc2l7q3YJcVJ4ugpsW', '2023-08-13 04:46:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:46:01', '2023-08-12 04:46:01'),
('G-cvZ7ihFuFwTscKsudfiWrn1u_zdnR1', '2023-08-13 00:41:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 00:41:06', '2023-08-12 00:41:06'),
('g908Nnkd-TFjSe9emYlIORNbGxf2jLWQ', '2023-08-13 04:43:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:43:43', '2023-08-12 04:43:43'),
('H67Q9cZpmlh_3Fvz3ZT4O3o_BFH1tUy0', '2023-08-13 04:20:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:20:43', '2023-08-12 04:20:43'),
('H7S4Yavc8tdA0gMmk5o0-FpIaXn2QLOg', '2023-08-13 02:27:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 02:27:10', '2023-08-12 02:27:10'),
('HKufvnQzv2eZW7Y56Plrxw5DNazvfkQ5', '2023-08-13 04:16:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:16:32', '2023-08-12 04:16:32'),
('HOHerFQLGpIsZ6Nq3lXyHICCSLnDTswL', '2023-08-13 00:30:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 00:30:01', '2023-08-12 00:30:01'),
('J1ZTDlB8_yvM5JhAP2nJH-Mul9iY5EzJ', '2023-08-13 04:21:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:21:29', '2023-08-12 04:21:29'),
('jJpTSEpXZl_zfyRD5Y22aH8hYb09NkwD', '2023-08-13 00:29:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 00:29:50', '2023-08-12 00:29:50'),
('Jn8uULhwHP3g8J7plWDQdw0MnZzX0jH7', '2023-08-13 02:26:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 02:26:42', '2023-08-12 02:26:42'),
('Jt548wpHkt3Ku32FZf6E7lcoTNdZ34Qc', '2023-08-13 04:37:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:37:31', '2023-08-12 04:37:31'),
('kG5zS4ig3ejKmw5klvJy0L9omnQTA9PT', '2023-08-13 00:29:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 00:29:50', '2023-08-12 00:29:50'),
('kgDczRFo_Uxkh-KD7XhQPvOWu50DuqI4', '2023-08-13 03:03:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 03:03:58', '2023-08-12 03:03:58'),
('kpoOH0bHHtB2OC7Y5fdJNXPJExXQdPXr', '2023-08-13 00:25:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 00:25:51', '2023-08-12 00:25:51'),
('LeXBDmp264lK4SLo19bvkq2aHqontDo2', '2023-08-13 22:25:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 22:25:16', '2023-08-12 22:25:16'),
('mfFYB0Oe_5FudIa6EApEp_NfXrQ0WXIV', '2023-08-13 04:16:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:16:55', '2023-08-12 04:16:55'),
('mpf8UqX0BNct3eRVbsn3JRs7fyfsTka3', '2023-08-13 04:37:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:37:51', '2023-08-12 04:37:51'),
('nDlBDarxzJHLvWCAe544lG2R1V5eVmhT', '2023-08-13 00:29:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 00:29:50', '2023-08-12 00:29:50'),
('O3UpUlBPwxOmDhUrB3hrqqAd5UoZ-2mE', '2023-08-13 03:02:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 03:02:34', '2023-08-12 03:02:34'),
('oimzQIW7VrflRwM2g2OMUAXeWwb4iOwN', '2023-08-13 02:26:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 02:26:08', '2023-08-12 02:26:08'),
('oK1qrcWzogS0oTr5jEX_2YQQlPk3Fqu0', '2023-08-13 04:17:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:17:46', '2023-08-12 04:17:46'),
('oRfNSCF2HGHskt6ftkVib79oxEMAvGCX', '2023-08-13 03:04:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 03:04:13', '2023-08-12 03:04:13'),
('oxACHA7ppCx47_Zr5ttRy_0nb61Q93oW', '2023-08-13 01:51:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 01:51:07', '2023-08-12 01:51:07'),
('P8pMs7SH30ukUwEH5WYMhGxQK6HZDjSO', '2023-08-13 00:29:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 00:29:50', '2023-08-12 00:29:50'),
('ptaASW2y8N7yx7TSrwYg7pOfD06Qcja2', '2023-08-13 01:59:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 01:59:54', '2023-08-12 01:59:54'),
('PvHV8poKHv2uvBKF6jeg8Wdbkm3m2HDA', '2023-08-13 04:36:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:36:47', '2023-08-12 04:36:47'),
('PXn2mguBd4x_lXy4B79CG2z1lfab9nHw', '2023-08-13 04:16:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:16:22', '2023-08-12 04:16:22'),
('q-eS1dL6I1ZghicogjCvL0XD8g1LErYl', '2023-08-13 07:44:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 07:44:57', '2023-08-12 07:44:57'),
('q2SRGOTFDhq9ttZyUMRy4heVYRtZEtrQ', '2023-08-13 03:03:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 03:03:42', '2023-08-12 03:03:42'),
('Q4QvQrPsRDKj49ZB5XOkHFxyQtXVaquG', '2023-08-13 02:26:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 02:26:14', '2023-08-12 02:26:14'),
('QHmq_-Jv2z6X_8CvEHAMONVcTtYpGUF_', '2023-08-13 03:03:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 03:03:32', '2023-08-12 03:03:32'),
('QWAn5j7de6Z27Zu1vPqQx0NWizhmtzic', '2023-08-13 04:15:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:15:52', '2023-08-12 04:15:52'),
('R5m-q82tw-9xzXMw1amp7C-OjxPzVM2r', '2023-08-13 02:39:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 02:39:45', '2023-08-12 02:39:45'),
('RkMI5wZvsVe-1YUyNlad0Ym7smUH-S2q', '2023-08-13 22:25:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 22:25:08', '2023-08-12 22:25:08'),
('Rw94AGkKBc-DIiaUPn2iqQvONWrPuEiU', '2023-08-13 03:40:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 03:40:57', '2023-08-12 03:40:57'),
('s67bwYx01oLT9u15vVQ8AY7RRiXXeFAm', '2023-08-13 00:29:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 00:29:50', '2023-08-12 00:29:50'),
('SAHfkoOxilazguopI1Fllr8IrUd3BC7Z', '2023-08-13 02:26:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 02:26:37', '2023-08-12 02:26:37'),
('smWYpxvO6rkEjLe4g_92En8mhA436oSA', '2023-08-13 04:36:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:36:39', '2023-08-12 04:36:39'),
('sVJ21RAvxqXj-TgPmUsCT3B7g7UqH-39', '2023-08-13 01:23:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 01:23:40', '2023-08-12 01:23:40'),
('Tcok9M-0BFfYUniGpPIXj11jfIP5NAzE', '2023-08-13 00:41:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 00:41:00', '2023-08-12 00:41:00'),
('uhJ0NdZjR3ZacGuyRevvmuBfc6R_6Msx', '2023-08-13 03:41:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 03:41:03', '2023-08-12 03:41:03'),
('urpRZamr8nKWiZAVVzTnzk4MEJlWvLOQ', '2023-08-13 02:58:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 02:58:40', '2023-08-12 02:58:40'),
('V87uGrFZUMuwOlbAo90sjCoF0PUrWOLd', '2023-08-13 03:40:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 03:40:50', '2023-08-12 03:40:50'),
('W00N_YKVVF2fa2WStBUqDwAHqRc3tY5K', '2023-08-13 02:04:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 02:04:27', '2023-08-12 02:04:27'),
('w5G-KblEolY97VYXR9_8BNQoV7-sXSQ3', '2023-08-13 04:36:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:36:17', '2023-08-12 04:36:17'),
('w6z6SFP2Sak81stjvRRFOrSg_KgWTieA', '2023-08-13 04:43:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:43:49', '2023-08-12 04:43:49'),
('xGN44jqwc7RhBU-IwcmLSC_4kyDUYCia', '2023-08-13 04:36:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:36:27', '2023-08-12 04:36:27'),
('XU6nD4QazWBI_Auvk8sKqJiajbV-utAA', '2023-08-13 04:46:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:46:53', '2023-08-12 04:46:53'),
('XYLOsPbCuOH9dfaaSbX43mkum48jGAf5', '2023-08-13 07:55:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 07:55:29', '2023-08-12 07:55:29'),
('Y-NwCXg5NghYRjb-KiOgwYj_Qt_eSt1D', '2023-08-13 04:15:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:15:47', '2023-08-12 04:15:47'),
('ywe1pegFm8OLKjKojFgHORAH8TPyVwkF', '2023-08-13 04:36:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 04:36:32', '2023-08-12 04:36:32'),
('Z2grr24nStGTLmDY48xRcJZ1lOaq5fvn', '2023-08-13 00:29:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 00:29:50', '2023-08-12 00:29:50'),
('_WEH7hF4iDoDo90LUSkcMg4H18DiBMsx', '2023-08-13 07:45:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-12 07:45:03', '2023-08-12 07:45:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `uuid`, `nama`, `email`, `password`, `roles`, `createdAt`, `updatedAt`) VALUES
(1, 'da93f094-f4a6-42f9-abe9-62045c97bd68', 'Yuni Sri Wulandari', 'yuni.sri@kepsek.maarif.ac.id', '$argon2id$v=19$m=65536,t=3,p=4$CKP3rdtZwRuhP7O2MbVa9g$Kj1SZbWSZs4ng6Ag/navKoAg9w4eA/fiWB0rhkFTnOg', 'kepala sekolah', '2023-08-02 12:09:54', '2023-08-02 12:09:54'),
(2, 'beca89d9-9390-4fd7-99fe-dd28b75fdc22', 'Cecep Mulyana', 'cecep.mulyana@kesiswaan.maarif.ac.id', '$argon2id$v=19$m=65536,t=3,p=4$gVRwa+hgdXXCp1nW+xkwqg$/m0Y8EWbXQ27Zd5WgE6v1mFgiXgk0pplnMYiaEG3yLs', 'kesiswaan', '2023-08-02 12:10:34', '2023-08-02 12:10:34'),
(3, '9e897bc0-396f-4913-aa82-6037396bac6b', 'Asep Mulyadi', 'asep.mulyadi@stafftu.maarif.ac.id', '$argon2id$v=19$m=65536,t=3,p=4$gg0p6d0HX/A+nz7nSEGAig$gasUj78oUs4jsHt/00GIYNDzYFkRc7RHTe4BXeN5GEU', 'admin', '2023-08-02 12:11:31', '2023-08-04 10:26:46'),
(6, 'e5a25141-35b9-48e0-b21d-2356bc92c2c3', 'Rachman Aldiansyah', 'rachman@stafftu.maarif.ac.id', '$argon2id$v=19$m=65536,t=3,p=4$M87AAMhCFeaNWzMjR62wgQ$wrwdSpevvXf2Exi6RJhkGZxnJl7fHB40P9TibJqAlyQ', 'admin', '2023-08-04 11:08:26', '2023-08-04 11:08:26'),
(8, '1aeb6edc-24c1-4c46-9dc4-dee2a4042a7b', 'VMT Media', 'vmt.media@mitra.maarif.ac.id', '$argon2id$v=19$m=65536,t=3,p=4$z7V2kioZ2kpUNhxrDIhJwQ$3eS5vR88ZJbK43KoHRf7IkRGe6nym3WrOIVTreGXr4U', 'mitra', '2023-08-04 23:07:35', '2023-08-05 02:20:33');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ijazah`
--
ALTER TABLE `ijazah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indeks untuk tabel `sertifikat`
--
ALTER TABLE `sertifikat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ijazah`
--
ALTER TABLE `ijazah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `sertifikat`
--
ALTER TABLE `sertifikat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `ijazah`
--
ALTER TABLE `ijazah`
  ADD CONSTRAINT `ijazah_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sertifikat`
--
ALTER TABLE `sertifikat`
  ADD CONSTRAINT `sertifikat_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
