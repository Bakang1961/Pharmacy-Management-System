-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2021 at 12:06 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenttbl`
--

CREATE TABLE `agenttbl` (
  `Aid` int(20) NOT NULL,
  `Aname` varchar(255) NOT NULL,
  `Aage` int(3) NOT NULL,
  `Aphone` int(15) NOT NULL,
  `Apass` int(20) NOT NULL,
  `Agender` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agenttbl`
--

INSERT INTO `agenttbl` (`Aid`, `Aname`, `Aage`, `Aphone`, `Apass`, `Agender`) VALUES
(20171012, 'Losika Nnaswe', 26, 71219752, 4321, 'Male'),
(20181010, 'Katlego Bentu', 23, 71641213, 1234, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `companytbl`
--

CREATE TABLE `companytbl` (
  `CompId` int(20) NOT NULL,
  `Compname` varchar(255) NOT NULL,
  `Compadd` varchar(255) NOT NULL,
  `Compexp` int(20) NOT NULL,
  `Compphone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companytbl`
--

INSERT INTO `companytbl` (`CompId`, `Compname`, `Compadd`, `Compexp`, `Compphone`) VALUES
(201901029, 'Losika Distributors', 'P O Box 129 Gaborone', 3, '71982934'),
(201905029, 'Katlego Distributors', 'P O Box 445 Mochudi', 2, '71871147');

-- --------------------------------------------------------

--
-- Table structure for table `medicinetbl`
--

CREATE TABLE `medicinetbl` (
  `MedId` int(20) NOT NULL,
  `MedName` varchar(255) NOT NULL,
  `MedPrice` int(11) NOT NULL,
  `MedQty` int(11) NOT NULL,
  `MedFab` date NOT NULL,
  `MedExp` date NOT NULL,
  `MedComp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicinetbl`
--

INSERT INTO `medicinetbl` (`MedId`, `MedName`, `MedPrice`, `MedQty`, `MedFab`, `MedExp`, `MedComp`) VALUES
(1, 'Paracetamol', 5, 67, '2020-10-09', '2021-08-11', 'Katlego Distributors'),
(2, 'Vitamin C', 12, 275, '2019-04-02', '2022-04-11', 'Losika Distributors ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenttbl`
--
ALTER TABLE `agenttbl`
  ADD PRIMARY KEY (`Aid`);

--
-- Indexes for table `companytbl`
--
ALTER TABLE `companytbl`
  ADD PRIMARY KEY (`CompId`);

--
-- Indexes for table `medicinetbl`
--
ALTER TABLE `medicinetbl`
  ADD PRIMARY KEY (`MedId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
