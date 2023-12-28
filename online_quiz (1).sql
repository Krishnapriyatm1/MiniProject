-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2023 at 02:51 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(1, 'PSC'),
(2, 'GATE'),
(3, 'NEET'),
(4, 'KEAM'),
(5, '1111'),
(6, '222');

-- --------------------------------------------------------

--
-- Table structure for table `current_affairs`
--

CREATE TABLE `current_affairs` (
  `id` int(12) NOT NULL,
  `category` varchar(50) NOT NULL,
  `details` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `current_affairs`
--

INSERT INTO `current_affairs` (`id`, `category`, `details`) VALUES
(1, 'PSC', 'PM Modi Inaugurates ‘World Food India 2023’ in New Delhi');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Feedback` varchar(100) NOT NULL,
  `Date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `Name`, `Feedback`, `Date`) VALUES
(1, 'krishna', 'Very Informative', '2023-11-01'),
(3, 'amrutha', 'very nice', '2023-10-12');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `lid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `usertype` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`lid`, `uid`, `username`, `password`, `usertype`) VALUES
(1, 1, '', '1234', 'Student'),
(2, 2, 'sowmya', '456', 'Student'),
(7, 6, 'anju', 'anju1', 'Student'),
(8, 4, 'aaa', '111', 'Tester'),
(9, 7, 'zzz', 'zzz', 'Student'),
(10, 5, 'qqq', 'qqq', 'Tester'),
(11, 0, 'admin', 'admin123', 'admin'),
(12, 8, 'eee', '', 'Student'),
(13, 9, 'abcd', '111', 'Student'),
(14, 6, '111', '111', 'Tester');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(15) NOT NULL,
  `Date` varchar(40) NOT NULL,
  `Time` varchar(20) NOT NULL,
  `Details` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `Date`, `Time`, `Details`) VALUES
(1, '2023-10-18', '10AM', 'PSC notification for Group-1, 11 recruitment likely in Nov'),
(3, '2023-06-08', '11:00AM', 'Kerala govt begins efforts for KAS second batch recruitment as first batch completes training......\r'),
(4, '2023-03-06', '10:41AM', 'Inviting Online Applications for National Eligibility-cum-Entrance Test [(NEET (UG)] 2023 ');

-- --------------------------------------------------------

--
-- Table structure for table `res_ult`
--

CREATE TABLE `res_ult` (
  `id` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `category` varchar(100) NOT NULL,
  `examcode` varchar(100) NOT NULL,
  `questioncode` varchar(50) NOT NULL,
  `mark` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `res_ult`
--

INSERT INTO `res_ult` (`id`, `Name`, `category`, `examcode`, `questioncode`, `mark`) VALUES
(1, 'krishna', 'PSC', '112345', '09876', 87),
(3, 'Anu', '2222', '23e', '3e2', 0),
(4, 'asdf', '123', '1234', '234', 3),
(5, 'fgh', '5', 'rf', 'tg', 0),
(6, 'asf', '12', 'asd', 'aaa', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(5) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `CNO` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `Name`, `Email`, `CNO`) VALUES
(1, 'krishna', 'krishna@gmail.com', '1234567890'),
(2, 'sowmya', 'sowmya@gmail.com', '0964321450'),
(6, 'Anju', 'anju@gmail.com', '129876254'),
(7, 'Ammu', 'ammu@gmail.com', '8945679032'),
(9, 'Anil', 'anil@gmail.com', '8745678934');

-- --------------------------------------------------------

--
-- Table structure for table `tester_details`
--

CREATE TABLE `tester_details` (
  `id` int(12) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Category` varchar(40) NOT NULL,
  `Contact` varchar(12) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tester_details`
--

INSERT INTO `tester_details` (`id`, `Name`, `Category`, `Contact`, `Email`) VALUES
(1, 'sowmya', 'PSC', '1234675430', 'sowmya@gmail.com'),
(3, 'Anju', 'PSC', '123467567', 'anju@gmail.com'),
(4, 'Anagha', 'PSC', '9856372836', 'anagha@gmail.com'),
(5, 'Abhi', 'NEET', '9087564598', 'abhi@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_affairs`
--
ALTER TABLE `current_affairs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `res_ult`
--
ALTER TABLE `res_ult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tester_details`
--
ALTER TABLE `tester_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `current_affairs`
--
ALTER TABLE `current_affairs`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `lid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `res_ult`
--
ALTER TABLE `res_ult`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tester_details`
--
ALTER TABLE `tester_details`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
