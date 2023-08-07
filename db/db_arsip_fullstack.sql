-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Agu 2023 pada 08.41
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
(1, '68521404-45e2-46a4-af95-41a462c85767', 'M-SMK/21-3/0104854', '0054723235', '2021.10.1002', 'Abdul Rohman Rohiman', 'Laki-laki', 'Asep Suryana', 'Teknik Komputer & Jaringan', 'bafybeid6nig2w6crqk6vnc5jkoyvepowupoxjaqp6ijfuvz5mkq6b3jx5y', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-02 21:36:20', '2023-08-06 01:14:46'),
(2, '0e6ab245-49eb-4eaa-89eb-0649b3ebfbd3', 'M-SMK/21-3/0104860', '0057272155', '2021.10.1003', 'Ahmad Safarudin', 'Laki-laki', 'Dandi Sudrajat', 'Teknik Komputer & Jaringan', 'bafybeichg2ovj4wogdwppmgixkbgmxzdbc7g3iucf26pa26qdqharse4gu', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-02 21:40:02', '2023-08-05 23:55:49'),
(3, '1716172f-9e5e-425c-a62e-d49b595131ca', 'M-SMK/21-3/0104855', '0047253021', '2021.10.1004', 'Ahyar Ali Maulidin', 'Laki-laki', 'Mustofa Subagja', 'Teknik Komputer & Jaringan', 'bafybeic3wbhzwqq4kh75wzpr2dbnc3hamfn66dhhd6uaxogy2r2b7uiiza', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-02 21:50:47', '2023-08-06 00:01:06'),
(4, '65741498-a3f4-490f-9fa4-9b11264d0001', 'M-SMK/21-3/0104962', '0047228918', '2021.10.1005', 'Amelia Mulyani', 'Perempuan', 'Kemal Malik', 'Teknik Komputer & Jaringan', 'bafybeif32j76ottxn4htkdizcov6mljgjbsmjmd3bf2wmy3vpokmncjqrm', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-02 21:52:49', '2023-08-03 07:28:16'),
(5, 'd789c4e4-1841-433d-b563-ba03c3a1f7c1', 'M-SMK/21-3/0105654', '0054446888', '2021.10.1009', 'Ayu Nurhayati', 'Perempuan', 'Heru Heriyandi', 'Teknik Komputer & Jaringan', 'bafybeidek5fxgvexlxh2piwri3s4ipia64vqupj7y4hh54woqfo5yls4v4', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-02 21:55:09', '2023-08-03 07:28:13'),
(7, 'd37e88d8-9709-4626-ac55-d975e26a43e4', 'M-SMK/21-3/01056543', '0055160882', '2021.10.3046', 'Ahmad Alduri', 'Laki-laki', 'Stephen John', 'Multimedia', 'bafybeifh6vm7e6ekd3fgghvu4gs5kqdwapsfnp4nb6txmac5tmmlxjwvme', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-03 09:12:13', '2023-08-05 11:14:04'),
(10, '819ae52e-3d47-4423-bf53-49f8c6e5d076', 'M-SMK/21-3/0104897', '0051541080', '2021.10.2001', 'Ade Sandani', 'Laki-laki', 'Ferdy Sandani', 'Perhotelan', 'bafybeickpuecxwo3g3p4zezluczc3tkkf73gehtxinahcixdcpmi5eufry', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-06 23:30:48', '2023-08-06 23:40:23'),
(11, 'cab4d117-e4d0-498f-b27b-d40c609373d1', 'M-SMK/21-3/0104860', '0052900522', '2021.10.3001', 'Ahmad Fahmi Maulana', 'Laki-laki', 'Mamat Subadig', 'Multimedia', 'bafybeid6srv5qazy3wrd66qbmik22xgdijjtmoanhmcl26qpiyuegbjule', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-06 23:36:10', '2023-08-06 23:40:25');

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
(1, '766e5e2f-99e9-4124-b3f5-395a52cf0029', '2021.10.1002', '2021.10.1002', 'Abdul Rohman Rohiman', 'Laki-laki', 'Teknik Komputer & Jaringan', 'bafybeih6tahpkkvjp7ez3jx2x5psiicud7dbascivmk2453pr7jcbdc4ne', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-03 03:38:38', '2023-08-05 02:29:32'),
(2, '18e74ce6-78a4-4d08-98b8-c1dcfec1e543', '2021.10.1003', '2021.10.1003', 'Ahmad Safarudin', 'Laki-laki', 'Teknik Komputer & Jaringan', 'bafybeihr3cmd2ip663iga4iejwungnxa7x52r5snpoxcwlzxihgtfwnjzm', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-03 03:43:06', '2023-08-03 07:28:39'),
(3, '43d53ebc-eb9b-4cc5-a3cb-0f4f7809e5f6', '2021.10.1004', '2021.10.1004', 'Ahyar Ali Maulidin', 'Laki-laki', 'Teknik Komputer & Jaringan', 'bafybeicilcgfw2zy4khwoapwji25quk2towcclha6bnopro3nw7dg3qemy', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-03 03:43:43', '2023-08-03 07:28:33'),
(4, 'ec89a580-2a49-4665-a6ad-e78b2e8d5f49', '2021.10.1005	', '2021.10.1005	', 'Amelia Mulyani', 'Perempuan', 'Teknik Komputer & Jaringan', 'bafybeiditzn7b55ef6wcrquq7smszikgj3mzjrfikmecs7eyx2llk5kkue', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-03 03:44:55', '2023-08-03 07:28:35'),
(5, '4ba6d045-ee3c-4da9-aa7d-acec720b0a9d', '2021.10.1009', '2021.10.1009', 'Ayu Nurhayati', 'Perempuan', 'Teknik Komputer & Jaringan', 'bafybeidhfi5fm43o4amm6kms5h57yilmrplqhdn4gokekk7dsxymhhdn3y', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-03 03:48:54', '2023-08-03 07:28:37'),
(7, 'f7601eb6-e98d-44b7-a4be-be6d8d4729a6', '2021.10.3046', '2021.10.3046', 'Ahmad Alduri', 'Laki-laki', 'Multimedia', 'bafybeiez6kfily2lkqpnh7qt2mxewcoa2klkitzy5r4rrnpda5yfvtkuly', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-06 00:20:18', '2023-08-06 23:42:20'),
(8, '153bcd2f-1966-437b-acc2-35aeb4aebbf4', '2021.10.2001', '2021.10.2001', 'Ade Sandani', 'Laki-laki', 'Pethotelan', 'bafybeigdo64hmbhbcw7va5vw6yojtimoslwwigcw5ufnoboa4ccfsoh7qa', 'Dikonfirmasi', 'Dikonfirmasi', 3, '2023-08-06 23:38:02', '2023-08-06 23:42:22');

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
('3j5TkHerLZNwCVv6Z1J0_uWL68AbDTtW', '2023-08-07 09:23:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 09:23:04', '2023-08-06 09:23:04'),
('3sDB2LeFn8x6fqb2uYuR5Za-vO9G9Rti', '2023-08-07 23:24:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:24:28', '2023-08-06 23:24:28'),
('45kBrHUBRS4xN3DtW00Us8_8PBRcB-sy', '2023-08-07 11:08:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 11:08:16', '2023-08-06 11:08:16'),
('4oeqz6jXimjDglj4P_A2OaAwCzW1RLEg', '2023-08-07 23:40:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:40:05', '2023-08-06 23:40:05'),
('4rvz2v6PHmbh7L7KUkiN6fWPQLNmB7fy', '2023-08-07 23:18:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:18:27', '2023-08-06 23:18:27'),
('4uRusSeppQCif99SXp9UjOyelO8iD88B', '2023-08-07 23:43:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:43:12', '2023-08-06 23:43:12'),
('6an4FI4IZdrK9CMZjX_zVTCRF3K5rpL4', '2023-08-07 23:33:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:33:55', '2023-08-06 23:33:55'),
('6VS06F4MfHQFm5carlYKN5oMrTnAVz5P', '2023-08-07 23:42:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:42:20', '2023-08-06 23:42:20'),
('7xaKkuIyIwy5jFD_aG16W27uf-Qb0sk3', '2023-08-07 23:37:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:37:23', '2023-08-06 23:37:23'),
('8SCHzzvwvSMy5qJFwhPvGVd1zV13dvVk', '2023-08-07 23:32:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:32:18', '2023-08-06 23:32:18'),
('AJrDjkAvngLx_mcFqbmN_DcBqSpDb1a0', '2023-08-07 23:40:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:40:07', '2023-08-06 23:40:07'),
('bU58OewNnODDuaFYGVNb3m8qxgIyL7sy', '2023-08-08 06:05:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-07 06:05:05', '2023-08-07 06:05:05'),
('C61Wyvo5x1tgP3-YCfY0gTWvFGiaQejH', '2023-08-07 23:38:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:38:02', '2023-08-06 23:38:02'),
('CcB5yoRCUtBxlX8XtaKB-QTrdRERzFeC', '2023-08-07 23:41:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:41:56', '2023-08-06 23:41:56'),
('d9D6V3nmZH_UK1QObn2-moD__UlWhjkj', '2023-08-07 09:23:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 09:23:11', '2023-08-06 09:23:11'),
('doE4XTsojY5AFHOIrYVJ-qemysrcwF0I', '2023-08-08 06:37:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-07 06:37:48', '2023-08-07 06:37:48'),
('f3hkIOuA-OQ1PEvg604MquyTOPTjcwKE', '2023-08-08 00:09:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-07 00:09:09', '2023-08-07 00:09:09'),
('F9PbKhp-TcqKFPu2Ib73BKwLOgKL40sL', '2023-08-07 23:33:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:33:45', '2023-08-06 23:33:45'),
('G95XGBu7-oJgDTv50J_-VusGcXtoD6sx', '2023-08-07 23:42:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:42:22', '2023-08-06 23:42:22'),
('GbCpXF9UmdPSIWXWxB9C-qYZdDphPazh', '2023-08-07 23:19:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:19:11', '2023-08-06 23:19:11'),
('gGSOAmEgK4oIRM6eiCe0Bp3kQnGkwPmt', '2023-08-07 23:42:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:42:08', '2023-08-06 23:42:08'),
('GRn-s7kKAryLRwQ71_FajdErvfVqHGRO', '2023-08-07 23:40:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:40:13', '2023-08-06 23:40:13'),
('GWcJaLcyvIbAA-UowicdBvCJbeb5LHGN', '2023-08-07 23:40:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:40:25', '2023-08-06 23:40:25'),
('h64ZfcxneYFX2yEF7GRUKSfozirlmY_K', '2023-08-07 11:06:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 11:06:34', '2023-08-06 11:06:34'),
('iaNjrjFbSN0Gf7Xljin6bC8Oy2Rpi8PX', '2023-08-07 23:42:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:42:04', '2023-08-06 23:42:04'),
('jkP6qByulTFc_vuvsl6lwfQ89_AvSaCC', '2023-08-07 09:02:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 09:02:05', '2023-08-06 09:02:05'),
('JqHVD0WFDC1gp3uAChSjuIGHJjgEVaig', '2023-08-08 06:37:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-07 06:37:20', '2023-08-07 06:37:20'),
('kP1e-JcDtj5LbYJH49PWdF-1FGwls3nV', '2023-08-07 09:28:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 09:28:02', '2023-08-06 09:28:02'),
('kR8Q4K7HsfG6tNtzYDIpNvQ1T_aBRDME', '2023-08-07 23:41:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:41:49', '2023-08-06 23:41:49'),
('Lfi--wpPTh9qgr5dDx23KP3tHbxfWJZV', '2023-08-07 09:58:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 09:58:29', '2023-08-06 09:58:29'),
('lOo89KqNbSSfUBm9Y8sr-K4LBnzdYFoZ', '2023-08-07 23:16:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:16:05', '2023-08-06 23:16:05'),
('lr49OLSLvDsXcW4J1NF2MReI1QVgLeA5', '2023-08-08 06:37:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-07 06:37:12', '2023-08-07 06:37:12'),
('LzP3y-vtVKMADd9IBwNA3OqP5kOjnB1V', '2023-08-08 05:56:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-07 05:56:36', '2023-08-07 05:56:36'),
('MkV2FTf7rSmy4VBlHPnOyk-TE4C28vUS', '2023-08-07 23:33:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:33:30', '2023-08-06 23:33:30'),
('mV2fcNGbQmggUd831xIurK8MBnGlMgI4', '2023-08-08 05:43:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-07 05:43:04', '2023-08-07 05:43:04'),
('mV6lrL47px9RqazFAaDjPm7NJOJ-1tON', '2023-08-07 23:42:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:42:15', '2023-08-06 23:42:15'),
('MwWwUL3p6vm5snHDPBbleYA7qt2_hwpw', '2023-08-08 05:44:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-07 05:44:12', '2023-08-07 05:44:12'),
('n5vYkPbVyfUUrRAg3F5-QwdCAOvVlrj4', '2023-08-07 23:30:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:30:48', '2023-08-06 23:30:48'),
('ngk9MSt6xMX7pUX0WSGwYaIGeCkST6gi', '2023-08-08 05:50:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-07 05:50:06', '2023-08-07 05:50:06'),
('p1rYF76oobAMhHywEIYm8Gr1fh-c0hQg', '2023-08-08 06:04:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-07 06:04:29', '2023-08-07 06:04:29'),
('q11qvPtImY3_-GP1Krs7wnxTD8aY802x', '2023-08-07 11:07:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 11:07:17', '2023-08-06 11:07:17'),
('qFUixMaSLP5c6LwZ4rN_TXZq6VAFPIlN', '2023-08-08 05:49:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-07 05:49:51', '2023-08-07 05:49:51'),
('r-k6SVeRKMrga3rpnqOyg3zyUwiwKzmL', '2023-08-07 23:38:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:38:07', '2023-08-06 23:38:07'),
('R3meISb5eABgXFPusqY61wUgXoJPvMnv', '2023-08-08 00:44:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-07 00:44:20', '2023-08-07 00:44:20'),
('RBWeQLo3oFpSRq6qL4VmKLaaawtAMMl_', '2023-08-07 23:36:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:36:10', '2023-08-06 23:36:10'),
('RSbuffD1hrmfHWovIadrZsTLsa6MP6OW', '2023-08-07 23:40:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:40:23', '2023-08-06 23:40:23'),
('sC6ULHfBqSw6R7bz46W5N9FDegbwax2z', '2023-08-07 23:33:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:33:41', '2023-08-06 23:33:41'),
('sDWNBjSEWcVCAZc5KsepQC0lWw1buePo', '2023-08-07 23:40:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:40:03', '2023-08-06 23:40:03'),
('sPf57_DLyc5ls12WPWOLWvFLZSsg6MWy', '2023-08-08 05:56:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-07 05:56:04', '2023-08-07 05:56:04'),
('sWCEUdD5DXUATYbP5TBdRA0CjTz2xqLQ', '2023-08-07 09:01:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 09:01:32', '2023-08-06 09:01:32'),
('tjR_E8hNB_hjAO8PUx1ccfjKSJWVfvfx', '2023-08-07 23:19:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:19:17', '2023-08-06 23:19:17'),
('u8WyDg-NaM-MhFJ2nh52LvzNjHnCuI3J', '2023-08-07 23:24:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:24:40', '2023-08-06 23:24:40'),
('U9ip8wzvFOXPpygQVt8aXlMc6RI09kKB', '2023-08-07 23:39:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:39:59', '2023-08-06 23:39:59'),
('UsKNb-A8gdUZHyy6sXdz_5-l9ayiJ8HC', '2023-08-07 23:33:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:33:19', '2023-08-06 23:33:19'),
('v5udUh1EkizNqX8EzCdJQEBVlF3AMowZ', '2023-08-07 23:38:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:38:12', '2023-08-06 23:38:12'),
('vEwHypXIM-v8Xv66F-R0KfMf-ol_Qrnf', '2023-08-07 09:28:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 09:28:24', '2023-08-06 09:28:24'),
('Vrl4WIDR9dJYZdVV3zUoVHlRCju0GCI3', '2023-08-07 11:05:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 11:05:26', '2023-08-06 11:05:26'),
('WJbq2IpbZ0WlonP7KSPGQkFWpbo_lYTs', '2023-08-08 05:58:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-07 05:58:17', '2023-08-07 05:58:17'),
('WjuHWy2_EdiDnkbvbw03Ja1we_oAeVij', '2023-08-07 23:39:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:39:57', '2023-08-06 23:39:57'),
('Wqw1GfFegsFO2D53-lzv4FPPIoWtIyRW', '2023-08-07 23:18:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:18:34', '2023-08-06 23:18:34'),
('WY96hd5XTY7rQAilnzkx9QV95VCZnwR4', '2023-08-07 11:04:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 11:04:16', '2023-08-06 11:04:16'),
('x0j4jnKjjhpVbHh_aBUiWhV0HnPnGomE', '2023-08-08 05:49:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-07 05:49:58', '2023-08-07 05:49:58'),
('X6rVuamY_qIDOVmepgdJQK0DWdS4jUwn', '2023-08-08 05:25:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-07 05:25:51', '2023-08-07 05:25:51'),
('YG97j1vVMMON39UajolXyHLad6EmSfRO', '2023-08-07 09:01:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 09:01:47', '2023-08-06 09:01:47'),
('zOlFKApcMicQAasnF4G56s4r1iz5ObdF', '2023-08-07 11:05:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 11:05:20', '2023-08-06 11:05:20'),
('_VK5Q9z9wF8x7FeaGw7ioktSc74Rjvll', '2023-08-07 23:42:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-06 23:42:06', '2023-08-06 23:42:06'),
('_wLc7-5Ff3t_IORNQNhR_rCahesCcHYa', '2023-08-08 05:49:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-07 05:49:42', '2023-08-07 05:49:42');

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
(8, '1aeb6edc-24c1-4c46-9dc4-dee2a4042a7b', 'VMT Media', 'vmt.media@mitra.maarif.ac.id', '$argon2id$v=19$m=65536,t=3,p=4$z7V2kioZ2kpUNhxrDIhJwQ$3eS5vR88ZJbK43KoHRf7IkRGe6nym3WrOIVTreGXr4U', 'mitra', '2023-08-04 23:07:35', '2023-08-05 02:20:33'),
(10, '306f1375-9365-45e8-ad4d-6dceabf7bfdb', 'Mamat Sudrajat', 'mamat.sudrajat@stafftu.maarif.ac.id', '$argon2id$v=19$m=65536,t=3,p=4$TFTpqV1KAZ64hovjk4PSKw$ytCLPhTjQ3Vzzsht2kGXsH8dmv+GcFh6bNEXgG2C3rc', 'admin', '2023-08-07 06:37:12', '2023-08-07 06:37:12');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `sertifikat`
--
ALTER TABLE `sertifikat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
