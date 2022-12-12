-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 14, 2022 at 06:39 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `emp_country`
--

DROP TABLE IF EXISTS `emp_country`;
CREATE TABLE IF NOT EXISTS `emp_country` (
  `EMP_ID` int(5) NOT NULL,
  `EMP_COUNTRY` int(50) NOT NULL,
  PRIMARY KEY (`EMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_dept`
--

DROP TABLE IF EXISTS `emp_dept`;
CREATE TABLE IF NOT EXISTS `emp_dept` (
  `EMP_DEPT` varchar(30) NOT NULL,
  `DEPT_TYPE` varchar(40) NOT NULL,
  `EMP_DEPT_NO` int(10) NOT NULL,
  PRIMARY KEY (`EMP_DEPT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_dept_map`
--

DROP TABLE IF EXISTS `emp_dept_map`;
CREATE TABLE IF NOT EXISTS `emp_dept_map` (
  `EMP_ID` int(5) NOT NULL,
  `EMP_DEPT` varchar(30) NOT NULL,
  PRIMARY KEY (`EMP_ID`,`EMP_DEPT`),
  KEY `EMP_DEPT` (`EMP_DEPT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp_dept_map`
--
ALTER TABLE `emp_dept_map`
  ADD CONSTRAINT `emp_dept_map_ibfk_1` FOREIGN KEY (`EMP_DEPT`) REFERENCES `emp_dept` (`EMP_DEPT`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `emp_dept_map_ibfk_2` FOREIGN KEY (`EMP_ID`) REFERENCES `emp_country` (`EMP_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
