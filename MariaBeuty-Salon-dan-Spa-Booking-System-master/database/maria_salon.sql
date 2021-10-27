-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2019 at 07:42 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maria_salon`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `detail_booking`
--

CREATE TABLE `detail_booking` (
  `id_booking` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_layanan` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `durasi` varchar(255) NOT NULL,
  `total_booking` int(255) NOT NULL,
  `catatan_khusus` varchar(255) NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_booking`
--

INSERT INTO `detail_booking` (`id_booking`, `id_member`, `id_layanan`, `tanggal`, `waktu`, `durasi`, `total_booking`, `catatan_khusus`, `status`) VALUES
(19, 11, 13, '2019-05-01', '01:00:00', '10', 1234650, '', '1'),
(21, 13, 12, '2019-05-17', '22:30:00', '3', 37037034, '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
--

CREATE TABLE `layanan` (
  `id_layanan` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` int(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `layanan`
--

INSERT INTO `layanan` (`id_layanan`, `id_admin`, `nama`, `harga`, `gambar`) VALUES
(6, 1, 'wkwk', 123, 'wkwk.jpg'),
(8, 1, 'simon', 2, 'simon.jpg'),
(11, 1, 'SDFGHJK', 121, 'SDFGHJK.jpg'),
(12, 1, 'Melva Panjaitan', 12345678, 'Melva Panjaitan.jpg'),
(13, 1, 'wkwkw', 123465, 'wkwkw.jpg'),
(14, 1, 'asdfsgnmhj', 12345678, 'asdfsgnmhj.jpg'),
(15, 1, 'Smooting', 0, 'Smooting.jpg'),
(17, 1, 'Abdi Elman', 987, '');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `nomor_telepon` varchar(255) NOT NULL,
  `role` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nama`, `username`, `password`, `alamat`, `nomor_telepon`, `role`) VALUES
(2, 'Simon M Hutajulu', 'simonhtjl', 'simon123', 'medan', '082297068549', 2),
(3, 'Melva Panjaitan', 'melvapjt', 'melva123', 'laguboti', '082276351234', 2),
(4, 'Loveleen Sinaga', 'lovesng', 'love123', 'Jakarta', '082267542864', 2),
(5, 'Simon M Hutajulu', 'sad', '21edq', '', '123122131', 2),
(6, 'dfgh', 'fghj', '34567', '', '56789', 2),
(7, 'dfghjk', 'fghjk', 'd6fg7h8', '', '6789o0', 2),
(8, 'simon', 'fghjk', 'dcfvgbuhni', 'medan', '45678908', 2),
(9, 'fghjkl', 'ghjkl', 'ghjkl', 'ghjkl', '4567890', 2),
(10, 'josua', 'josua', 'josua', 'josua', '12345678', 2),
(11, 'Loveleen Sinaga', 'loveleen', 'loveleen', 'medan', '08229706800', 2),
(12, 'jhon limbong', 'jhon', '12345', 'balige', '0812334567889', 2),
(13, 'erika', 'erika', 'yaya', 'Medan', '082297068549', 2),
(14, 'banta Solagratia', 'banta', 'banta', 'sitoluama', '09123124', 2),
(15, 'yepta', 'yepta', '123', 'Tuktuk', '082297068549', 2),
(16, 'anggiat88', 'anggiatpangaribuan12@gmial,com', 'sitoluama12', 'sitoluama', '082297068549', 2),
(17, 'Abdi Aruan', 'abdi', 'deldel', 'abdi', 'abdi', 2),
(18, 'Delta', 'delta', 'delta', 'laguboti', 'delta', 2),
(19, 'Rizky', 'sada', 'sada', 'laguboti', '6789o0', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `detail_booking`
--
ALTER TABLE `detail_booking`
  ADD PRIMARY KEY (`id_booking`),
  ADD KEY `RelasiToMember` (`id_member`),
  ADD KEY `RelasiToLayanan` (`id_layanan`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id_layanan`),
  ADD KEY `RelasiLayanan` (`id_admin`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `detail_booking`
--
ALTER TABLE `detail_booking`
  MODIFY `id_booking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id_layanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_booking`
--
ALTER TABLE `detail_booking`
  ADD CONSTRAINT `RelasiToLayanan` FOREIGN KEY (`id_layanan`) REFERENCES `layanan` (`id_layanan`),
  ADD CONSTRAINT `RelasiToMember` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`);

--
-- Constraints for table `layanan`
--
ALTER TABLE `layanan`
  ADD CONSTRAINT `RelasiLayanan` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
