-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2016 at 08:46 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `teddytes_swap`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `zip` int(5) NOT NULL,
  `confirm` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `firstname`, `lastname`, `zip`, `confirm`) VALUES
(1, 'Ted', 'Love', '', '', 0, 0),
(2, 'ted', 'Love', '', '', 0, 0),
(3, 'admin', 'admin', '', '', 0, 0),
(4, 'admin', 'admin', '', '', 0, 0),
(5, 'admin', 'admin', '', '', 0, 0),
(6, 'checkit', 'legityes', '', '', 0, 0),
(7, '', '', '', '', 0, 0),
(8, '', '', '', '', 0, 0),
(9, '', '', '', '', 0, 0),
(10, '', '', '', '', 0, 0),
(12, 'toolkit', 'lsbdnjjd', '', '', 0, 0),
(15, '', '', '', '', 0, 0),
(17, '', '', '', '', 0, 0),
(23, 'tsmith60@students.towson.edu', '80eb5830af1210e8f1acb6feb4d8e7e5', 'ted', 'smith', 21286, 0),
(24, 'teddy2fast@gmail.com', '19c9d18f92bfebf32bc50dc6b98e8115', 'ted', 'smith', 21286, 0),
(25, '', 'd41d8cd98f00b204e9800998ecf8427e', 'Kurt', '', 0, 0),
(27, 'tsmith1119s@gmail.com', '80eb5830af1210e8f1acb6feb4d8e7e5', 'Ted', 'Smith', 21286, 0),
(28, '624ted@gmail.com', 'aab7c663a2542eca988c432b5c90c2af', 'Ted', 'Smith', 21239, 0),
(29, 'lakinleye@yahoo.com', 'd779562270d89bf7f2e29c0a99de1302', 'lola', 'akinleye', 21252, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
