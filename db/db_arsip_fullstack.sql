-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Agu 2023 pada 05.17
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
(1, 'd526ce7b-1328-49df-9089-90c614cdb48c', 'M-SMK/21-2/00024921', '0054723235', '2021.10.1002', 'Abdul Rohman Rohiman', 'Laki-laki', 'Abdul Malik', 'Teknik Komputer & Jaringan', 'bafybeid6nig2w6crqk6vnc5jkoyvepowupoxjaqp6ijfuvz5mkq6b3jx5y', 'Dikonfirmasi', 'Dikonfirmasi', 1, '2023-08-12 22:49:13', '2023-08-13 19:54:41'),
(2, 'e5f7ff2f-4afa-403e-ad56-0face4d4acff', 'M-SMK/21-2/00024922', '0057272155', '2021.10.1003', 'Ahmad Safarudin', 'Laki-laki', 'Maman Suherman', 'Teknik Komputer & Jaringan', 'bafybeichg2ovj4wogdwppmgixkbgmxzdbc7g3iucf26pa26qdqharse4gu', 'Dikonfirmasi', 'Dikonfirmasi', 1, '2023-08-12 23:19:39', '2023-08-13 19:54:46'),
(3, '3f603759-2d36-4d3c-808d-89c225426db2', 'M-SMK/21-2/00024923', '0047253021', '2021.10.1004', 'Ahyar Ali Maulidin', 'Laki-laki', 'Mamat Mandalika', 'Teknik Komputer & Jaringan', 'bafybeic3wbhzwqq4kh75wzpr2dbnc3hamfn66dhhd6uaxogy2r2b7uiiza', 'False', 'False', 1, '2023-08-12 23:20:43', '2023-08-13 19:36:18'),
(4, 'b9387132-170b-445b-985d-bf4bcae769c1', 'M-SMK/21-2/00024924', '0047228918', '2021.10.1005', 'Amelia Mulyani', 'Perempuan', 'Hendar Sunarya', 'Teknik Komputer & Jaringan', 'bafybeif32j76ottxn4htkdizcov6mljgjbsmjmd3bf2wmy3vpokmncjqrm', 'False', 'False', 1, '2023-08-12 23:54:36', '2023-08-13 19:38:27'),
(5, '59404789-8972-4d47-af57-6cf76c943cb4', 'M-SMK/21-2/00024925', '0054446888', '2021.10.1009', 'Ayu Nurhayati', 'Perempuan', 'Asep Marna', 'Teknik Komputer & Jaringan', 'bafybeidek5fxgvexlxh2piwri3s4ipia64vqupj7y4hh54woqfo5yls4v4', 'False', 'False', 1, '2023-08-12 23:58:02', '2023-08-13 19:39:08');

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
(1, '19a1bb63-c29f-4d3a-9c43-c264a47dbea3', '2021.10.1002', '2021.10.1002', 'Abdul Rohman Rohiman', 'Laki-laki', 'Teknik Komputer & Jaringan', 'bafybeih6tahpkkvjp7ez3jx2x5psiicud7dbascivmk2453pr7jcbdc4ne', 'Dikonfirmasi', 'Dikonfirmasi', 1, '2023-08-13 12:20:16', '2023-08-13 19:15:51'),
(2, 'defd7497-e97e-4afa-a932-5e2848ccf96f', '2021.10.1003', '2021.10.1003', 'Ahmad Safarudin', 'Laki-laki', 'Teknik Komputer & Jaringan', 'bafybeihr3cmd2ip663iga4iejwungnxa7x52r5snpoxcwlzxihgtfwnjzm', 'Dikonfirmasi', 'Dikonfirmasi', 1, '2023-08-13 19:39:59', '2023-08-14 05:28:32'),
(3, 'c58ca6af-7c01-47cf-97aa-68ff19b5d5ba', '2021.10.1004', '2021.10.1004', 'Ahyar Ali Maulidin', 'Laki-laki', 'Teknik Komputer & Jaringan', 'bafybeicilcgfw2zy4khwoapwji25quk2towcclha6bnopro3nw7dg3qemy', 'False', 'False', 1, '2023-08-13 19:40:37', '2023-08-13 19:40:37'),
(4, '3c8113f4-7b6d-444d-80a5-285e690b1031', '2021.10.1005', '2021.10.1005', 'Amelia Mulyani', 'Perempuan', 'Teknik Komputer & Jaringan', 'bafybeiditzn7b55ef6wcrquq7smszikgj3mzjrfikmecs7eyx2llk5kkue', 'False', 'False', 1, '2023-08-13 19:41:14', '2023-08-13 19:41:14'),
(5, '0e5d7020-536e-4e70-8728-18983430d196', '2021.10.1009', '2021.10.1009', 'Ayu Nurhayati', 'Perempuan', 'Teknik Komputer & Jaringan', 'bafybeidhfi5fm43o4amm6kms5h57yilmrplqhdn4gokekk7dsxymhhdn3y', 'False', 'False', 1, '2023-08-13 19:41:43', '2023-08-13 19:41:43');

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
('-nktI7EckL8QT5nviOiA0OXT1cbqtAVC', '2023-08-16 23:10:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:10:00', '2023-08-15 23:10:00'),
('33HtXsx61xprdAd0Yi4Is3m34sOEAgiQ', '2023-08-16 12:27:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 12:27:24', '2023-08-15 12:27:24'),
('3RMdEXGkI7X4DNTlNuWYBn-03JPQfp6j', '2023-08-16 14:04:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 14:04:15', '2023-08-15 14:04:15'),
('3WoPc7lLhcrmM72AzhiPY3zzMCyVlwdi', '2023-08-16 23:27:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:27:09', '2023-08-15 23:27:09'),
('6FSDPRTanRXK3_xgbprDQb0-Wx9PHzxB', '2023-08-16 11:47:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 11:47:52', '2023-08-15 11:47:52'),
('6l1mgSDpJUUO7Q3HFers3UiSKxQGPnnK', '2023-08-16 23:24:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:24:43', '2023-08-15 23:24:43'),
('8Oao6U06_eKMh7eBQgUF6n0iqRf0byar', '2023-08-16 22:55:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 22:55:34', '2023-08-15 22:55:34'),
('8yIOVrLOvZnahntMamteQWA8kz2j7XdK', '2023-08-16 23:23:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:23:34', '2023-08-15 23:23:34'),
('Au-JeL3hGvaS1QUzWofS3C88_zimrnLP', '2023-08-16 23:23:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:23:42', '2023-08-15 23:23:42'),
('BSdn3bPs9k8h_4d4hw3k8sqFGy8FlHZO', '2023-08-16 23:29:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:29:01', '2023-08-15 23:29:01'),
('EINWQ8Q9SqZLssii80mnVqWlA8dGLcoT', '2023-08-16 23:18:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:18:27', '2023-08-15 23:18:27'),
('eyFjnBC7jTdV1gcFJWHuxwdWemfBQTQc', '2023-08-16 23:17:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:17:06', '2023-08-15 23:17:06'),
('f7zUM5SsIXjMSxRL8BirBgwwBh8Y63l6', '2023-08-16 11:47:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 11:47:58', '2023-08-15 11:47:58'),
('GdZNF4jWBiL_8Vc-VNgjHQddlCRIynjh', '2023-08-16 23:25:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:25:33', '2023-08-15 23:25:33'),
('H1V9N5NqUZR282xpM8P3aCYVxdr3_LDp', '2023-08-16 23:25:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:25:42', '2023-08-15 23:25:42'),
('hgSghbUnGatdFVW8HDleKGeNpUyEnrc8', '2023-08-16 13:52:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 13:52:12', '2023-08-15 13:52:12'),
('Ho8eGRtJJxjwX_8QXr2K9jwOtfSIY3uQ', '2023-08-16 23:10:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:10:06', '2023-08-15 23:10:06'),
('i51zhQmjduV0OoEldVM3GVvL25c8grmp', '2023-08-16 23:21:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:21:20', '2023-08-15 23:21:20'),
('JSolIJAUCQYjWX5kwlW_A3mzJZvbSJiS', '2023-08-16 23:15:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:15:20', '2023-08-15 23:15:20'),
('K_GshHglorug6h8g1ElnrRPVvbjcd3Xy', '2023-08-16 14:07:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 14:07:32', '2023-08-15 14:07:32'),
('LIXgpEXtVpWsqdmCMWickAaBx9wIgAMO', '2023-08-16 23:15:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:15:31', '2023-08-15 23:15:31'),
('MlcsXHkv4deQwzCMzAKSeSXMX0kfdnNA', '2023-08-16 23:26:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:26:10', '2023-08-15 23:26:10'),
('NpjIniDqAhK5NGfCvnGDCq0UtHFv9QXK', '2023-08-16 23:29:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:29:44', '2023-08-15 23:29:44'),
('o9IRn0LGOiBNBpCP3CAFNuRIKgd3mB2c', '2023-08-16 12:30:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 12:30:04', '2023-08-15 12:30:04'),
('oBoksJ_asAqgmfPj7fyRsNWR__9QXeWQ', '2023-08-16 23:24:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:24:34', '2023-08-15 23:24:34'),
('OI5_5lyjgU6FZvlpVigFjSaBKghtqTc7', '2023-08-17 02:55:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-16 02:55:34', '2023-08-16 02:55:34'),
('OkQ2rBGVIpKMA_sOM1n1nRFWu8NL7Az7', '2023-08-16 12:26:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 12:26:51', '2023-08-15 12:26:51'),
('PLwx4vOJ-k3dxGhyhS8FfowSgDZ9EVyf', '2023-08-16 12:43:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 12:43:54', '2023-08-15 12:43:54'),
('Q2tC4365ZfGPa4TXxNmd5g9XyGec1zBA', '2023-08-16 23:27:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:27:19', '2023-08-15 23:27:19'),
('q69p7n7GTJQk7qmrhB9dbKeB5ZUMhq32', '2023-08-17 02:07:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-16 02:07:19', '2023-08-16 02:07:19'),
('Sj0tm3Jkm-42_Bp8ame1MmtSMvlSdEmf', '2023-08-16 23:26:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:26:16', '2023-08-15 23:26:16'),
('T-UW6DBFH7J6fJATUY9uRjH9tG9YJjZR', '2023-08-16 23:24:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:24:51', '2023-08-15 23:24:51'),
('trVd4jLAOkaqjFtIw0u69PT-MOtLDTWh', '2023-08-16 12:27:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 12:27:10', '2023-08-15 12:27:10'),
('uFmIiZgeeJJEVk8ZFC6yBrhfQKmvosBX', '2023-08-16 23:28:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:28:52', '2023-08-15 23:28:52'),
('Vif87UtDfJt8mAxykIBorn5iTWy126v1', '2023-08-16 23:21:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:21:47', '2023-08-15 23:21:47'),
('vr-59DGwI_kV6pJ9OtLZkonj-GTAeTBF', '2023-08-16 23:16:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:16:54', '2023-08-15 23:16:54'),
('VZKv8LKSHI9-n7_LjY5d-FlyyG-xzQKu', '2023-08-16 12:26:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 12:26:59', '2023-08-15 12:26:59'),
('wBJO3lJzcA-X6Nnx4zqWWnPkXj3DA9dz', '2023-08-16 23:15:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:15:25', '2023-08-15 23:15:25'),
('xMp3KnfmYbcNgKEwlaXwZ02_mjsMZltl', '2023-08-16 23:18:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 23:18:09', '2023-08-15 23:18:09'),
('yc6NiKnpHJT_CEduIncgt1QnhHNdCN2G', '2023-08-16 12:26:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 12:26:45', '2023-08-15 12:26:45'),
('zBxYk4jGvAqIt7fQgQHXb1MU22i8NIdp', '2023-08-16 11:41:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-15 11:41:41', '2023-08-15 11:41:41');

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
  `nip` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `uuid`, `nama`, `email`, `password`, `roles`, `nip`, `createdAt`, `updatedAt`) VALUES
