-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 17, 2022 at 10:31 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvcworkbench`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `capitalCity` varchar(300) NOT NULL,
  `continent` enum('Afrika','Antartica','Azië','Autralië/Oceanië','Europa','Noord-Amerika','Zuid-Amerika') NOT NULL,
  `population` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `capitalCity`, `continent`, `population`) VALUES
(1, 'Nederland', 'Amsterdam', 'Europa', 17134872),
(2, 'Engeland', 'Londen', 'Europa', 3000000),
(3, 'China', 'Beijing', 'Azië', 10000000),
(4, 'Australië', 'Canberra', 'Autralië/Oceanië', 5000000),
(5, 'Vietnam', 'Hanoi', 'Azië', 60000000);

-- --------------------------------------------------------

--
-- Table structure for table `fruit`
--

DROP TABLE IF EXISTS `fruit`;
CREATE TABLE IF NOT EXISTS `fruit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `color` varchar(50) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fruit`
--

INSERT INTO `fruit` (`id`, `name`, `color`, `price`) VALUES
(1, 'appel123', 'groen', 0.75),
(2, 'banaan', 'geel', 0.5),
(3, 'aardbei', 'rood', 1),
(4, 'framboos', 'roze', 0.25),
(5, 'kiwi', 'groen', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
