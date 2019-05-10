-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2019 at 06:39 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hardwarestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `akoustika`
--

CREATE TABLE `akoustika` (
  `marka` varchar(255) NOT NULL,
  `montelo` varchar(255) NOT NULL,
  `typos` varchar(255) DEFAULT NULL,
  `mikrofwno` varchar(3) DEFAULT NULL,
  `timh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akoustika`
--

INSERT INTO `akoustika` (`marka`, `montelo`, `typos`, `mikrofwno`, `timh`) VALUES
('Sennheiser ', 'G4ME One', 'Over Ear /Headband ', 'yes', 140),
('LOGITECH', 'G533', 'Over Ear / Headband', 'yes', 87),
('Razer', 'Kraken Pro V2 WHITE', 'Over Ear /Headband ', 'yes', 76),
('Corser', 'Void Pro Surround Red', 'Over Ear /Headband ', 'yes', 82);

-- --------------------------------------------------------

--
-- Table structure for table `ektipotes`
--

CREATE TABLE `ektipotes` (
  `marka` varchar(255) NOT NULL,
  `montelo` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `timh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ektipotes`
--

INSERT INTO `ektipotes` (`marka`, `montelo`, `type`, `timh`) VALUES
('HP', 'DeskJet Ink Advantage 3835 AiO', 'Inkjet', 58),
('Epson', 'L6160', 'Inkjet', 303),
('HP', 'OfficeJet PRo 7740 AiO', 'Inkjet', 184),
('Samsung', 'Xpress SL-M2070FW', 'Laser', 117);

-- --------------------------------------------------------

--
-- Table structure for table `epeksergastes`
--

CREATE TABLE `epeksergastes` (
  `marka` varchar(255) NOT NULL,
  `montelo` varchar(255) NOT NULL,
  `phrhnes` int(11) DEFAULT NULL,
  `clock` double DEFAULT NULL,
  `timh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `epeksergastes`
--

INSERT INTO `epeksergastes` (`marka`, `montelo`, `phrhnes`, `clock`, `timh`) VALUES
('Intel ', 'Core i3-8100 Box', 4, 3.6, 121),
('Intel', 'Core i7-8700 Box', 6, 3.2, 297),
('AMD', 'Ryzen 5 1600 Box', 8, 3, 153),
('AMD', 'Ryzen 7 2700X Box', 8, 3.7, 290);

-- --------------------------------------------------------

--
-- Table structure for table `kartes_grafikwn`
--

CREATE TABLE `kartes_grafikwn` (
  `marka` varchar(255) NOT NULL,
  `montelo` varchar(255) NOT NULL,
  `mnhmh` int(11) NOT NULL,
  `MemoryBus` int(11) DEFAULT NULL,
  `timh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kartes_grafikwn`
--

INSERT INTO `kartes_grafikwn` (`marka`, `montelo`, `mnhmh`, `MemoryBus`, `timh`) VALUES
('MSI', 'GeForce GTX 1660 Ti Gaming X', 6, 192, 306),
('Gigabyte ', 'GeForce GTX1050 Ti OC ', 4, 128, 157),
('MSI ', 'GeForce RTX 2070 Gaming Z', 8, 256, 584),
('MSI ', 'Radeon RX 570 Armor OC', 8, 256, 154);

-- --------------------------------------------------------

--
-- Table structure for table `koutia`
--

CREATE TABLE `koutia` (
  `marka` varchar(255) NOT NULL,
  `montelo` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `timh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `koutia`
--

INSERT INTO `koutia` (`marka`, `montelo`, `size`, `timh`) VALUES
('Fractal ', 'Design Define R6 TG', 'Midi', 136),
('NZXT', 'H500', 'MiDi', 78),
('Cougar', 'Panzer EVO RGB', 'Full Tower', 218),
('Deepcool ', 'Quadstellar', 'Full Tower', 423);

-- --------------------------------------------------------

--
-- Table structure for table `laptop`
--

CREATE TABLE `laptop` (
  `marka` varchar(255) NOT NULL,
  `montelo` varchar(255) NOT NULL,
  `intses` double DEFAULT NULL,
  `ram` int(11) DEFAULT NULL,
  `epeksergasths` varchar(255) DEFAULT NULL,
  `xwrhtikothta` int(11) DEFAULT NULL,
  `timh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laptop`
--

INSERT INTO `laptop` (`marka`, `montelo`, `intses`, `ram`, `epeksergasths`, `xwrhtikothta`, `timh`) VALUES
('HP', 'EliteBook x360 1030 G3', 13.3, 16, 'Intel Core i7-8650U', 512, 1000),
('Apple', 'MacBook Pro (2018)', 15, 32, 'Intel Core i9-8950HK', 2, 2400),
('Dell', 'XPS 13', 13.3, 16, 'Intel Core i7-8565U', 1, 900),
('Lenovo', 'Yoga C930', 13.9, 12, 'Intel Core i7-8550U', 256, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `mitrikes`
--

CREATE TABLE `mitrikes` (
  `marka` varchar(255) NOT NULL,
  `montelo` varchar(255) NOT NULL,
  `ram` varchar(255) NOT NULL,
  `sataslots` int(11) NOT NULL,
  `timh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mitrikes`
--

INSERT INTO `mitrikes` (`marka`, `montelo`, `ram`, `sataslots`, `timh`) VALUES
('Gigabyte ', 'B450 Aorus Pro', 'ddr4', 6, 106),
('Asrock', 'B450M-Pro4', 'ddr4', 4, 70),
('Asus', 'Prime X470 PRO', 'ddr4', 6, 154),
('Gigabyte', 'X470 Aorus Ultra Gaming', 'ddr4', 6, 132);

-- --------------------------------------------------------

--
-- Table structure for table `mnhmes_ram`
--

CREATE TABLE `mnhmes_ram` (
  `marka` varchar(255) NOT NULL,
  `montelo` varchar(255) NOT NULL,
  `xwrhtikothta` int(11) NOT NULL,
  `timh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mnhmes_ram`
--

INSERT INTO `mnhmes_ram` (`marka`, `montelo`, `xwrhtikothta`, `timh`) VALUES
('G.Skill ', 'Aegis DDR4 ', 8, 36),
('HyperX ', 'Fury Black DDR4', 8, 40),
('Corsair ', 'Value Select DDR4', 16, 68),
('Corsair ', 'Vengeance LPX  DDR4', 8, 36);

-- --------------------------------------------------------

--
-- Table structure for table `mousepad`
--

CREATE TABLE `mousepad` (
  `marka` varchar(255) NOT NULL,
  `montelo` varchar(255) NOT NULL,
  `epifaneia` varchar(255) NOT NULL,
  `timh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mousepad`
--

INSERT INTO `mousepad` (`marka`, `montelo`, `epifaneia`, `timh`) VALUES
('Razer', 'Goliathus Chroma', 'soft', 32),
('Corsair', 'MM600', 'hard', 40),
('Corsair', 'MM800', 'hard', 65),
('SteelSeries', 'QcK Gaming Surface', 'medium', 10);

-- --------------------------------------------------------

--
-- Table structure for table `othoni`
--

CREATE TABLE `othoni` (
  `marka` varchar(255) NOT NULL,
  `montelo` varchar(255) NOT NULL,
  `intses` double DEFAULT NULL,
  `hz` int(11) DEFAULT NULL,
  `timh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `othoni`
--

INSERT INTO `othoni` (`marka`, `montelo`, `intses`, `hz`, `timh`) VALUES
('Dell', 'Alienware AW2518HF', 25, 240, 340),
('Samsung', 'C24FG73', 23.5, 144, 240),
('Samsung', 'LS24D330HSX', 24, 60, 107),
('MSI', 'Optix MAG241C', 23.6, 144, 255);

-- --------------------------------------------------------

--
-- Table structure for table `plhktrologio`
--

CREATE TABLE `plhktrologio` (
  `marka` varchar(255) NOT NULL,
  `montelo` varchar(255) NOT NULL,
  `mhxaniko` varchar(3) NOT NULL,
  `xrwma` varchar(255) NOT NULL,
  `timh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plhktrologio`
--

INSERT INTO `plhktrologio` (`marka`, `montelo`, `mhxaniko`, `xrwma`, `timh`) VALUES
('Razer', 'Blackwidow Chroma Elite', 'yes', 'black', 145),
('CoolerMaster ', 'CK550', 'yes', 'black', 80),
('LOGITECH', 'G413', 'yes', 'black', 74),
('Motospeed ', 'Inflictor CK104', 'yes', 'silver', 42);

-- --------------------------------------------------------

--
-- Table structure for table `pontiki`
--

CREATE TABLE `pontiki` (
  `marka` varchar(255) NOT NULL,
  `montelo` varchar(255) NOT NULL,
  `dpi` int(11) DEFAULT NULL,
  `plhktra` int(11) DEFAULT NULL,
  `ensyrmato` varchar(3) DEFAULT NULL,
  `timh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pontiki`
--

INSERT INTO `pontiki` (`marka`, `montelo`, `dpi`, `plhktra`, `ensyrmato`, `timh`) VALUES
('LOGITECH', 'G WIRELESS PRO', 16000, 5, 'no', 130),
('LOGITECH', 'G903', 12000, 11, 'no', 110),
('ROCCAT', 'KONE AIMO', 12000, 10, 'yes', 60),
('Razer', 'MAMBA TOURNAMENT EDITION', 16000, 9, 'yes', 110);

-- --------------------------------------------------------

--
-- Table structure for table `psiktres`
--

CREATE TABLE `psiktres` (
  `marka` varchar(255) NOT NULL,
  `montelo` varchar(255) NOT NULL,
  `strofes` int(11) NOT NULL,
  `timh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `psiktres`
--

INSERT INTO `psiktres` (`marka`, `montelo`, `strofes`, `timh`) VALUES
('Deepcool', 'Gammaxx 200T', 1600, 15),
('CoolerMaster', 'Hyper 212 EVO', 1600, 28),
('CoolerMaster ', 'Hyper 212X', 2000, 30),
('Noctua ', 'NH-U12S SE-AM4', 1500, 52);

-- --------------------------------------------------------

--
-- Table structure for table `ssd`
--

CREATE TABLE `ssd` (
  `marka` varchar(255) NOT NULL,
  `montelo` varchar(255) NOT NULL,
  `xwrhtikothta` int(11) NOT NULL,
  `timh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ssd`
--

INSERT INTO `ssd` (`marka`, `montelo`, `xwrhtikothta`, `timh`) VALUES
('Samsung ', '860 Evo', 500, 73),
('Samsung ', '970 Evo ', 250, 74),
('Kingston ', 'A400 ', 120, 18),
('Crucial ', 'MX500 ', 250, 44);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akoustika`
--
ALTER TABLE `akoustika`
  ADD PRIMARY KEY (`montelo`);

--
-- Indexes for table `ektipotes`
--
ALTER TABLE `ektipotes`
  ADD PRIMARY KEY (`montelo`);

--
-- Indexes for table `epeksergastes`
--
ALTER TABLE `epeksergastes`
  ADD PRIMARY KEY (`montelo`);

--
-- Indexes for table `kartes_grafikwn`
--
ALTER TABLE `kartes_grafikwn`
  ADD PRIMARY KEY (`montelo`);

--
-- Indexes for table `koutia`
--
ALTER TABLE `koutia`
  ADD PRIMARY KEY (`montelo`);

--
-- Indexes for table `laptop`
--
ALTER TABLE `laptop`
  ADD PRIMARY KEY (`montelo`);

--
-- Indexes for table `mitrikes`
--
ALTER TABLE `mitrikes`
  ADD PRIMARY KEY (`montelo`);

--
-- Indexes for table `mnhmes_ram`
--
ALTER TABLE `mnhmes_ram`
  ADD PRIMARY KEY (`montelo`);

--
-- Indexes for table `mousepad`
--
ALTER TABLE `mousepad`
  ADD PRIMARY KEY (`montelo`);

--
-- Indexes for table `othoni`
--
ALTER TABLE `othoni`
  ADD PRIMARY KEY (`montelo`);

--
-- Indexes for table `plhktrologio`
--
ALTER TABLE `plhktrologio`
  ADD PRIMARY KEY (`montelo`);

--
-- Indexes for table `pontiki`
--
ALTER TABLE `pontiki`
  ADD PRIMARY KEY (`montelo`);

--
-- Indexes for table `psiktres`
--
ALTER TABLE `psiktres`
  ADD PRIMARY KEY (`montelo`);

--
-- Indexes for table `ssd`
--
ALTER TABLE `ssd`
  ADD PRIMARY KEY (`montelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
