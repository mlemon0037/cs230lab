-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 27, 2021 at 12:32 PM
-- Server version: 5.7.33-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `picpath` varchar(80) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`pid`, `title`, `description`, `picpath`, `upload_date`, `rating`) VALUES
(1, 'test1', 'test description', '../gallery/604aa3d3cbc2c6.57920740.jpg', '2021-03-11 18:12:19', NULL),
(2, 'tsd', 'afsgadfg', '../gallery/604aa5a563d270.54528443.jpg', '2021-03-11 18:20:05', NULL),
(3, 'zxcv', 'zvxczvxc', '../gallery/604aa656d15d40.32070642.jpg', '2021-03-11 18:23:02', NULL),
(4, 'sd', 'asdfas', '../gallery/604aa9311a1df1.38030754.jpg', '2021-03-11 18:35:13', NULL),
(5, 'fsdgafg', 'dfgsdfg', '../gallery/604aa93a1d2593.12612914.jpg', '2021-03-11 18:35:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `pid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `profpic` varchar(50) NOT NULL DEFAULT '../images/default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`pid`, `fname`, `uname`, `profpic`) VALUES
(1, '11325', 'asdf', '../images/default.jpg'),
(2, '5615156', 'SHOW databases', '../images/default.jpg'),
(3, '2134yg', 'SELECT * FROM users;', '../images/default.jpg'),
(4, '11325', 'asdf', '../images/default.jpg'),
(5, '105 OR 1=1', 'asdf', '../images/default.jpg'),
(6, 'SELECT * FROM users;', 'asdf', '../images/default.jpg'),
(7, '2134yg', 'asdf', '../images/default.jpg'),
(8, 'â€˜ or â€˜abcâ€˜=â€˜abcâ€˜;â€“', 'asdf', '../images/default.jpg'),
(9, '\"â€˜ or â€˜abcâ€˜=â€˜abcâ€˜;â€“\"', 'asdf', '../images/default.jpg'),
(10, 'select * from users;', 'asdf', '../images/default.jpg'),
(11, 'sex', 'sex', '../profiles/60398debc53554.85960472.jpg'),
(12, 'Mr. Lemon', 'Michael', '../images/default.jpg'),
(13, 'Michael', 'mrlemon', '../profiles/605533950f3c46.58216535.jpg'),
(14, 'fdhsdfhgf', '69420s', '../images/default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `revid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `uname` varchar(80) NOT NULL,
  `title` varchar(60) NOT NULL,
  `reviewtext` text NOT NULL,
  `revdate` datetime NOT NULL,
  `ratingnum` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '> 0 reviews'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`revid`, `itemid`, `uname`, `title`, `reviewtext`, `revdate`, `ratingnum`, `status`) VALUES
(1, 4, 'Mr. Lemon', 'sdfgsdf', 'gsdfgsg', '2021-03-19 23:10:48', 2, 1),
(2, 4, 'mrlemon', 'dfgsdfg', 'sdgsdfg', '2021-03-19 23:24:08', 5, 1),
(3, 4, 'mrlemon', 'sadfgsdfgsdg', 'sdgasdfg', '2021-03-19 23:24:11', 5, 1),
(4, 4, 'mrlemon', 'dfgsdg', 'sdfgsdfgs', '2021-03-19 23:24:14', 2, 1),
(5, 4, 'mrlemon', 'sgs', 'sdfgsg', '2021-03-19 23:25:09', 3, 1),
(6, 4, 'mrlemon', 'dfghdfgh', 'sdgffgh', '2021-03-19 23:28:33', 2, 1),
(7, 4, 'mrlemon', 'adfgadf', 'gadgf', '2021-03-19 23:29:19', 3, 1),
(8, 4, '69420s', 'ggggggggg', 'gggggg', '2021-03-19 23:32:13', 3, 1),
(9, 4, '69420s', 'f', 'fs', '2021-03-19 23:33:12', 2, 1),
(10, 4, '69420s', 'rty', 'eryt', '2021-03-19 23:43:19', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COMMENT='user database for signup and signin';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fname`, `lname`, `uname`, `password`, `email`) VALUES
(1, 'sex', 'sex', 'sex', '$2y$10$xudsZjw/rE5z8jxi/Hb6yes.Xxj6ZSnG91JVuoV4lwZg7ZYCkEBQu', 'sex@sex.sex'),
(2, 'Michael', 'Lemon', 'Mr. Lemon', '$2y$10$MClvQnZPdvYqT4bVK1tK4ul6w2LJ9Q1GmBoFSuZCJjF6WsHE2gPuG', 'mal0037@mix.wvu.edu'),
(3, 'Michael', 'Lemon', 'mrlemon', '$2y$10$DrTn/4abnTNIQKf84AtXXu9HUPPq8Jqrl0UqOpNKMpIn3O7o0a.XO', 'mal0037@mix.wvu.edu'),
(4, 'fdhsdfhgf', 'sdgfdsfg', '69420s', '$2y$10$bzQpctafGFuesGL5qX1wGubyQulkClzeXijDm4R2KZUE0XAZFlS3O', 'te@you.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`revid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `revid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