(1, 'a97e29b0-a966-472a-abd2-d98851e992f2', 'Asep Mulyadi', 'asep.mulyadi@stafftu.maarif.ac.id', '$argon2id$v=19$m=65536,t=3,p=4$HhjOuger+aN0PgLp3xBoHA$oVBLirN8MiIdhi235otFa3ZuE1RCkx15FNNWxiaQsEU', 'admin', '1100049711', '2023-08-12 22:43:52', '2023-08-12 22:43:52'),
(2, '1456a71e-70e6-496c-a376-eb70ab33730f', 'Cecep Mulyana', 'cecep.mulyana@kesiswaan.maarif.ac.id', '$argon2id$v=19$m=65536,t=3,p=4$q+W1hQ1rkIsu11wV22zbpg$O6UXOQR1cqMLwVI1ygZOB9p53jB4qNnF4C7vzjdsuDc', 'kesiswaan', '1100049712', '2023-08-12 22:44:41', '2023-08-12 22:44:41'),
(3, '5fd109a4-76b4-45b7-a2f5-1e930a842010', 'Yuni Sri Wulandari', 'yuni.sri@kepsek.maarif.ac.id', '$argon2id$v=19$m=65536,t=3,p=4$IuIasbekqBEjbW3SSsOsHQ$44bu9T9JwEUhM0tNWRYKnmE3Bqimbg+sJAlyV+AHsQ8', 'kepala sekolah', '1100049713', '2023-08-12 22:45:23', '2023-08-12 22:45:23'),
(4, '38e371fd-714d-4112-8a0d-faa0ca3e7ff1', 'VMT Media', 'vmt.media@mitra.maarif.ac.id', '$argon2id$v=19$m=65536,t=3,p=4$7TD1p2BS1YIv2ClCT0lLPg$0cKrtQavjHO/IVxZIFtdlE3fA5eom202phTzWekFm4Q', 'mitra', '1100049714', '2023-08-12 22:45:55', '2023-08-12 22:45:55');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `sertifikat`
--
ALTER TABLE `sertifikat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
