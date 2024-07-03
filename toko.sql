-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 04 Jul 2024 pada 01.45
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
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `Customer`
--

CREATE TABLE `Customer` (
  `CustID` varchar(11) DEFAULT NULL,
  `Name` varchar(17) DEFAULT NULL,
  `Address` varchar(37) DEFAULT NULL,
  `BranchCode` varchar(3) DEFAULT NULL,
  `PhoneNo` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `Customer`
--

INSERT INTO `Customer` (`CustID`, `Name`, `Address`, `BranchCode`, `PhoneNo`) VALUES
('00A01090002', 'Mirza', 'Tengku Iskandar 5', '00A', '+6285277163045'),
('00A01090018', 'Bintang Mandiri', 'Tengku Iskandari (Blang Bintang Lama)', '00A', '+6281360084071'),
('00A01090021', 'Varia Muge Profil', 'T. Iskandar, Lam Glumpang', '00A', '+628126982982'),
('00A01090026', 'Puga Jaya', 'Kebun Raya Sp.4 Pineung Lamgugop', '00A', '+6285277273340'),
('00A01090033', 'Mandiri Baru', 'T Iskandar 4 Lamglumpang', '00A', '+6282367767579');

-- --------------------------------------------------------

--
-- Struktur dari tabel `CustomerTTH`
--

CREATE TABLE `CustomerTTH` (
  `ID` tinyint(4) DEFAULT NULL,
  `TTHNo` varchar(18) DEFAULT NULL,
  `SalesID` varchar(10) DEFAULT NULL,
  `TTOTTPNo` varchar(19) DEFAULT NULL,
  `CustID` varchar(11) DEFAULT NULL,
  `DocDate` varchar(19) DEFAULT NULL,
  `Received` tinyint(4) DEFAULT NULL,
  `ReceivedDate` varchar(16) DEFAULT NULL,
  `FailedReason` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `CustomerTTH`
--

INSERT INTO `CustomerTTH` (`ID`, `TTHNo`, `SalesID`, `TTOTTPNo`, `CustID`, `DocDate`, `Received`, `ReceivedDate`, `FailedReason`) VALUES
(1, 'TTH-00A-2306-50137', '00AC1A0103', 'TTOL-00A-2306-90079', '00A01090002', '2023-06-20 00:00:00', 0, '', ''),
(2, 'TTH-00A-2306-50137', '00AC1A0103', 'TTOL-00A-2306-90084', '00A01090002', '2023-06-20 00:00:00', 0, '', ''),
(3, 'TTH-00A-2306-50137', '00AC1A0103', 'TTOL-00A-2306-90083', '00A01090002', '2023-06-20 00:00:00', 0, '', ''),
(4, 'TTH-00A-2306-50137', '00AC1A0103', 'TTOL-00A-2306-90081', '00A01090018', '2023-06-20 00:00:00', 1, '2024-07-04', 'Pemilik Toko Tidak Ada'),
(5, 'TTH-00A-2306-50137', '00AC1A0103', 'TTOL-00A-2306-90082', '00A01090018', '2023-06-20 00:00:00', 1, '2024-07-04', 'Pemilik Toko Tidak Ada'),
(6, 'TTH-00A-2306-50137', '00AC1A0103', 'TTOL-00A-2306-90158', '00A01090021', '2023-06-20 00:00:00', 1, '2024-07-04', 'Pemilik Toko Tidak Ada'),
(7, 'TTH-00A-2306-50137', '00AC1A0103', 'TTOL-00A-2306-90086', '00A01090033', '2023-06-20 00:00:00', 0, '', ''),
(8, 'TTH-00A-2306-50137', '00AC1A0103', 'TTOL-00A-2306-90159', '00A01090026', '2023-06-20 00:00:00', 0, '', ''),
(9, 'TTH-00A-2306-50137', '00AC1A0103', 'TTOL-00A-2306-90089', '00A01090026', '2023-06-20 00:00:00', 0, '', ''),
(10, 'TTH-00A-2306-50137', '00AC1A0103', 'TTOL-00A-2306-90087', '00A01090026', '2023-06-20 00:00:00', 0, '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `CustomerTTHDetail`
--

CREATE TABLE `CustomerTTHDetail` (
  `ID` tinyint(4) DEFAULT NULL,
  `TTHNo` varchar(18) DEFAULT NULL,
  `TTOTTPNo` varchar(19) DEFAULT NULL,
  `Jenis` varchar(13) DEFAULT NULL,
  `Qty` tinyint(4) DEFAULT NULL,
  `Unit` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `CustomerTTHDetail`
--

INSERT INTO `CustomerTTHDetail` (`ID`, `TTHNo`, `TTOTTPNo`, `Jenis`, `Qty`, `Unit`) VALUES
(1, 'TTH-00A-2306-50137', 'TTOL-00A-2306-90079', 'Emas 0.5 Gr', 2, 'Buah'),
(2, 'TTH-00A-2306-50137', 'TTOL-00A-2306-90081', 'Voucher 100rb', 1, 'Lembar'),
(3, 'TTH-00A-2306-50137', 'TTOL-00A-2306-90082', 'Voucher 50rb', 5, 'Lembar'),
(4, 'TTH-00A-2306-50137', 'TTOL-00A-2306-90083', 'Emas 1 Gr', 2, 'Buah'),
(5, 'TTH-00A-2306-50137', 'TTOL-00A-2306-90084', 'Emas 5 Gr', 1, 'Buah'),
(6, 'TTH-00A-2306-50137', 'TTOL-00A-2306-90086', 'Voucher 50rb', 1, 'Lembar'),
(7, 'TTH-00A-2306-50137', 'TTOL-00A-2306-90087', 'Voucher 50rb', 5, 'Lembar'),
(8, 'TTH-00A-2306-50137', 'TTOL-00A-2306-90089', 'Voucher 100rb', 1, 'Lembar'),
(9, 'TTH-00A-2306-50137', 'TTOL-00A-2306-90158', 'Emas 0.5 Gr', 3, 'Buah'),
(10, 'TTH-00A-2306-50137', 'TTOL-00A-2306-90159', 'Voucher 150rb', 1, 'Lembar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `MobileConfig`
--

CREATE TABLE `MobileConfig` (
  `ID` tinyint(4) DEFAULT NULL,
  `BranchCode` varchar(3) DEFAULT NULL,
  `Name` varchar(11) DEFAULT NULL,
  `Description` varchar(11) DEFAULT NULL,
  `Value` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `MobileConfig`
--

INSERT INTO `MobileConfig` (`ID`, `BranchCode`, `Name`, `Description`, `Value`) VALUES
(1, '00A', 'SUMMARY TTH', 'Summary TTH', 'Emas 0.5 Gr|Emas 1 Gr|Emas 5 Gr|Emas 100 Gr|Voucher 50rb|Voucher 100rb');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pulu`
--

CREATE TABLE `pulu` (
  `id` varchar(11) NOT NULL,
  `nama` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pulu`
--

INSERT INTO `pulu` (`id`, `nama`) VALUES
('1', 1),
('2', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pulu2`
--

CREATE TABLE `pulu2` (
  `id` varchar(11) NOT NULL,
  `nama` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pulu2`
--

INSERT INTO `pulu2` (`id`, `nama`) VALUES
('1', 1),
('2', 2),
('1', 2),
('2', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
