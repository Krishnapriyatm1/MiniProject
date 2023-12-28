-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2023 at 07:41 AM
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
-- Table structure for table `ans`
--

CREATE TABLE `ans` (
  `aid` int(10) NOT NULL,
  `uid` varchar(10) NOT NULL,
  `dte` varchar(10) NOT NULL,
  `a1` varchar(50) NOT NULL,
  `a2` varchar(10) NOT NULL,
  `a3` varchar(10) NOT NULL,
  `a4` varchar(10) NOT NULL,
  `a5` varchar(50) NOT NULL,
  `a6` varchar(50) NOT NULL,
  `a7` varchar(50) NOT NULL,
  `a8` varchar(50) NOT NULL,
  `a9` varchar(50) NOT NULL,
  `a10` varchar(50) NOT NULL,
  `qid` varchar(10) NOT NULL,
  `qcode` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `tmark` varchar(10) NOT NULL,
  `sname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ans`
--

INSERT INTO `ans` (`aid`, `uid`, `dte`, `a1`, `a2`, `a3`, `a4`, `a5`, `a6`, `a7`, `a8`, `a9`, `a10`, `qid`, `qcode`, `code`, `tmark`, `sname`) VALUES
(1, '1', '2023-11-30', '10', '10', '10', '10', '10', '10', '10', '10', '10', '10', '3', 'A', 'PSC', '100', 'Kavya'),
(2, '2', '2023-11-30', '10', '10', '10', '10', '', '10', '', '10', '', '10', '1', 'A', 'PSC', '100', 'Anju'),
(3, '1', '2023-11-30', '10', '', '10', '', '10', '', '', '10', '', '10', '1', 'A', 'PSC', '100', 'Kavya'),
(4, '3', '2023-11-30', '10', '10', '10', '', '', '10', '10', '', '10', '10', '1', 'A', 'PSC', '100', 'Jincy'),
(5, '3', '2023-11-30', '10', '10', '10', '10', '10', '', '10', '10', '', '', '1', 'A', 'PSC', '100', 'Jincy'),
(6, '4', '2023-11-30', '10', '10', '10', '10', '10', '10', '10', '10', '10', '10', '1', 'A', 'PSC', '100', 'Sneha'),
(7, '1', '2023-12-01', '10', '0', '10', '10', '', '', '10', '', '10', '0', '1', 'A', 'PSC', '100', 'Kavya');

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
(3, 'NEET');

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
(1, 'PSC', 'PM Modi Inaugurates ‘World Food India 2023’ in New Delhi'),
(2, 'PSC', 'Jal Shakti Ministry launches Ganga Aamantran Abhiyan');

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
(2, 'Amrutha', 'very nice', '2023-10-12'),
(3, 'Anjali Ramachandran', 'Useful', '2023-11-23');

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
(1, 0, 'admin', 'admin', 'admin'),
(2, 1, 'kavya', '1234', 'Student'),
(3, 1001, 'Athulya', '123456', 'Tester'),
(4, 1002, 'akhila', '1234', 'Tester'),
(5, 2, 'anju', '1234', 'Student'),
(6, 3, 'jincy', '1234', 'Student'),
(7, 4, 'sneha', '1234', 'Student');

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
(1, '2023-11-23', '12:56', 'CGPSC State Services Exam 2023 Notification Out for 242 Posts at psc.cg.gov.in; ');

-- --------------------------------------------------------

--
-- Table structure for table `qstn`
--

CREATE TABLE `qstn` (
  `qid` int(10) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `qcode` varchar(10) NOT NULL,
  `q1` varchar(500) NOT NULL,
  `q2` varchar(100) NOT NULL,
  `q3` varchar(100) NOT NULL,
  `q4` varchar(100) NOT NULL,
  `q5` varchar(100) NOT NULL,
  `q6` varchar(100) NOT NULL,
  `q7` varchar(100) NOT NULL,
  `q8` varchar(100) NOT NULL,
  `q9` varchar(100) NOT NULL,
  `q10` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `dte` varchar(100) NOT NULL,
  `tmark` varchar(100) NOT NULL,
  `op1` varchar(100) NOT NULL,
  `op2` varchar(100) NOT NULL,
  `op3` varchar(100) NOT NULL,
  `op4` varchar(500) NOT NULL,
  `op5` varchar(100) NOT NULL,
  `op6` varchar(100) NOT NULL,
  `op7` varchar(100) NOT NULL,
  `op8` varchar(100) NOT NULL,
  `op9` varchar(100) NOT NULL,
  `op10` varchar(100) NOT NULL,
  `op11` varchar(100) NOT NULL,
  `op12` varchar(100) NOT NULL,
  `op13` varchar(100) NOT NULL,
  `op14` varchar(100) NOT NULL,
  `op15` varchar(100) NOT NULL,
  `op16` varchar(100) NOT NULL,
  `op17` varchar(100) NOT NULL,
  `op18` varchar(100) NOT NULL,
  `op19` varchar(100) NOT NULL,
  `op20` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `qstn`
--

INSERT INTO `qstn` (`qid`, `cname`, `qcode`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `time`, `dte`, `tmark`, `op1`, `op2`, `op3`, `op4`, `op5`, `op6`, `op7`, `op8`, `op9`, `op10`, `op11`, `op12`, `op13`, `op14`, `op15`, `op16`, `op17`, `op18`, `op19`, `op20`) VALUES
(1, 'PSC', 'A', 'A speech made by someone for the first time', 'Likely to break apart easily', 'To kill someone for political reasons', 'Which was the currency in circulation during the Maurya Period?', 'Who of the following historical personalities of India is also known as Vishnugupta?', 'Who was the Jain saints is associated with Chandragupta Maurya?', 'Sarnath Stambh was built by', 'Which of the following protocol is used for remote terminal connection service?', 'Which of the following terms is just the collection of networks that can be joined together?', 'Bluetooth is an example of', '15:41', '2023-12-01', '100', 'Maiden speech', 'Sermon', 'Brittle', 'Thin', 'Assassination', 'Murder', 'Pana', 'Dinar', ' Chanakya', 'Kunala', ' Bhadrabahu', 'Umaswami', 'Ashoka', 'Bindusar', 'TELNET', 'FTP', 'Intranet', ' LAN', ' Personal area network', 'Wide area network');

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
  `mark` int(50) NOT NULL,
  `aid` varchar(10) NOT NULL,
  `uid` varchar(10) NOT NULL,
  `dte` varchar(10) NOT NULL,
  `eid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `res_ult`
--

INSERT INTO `res_ult` (`id`, `Name`, `category`, `examcode`, `questioncode`, `mark`, `aid`, `uid`, `dte`, `eid`) VALUES
(1, 'Kavya', 'PSC', 'A', 'A', 100, '1', '1', '2023-11-30', '1001'),
(2, 'Anju', 'PSC', 'B', 'A', 70, '2', '2', '2023-11-30', '1001'),
(3, 'Kavya', 'PSC', 'C', 'A', 50, '3', '1', '2023-11-30', '1001'),
(4, 'Jincy', 'PSC', 'B', 'A', 70, '5', '3', '2023-11-30', '1001'),
(5, 'Sneha', 'PSC', 'D', 'A', 100, '6', '4', '2023-11-30', '1001'),
(6, 'Jincy', 'PSC', 'C', 'A', 70, '4', '3', '2023-11-30', '1001'),
(7, 'Kavya', 'PSC', 'D', 'A', 50, '7', '1', '2023-12-01', '1001');

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
(1, 'Kavya', 'kavya@gmail.com', '9656566556'),
(2, 'Anju', 'anju@gmail.com', '8945679032'),
(3, 'Jincy', 'jincy@gmail.com', '8746836577'),
(4, 'Sneha', 'sneha@gmail.com', '8367477588');

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
(1001, 'Athulya', 'PSC', '8111859742', 'athulya@gmail.com'),
(1002, 'Akhila', 'GATE', '9873556246', 'akhila@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ans`
--
ALTER TABLE `ans`
  ADD PRIMARY KEY (`aid`);

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
-- Indexes for table `qstn`
--
ALTER TABLE `qstn`
  ADD PRIMARY KEY (`qid`);

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
-- AUTO_INCREMENT for table `ans`
--
ALTER TABLE `ans`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `current_affairs`
--
ALTER TABLE `current_affairs`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `lid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `qstn`
--
ALTER TABLE `qstn`
  MODIFY `qid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `res_ult`
--
ALTER TABLE `res_ult`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tester_details`
--
ALTER TABLE `tester_details`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
