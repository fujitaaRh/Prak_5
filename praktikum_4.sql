-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Nov 2022 pada 14.07
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praktikum_4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `No` int(255) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Nim` varchar(255) NOT NULL,
  `Prodi` varchar(255) NOT NULL,
  `Kode_Prodi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`No`, `Nama`, `Nim`, `Prodi`, `Kode_Prodi`) VALUES
(1, 'Muhammad Riandi', '120140111', 'Teknik Informatika', 'IF'),
(2, 'Rina Agustina', '120140012', 'Teknik Informatika', 'IF'),
(3, 'Ichsan Ramadhan', '120140231', 'Teknik Informatika', 'IF'),
(4, 'Tiara Mustika', '120130214', 'Teknik Elektro', 'EL'),
(5, 'Anton Permadi', '120130002', 'Teknik Elektro', 'EL'),
(6, 'Gatot Wahyu', '120120021', 'Teknik Kimia', 'KI'),
(7, 'Rachmad Saputra', '120120212', 'Teknik Kimia', 'KI'),
(8, 'Iriana Grande', '120110001', 'Farmasi', 'FA'),
(9, 'Bayu Gatra', '120150071', 'Teknik Mesin', 'TM'),
(10, 'Aprian Siregar', '120170122', 'Teknik Geologi', 'TG');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`No`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `No` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
