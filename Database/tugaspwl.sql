-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2023 at 02:17 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugaspwl`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id_item` int(11) NOT NULL,
  `nama_item` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_tr` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `ign` varchar(255) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `id_item` int(11) NOT NULL,
  `payment` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_tr`, `username`, `ign`, `uid`, `id_item`, `payment`, `jumlah`) VALUES
(1, 'el', 'arya', '12354353', 100, 'bca', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `level`) VALUES
(1, 'riyan@gmail.com', 'admin', '$2y$10$k5VARuQjiJJxw1yl8/qjn.zAkc8nnsgN1ZlXoJxdpfA3j63BbrYCi', 'admin'),
(2, 'riyanatsill@gmail.com', 'riyan', '$2y$10$bH1hVy38/rpKr3HV.nYGheyE.sSZ/t3JiTrt9dvY2UQbnkx/KRYYy', 'admin'),
(3, 'adminnnnn@gmail.com', 'admin', '$2y$10$royyUFPfVfPIQAY/.Ew2UeayI01/PB11GnAsWeKx6dNK9R2MKVev.', 'admin'),
(4, 'ziashafira@gmail.com', 'zia', '$2y$10$pzsJoKD2BmPxRr8rTsdqwu9r4ewyAP6zIwYZ5bwyx32VX6rOm7yby', 'admin'),
(5, 'cobajaya@gmail.com', 'coba', '$2y$10$kpm4GNGcH728Vwi1.Fh6Y.I6h7Qe0EQvDB6xIEV37ipQSCvypiAh6', 'user'),
(6, 'praba.arya.elmahdi.tik21@mhsw.pnj.ac.id', 'el', '$2y$10$nta77mSB.kl8mOBL7Kxzaulk.gnVX6YA.xHx//hAJW7De7UNpSIDK', 'user'),
(7, 'wkwk@gmail.com', 'uwu', '$2y$10$IdEhpebkzRXNxCKRzyPcXuwzyLz7FM5Rxlh/iLQGGZ4d4CFZGlRdu', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id_item`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_tr`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_tr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
