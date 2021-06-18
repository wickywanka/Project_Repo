-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 31, 2020 at 07:09 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `frepo2`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_title`) VALUES
(1, 'cmpn'),
(2, 'inft'),
(3, 'etrx'),
(4, 'extc'),
(5, 'biomed');

-- --------------------------------------------------------

--
-- Table structure for table `domain`
--

DROP TABLE IF EXISTS `domain`;
CREATE TABLE IF NOT EXISTS `domain` (
  `domain_id` int(11) NOT NULL AUTO_INCREMENT,
  `domain_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`domain_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `domain`
--

INSERT INTO `domain` (`domain_id`, `domain_name`) VALUES
(1, 'algorithms'),
(2, 'databases'),
(3, 'image processing'),
(4, 'web development'),
(5, 'app development'),
(6, 'machine learning'),
(7, 'cyber security'),
(8, 'integrated circuits'),
(9, 'signal processing'),
(10, 'communications'),
(11, 'micro-electronics'),
(12, 'medical devices'),
(13, 'biomaterials'),
(14, 'biosignal processing'),
(15, 'biomechanics');

-- --------------------------------------------------------

--
-- Table structure for table `domain_department`
--

DROP TABLE IF EXISTS `domain_department`;
CREATE TABLE IF NOT EXISTS `domain_department` (
  `department_id` int(11) NOT NULL,
  `domain_id` int(11) NOT NULL,
  PRIMARY KEY (`department_id`,`domain_id`),
  KEY `domain_id` (`domain_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `domain_department`
--

