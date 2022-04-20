-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2022 at 02:03 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `The Sparks Foundation`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Saket', 'Anvesh', 200, '2022-04-17 18:58:27'),
(2, 'Saket', 'Anvesh', 200, '2022-04-17 19:00:31'),
(3, 'Anvesh', 'Nikita', 5000, '2022-04-17 19:01:32'),
(4, 'Saket', 'Nikita', 5000, '2022-04-17 19:06:15'),
(5, 'Arjun', 'Anvesh', 500, '2022-04-17 19:28:24'),
(6, 'Arjun', 'Anvesh', 500, '2022-04-17 19:30:31'),
(7, 'Arjun', 'Anvesh', 200, '2022-04-17 19:31:22'),
(8, 'Siddhant', 'Aman', 520, '2022-04-18 07:39:58'),
(9, 'Arnav', 'Saket', 500, '2022-04-18 09:37:08'),
(10, 'Saket', 'Aman', 100, '2022-04-18 11:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1087, 'Anvesh', 'sandy@gmail.com', 46600),
(2654, 'Aman', 'singh@gmail.com', 30620),
(3624, 'Gaurav', 'mane@gmail.com', 40000),
(4542, 'Arjun', 'narode@gmail.com', 48800),
(5345, 'Saket', 'solanki@gmail.com', 35000),
(5465, 'Arnav', 'bawmne@gmail.com', 49500),
(6554, 'Nikita', 'raina@gmail.com', 40000),
(7875, 'Siddhant', 'moosewala@gmail.com', 49480),
(8877, 'Shivam', 'ramne@gmail.com', 40000),
(9245, 'Sachin', 'prajap@gmail.com', 30000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--f
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
