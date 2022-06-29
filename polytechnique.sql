-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 28, 2022 at 11:19 PM
-- Server version: 5.7.33
-- PHP Version: 8.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `polytechnique`
--

-- --------------------------------------------------------

--
-- Table structure for table `these`
--

CREATE TABLE `these` (
  `ID_T` int(11) NOT NULL,
  `NOM_T` varchar(100) NOT NULL,
  `NOM_ETUD_T` varchar(100) NOT NULL,
  `NOM_ENCA_T` varchar(100) NOT NULL,
  `DESTINA_T` varchar(100) NOT NULL,
  `DATE_T` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `ID` varchar(9) NOT NULL,
  `NOM` varchar(50) NOT NULL,
  `PRENOM` varchar(50) NOT NULL,
  `DATE_NAIS` date NOT NULL,
  `DEPART` varchar(30) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `NUM_TEL` int(11) NOT NULL,
  `EMAIL` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`ID`, `NOM`, `PRENOM`, `DATE_NAIS`, `DEPART`, `PASSWORD`, `NUM_TEL`, `EMAIL`) VALUES
('09rac99el', 'TSAFACK fotso', 'SAVIO', '1999-07-09', 'GIN', '$2y$10$7gB4smNpLbbWD', 690295069, 'blife1255@gmail.com'),
('123AZER', 'blhack', 'resu', '2022-06-08', 'GIN', '$2y$10$wV1rGchySxPco.zzOy0IN.hJPJerXYfjHat57Sc3dtPHRMRBkT2Xy', 690295069, 'blife1255@gmail.com'),
('28sav03io', 'nzoba nzogue', 'rachel onyx', '2000-03-28', 'GIN', '$2y$10$PrgBptYTpdvB9', 698247700, 'rachelnzogue9@gmail.com'),
('re02beca', 'nzogue', 'rebecca', '2002-08-02', 'GC', '$2y$10$xMInRRxO9O0xv', 658601030, 'brivaeil@gmail.com'),
('ru98thmak', 'makougang', 'ruth', '1998-03-28', 'GTEL/GEL', '$2y$10$yf0kbaQSsox8z', 695678402, 'ruth@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `these`
--
ALTER TABLE `these`
  ADD PRIMARY KEY (`ID_T`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
