-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2023 at 10:56 AM
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `username`, `password`) VALUES
(1, 'admin@gmail.com', 'admin', '$2y$10$mawh54Iz6wt7MkL/u7vlSOSBHqcuY3okZkXsX5FTbXwSYXFll105m');

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
(6, 'praba.arya.elmahdi.tik21@mhsw.pnj.ac.id', 'el', '$2y$10$SggY5aOOl7f7JGjHNGVawOTX01P30qYzHucFu.UFXujFj6QMM5Gg2', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
