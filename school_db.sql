-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2020 at 04:25 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schooldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `b_id` int(5) NOT NULL,
  `b_name` varchar(15) NOT NULL,
  `due_dt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`b_id`, `b_name`, `due_dt`) VALUES
(1667, 'Invisible man', '2020-05-17'),
(1678, 'Hamlet', '2020-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_no` int(2) NOT NULL,
  `standard` int(2) NOT NULL,
  `class_teacher_id` int(5) NOT NULL,
  `strength` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`class_no`, `standard`, `class_teacher_id`, `strength`) VALUES
(1, 10, 98793, 35),
(2, 9, 98791, 40);

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `st_id` bigint(11) NOT NULL,
  `position` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(5) NOT NULL,
  `emp_name` varchar(15) NOT NULL,
  `aadhar` bigint(16) NOT NULL,
  `addr` varchar(40) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `blood_grp` varchar(3) NOT NULL,
  `DOB` date NOT NULL,
  `qualification` varchar(30) NOT NULL,
  `contact_no` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `aadhar`, `addr`, `gender`, `blood_grp`, `DOB`, `qualification`, `contact_no`) VALUES
(98791, 'raj patel', 9999676745453883, 'ahmedabad,gujarat', 'M', 'O+', '1991-04-01', 'graduate master\'s degree', 9879825017),
(98792, 'prakash verma', 4545010133337987, 'ahmedabad,gujarat', 'M', 'AB+', '1990-05-21', '12th grade', 9376269378),
(98793, 'jay patel', 7777575762349090, 'navrangpura,ahmedabad', 'M', 'B+', '1992-04-19', 'UG Associate\'s degree', 8488532190);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `exm_st_id` bigint(11) NOT NULL,
  `exm_sub` varchar(10) NOT NULL,
  `exm_dt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`exm_st_id`, `exm_sub`, `exm_dt`) VALUES
(12345678901, 'social sci', '2020-04-24'),
(12345678902, 'hindi', '2020-04-29'),
(12345678903, 'english', '2020-04-26');

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `name` varchar(15) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`name`, `address`) VALUES
('thegajerian', 'katargam,surat');

-- --------------------------------------------------------

--
-- Table structure for table `peon`
--

CREATE TABLE `peon` (
  `pe_id` int(5) NOT NULL,
  `designation` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peon`
--

INSERT INTO `peon` (`pe_id`, `designation`) VALUES
(98792, '');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `p_id` bigint(11) NOT NULL,
  `sp_id` int(5) NOT NULL,
  `achievements` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`p_id`, `sp_id`, `achievements`) VALUES
(12345678901, 9971, 'bronze'),
(12345678902, 9971, 'gold'),
(12345678903, 8543, 'silver');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `rst_st_id` bigint(11) NOT NULL,
  `rst_dt` date NOT NULL,
  `attendance` float NOT NULL,
  `grades` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`rst_st_id`, `rst_dt`, `attendance`, `grades`) VALUES
(12345678901, '2020-04-29', 94.3, 'A'),
(12345678902, '2020-04-26', 90.6, 'B+'),
(12345678903, '2020-04-25', 88.9, 'A+');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `s_id` int(5) NOT NULL,
  `s_name` varchar(25) NOT NULL,
  `address` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`s_id`, `s_name`, `address`) VALUES
(12345, 'gajera ', 'katargam,surat'),
(23456, 'gurukul', 'katargam,surat'),
(56743, 'SGVP ', 'AHMEDABAD');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `sp_id` int(5) NOT NULL,
  `sp_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`sp_id`, `sp_name`) VALUES
(8543, 'basketball'),
(9971, 'football');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `st_id` bigint(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `aadhar_no` bigint(16) NOT NULL,
  `addr` varchar(40) NOT NULL,
  `blood_grp` varchar(3) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `DOB` date NOT NULL,
  `standard` int(2) NOT NULL,
  `house` varchar(5) NOT NULL,
  `mob_no` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`st_id`, `name`, `aadhar_no`, `addr`, `blood_grp`, `gender`, `DOB`, `standard`, `house`, `mob_no`) VALUES
(12345678901, 'manaswipipaliya', 2299123457681111, '42-madhavanand society,katargam,surat', 'O+', 'F', '2001-02-10', 10, 'red', 8320378952),
(12345678902, 'shaili patel', 9879111124682222, 'O504-adani pratham,behind nirma,ahmedaba', 'B+', 'F', '2001-01-27', 10, 'red', 6354206918),
(12345678903, 'swara patel', 1111222233334444, 'girls hostel,memnagar,ahmedabad', 'A+', 'F', '2001-01-01', 10, 'blue', 8780443625);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `sub_code` varchar(6) NOT NULL,
  `sub_nm` varchar(10) NOT NULL,
  `standard` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`sub_code`, `sub_nm`, `standard`) VALUES
('1ps454', 'social sci', 10),
('2hs909', 'english', 9),
('2sc111', 'science', 7),
('3hn273', 'hindi', 10);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `t_id` int(5) NOT NULL,
  `t_name` varchar(15) NOT NULL,
  `sub_code` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`t_id`, `t_name`, `sub_code`) VALUES
(75648, 'NILESH', '1pl606'),
(96873, 'KETAN', '2md592'),
(98791, 'raj  patel', '2hs909'),
(98793, 'jay patel', '1ps454');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_no`,`class_teacher_id`),
  ADD KEY `standard` (`standard`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `aadhar` (`aadhar`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`exm_st_id`);

--
-- Indexes for table `peon`
--
ALTER TABLE `peon`
  ADD UNIQUE KEY `pe_id` (`pe_id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`p_id`,`sp_id`),
  ADD KEY `sp_id` (`sp_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`rst_st_id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`sp_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`st_id`),
  ADD UNIQUE KEY `aadhar_no` (`aadhar_no`),
  ADD KEY `standard` (`standard`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`sub_code`),
  ADD KEY `standard` (`standard`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`t_id`),
  ADD UNIQUE KEY `sub_code` (`sub_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `class_no` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `designation`
--
ALTER TABLE `designation`
  ADD CONSTRAINT `designation_ibfk_1` FOREIGN KEY (`st_id`) REFERENCES `student` (`st_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_ibfk_1` FOREIGN KEY (`exm_st_id`) REFERENCES `student` (`st_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `peon`
--
ALTER TABLE `peon`
  ADD CONSTRAINT `peon_ibfk_1` FOREIGN KEY (`pe_id`) REFERENCES `employees` (`emp_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`sp_id`) REFERENCES `sports` (`sp_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `players_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `student` (`st_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`rst_st_id`) REFERENCES `student` (`st_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
