-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2021 at 05:38 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xiirpl1`
--

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `NIP` int(3) DEFAULT NULL,
  `NDep` varchar(6) DEFAULT NULL,
  `NBlk` varchar(9) DEFAULT NULL,
  `JK` varchar(1) DEFAULT NULL,
  `Alamat` varchar(5) DEFAULT NULL,
  `Telp` varchar(8) DEFAULT NULL,
  `Jabatan` varchar(7) DEFAULT NULL,
  `Gaji` int(7) DEFAULT NULL,
  `NoCab` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`NIP`, `NDep`, `NBlk`, `JK`, `Alamat`, `Telp`, `Jabatan`, `Gaji`, `NoCab`) VALUES
(101, 'Ema', 'Salsal', 'P', 'Jl. A', '022-1987', 'Manajer', 2500000, 'C101'),
(102, 'Dina', 'Aggraini', 'P', 'Jl. B', '022-1988', 'Sales', 1500000, 'C102'),
(103, 'Martin', 'susanto', 'L', 'Jl. C', '022-1989', 'Staff', 1000000, 'C103'),
(104, 'Antono', 'irawan', 'L', 'Jl. D', '022-1990', 'Staff', 1000000, 'C104'),
(105, 'Diah', 'wahyuni', 'P', 'Jl. E', '022-1991', 'Manajer', 2500000, 'C105'),
(106, 'Ayu', 'Rahmandai', 'P', 'Jl. F', '022-1992', 'Staff', 1000000, 'C106');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
