-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2020 at 09:18 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poetryblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'test', 'test@gmail.com', '1234567890', 'This is testing', '2020-04-11 17:51:16'),
(2, 'aa', 'aa@gmail.com', '7896541230', 'ja bhai\r\n', '2020-04-11 20:43:46'),
(3, 'tester ', 'tester@gmail.com', '1234567890', 'tested successfully', '2020-04-11 20:44:16'),
(4, 'ppp', 'pp@gmail.com', '123456789', 'test h bhai', '2020-04-14 14:06:40'),
(5, 'ppp', 'pp@gmail.com', '123456789', 'test h bhai', '2020-04-14 14:10:36'),
(6, 'asma,m', 'pp@gmail.com', '123456789', 'this is test', '2020-04-14 14:11:16'),
(7, 'asma,m', 'pp@gmail.com', '123456789', 'this is test', '2020-04-14 14:12:34'),
(8, 'aaa', 'aa@gmail.com', '123456789', 'test h bhai', '2020-04-14 14:13:01');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `by` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `by`, `img_file`, `date`) VALUES
(1, 'This is post number 1.', 'This is first post', 'first-post', 'This is my first post and i am testing this website and i am too much excited for this .', 'tester', 'post-bg.jpg', '2020-04-23 14:46:46'),
(2, 'This is second post', 'This is second post', 'second-post', 'This is the second Sample post', 'Tester', '', '2020-04-20 13:30:13'),
(3, 'This is third post', 'third post', 'third-post', 'This is my third post ', 'tester', '', '2020-04-20 13:39:08'),
(4, 'This is fourth post', 'Fourth post', 'fourth-post', 'This is the fouth post guys', 'tester', '', '2020-04-20 13:39:08'),
(5, 'This is fifth', 'fifth post', 'fifth-post', 'This is my fifth post guys', 'tester', '', '2020-04-20 13:43:24'),
(9, 'sixth ', 'this is sixth post', 'sixth-post', 'this is the sixth post of test', 'tester', '', '2020-04-23 23:53:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
