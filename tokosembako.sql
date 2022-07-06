-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jul 2022 pada 07.12
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokosembako`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga` int(20) NOT NULL,
  `stock` int(11) NOT NULL,
  `satuan` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `harga`, `stock`, `satuan`) VALUES
(0, 'm3', 'Minyak Goreng Sovia', 20, 30, '1'),
(1, 'b1', 'Beras Rojolele', 55, 30, '5kg'),
(2, 'b2', 'Beras Asoka', 52, 30, '5kg'),
(3, 'b3', 'Beras Tani Makmur', 50, 40, '5kg'),
(4, 's1', 'Sabun Dettol', 11, 1000, '1'),
(5, 's2', 'Sabun Give', 3, 1000, '1'),
(6, 's3', 'Sabun Asepso', 7, 1000, '1'),
(7, 'm1', 'Minyak Goreng Filma', 19, 40, '1'),
(8, 'm2', 'MInyak Goreng Sania', 44, 40, '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `telepon` int(20) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id`, `nama`, `jenis_kelamin`, `telepon`, `alamat`) VALUES
(1, 'Sri Mulyani', 'Perempuan', 819090090, 'Jl. Aja Jadian Kagak'),
(2, 'Indah Dwi', 'Perempuan', 870909098, 'Jl. Kwmana Aja'),
(3, 'Vika Endang', 'Perempuan', 890987887, 'Jl. Pelan Pelan Aja');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` text NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id`, `tanggal`, `keterangan`, `pelanggan_id`, `total`) VALUES
(1, '2022-06-23', '2 Minyak Sanco\r\n1 Beras Rojolele', 1, 144),
(2, '2022-06-25', '7 Sabun Dettol\r\n1 Minyak Sanco\r\n3 Beras Rojolele', 3, 292);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`,`pelanggan_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
