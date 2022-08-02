-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Agu 2022 pada 04.49
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suratrev`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `asal`
--

CREATE TABLE `asal` (
  `id_asal` int(11) NOT NULL,
  `nama_pengirim` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `asal`
--

INSERT INTO `asal` (`id_asal`, `nama_pengirim`) VALUES
(1, 'Direktur'),
(2, 'admin'),
(3, 'Kadiv TNP'),
(4, 'Kadiv AKU');

-- --------------------------------------------------------

--
-- Struktur dari tabel `disposisi`
--

CREATE TABLE `disposisi` (
  `id_disposisi` int(11) NOT NULL,
  `id_surat` varchar(45) NOT NULL,
  `id_jenis` varchar(45) NOT NULL,
  `catatan` text NOT NULL,
  `id_user` varchar(45) NOT NULL,
  `id_user_asal` varchar(255) NOT NULL,
  `status` varchar(45) NOT NULL,
  `tgl_disposisi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `disposisi`
--

INSERT INTO `disposisi` (`id_disposisi`, `id_surat`, `id_jenis`, `catatan`, `id_user`, `id_user_asal`, `status`, `tgl_disposisi`) VALUES
(10, '7', '1', 'ada', '4', '1', '', '2022-08-01');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `disposisi2`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `disposisi2` (
`id_disposisi` int(11)
,`id_surat` varchar(45)
,`id_jenis` varchar(45)
,`catatan` text
,`id_user` varchar(45)
,`id_user_asal` varchar(255)
,`status` varchar(45)
,`tgl_disposisi` date
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `distribusi`
--

CREATE TABLE `distribusi` (
  `id_distribusi` int(11) NOT NULL,
  `id_disposisi` varchar(45) NOT NULL,
  `id_user_asal` varchar(45) NOT NULL,
  `id_user_tujuan` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_disposisi`
--

CREATE TABLE `jenis_disposisi` (
  `id_jenis` int(11) NOT NULL,
  `nama_disposisi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_disposisi`
--

INSERT INTO `jenis_disposisi` (`id_jenis`, `nama_disposisi`) VALUES
(1, 'Harus kesini'),
(2, 'harus ke sana'),
(3, 'harus kemana mana');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Administrator'),
(2, 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_permissions`
--

CREATE TABLE `role_permissions` (
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `action_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `role_permissions`
--

INSERT INTO `role_permissions` (`permission_id`, `role_id`, `page_name`, `action_name`) VALUES
(1622, 3, 'jalan_disposisi', 'list'),
(1623, 3, 'jalan_disposisi', 'view'),
(1624, 3, 'surat_staff', 'list'),
(1625, 3, 'surat_staff', 'view'),
(1626, 4, 'surat_masuk', 'list'),
(1627, 4, 'surat_masuk', 'view'),
(1628, 4, 'surat_masuk', 'add'),
(1629, 4, 'surat_masuk', 'edit'),
(1630, 4, 'surat_masuk', 'editfield'),
(1631, 4, 'user', 'accountedit'),
(1632, 4, 'user', 'accountview'),
(1633, 4, 'disposisi', 'list'),
(1634, 4, 'disposisi', 'view'),
(1635, 4, 'disposisi', 'add'),
(1636, 4, 'disposisi', 'edit'),
(1637, 4, 'disposisi', 'editfield'),
(1638, 4, 'disposisi', 'delete'),
(1639, 4, 'jenis_disposisi', 'list'),
(1640, 4, 'jenis_disposisi', 'view'),
(1641, 4, 'sifat_surat', 'list'),
(1642, 4, 'sifat_surat', 'view'),
(1643, 4, 'roles', 'view'),
(1644, 5, 'surat_masuk', 'list'),
(1645, 5, 'surat_masuk', 'view'),
(1646, 5, 'surat_masuk', 'add'),
(1647, 5, 'surat_masuk', 'edit'),
(1648, 5, 'surat_masuk', 'editfield'),
(1649, 5, 'surat_masuk', 'delete'),
(1650, 5, 'user', 'edit'),
(1651, 5, 'user', 'editfield'),
(1652, 5, 'disposisi', 'list'),
(1653, 5, 'disposisi', 'view'),
(1654, 5, 'disposisi', 'add'),
(1655, 5, 'disposisi', 'edit'),
(1656, 5, 'disposisi', 'editfield'),
(1657, 5, 'disposisi', 'delete'),
(2476, 1, 'surat_masuk', 'list'),
(2477, 1, 'surat_masuk', 'view'),
(2478, 1, 'surat_masuk', 'add'),
(2479, 1, 'surat_masuk', 'edit'),
(2480, 1, 'surat_masuk', 'editfield'),
(2481, 1, 'surat_masuk', 'delete'),
(2482, 1, 'surat_masuk', 'import_data'),
(2483, 1, 'user', 'list'),
(2484, 1, 'user', 'view'),
(2485, 1, 'user', 'add'),
(2486, 1, 'user', 'edit'),
(2487, 1, 'user', 'editfield'),
(2488, 1, 'user', 'delete'),
(2489, 1, 'user', 'import_data'),
(2490, 1, 'disposisi', 'list'),
(2491, 1, 'disposisi', 'view'),
(2492, 1, 'disposisi', 'add'),
(2493, 1, 'disposisi', 'edit'),
(2494, 1, 'disposisi', 'editfield'),
(2495, 1, 'disposisi', 'delete'),
(2496, 1, 'distribusi', 'list'),
(2497, 1, 'distribusi', 'view'),
(2498, 1, 'distribusi', 'add'),
(2499, 1, 'distribusi', 'edit'),
(2500, 1, 'distribusi', 'editfield'),
(2501, 1, 'distribusi', 'delete'),
(2502, 1, 'jenis_disposisi', 'list'),
(2503, 1, 'jenis_disposisi', 'view'),
(2504, 1, 'jenis_disposisi', 'add'),
(2505, 1, 'jenis_disposisi', 'edit'),
(2506, 1, 'jenis_disposisi', 'editfield'),
(2507, 1, 'jenis_disposisi', 'delete'),
(2508, 1, 'user', 'userregister'),
(2509, 1, 'user', 'accountedit'),
(2510, 1, 'user', 'accountview'),
(2511, 1, 'sifat_surat', 'list'),
(2512, 1, 'sifat_surat', 'view'),
(2513, 1, 'sifat_surat', 'add'),
(2514, 1, 'sifat_surat', 'edit'),
(2515, 1, 'sifat_surat', 'editfield'),
(2516, 1, 'sifat_surat', 'delete'),
(2517, 1, 'role_permissions', 'list'),
(2518, 1, 'role_permissions', 'view'),
(2519, 1, 'role_permissions', 'add'),
(2520, 1, 'role_permissions', 'edit'),
(2521, 1, 'role_permissions', 'editfield'),
(2522, 1, 'role_permissions', 'delete'),
(2523, 1, 'roles', 'list'),
(2524, 1, 'roles', 'view'),
(2525, 1, 'roles', 'add'),
(2526, 1, 'roles', 'edit'),
(2527, 1, 'roles', 'editfield'),
(2528, 1, 'roles', 'delete'),
(2529, 1, 'asal', 'list'),
(2530, 1, 'asal', 'view'),
(2531, 1, 'asal', 'add'),
(2532, 1, 'asal', 'edit'),
(2533, 1, 'asal', 'editfield'),
(2534, 1, 'asal', 'delete'),
(2535, 2, 'surat_masuk', 'list'),
(2536, 2, 'surat_masuk', 'view'),
(2537, 2, 'user', 'view'),
(2538, 2, 'user', 'edit'),
(2539, 2, 'user', 'editfield'),
(2540, 2, 'user', 'import_data'),
(2541, 2, 'disposisi', 'list'),
(2542, 2, 'disposisi', 'view'),
(2543, 2, 'user', 'accountview'),
(2544, 2, 'disposisi2', 'list'),
(2545, 2, 'disposisi2', 'view');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sifat_surat`
--

CREATE TABLE `sifat_surat` (
  `id_sifat` int(11) NOT NULL,
  `sifat_surat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sifat_surat`
--

INSERT INTO `sifat_surat` (`id_sifat`, `sifat_surat`) VALUES
(1, 'Rahasia'),
(2, 'Penting');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `id_surat` int(11) NOT NULL,
  `no_surat` varchar(45) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_posting` varchar(45) NOT NULL,
  `id_user` varchar(45) NOT NULL,
  `file` tinyblob DEFAULT NULL,
  `perihal` varchar(45) NOT NULL,
  `sifat_surat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_masuk`
--

INSERT INTO `surat_masuk` (`id_surat`, `no_surat`, `tgl_surat`, `tgl_posting`, `id_user`, `file`, `perihal`, `sifat_surat`) VALUES
(7, 'LMP/VII/001', '2022-08-01', '2022-08-01 08:40:34', '4', 0x687474703a2f2f6c6f63616c686f73742f696d61696c2f75706c6f6164732f66696c65732f6c64686e35346b79657476717238702e646f6378, 'Rancangan Kerja', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `dis_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2022-10-29 00:00:00',
  `password_reset_key` varchar(255) DEFAULT NULL,
  `account_status` varchar(255) DEFAULT 'Pending',
  `user_role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `dis_name`, `email`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`, `account_status`, `user_role_id`) VALUES
(1, 'admin', '$2y$10$Tgz70pe2/3AT53Mm06LS2O0777rhK62nF52hHJxETAt4rnETcgk2K', 'Admin', 'admin@gmail.com', NULL, NULL, '2022-10-29 00:00:00', NULL, 'Active', 1),
(4, 'ananta', '$2y$10$bhAUOXSGhFpQesdlOHPKyOTjigi6kElmJoSxOFTHTJ4Du5FPfXYRW', 'ananta', 'anan@gmail.com', NULL, NULL, '2022-10-29 00:00:00', NULL, 'Active', 2);

-- --------------------------------------------------------

--
-- Struktur untuk view `disposisi2`
--
DROP TABLE IF EXISTS `disposisi2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `disposisi2`  AS SELECT `disposisi`.`id_disposisi` AS `id_disposisi`, `disposisi`.`id_surat` AS `id_surat`, `disposisi`.`id_jenis` AS `id_jenis`, `disposisi`.`catatan` AS `catatan`, `disposisi`.`id_user` AS `id_user`, `disposisi`.`id_user_asal` AS `id_user_asal`, `disposisi`.`status` AS `status`, `disposisi`.`tgl_disposisi` AS `tgl_disposisi` FROM `disposisi``disposisi`  ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `asal`
--
ALTER TABLE `asal`
  ADD PRIMARY KEY (`id_asal`);

--
-- Indeks untuk tabel `disposisi`
--
ALTER TABLE `disposisi`
  ADD PRIMARY KEY (`id_disposisi`);

--
-- Indeks untuk tabel `distribusi`
--
ALTER TABLE `distribusi`
  ADD PRIMARY KEY (`id_distribusi`);

--
-- Indeks untuk tabel `jenis_disposisi`
--
ALTER TABLE `jenis_disposisi`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indeks untuk tabel `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indeks untuk tabel `sifat_surat`
--
ALTER TABLE `sifat_surat`
  ADD PRIMARY KEY (`id_sifat`);

--
-- Indeks untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `asal`
--
ALTER TABLE `asal`
  MODIFY `id_asal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `disposisi`
--
ALTER TABLE `disposisi`
  MODIFY `id_disposisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `distribusi`
--
ALTER TABLE `distribusi`
  MODIFY `id_distribusi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jenis_disposisi`
--
ALTER TABLE `jenis_disposisi`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2546;

--
-- AUTO_INCREMENT untuk tabel `sifat_surat`
--
ALTER TABLE `sifat_surat`
  MODIFY `id_sifat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
