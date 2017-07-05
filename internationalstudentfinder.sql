-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2017 at 03:15 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internationalstudentfinder`
--
CREATE DATABASE IF NOT EXISTS `internationalstudentfinder` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `internationalstudentfinder`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `userName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `userName`, `password`) VALUES
(100, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentName` varchar(40) NOT NULL,
  `studentID` bigint(20) NOT NULL,
  `universityID` int(11) NOT NULL,
  `fieldOfMajor` varchar(40) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `studentLocation` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentName`, `studentID`, `universityID`, `fieldOfMajor`, `contact`, `studentLocation`, `email`, `password`) VALUES
('Kiran kumar', 200300, 4007, 'Mathematics Statistics', 999999999999, 'ghutyui', 'kiran@gmail.com', 'hjklouy'),
('phani priya', 789987, 6667, 'Industrial Management', 213456789, 'hyderabad', 'ph@gmail.com', 'priya'),
('sri ram', 900900, 4007, 'Mathematics Statistics', 88889988, 'kansas', 'ram@gmail.com', 'tyuiop'),
('manjula', 1000012, 6667, 'Industrial Management', 929450692, 'hyderabad', 'man@gmail.com', 'manjula'),
('niresha mannem', 7009009, 402, 'CIS', 8999, 'kansas', 'j@hm', 'ghjk'),
('kiran', 7899090, 4007, 'Mathematics Statistics', 789900789, 'phoenix', 'kiran@gmail.com', 'ghjkl'),
('jyothi kiran', 8999900, 4007, 'Mathematics Statistics', 9676069933, 'arizona', 'kiran@gmail.com', 'kiran'),
('jyothi kiran', 8999967, 4007, 'Computer Science', 9676069933, 'arizona', 'kiran@gmail.com', 'jyothikiran'),
('Kiran kumar', 80043290, 4007, 'Mathematics Statistics', 900088990, 'arizona', 'kiran@gmail.com', 'hjkl'),
('Shammi', 700650556, 402, 'Computer Science', 78900790, 'kansas', 'shammi@gmail.com', 'hjkkl'),
('priyanka kasi', 700658394, 402, 'Computer Science', 900099000, 'warrensburg', 'kasi@gmail.com', 'hjkl'),
('jyothi rani kata', 700890000, 4007, 'Computer Science', 6026518597, 'hyderabad', 'kata@gmail.com', 'kirankumar'),
('priyankaa', 799900000, 402, 'Computer Science', 8999999, 'warrens', 'priyu@gmail.com', 'ghjk'),
('ashok kumar', 899009909, 402, 'CIS', 78909090, 'warrensburg', 'ashok@gmail.com', 'ashok'),
('soujanya', 7008900067, 4833, 'Cyber security', 6026518598, 'hyderabad', 'souji@gmail.com', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `universityID` int(11) NOT NULL,
  `universityName` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`universityID`, `universityName`, `location`) VALUES
(48, 'EIU', 'Illinois'),
(65, 'University ROlla', 'ROLLA MO'),
(402, 'University Of Central Missouri', 'kansas'),
(1839, 'University of michigan', 'Michigan'),
(4007, 'Arizona State University', 'Arizona'),
(4833, 'University of california', 'California'),
(6667, 'Texas State University', 'Texas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`,`userName`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`),
  ADD KEY `universityID` (`universityID`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`universityID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`universityID`) REFERENCES `university` (`universityID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
