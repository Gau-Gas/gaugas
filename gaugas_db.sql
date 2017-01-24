-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2017 at 07:35 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

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
  `user_name` varchar(16) NOT NULL,
  `pwd` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_name`, `pwd`) VALUES
('admin', 'admin');

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
(111, '1a', 2),
(222, '2a', 2);

-- --------------------------------------------------------

--
-- Table structure for table `staging_table`
--

CREATE TABLE `staging_table` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `usage_units` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usage_logs`
--

CREATE TABLE `usage_logs` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usage_units` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usage_logs`
--

INSERT INTO `usage_logs` (`user_id`, `date`, `usage_units`) VALUES
(1, '2017-01-24 00:59:57', 12),
(2, '2017-01-24 00:59:57', 0),
(3, '2017-01-24 00:59:57', 0),
(4, '2017-01-24 00:59:57', 0),
(1, '2017-01-24 01:02:19', 12),
(2, '2017-01-24 01:02:19', 0),
(3, '2017-01-24 01:02:19', 0),
(4, '2017-01-24 01:02:19', 0),
(1, '2017-01-24 01:03:28', 12),
(2, '2017-01-24 01:03:28', 0),
(3, '2017-01-24 01:03:28', 0),
(4, '2017-01-24 01:03:28', 0),
(1, '2017-01-24 01:07:04', 0),
(2, '2017-01-24 01:07:04', 0),
(3, '2017-01-24 01:07:04', 0),
(4, '2017-01-24 01:07:04', 0),
(1, '2017-01-24 01:07:09', 0),
(2, '2017-01-24 01:07:09', 0),
(3, '2017-01-24 01:07:09', 0),
(4, '2017-01-24 01:07:09', 0),
(1, '2017-01-24 01:07:14', 0),
(2, '2017-01-24 01:07:14', 0),
(3, '2017-01-24 01:07:14', 0),
(4, '2017-01-24 01:07:14', 0),
(1, '2017-01-24 01:07:19', 0),
(2, '2017-01-24 01:07:19', 0),
(3, '2017-01-24 01:07:19', 0),
(4, '2017-01-24 01:07:19', 0),
(1, '2017-01-24 01:07:24', 0),
(2, '2017-01-24 01:07:24', 0),
(3, '2017-01-24 01:07:24', 0),
(4, '2017-01-24 01:07:24', 0),
(1, '2017-01-24 01:07:29', 0),
(2, '2017-01-24 01:07:29', 0),
(3, '2017-01-24 01:07:29', 0),
(4, '2017-01-24 01:07:29', 0),
(1, '2017-01-24 01:07:34', 0),
(2, '2017-01-24 01:07:34', 0),
(3, '2017-01-24 01:07:34', 0),
(4, '2017-01-24 01:07:34', 0),
(1, '2017-01-24 01:07:39', 0),
(2, '2017-01-24 01:07:39', 0),
(3, '2017-01-24 01:07:39', 0),
(4, '2017-01-24 01:07:39', 0),
(1, '2017-01-24 01:07:44', 0),
(2, '2017-01-24 01:07:44', 0),
(3, '2017-01-24 01:07:44', 0),
(4, '2017-01-24 01:07:44', 0),
(1, '2017-01-24 01:07:49', 0),
(2, '2017-01-24 01:07:49', 0),
(3, '2017-01-24 01:07:49', 0),
(4, '2017-01-24 01:07:49', 0),
(1, '2017-01-24 01:07:54', 0),
(2, '2017-01-24 01:07:54', 0),
(3, '2017-01-24 01:07:54', 0),
(4, '2017-01-24 01:07:54', 0),
(1, '2017-01-24 01:07:59', 0),
(2, '2017-01-24 01:07:59', 0),
(3, '2017-01-24 01:07:59', 0),
(4, '2017-01-24 01:07:59', 0),
(1, '2017-01-24 01:08:04', 0),
(2, '2017-01-24 01:08:04', 0),
(3, '2017-01-24 01:08:04', 0),
(4, '2017-01-24 01:08:04', 0),
(1, '2017-01-24 01:08:09', 0),
(2, '2017-01-24 01:08:09', 0),
(3, '2017-01-24 01:08:09', 0),
(4, '2017-01-24 01:08:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `usage_regular`
--

CREATE TABLE `usage_regular` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `usage_units` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usage_regular`
--

INSERT INTO `usage_regular` (`user_id`, `usage_units`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0);

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
(3, 'vinaybhat', '9900188301', '2017-01-23 00:00:00', 'kkcross', 222),
(4, 'tilak', '7411077968', '2017-01-23 00:00:00', 'uttarahalli', 222);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `plant`
--
ALTER TABLE `plant`
  ADD PRIMARY KEY (`plant_id`),
  ADD UNIQUE KEY `plant_id` (`plant_id`);

--
-- Indexes for table `staging_table`
--
ALTER TABLE `staging_table`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `usage_logs`
--
ALTER TABLE `usage_logs`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `usage_regular`
--
ALTER TABLE `usage_regular`
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
-- Constraints for table `staging_table`
--
ALTER TABLE `staging_table`
  ADD CONSTRAINT `staging_table_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `staging_table_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `usage_logs`
--
ALTER TABLE `usage_logs`
  ADD CONSTRAINT `usage_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `usage_regular`
--
ALTER TABLE `usage_regular`
  ADD CONSTRAINT `usage_regular_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`plant_id`) REFERENCES `plant` (`plant_id`);

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `first_event` ON SCHEDULE EVERY 3 SECOND STARTS '2017-01-24 00:08:20' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
        Update
  usage_regular as u
  inner join (
    select user_id, sum(usage_units) as usage_units
    from staging_table group by user_id
  ) as A on u.user_id = A.user_id
set u.usage_units = u.usage_units + A.usage_units;
delete FROM staging_table;
      END$$

CREATE DEFINER=`root`@`localhost` EVENT `usage_logs_insert` ON SCHEDULE EVERY 1 DAY STARTS '2017-01-24 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO insert into usage_logs(user_id,perday_usage) select user_id,usage_units from usage_regular$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
