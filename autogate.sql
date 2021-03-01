-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2021 at 06:33 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autogate`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `username`, `password`) VALUES
(1, 'secureGateAutomationAdmin', 'secureGA');

-- --------------------------------------------------------

--
-- Table structure for table `adminserviceprovider`
--

CREATE TABLE `adminserviceprovider` (
  `usernameSp` varchar(45) NOT NULL,
  `passwordSp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminserviceprovider`
--

INSERT INTO `adminserviceprovider` (`usernameSp`, `passwordSp`) VALUES
('sgaaneesh', '123456789'),
('sgasankar', 'sgasankar');

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `issueId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `spId` int(11) NOT NULL,
  `issue` text NOT NULL,
  `issuestatus` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`issueId`, `userId`, `spId`, `issue`, `issuestatus`) VALUES
(55, 3, 4, 'gate stops', 0),
(56, 3, 4, 'gate hinders', 0),
(57, 3, 4, 'gate stuck', 0),
(58, 4, 5, 'no remote working', 0),
(59, 3, 4, 'gate stopping', 0),
(60, 3, 4, 'The gate moves in reverse direction when operated and   autoclose function is not working.', 0),
(61, 3, 5, 'vbnbnbc', 0),
(62, 3, 4, 'gate', 0),
(63, 3, 4, 'gate motor stops at end.', 0),
(64, 3, 5, 'the sensor is damaged', 0);

-- --------------------------------------------------------

--
-- Table structure for table `serviceprovider`
--

CREATE TABLE `serviceprovider` (
  `spId` int(11) NOT NULL,
  `spusername` varchar(20) NOT NULL,
  `sppassword` varchar(15) NOT NULL,
  `spname` varchar(30) NOT NULL,
  `spaddress` text NOT NULL,
  `spphone` varchar(10) NOT NULL,
  `spcity` varchar(20) NOT NULL,
  `spemail` varchar(30) NOT NULL,
  `spworkstatus` int(11) NOT NULL,
  `issueId` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `serviceprovider`
--

INSERT INTO `serviceprovider` (`spId`, `spusername`, `sppassword`, `spname`, `spaddress`, `spphone`, `spcity`, `spemail`, `spworkstatus`, `issueId`) VALUES
(4, 'sgaaneesh', '234567890', 'Aneesh', 'qwertyu', '9876543210', 'Coimbatore', 'aneesh@gmail.com', 0, 0),
(5, 'sgasankar', '234567890', 'Sankar', 'kovil street,namakkal', '9791818527', 'Nammakal', 'sankar@gmail.com', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `phoneno` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(15) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `username`, `password`, `phoneno`, `address`, `city`, `email`) VALUES
(1, 'ram', 'ram', '9876543210', 'xx,yy,zz', 'coimbatore', 'ram@gmail.com'),
(3, 'ragulraam', 'ragulraam', '9876543210', 'vadavalli,cbe', 'Coimbatore', 'ragulraam@gmail.com'),
(4, 'abishek', 'abishekabi', '9867543210', 'ganapathy,cbe', 'Coimbatore', 'abishek@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `adminserviceprovider`
--
ALTER TABLE `adminserviceprovider`
  ADD PRIMARY KEY (`usernameSp`);

--
-- Indexes for table `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`issueId`);

--
-- Indexes for table `serviceprovider`
--
ALTER TABLE `serviceprovider`
  ADD PRIMARY KEY (`spId`,`spusername`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `issue`
--
ALTER TABLE `issue`
  MODIFY `issueId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `serviceprovider`
--
ALTER TABLE `serviceprovider`
  MODIFY `spId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