INSERT INTO `domain_department` (`department_id`, `domain_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(5, 12),
(5, 13),
(5, 14),
(5, 15);

-- --------------------------------------------------------

--
-- Table structure for table `domain_mentor`
--

DROP TABLE IF EXISTS `domain_mentor`;
CREATE TABLE IF NOT EXISTS `domain_mentor` (
  `mentor_id` int(11) NOT NULL,
  `domain_id` int(11) NOT NULL,
  PRIMARY KEY (`mentor_id`,`domain_id`),
  KEY `domain_id` (`domain_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `domain_mentor`
--

INSERT INTO `domain_mentor` (`mentor_id`, `domain_id`) VALUES
(1, 1),
(1, 2),
(1, 5),
(2, 4),
(2, 5),
(2, 7),
(3, 3),
(3, 6),
(3, 10),
(4, 2),
(4, 4),
(4, 5),
(4, 10),
(5, 8),
(5, 9),
(5, 11),
(6, 7),
(6, 10),
(6, 11),
(6, 12),
(7, 1),
(7, 2),
(7, 3),
(8, 8),
(8, 11),
(9, 9);

-- --------------------------------------------------------

--
-- Table structure for table `mentor`
--

DROP TABLE IF EXISTS `mentor`;
CREATE TABLE IF NOT EXISTS `mentor` (
  `mentor_id` int(11) NOT NULL AUTO_INCREMENT,
  `mentor_name` varchar(255) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `liv_proj_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`mentor_id`),
  KEY `department_id` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mentor`
--

INSERT INTO `mentor` (`mentor_id`, `mentor_name`, `department_id`, `liv_proj_count`) VALUES
(1, 'Prof. Sanjeev Dwivedi ', 1, NULL),
(2, 'Prof. Swapnil Sonawane', 1, NULL),
(3, 'Prof. Snehal Andhare ', 1, NULL),
(4, 'Prof. Prita Patil ', 1, NULL),
(5, 'Prof. Suvarna Bhat', 1, NULL),
(6, 'Prof. Yash Shah', 2, NULL),
(7, 'Prof. Bhanu Tekwani', 2, NULL),
(8, 'Prof. Mayurkumar Nanda', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_title` varchar(255) DEFAULT NULL,
  `year_upload` int(11) DEFAULT NULL,
  `domain_id` int(11) DEFAULT NULL,
  `mentor_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `mem_1_lead` varchar(255) DEFAULT NULL,
  `roll_no_1` varchar(10) DEFAULT NULL,
  `mem_2` varchar(255) DEFAULT NULL,
  `roll_no_2` varchar(10) DEFAULT NULL,
  `mem_3` varchar(255) DEFAULT NULL,
  `roll_no_3` varchar(10) DEFAULT NULL,
  `mem_4` varchar(255) DEFAULT NULL,
  `roll_no_4` varchar(10) DEFAULT NULL,
  `mem_5` varchar(255) DEFAULT NULL,
  `roll_no_5` varchar(10) DEFAULT NULL,
  `mem_6` varchar(255) DEFAULT NULL,
  `roll_no_6` varchar(10) DEFAULT NULL,
  `ssummary` varchar(550) DEFAULT NULL,
  `synopsis_path` varchar(300) DEFAULT NULL,
  `ppt_path` varchar(300) DEFAULT NULL,
  `report_path` varchar(300) DEFAULT NULL,
  `publication_path` varchar(300) DEFAULT NULL,
  `vid_link` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`project_id`),
  KEY `domain_id` (`domain_id`),
  KEY `mentor_id` (`mentor_id`),
  KEY `department_id` (`department_id`),
  KEY `user_id` (`user_id`),
  KEY `project_title` (`project_title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'staff'),
(2, 'student'),
(3, 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `vdummy`
--

DROP TABLE IF EXISTS `vdummy`;
CREATE TABLE IF NOT EXISTS `vdummy` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `roll_no` varchar(10) DEFAULT NULL,
  `year_study` int(11) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `division` varchar(1) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email_id` (`email_id`),
  KEY `role_id` (`role_id`),
  KEY `department_id` (`department_id`),
  KEY `email_id_2` (`email_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vdummy`
--

INSERT INTO `vdummy` (`user_id`, `name`, `role_id`, `roll_no`, `year_study`, `phone`, `department_id`, `division`, `email_id`, `password`) VALUES
(6, 'Student 1 Name', 2, '19102A0023', 2, 7506852144, 1, 'A', 'student1.name@vit.edu.in', 'student1'),
(7, 'Student 2 Name', 2, '19102A0099', 2, 9999999999, 3, 'B', 'student2.name@vit.edu.in', 'student2'),
(8, 'Student 3 Name', 2, '18101A0088', 3, 7777777777, 2, 'A', 'student3.name@vit.edu.in', 'student3'),
(9, 'Student 4 Name', 2, '18102B0098', 3, 9090909090, 2, 'B', 'student4.name@vit.edu.in', 'student4'),
(10, 'Student 5 Name', 2, '17101A0099', 4, 8989898989, 1, 'A', 'student5.name@vit.edu.in', 'student5'),
(11, 'Student 6 Name', 2, '17102A0098', 4, 9797979797, 2, 'B', 'student6.name@vit.edu.in', 'student6'),
(12, 'Student 7 Name', 2, '17102B0079', 4, 8888888888, 3, 'A', 'student7.name@vit.edu.in', 'student7'),
(13, 'Staff 1 Name', 1, NULL, NULL, 909090909, 1, NULL, 'staff1.name@vit.edu.in', 'staff1'),
(14, 'Staff 2 Name', 1, NULL, NULL, 8181818181, 3, NULL, 'staff2.name@vit.edu.in', 'staff2'),
(15, 'Staff 3 Name', 1, NULL, NULL, 8787878787, 2, NULL, 'staff3.name@vit.edu.in', 'staff3'),
(16, 'Teacher 1 Name', 3, NULL, NULL, 909090909, 1, NULL, 'teacher1.name@vit.edu.in', 'teacher1'),
(17, 'Teacher 2 Name', 3, NULL, NULL, 8181818181, 3, NULL, 'teacher2.name@vit.edu.in', 'teacher2'),
(18, 'Teacher 3 Name', 3, NULL, NULL, 8787878787, 2, NULL, 'teacher3.name@vit.edu.in', 'teacher3');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `domain_department`
--
ALTER TABLE `domain_department`
  ADD CONSTRAINT `domain_department_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `domain_department_ibfk_2` FOREIGN KEY (`domain_id`) REFERENCES `domain` (`domain_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `domain_mentor`
--
ALTER TABLE `domain_mentor`
  ADD CONSTRAINT `domain_mentor_ibfk_1` FOREIGN KEY (`mentor_id`) REFERENCES `mentor` (`mentor_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `domain_mentor_ibfk_2` FOREIGN KEY (`domain_id`) REFERENCES `domain` (`domain_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mentor`
--
ALTER TABLE `mentor`
  ADD CONSTRAINT `mentor_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`domain_id`) REFERENCES `domain` (`domain_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `project_ibfk_2` FOREIGN KEY (`mentor_id`) REFERENCES `mentor` (`mentor_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `project_ibfk_3` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `project_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `vdummy` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vdummy`
--
ALTER TABLE `vdummy`
  ADD CONSTRAINT `vdummy_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vdummy_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
