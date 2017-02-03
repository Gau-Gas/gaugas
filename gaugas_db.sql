-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2017 at 08:11 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gaugas_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user_name` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user_name`, `password`) VALUES
(0, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `authcode`
--

CREATE TABLE `authcode` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `authcode` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authcode`
--

INSERT INTO `authcode` (`user_id`, `authcode`) VALUES
(1, 'J1Tg@ug@$'),
(2, 'J1Tg@ug@$'),
(3, 'J1Tg@ug@$'),
(4, 'J1Tg@ug@$');

-- --------------------------------------------------------

--
-- Table structure for table `plant`
--

CREATE TABLE `plant` (
  `plant_id` int(10) UNSIGNED NOT NULL,
  `plant_loc` varchar(32) NOT NULL,
  `plant_no_of_conn` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plant`
--

INSERT INTO `plant` (`plant_id`, `plant_loc`, `plant_no_of_conn`) VALUES
(111, 'uttarahalli', 2),
(222, 'banashankiri', 2);

-- --------------------------------------------------------

--
-- Table structure for table `usage_daily`
--

CREATE TABLE `usage_daily` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `usage_date` date NOT NULL,
  `low` int(11) NOT NULL,
  `medium` int(11) NOT NULL,
  `high` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usage_daily`
--

INSERT INTO `usage_daily` (`user_id`, `usage_date`, `low`, `medium`, `high`) VALUES
(1, '2017-01-20', 24, 12, 21),
(1, '2017-01-21', 46, 52, 39),
(1, '2017-01-22', 20, 27, 23),
(1, '2017-01-23', 69, 64, 62),
(1, '2017-01-26', 11, 10, 28),
(1, '2017-01-27', 14, 28, 24),
(1, '2017-01-28', 17, 17, 24),
(2, '2017-01-20', 27, 27, 24),
(2, '2017-01-21', 57, 24, 34),
(2, '2017-01-24', 55, 50, 41),
(2, '2017-01-25', 29, 25, 28),
(2, '2017-01-27', 12, 24, 11),
(2, '2017-01-29', 22, 29, 10),
(3, '2017-01-20', 21, 16, 25),
(3, '2017-01-21', 12, 10, 25),
(3, '2017-01-23', 53, 34, 33),
(3, '2017-01-24', 13, 16, 10),
(3, '2017-01-25', 26, 27, 28),
(3, '2017-01-27', 22, 13, 13),
(3, '2017-01-28', 17, 15, 13),
(3, '2017-01-29', 48, 43, 51),
(4, '2017-01-20', 29, 12, 26),
(4, '2017-01-21', 48, 34, 48),
(4, '2017-01-22', 26, 19, 29),
(4, '2017-01-23', 30, 14, 11),
(4, '2017-01-24', 19, 18, 21),
(4, '2017-01-25', 11, 11, 12),
(4, '2017-01-26', 25, 17, 19),
(4, '2017-01-27', 54, 38, 31),
(4, '2017-01-28', 18, 13, 22),
(4, '2017-01-29', 33, 50, 30);

-- --------------------------------------------------------

--
-- Table structure for table `usage_logs`
--

CREATE TABLE `usage_logs` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `usage_date` datetime NOT NULL,
  `low` int(11) NOT NULL,
  `medium` int(11) NOT NULL,
  `high` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usage_logs`
--

INSERT INTO `usage_logs` (`user_id`, `usage_date`, `low`, `medium`, `high`) VALUES
(1, '2017-01-20 00:00:00', 24, 12, 21),
(1, '2017-01-21 00:00:00', 18, 29, 17),
(1, '2017-01-21 01:00:00', 28, 23, 22),
(1, '2017-01-22 00:00:00', 20, 27, 23),
(1, '2017-01-23 00:00:00', 25, 25, 17),
(1, '2017-01-23 01:00:00', 29, 16, 25),
(1, '2017-01-23 01:10:00', 15, 23, 20),
(1, '2017-01-26 11:10:10', 11, 10, 28),
(1, '2017-01-27 11:10:10', 14, 28, 24),
(1, '2017-01-28 11:10:13', 17, 17, 24),
(1, '2017-02-02 06:59:18', 0, 0, 0),
(1, '2017-02-02 07:00:11', 0, 0, 10),
(1, '2017-02-02 07:08:58', 0, 0, 12),
(2, '2017-01-20 00:00:00', 27, 27, 24),
(2, '2017-01-21 00:00:00', 28, 10, 20),
(2, '2017-01-21 01:00:00', 29, 14, 14),
(2, '2017-01-24 01:10:10', 30, 30, 27),
(2, '2017-01-24 11:10:10', 25, 20, 14),
(2, '2017-01-25 11:10:10', 29, 25, 28),
(2, '2017-01-27 11:10:13', 12, 24, 11),
(2, '2017-01-29 11:10:13', 22, 29, 10),
(3, '2017-01-20 00:00:00', 21, 16, 25),
(3, '2017-01-21 00:00:00', 12, 10, 25),
(3, '2017-01-23 00:00:00', 23, 24, 20),
(3, '2017-01-23 01:10:00', 30, 10, 13),
(3, '2017-01-24 11:10:10', 13, 16, 10),
(3, '2017-01-25 11:10:10', 26, 27, 28),
(3, '2017-01-27 11:10:10', 22, 13, 13),
(3, '2017-01-28 11:10:13', 17, 15, 13),
(3, '2017-01-29 11:10:13', 22, 16, 26),
(3, '2017-01-29 12:10:13', 26, 27, 25),
(4, '2017-01-20 00:00:00', 29, 12, 26),
(4, '2017-01-21 00:00:00', 20, 10, 22),
(4, '2017-01-21 01:00:00', 28, 24, 26),
(4, '2017-01-22 00:00:00', 26, 19, 29),
(4, '2017-01-23 01:00:00', 30, 14, 11),
(4, '2017-01-24 01:10:10', 19, 18, 21),
(4, '2017-01-25 11:10:10', 11, 11, 12),
(4, '2017-01-26 11:10:10', 25, 17, 19),
(4, '2017-01-27 11:10:10', 26, 18, 21),
(4, '2017-01-27 11:10:13', 28, 20, 10),
(4, '2017-01-28 11:10:13', 18, 13, 22),
(4, '2017-01-29 11:10:13', 10, 28, 18),
(4, '2017-01-29 12:10:13', 23, 22, 12);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(16) NOT NULL,
  `user_mob` varchar(32) NOT NULL,
  `user_join` datetime NOT NULL,
  `user_addr` varchar(64) NOT NULL,
  `plant_id` int(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_mob`, `user_join`, `user_addr`, `plant_id`) VALUES
(1, 'perumal', '9036892264', '2017-01-23 00:00:00', 'uttarahalli', 111),
(2, 'vinaykiran', '9945151419', '2017-01-23 00:00:00', 'kslayout', 111),
(3, 'vinaybhat', '9900188301', '2017-01-23 00:00:00', 'gottigere', 222),
(4, 'tilak', '7411077968', '2017-01-23 00:00:00', 'mathikere', 222),
(5, 'test', '123', '2017-02-01 23:06:46', 'test', 111);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authcode`
--
ALTER TABLE `authcode`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `plant`
--
ALTER TABLE `plant`
  ADD PRIMARY KEY (`plant_id`),
  ADD UNIQUE KEY `plant_id` (`plant_id`);

--
-- Indexes for table `usage_daily`
--
ALTER TABLE `usage_daily`
  ADD PRIMARY KEY (`user_id`,`usage_date`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `usage_logs`
--
ALTER TABLE `usage_logs`
  ADD PRIMARY KEY (`user_id`,`usage_date`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `plant_id` (`plant_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authcode`
--
ALTER TABLE `authcode`
  ADD CONSTRAINT `authcode_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `usage_daily`
--
ALTER TABLE `usage_daily`
  ADD CONSTRAINT `usage_daily_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `usage_logs`
--
ALTER TABLE `usage_logs`
  ADD CONSTRAINT `usage_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`plant_id`) REFERENCES `plant` (`plant_id`);

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `usage_daily_insert` ON SCHEDULE EVERY '0 23' DAY_HOUR STARTS '2017-01-27 06:06:45' ON COMPLETION NOT PRESERVE ENABLE DO INSERT INTO usage_daily 
	SELECT user_id,date(now()), SUM(low) as low, SUM(medium) as medium, SUM(high) as high FROM usage_logs WHERE date(date) = CURRENT_DATE GROUP BY user_id$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
