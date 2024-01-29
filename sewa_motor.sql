-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jan 2024 pada 15.57
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sewa_motor`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `jenkel_admin` varchar(20) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `jenkel_admin`, `username`, `password`, `level`) VALUES
(1, 'abi', 'laki', 'abi@admin', '1234', 'SUPER'),
(2, 'aji', 'Laki-laki', 'aji', 'aji123', 'Super');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `hp` varchar(30) NOT NULL,
  `jabatan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama`, `hp`, `jabatan`) VALUES
(1, 'aji', '08199813213', 'Super Visor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `motor`
--

CREATE TABLE `motor` (
  `id_motor` int(11) NOT NULL,
  `no_polisi` varchar(12) NOT NULL,
  `merk` varchar(90) NOT NULL,
  `tahun` varchar(10) NOT NULL,
  `harga` double NOT NULL,
  `s_motor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `motor`
--

INSERT INTO `motor` (`id_motor`, `no_polisi`, `merk`, `tahun`, `harga`, `s_motor`) VALUES
(3, 'B6168ZCJ', 'Yamaha Byson', '2013', 2013, 'Tersedia'),
(4, 'B6168ZCJ', 'Honda Beat', '2023', 500, 'Tersedia'),
(7, 'B 1283 YZR', 'Honda Beat Streat', '2023', 2023, 'Tersedia'),
(9, 'B1290 BSD', 'Yamaha NMAX', '2023', 900000, 'Tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sewa`
--

CREATE TABLE `sewa` (
  `id_sewa` int(11) NOT NULL,
  `id_motor` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `nama_order` varchar(90) NOT NULL,
  `ktp` varchar(25) NOT NULL,
  `jenkel_sewa` varchar(25) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `tlp_order` int(15) NOT NULL,
  `tujuan` varchar(90) NOT NULL,
  `tgl_order` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `lama` int(11) NOT NULL,
  `harga_total` double NOT NULL,
  `s_sewa` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sewa`
--

INSERT INTO `sewa` (`id_sewa`, `id_motor`, `id_admin`, `nama_order`, `ktp`, `jenkel_sewa`, `alamat`, `tlp_order`, `tujuan`, `tgl_order`, `tgl_kembali`, `lama`, `harga_total`, `s_sewa`) VALUES
(1, 3, 1, 'Neisha', '36501116541', 'Perempuan', 'Jelupang tangerang s', 2147483647, 'Makasar', '2024-01-29', '2024-02-08', 10, 20130, '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `motor`
--
ALTER TABLE `motor`
  ADD PRIMARY KEY (`id_motor`);

--
-- Indeks untuk tabel `sewa`
--
ALTER TABLE `sewa`
  ADD PRIMARY KEY (`id_sewa`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `motor`
--
ALTER TABLE `motor`
  MODIFY `id_motor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `sewa`
--
ALTER TABLE `sewa`
  MODIFY `id_sewa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
