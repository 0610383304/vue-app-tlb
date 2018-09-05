-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2018 at 07:44 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_btec`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `a_id` int(10) NOT NULL,
  `a_username` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `a_password` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`a_id`, `a_username`, `a_password`) VALUES
(5, 'benjamat', 'benbew2122@gmail.com'),
(6, 'benjamat', 'benbew2122@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_student`
--

CREATE TABLE `tb_student` (
  `s_id` int(11) NOT NULL,
  `s_code` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `s_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `s_class` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `s_group` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_student`
--

INSERT INTO `tb_student` (`s_id`, `s_code`, `s_name`, `s_class`, `s_group`) VALUES
(17, '01', 'Buriram United', '20', '3'),
(18, '02', 'MuangThong United', '12', '5'),
(19, '03', '\r\nChiangRai  United', '12', '8'),
(20, '04', 'Bangkok United', '16', '4'),
(21, '05', 'Police Tero', '7', '12'),
(23, '06', 'Ratchaburi FC', '10', '10'),
(24, '07', 'Chonburi', '10', '10'),
(25, '08', 'Nakhonratchasima FC', '10', '10'),
(26, '09', 'Bangkok glass  FC', '8', '11'),
(27, '10', 'Port FC', '15', '8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `tb_student`
--
ALTER TABLE `tb_student`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `a_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_student`
--
ALTER TABLE `tb_student`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
