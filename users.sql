-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2019 at 06:25 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE IF NOT EXISTS `detail` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` int(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirm` varchar(255) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `pin` int(10) NOT NULL,
  `state` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`user_id`, `name`, `email`, `contact`, `password`, `confirm`, `religion`, `nationality`, `gender`, `qualification`, `experience`, `address1`, `address2`, `city`, `pin`, `state`) VALUES
(1, 'florien', 'florien@gmail.com', 786265744, '1234567890', '1234567890', 'advantisti', 'rwandais', 'male', 'graduation', 'fresher', 'huye', 'huye', 'kigali', 454, 'usa'),
(2, 'gdjklkjhgfghjk', 'jhgh@gmail.com', 987654321, '1234567890', '1234567890', 'kjhgf', 'rwhggh', 'male', 'graduation', 'fresher', 'hgfdssdfgj', 'dfghjkl', 'hjkl;lkjh', 12345, 'dfghjkl'),
(3, 'kjhgfdfghjk`', 'jhjk@gmail.com', 987654323, '1234567890', '1234567890', 'kjjklkjkj', 'bnjhjkjhj', 'male', 'graduation', 'fresher', 'nbvccvbn', 'nbvcxcvb', 'kjhgfghjk', 123, 'jhghjkkjh'),
(4, 'uwimana clarisse', 'clarisse@gmail.com', 788234321, 'clarisse123', 'clarisse123', 'catholique', 'rwandais', 'female', 'graduation', 'more', 'rusizi', 'rusizi', 'kamembe', 12345, 'kibungo'),
(5, 'harerimana', 'florien@gmail.com', 786265744, '1234567', '1234567', 'advantisite', 'rwandais', 'male', 'graduation', 'fresher', 'ruhango', 'rhango', 'huye', 1234, 'butare'),
(6, 'mukamana', 'muka@gmail.com', 987654321, 'zinc1234!', 'zinc1234!', 'yehova', 'burundi', 'male', 'graduation', 'new', 'giheke', 'rusumo', 'gatuna', 4321, 'kagitumba');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `Category` varchar(10) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `state` varchar(25) NOT NULL,
  `school_name` varchar(25) NOT NULL,
  `studentname` varchar(25) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`Id`, `Username`, `Password`, `FirstName`, `Category`, `zip_code`, `state`, `school_name`, `studentname`) VALUES
(3, 'kibere', 'mmmm', 'Kiberenge', 'others', 0, '', '', ''),
(5, 'dugi', 'mmmm', 'Dugira', 'Employee', 0, '', '', ''),
(6, 'muka', 'mmmm', 'Mukampunga', 'Admin', 0, '', '', ''),
(7, '', '', '', 'Admin', 0, '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
