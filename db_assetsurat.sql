-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2019 at 01:54 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_assetsurat`
--

-- --------------------------------------------------------

--
-- Table structure for table `disposisi`
--

CREATE TABLE `disposisi` (
  `id_disposisi` int(11) NOT NULL,
  `institusi` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ekspedisi_sk`
--

CREATE TABLE `ekspedisi_sk` (
  `id_ekspedisi_sk` int(11) NOT NULL,
  `nomor_surat_keluar` varchar(100) NOT NULL,
  `nomor_berita` varchar(100) NOT NULL,
  `dari` varchar(100) NOT NULL,
  `untuk` varchar(100) NOT NULL,
  `via` varchar(100) NOT NULL,
  `tanggal_surat_keluar` date NOT NULL,
  `jam_surat_keluar` time NOT NULL,
  `jumlah_lembar` int(11) NOT NULL,
  `jumlah_kirim` int(11) NOT NULL,
  `petugas` varchar(100) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ekspedisi_sk`
--

INSERT INTO `ekspedisi_sk` (`id_ekspedisi_sk`, `nomor_surat_keluar`, `nomor_berita`, `dari`, `untuk`, `via`, `tanggal_surat_keluar`, `jam_surat_keluar`, `jumlah_lembar`, `jumlah_kirim`, `petugas`, `status`) VALUES
(1, '1', '11', 'ss', 'ss', 'batalioon 2', '2019-02-02', '19:00:00', 3, 3, 'aldi', 1),
(2, '11KKB', '14MKB', 'umum', 'Batalion 1', 'Fax', '2019-02-21', '00:05:00', 2, 32, 'asi', 1),
(4, '8', '1235654', 'kodam', 'Batalion 1', 'Fax', '2019-05-23', '10:51:00', 2, 1, 'gilang', 1);

-- --------------------------------------------------------

--
-- Table structure for table `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `id_surat_keluar` int(11) NOT NULL,
  `nomor_surat_keluar` varchar(255) NOT NULL,
  `dari` varchar(255) NOT NULL,
  `untuk` varchar(255) NOT NULL,
  `nomor_berita` varchar(255) NOT NULL,
  `tanggal_surat_keluar` date NOT NULL,
  `jam_surat_keluar` time NOT NULL,
  `jumlah_lembar` int(11) NOT NULL,
  `jumlah_kirim` int(11) NOT NULL,
  `petugas` varchar(255) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat_keluar`
--

INSERT INTO `surat_keluar` (`id_surat_keluar`, `nomor_surat_keluar`, `dari`, `untuk`, `nomor_berita`, `tanggal_surat_keluar`, `jam_surat_keluar`, `jumlah_lembar`, `jumlah_kirim`, `petugas`, `status`) VALUES
(1, '11KKBx', 'umum', 'kudus', '11kkb', '2019-02-01', '08:10:11', 3, 3, 'Admin', 1),
(2, '11KKB', 'umum', 'san, kus', '14MKB', '2019-08-06', '06:29:00', 2, 2, 'admin', 1),
(3, '1', 'umum', 'san', '123', '2019-02-22', '00:22:00', 2, 2, 'ALDI', 1),
(4, '8', 'kodam', 'koramil', '1235654', '2019-05-23', '05:33:00', 2, 2, 'gilang', 1);

-- --------------------------------------------------------

--
-- Table structure for table `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `id_surat_masuk` int(11) NOT NULL,
  `nomor_surat_masuk` varchar(255) NOT NULL,
  `tanggal_surat_masuk` date NOT NULL,
  `pengirim` varchar(255) NOT NULL,
  `kepada` varchar(255) NOT NULL,
  `nomor_berita` varchar(255) NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `jumlah_lembar` int(11) NOT NULL,
  `petugas` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `file_surat_masuk` varchar(255) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat_masuk`
--

INSERT INTO `surat_masuk` (`id_surat_masuk`, `nomor_surat_masuk`, `tanggal_surat_masuk`, `pengirim`, `kepada`, `nomor_berita`, `perihal`, `jumlah_lembar`, `petugas`, `keterangan`, `file_surat_masuk`, `status`) VALUES
(2, '13KKB', '2019-02-05', 'PROGRAM', 'UMUM', 'MKB', 'ss', 2, 'admin', 'PENDING', 'ff', 1),
(6, '14KKB', '2019-02-02', 'sekretaris', 'umum', '14MKB', 'penting', 2, 'admin', 'Terkirim', 'cc1.PNG', 1),
(7, '14KKB', '2019-02-02', 'sekretaris', 'umum', '14MKB', 'penting', 2, 'admin', 'Terkirim', 'cc1.PNG', 1),
(8, '14KKB', '2019-02-02', 'sekretaris', 'umum', '14MKB', 'penting', 2, 'admin', 'Terkirim', 'cc1.PNG', 1),
(9, '15', '2019-02-02', 'sekretaris', 'umum', '14MKB', 'penting', 2, 'admin', 'Pending', '', 1),
(10, '16', '2019-02-02', 'sekretaris', 'umum', '14MKB', 'untuk', 2, 'A', 'Terkirim', '', 2),
(11, '20MKB', '2019-02-04', 'dinas', 'umum', '20kkb', 'rapat', 3, 'admin', 'Terkirim', 'cc1.PNG', 1),
(13, '11', '2019-02-04', 'sekretaris', 'umum', '14MKB', 'penting', 2, 'admin', 'Terkirim', 'cc1.PNG', 1),
(14, '14KKB', '2019-02-06', 'sekretaris', 'umum', '14MKB', 'penting', 2, 'admin', 'Pending', 'JST_Hebb.cpp', 1),
(18, '2', '2019-02-20', 'dinas', 'umum', '14MKB', 'penting', 2, 'admin', 'Terkirim', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password_user` varchar(255) NOT NULL,
  `role_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password_user`, `role_user`) VALUES
(1, 'Admin', 'Admin', 'admin', 'admin'),
(2, 'user', 'user', 'user', 'petugas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disposisi`
--
ALTER TABLE `disposisi`
  ADD PRIMARY KEY (`id_disposisi`);

--
-- Indexes for table `ekspedisi_sk`
--
ALTER TABLE `ekspedisi_sk`
  ADD PRIMARY KEY (`id_ekspedisi_sk`);

--
-- Indexes for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`id_surat_keluar`);

--
-- Indexes for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`id_surat_masuk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `disposisi`
--
ALTER TABLE `disposisi`
  MODIFY `id_disposisi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ekspedisi_sk`
--
ALTER TABLE `ekspedisi_sk`
  MODIFY `id_ekspedisi_sk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `id_surat_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `id_surat_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
