-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2021 at 08:10 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `percobaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `goldar`
--

CREATE TABLE `goldar` (
  `id` int(11) NOT NULL,
  `golangan_darah` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `goldar`
--

INSERT INTO `goldar` (`id`, `golangan_darah`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'AB'),
(4, 'O'),
(5, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `hubungan_keluarga`
--

CREATE TABLE `hubungan_keluarga` (
  `id` int(11) NOT NULL,
  `hub_keluarga` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hubungan_keluarga`
--

INSERT INTO `hubungan_keluarga` (`id`, `hub_keluarga`) VALUES
(1, 'Kepala Keluarga'),
(2, 'Istri'),
(3, 'Anak'),
(4, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `jemaat`
--

CREATE TABLE `jemaat` (
  `kode_jemaat` varchar(100) NOT NULL,
  `status_jemaat` int(11) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `no_kk` varchar(100) DEFAULT NULL,
  `hub_keluarga` int(11) DEFAULT NULL,
  `wilayah_gereja` int(11) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` int(11) DEFAULT NULL,
  `golongan_darah` int(11) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_tlpn` varchar(20) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `pendidikan` int(8) DEFAULT NULL,
  `pekerjaan` varchar(100) DEFAULT NULL,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `nama_ibu` varchar(100) DEFAULT NULL,
  `status_nikah` int(8) DEFAULT NULL,
  `tgl_nikah` date DEFAULT NULL,
  `gereja_nikah` varchar(50) DEFAULT NULL,
  `pendeta_nikah` varchar(100) DEFAULT NULL,
  `nama_suamiistri` varchar(100) DEFAULT NULL,
  `keadaan` int(11) DEFAULT NULL,
  `tgl_meninggal` date DEFAULT NULL,
  `tempat_meninggal` varchar(50) DEFAULT NULL,
  `foto_profile` varchar(255) DEFAULT NULL,
  `foto_kk` varchar(255) DEFAULT NULL,
  `foto_surat_baptis` varchar(255) DEFAULT NULL,
  `latitude` varchar(9) NOT NULL DEFAULT '',
  `longitude` varchar(9) NOT NULL DEFAULT '',
  `tgl_entri` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kelamin`
--

CREATE TABLE `jenis_kelamin` (
  `id` int(11) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_kelamin`
--

INSERT INTO `jenis_kelamin` (`id`, `jenis_kelamin`) VALUES
(1, 'Laki-Laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `keadaan`
--

CREATE TABLE `keadaan` (
  `id` int(11) NOT NULL,
  `status_keadaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keadaan`
--

INSERT INTO `keadaan` (`id`, `status_keadaan`) VALUES
(1, 'Hidup'),
(2, 'Meninggal');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id` int(11) NOT NULL,
  `pendidikan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id`, `pendidikan`) VALUES
(1, 'TK'),
(2, 'SD'),
(3, 'SMP'),
(4, 'SMA/SMK'),
(5, 'D3'),
(6, 'D4'),
(7, 'S1'),
(8, 'S2'),
(9, 'S3'),
(10, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `status_jemaat`
--

CREATE TABLE `status_jemaat` (
  `id` int(11) NOT NULL,
  `status_jemaat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status_jemaat`
--

INSERT INTO `status_jemaat` (`id`, `status_jemaat`) VALUES
(1, 'Majelis'),
(2, 'Jemaat'),
(3, 'Tamu');

-- --------------------------------------------------------

--
-- Table structure for table `status_nikah`
--

CREATE TABLE `status_nikah` (
  `id` int(11) NOT NULL,
  `status_nikah` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status_nikah`
--

INSERT INTO `status_nikah` (`id`, `status_nikah`) VALUES
(1, 'Belum Nikah'),
(2, 'Sudah Nikah'),
(3, 'Janda'),
(4, 'Duda'),
(5, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL DEFAULT '',
  `role` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `user`, `role`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', '', 'admin', '$2y$10$tJ6fQehMg62i86.ger.2f./3vwEY7aDkrmwmBa3fWcd2Jw6j.igza', '2021-02-21 07:44:51', '2021-03-08 22:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `warta`
--

CREATE TABLE `warta` (
  `id` int(11) NOT NULL,
  `nama_warta` varchar(255) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wilayah`
--

CREATE TABLE `wilayah` (
  `id` int(11) NOT NULL,
  `wilayah` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wilayah`
--

INSERT INTO `wilayah` (`id`, `wilayah`) VALUES
(1, '1'),
(10, '10'),
(11, '11'),
(12, '12'),
(13, '13'),
(14, '14'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, '8'),
(9, '9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `goldar`
--
ALTER TABLE `goldar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hubungan_keluarga`
--
ALTER TABLE `hubungan_keluarga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jemaat`
--
ALTER TABLE `jemaat`
  ADD PRIMARY KEY (`kode_jemaat`),
  ADD KEY `hub_keluarga` (`hub_keluarga`),
  ADD KEY `fk_jns_kelamin` (`jenis_kelamin`),
  ADD KEY `fk_gol_darah` (`golongan_darah`),
  ADD KEY `fk_pendidikan` (`pendidikan`),
  ADD KEY `fk_status_nikah` (`status_nikah`),
  ADD KEY `wilayah_gereja` (`wilayah_gereja`),
  ADD KEY `fk_keadaan` (`keadaan`),
  ADD KEY `fk_status_jemaat` (`status_jemaat`);

--
-- Indexes for table `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keadaan`
--
ALTER TABLE `keadaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_jemaat`
--
ALTER TABLE `status_jemaat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_nikah`
--
ALTER TABLE `status_nikah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `warta`
--
ALTER TABLE `warta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tanggal` (`tanggal`);

--
-- Indexes for table `wilayah`
--
ALTER TABLE `wilayah`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wilayah_gereja` (`wilayah`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `goldar`
--
ALTER TABLE `goldar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hubungan_keluarga`
--
ALTER TABLE `hubungan_keluarga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `keadaan`
--
ALTER TABLE `keadaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `status_jemaat`
--
ALTER TABLE `status_jemaat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `status_nikah`
--
ALTER TABLE `status_nikah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `warta`
--
ALTER TABLE `warta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wilayah`
--
ALTER TABLE `wilayah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jemaat`
--
ALTER TABLE `jemaat`
  ADD CONSTRAINT `fk_gol_darah` FOREIGN KEY (`golongan_darah`) REFERENCES `goldar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_hub_keluarga` FOREIGN KEY (`hub_keluarga`) REFERENCES `hubungan_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_jns_kelamin` FOREIGN KEY (`jenis_kelamin`) REFERENCES `jenis_kelamin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_keadaan` FOREIGN KEY (`keadaan`) REFERENCES `keadaan` (`id`),
  ADD CONSTRAINT `fk_pendidikan` FOREIGN KEY (`pendidikan`) REFERENCES `pendidikan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_status_jemaat` FOREIGN KEY (`status_jemaat`) REFERENCES `status_jemaat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_status_nikah` FOREIGN KEY (`status_nikah`) REFERENCES `status_nikah` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_wilayah_gereja` FOREIGN KEY (`wilayah_gereja`) REFERENCES `wilayah` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
