-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 15, 2015 at 07:46 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `supa_db`
--
CREATE DATABASE IF NOT EXISTS `supa_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `supa_db`;

-- --------------------------------------------------------

--
-- Table structure for table `add_customer`
--

CREATE TABLE IF NOT EXISTS `add_customer` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `cn` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `add_customer`
--

INSERT INTO `add_customer` (`Id`, `cn`, `location`, `email`) VALUES
(1, 'father', 'help', 'me'),
(2, 'felix', 'humbergaa', 'klihhusis'),
(3, 'namuyaba', 'nateete', 'railway'),
(4, 'rubish', 'connecxt', 'now'),
(5, 'kenzo', 'illuminati', 'you'),
(6, '', '', ''),
(7, '', '', ''),
(8, '', '', ''),
(9, '', '', ''),
(10, '', '', ''),
(11, '', '', ''),
(12, '', '', ''),
(13, '', '', ''),
(14, '', '', ''),
(15, '', '', ''),
(16, '', '', ''),
(17, '', '', ''),
(18, 'sentongo', 'kabowa', 'sentongo@gmail.com'),
(19, 'sentongo', 'kabowa', 'sentongo@gmail.com'),
(20, 'nantongo', 'heaven', 'nantongo@gmail.com'),
(21, 'jumba', 'jinja', 'jumba@gmail.com'),
(22, 'joel', 'masanafu', 'joel@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(18) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pasword` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `email`, `pasword`) VALUES
(1, 'biazo', 'bibazo@hotmail.com', '123e');

-- --------------------------------------------------------

--
-- Table structure for table `arrival_report`
--

CREATE TABLE IF NOT EXISTS `arrival_report` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUPPLIER_NAME` varchar(25) NOT NULL,
  `DATE_OF_ARRIVAL` date NOT NULL,
  `TERMS` text NOT NULL,
  `ANY_COMPLAINTS` int(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `del_customer`
--

CREATE TABLE IF NOT EXISTS `del_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(20) NOT NULL,
  `customer_name` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `pin_code` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `issued_report`
--

CREATE TABLE IF NOT EXISTS `issued_report` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(25) NOT NULL,
  `LAST_NAME` varchar(25) NOT NULL,
  `DATE` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `itemmaster`
--

CREATE TABLE IF NOT EXISTS `itemmaster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ITEM_NAME` int(50) NOT NULL,
  `EXPIRY_DATE` int(50) NOT NULL,
  `BATCH_NUMBER` int(50) NOT NULL,
  `SUPPLIER_NAME` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `EMAIL` (`pass`),
  UNIQUE KEY `email_2` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `logout`
--

CREATE TABLE IF NOT EXISTS `logout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `pass` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE IF NOT EXISTS `material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SUPPLIER_NAME` varchar(20) NOT NULL,
  `QUANTITY` text NOT NULL,
  `LOCATION` varchar(20) NOT NULL,
  `DATE_OF_DELIVERY` date NOT NULL,
  `PAYMENT_TERM` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`id`, `SUPPLIER_NAME`, `QUANTITY`, `LOCATION`, `DATE_OF_DELIVERY`, `PAYMENT_TERM`) VALUES
(1, 'NAMUBIRU', 'FULL VEHICLE', 'NEW YORK', '0000-00-00', 'CHEQUE');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_no` varchar(50) NOT NULL,
  `order_date` date NOT NULL,
  `delivery_terms` varchar(50) NOT NULL,
  `payment_terms` varchar(50) NOT NULL,
  `delivery_mode` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `p_no`, `order_date`, `delivery_terms`, `payment_terms`, `delivery_mode`) VALUES
(1, '6767654', '0000-00-00', 'cash', 'cash', 'shipment');

-- --------------------------------------------------------

--
-- Table structure for table `purchaser`
--

CREATE TABLE IF NOT EXISTS `purchaser` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(25) NOT NULL,
  `terms_of_pay` text NOT NULL,
  `date_of_purchase` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE IF NOT EXISTS `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `i_n` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(25) NOT NULL,
  `quantity` text NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scode` varchar(50) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `country` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `pin` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `scode`, `sname`, `country`, `city`, `pin`) VALUES
(1, '', '', '', '', ''),
(2, '', '', '', '', ''),
(3, '', '', '', '', ''),
(4, '', '', '', '', ''),
(5, '', '', '', '', ''),
(6, '', '', '', '', ''),
(7, 'iuiu', 'lmz', 'JAMAICA', 'dodoma', '0p00000'),
(8, 'vm', 'vmm', 'JAMAICA', 'dodoma', '122w'),
(9, 'vm', 'vmm', 'JAMAICA', 'dodoma', '122w'),
(10, 'namubiru', 'JOSEPHINE', 'UGANDA', 'kampala', '1993j'),
(11, 'namubiru', 'JOSEPHINE', 'UGANDA', 'kampala', '1993j'),
(12, '2W23', 'KAGAME', 'JAMAICA', 'dodoma', '2003'),
(13, '', '', '', '', ''),
(14, '1234', 'coke', 'JAMAICA', 'dodoma', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`password`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'namubiru', '81dc9bdb52d04dc20036', 'josephines'),
(2, 'rukundo', 'namubiru@gmail.com', '827ccb0eea8a706c4c34a1689'),
(3, 'NAKAA', 'NAAKA@GMAIL.COM', 'fcea920f7412b5da7be0cf42b'),
(4, 'said', 'said@gmail.com', '81dc9bdb52d04dc20036dbd83');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
