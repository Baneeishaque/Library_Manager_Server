-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Apr 05, 2018 at 06:33 AM
-- Server version: 5.5.39
-- PHP Version: 5.4.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(11) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`) VALUES
(1, 'asd', '125');

-- --------------------------------------------------------

--
-- Table structure for table `bkdepart`
--

CREATE TABLE IF NOT EXISTS `bkdepart` (
`id` int(11) NOT NULL,
  `Bkdep` varchar(50) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `bkdepart`
--

INSERT INTO `bkdepart` (`id`, `Bkdep`) VALUES
(1, 'Science'),
(2, 'Politics');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `bkid` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `number` int(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `volume` varchar(50) NOT NULL,
  `shelf` varchar(50) NOT NULL,
  `row` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `Issuedto` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bkid`, `title`, `author`, `number`, `status`, `description`, `volume`, `shelf`, `row`, `position`, `department`, `Issuedto`) VALUES
('2', 't2', 'a2', 10, 'Loaned', 'd', '5', 'Shelf 1', 'Row 1', 'Column 2', 'Science', '2'),
('3', 'd', 'f', 12, 'Loaned', 'ded', '7', 'Shelf 2', 'Row 1', 'Column 2', 'Politics', '1'),
('1', 'g', 'a', 10, 'Available', 'd', '5', 'Shelf 1', 'Row 1', 'Column 1', 'Science', '');

-- --------------------------------------------------------

--
-- Table structure for table `bookreport`
--

CREATE TABLE IF NOT EXISTS `bookreport` (
`id` int(11) NOT NULL,
  `bkid` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `issuedate` varchar(50) NOT NULL,
  `returndate` varchar(50) NOT NULL,
  `process` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `bookreport`
--

INSERT INTO `bookreport` (`id`, `bkid`, `userid`, `issuedate`, `returndate`, `process`) VALUES
(1, '1', '1', '2018-04-05', '2018-04-19', 'Issue'),
(2, '1', '1', '2018-04-05', '2018-04-19', 'Renew'),
(3, '1', '1', '2018-04-05', '2018-04-05', 'Return'),
(4, '2', '2', '2018-04-05', '2018-04-19', 'Issue'),
(5, '2', '2', '2018-04-05', '2018-04-05', 'Return'),
(6, '3', '1', '2018-04-05', '2018-04-19', 'Issue'),
(7, '3', '1', '2018-04-05', '2018-04-05', 'Return'),
(8, '2', '2', '2018-04-05', '2018-04-19', 'Issue'),
(9, '2', '2', '2018-04-05', '2018-04-05', 'Return'),
(10, '1', '1', '2018-04-05', '2018-04-19', 'Issue'),
(11, '1', '1', '2018-04-05', '2018-04-05', 'Return'),
(14, '2', '2', '2018-04-05', '2018-04-19', 'Issue'),
(15, '3', '1', '2018-04-05', '2018-04-19', 'Issue');

-- --------------------------------------------------------

--
-- Table structure for table `bookrqst`
--

CREATE TABLE IF NOT EXISTS `bookrqst` (
`id` int(11) NOT NULL,
  `Author` varchar(50) NOT NULL,
  `bookname` varchar(50) NOT NULL,
  `volume` varchar(50) NOT NULL,
  `requestdate` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `bookrqst`
--

INSERT INTO `bookrqst` (`id`, `Author`, `bookname`, `volume`, `requestdate`, `userid`) VALUES
(1, 'C', 'C', '5', '2018-04-05', '2'),
(2, 'bbbbb', 'java', '5', '2018-04-05', '1');

-- --------------------------------------------------------

--
-- Table structure for table `coln`
--

CREATE TABLE IF NOT EXISTS `coln` (
`id` int(11) NOT NULL,
  `col` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `coln`
--

INSERT INTO `coln` (`id`, `col`) VALUES
(1, 'Column 1'),
(2, 'Column 2'),
(3, 'Column 3');

-- --------------------------------------------------------

--
-- Table structure for table `row`
--

CREATE TABLE IF NOT EXISTS `row` (
`id` int(11) NOT NULL,
  `row` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `row`
--

INSERT INTO `row` (`id`, `row`) VALUES
(1, 'Row 1'),
(3, 'Row 2'),
(4, 'Row 3');

-- --------------------------------------------------------

--
-- Table structure for table `sems`
--

CREATE TABLE IF NOT EXISTS `sems` (
`id` int(11) NOT NULL,
  `sem` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `sems`
--

INSERT INTO `sems` (`id`, `sem`) VALUES
(8, 'Semester 1'),
(9, 'Semester 2');

-- --------------------------------------------------------

--
-- Table structure for table `shelf`
--

CREATE TABLE IF NOT EXISTS `shelf` (
`id` int(11) NOT NULL,
  `shelf` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `shelf`
--

INSERT INTO `shelf` (`id`, `shelf`) VALUES
(1, 'Shelf 1'),
(2, 'Shelf 2'),
(3, 'Shelf 3');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `usrid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Sem` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Dob` date NOT NULL,
  `Phonnum` varchar(11) NOT NULL,
  `AdmsnDate` date NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `bookinhand` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`usrid`, `name`, `Department`, `Sem`, `Address`, `Dob`, `Phonnum`, `AdmsnDate`, `Gender`, `password`, `bookinhand`) VALUES
('2', 'v', 'Mechanical Engineering', 'Semester 1', 'b', '2018-04-01', '7678908', '2018-04-03', 'female', '123', 1),
('1', 'n', 'Computer Engineering', 'Semester 1', 'a', '2018-04-01', '9895204814', '2018-04-02', 'male', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `usrdepart`
--

CREATE TABLE IF NOT EXISTS `usrdepart` (
`id` int(11) NOT NULL,
  `usrdep` varchar(50) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `usrdepart`
--

INSERT INTO `usrdepart` (`id`, `usrdep`) VALUES
(1, 'Computer Engineering'),
(2, 'Mechanical Engineering');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bkdepart`
--
ALTER TABLE `bkdepart`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
 ADD PRIMARY KEY (`bkid`);

--
-- Indexes for table `bookreport`
--
ALTER TABLE `bookreport`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookrqst`
--
ALTER TABLE `bookrqst`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coln`
--
ALTER TABLE `coln`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `row`
--
ALTER TABLE `row`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sems`
--
ALTER TABLE `sems`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shelf`
--
ALTER TABLE `shelf`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`usrid`);

--
-- Indexes for table `usrdepart`
--
ALTER TABLE `usrdepart`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bkdepart`
--
ALTER TABLE `bkdepart`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bookreport`
--
ALTER TABLE `bookreport`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `bookrqst`
--
ALTER TABLE `bookrqst`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `coln`
--
ALTER TABLE `coln`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `row`
--
ALTER TABLE `row`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sems`
--
ALTER TABLE `sems`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `shelf`
--
ALTER TABLE `shelf`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `usrdepart`
--
ALTER TABLE `usrdepart`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
