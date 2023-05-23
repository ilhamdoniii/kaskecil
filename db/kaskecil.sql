-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02 Sep 2020 pada 03.49
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kaskecil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `biaya`
--

CREATE TABLE `biaya` (
  `no_biaya` char(8) NOT NULL,
  `nm_biaya` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `biaya`
--

INSERT INTO `biaya` (`no_biaya`, `nm_biaya`) VALUES
('B001', 'PATTYCASH'),
('B002', 'Galon'),
('B003', 'Listrik'),
('B004', 'Dinas Jakarta'),
('B005', 'Dinas Pandeglang'),
('B006', 'Dinas Kalimantan'),
('B007', 'Dinas Surabaya'),
('B008', 'Kertas A4'),
('B009', 'Kopi'),
('B010', 'Gula'),
('B011', 'Teh'),
('B012', 'Tinta Printer'),
('B013', 'Jasa Sampah Bulanan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas_kecil`
--

CREATE TABLE `kas_kecil` (
  `no_kaskecil` varchar(8) NOT NULL,
  `tgl_kaskecil` date DEFAULT NULL,
  `jml_transaksi` int(25) DEFAULT NULL,
  `nm_akun` varchar(25) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `no_penerimaan` varchar(8) DEFAULT NULL,
  `no_pengeluaran` varchar(8) DEFAULT NULL,
  `saldo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kas_kecil`
--

INSERT INTO `kas_kecil` (`no_kaskecil`, `tgl_kaskecil`, `jml_transaksi`, `nm_akun`, `keterangan`, `level`, `no_penerimaan`, `no_pengeluaran`, `saldo`) VALUES
('01', '2020-09-02', 50000, 'Listrik', 'Pembayaran Listrik', 3, NULL, '01', 1950000),
('02', '2020-09-02', 50000, 'Kertas A4', 'beli 1 rim', 3, NULL, '02', 1900000),
('F1', '2020-09-02', 2000000, 'Kas', 'PattyCash', 2, 'F1', NULL, 2000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerimaan_kk`
--

CREATE TABLE `penerimaan_kk` (
  `no_penerimaan` varchar(8) NOT NULL,
  `tgl_penerimaan` date DEFAULT NULL,
  `nm_penerimaan` varchar(25) DEFAULT NULL,
  `jml_penerimaan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penerimaan_kk`
--

INSERT INTO `penerimaan_kk` (`no_penerimaan`, `tgl_penerimaan`, `nm_penerimaan`, `jml_penerimaan`) VALUES
('F1', '2020-09-02', 'PattyCash', 2000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran_kk`
--

CREATE TABLE `pengeluaran_kk` (
  `no_pengeluaran` varchar(8) NOT NULL,
  `tgl_pengeluaran` date DEFAULT NULL,
  `jml_pengeluaran` int(11) DEFAULT NULL,
  `nm_pengeluaran` varchar(25) DEFAULT NULL,
  `no_biaya` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengeluaran_kk`
--

INSERT INTO `pengeluaran_kk` (`no_pengeluaran`, `tgl_pengeluaran`, `jml_pengeluaran`, `nm_pengeluaran`, `no_biaya`) VALUES
('01', '2020-09-02', 50000, 'Listrik', 'B003'),
('02', '2020-09-02', 50000, 'Kertas A4', 'B008');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biaya`
--
ALTER TABLE `biaya`
  ADD PRIMARY KEY (`no_biaya`);

--
-- Indexes for table `kas_kecil`
--
ALTER TABLE `kas_kecil`
  ADD PRIMARY KEY (`no_kaskecil`);

--
-- Indexes for table `penerimaan_kk`
--
ALTER TABLE `penerimaan_kk`
  ADD PRIMARY KEY (`no_penerimaan`);

--
-- Indexes for table `pengeluaran_kk`
--
ALTER TABLE `pengeluaran_kk`
  ADD PRIMARY KEY (`no_pengeluaran`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
