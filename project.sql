-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2021 at 04:57 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` char(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(7, 'SHOPPING'),
(8, 'SPORTS'),
(9, 'FOOD'),
(10, 'FAMILY');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` char(150) NOT NULL,
  `description` char(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `user_id`) VALUES
(35, 'asdf', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, co', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tasks_tags`
--

CREATE TABLE `tasks_tags` (
  `task_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` char(150) NOT NULL,
  `email` char(150) NOT NULL,
  `password` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(15, 'ali', 'togo@admin.com', '25f9e794323b453885f5181f1b624d0b'),
(16, 'Hannah Dudley', 'zasaqukez@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(17, 'Unity Fields', 'wyhujiwi@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(18, 'Uta Hanson', 'nulepoxi@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(19, 'Solomon Moss', 'jasuh@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(20, 'Quynn Henry', 'xolupac@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(21, 'Sharon Hendrix', 'rezujone@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(22, 'Dante Benton', 'jenena@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(23, 'Daryl Pierce', 'wona@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(24, 'Nayda Perez', 'zyhykavo@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(25, 'Yolanda Browning', 'rykiqug@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(26, 'Gillian Howard', 'fyqut@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(27, 'Farrah Hardin', 'jakutaf@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(28, 'Damon Fitzpatrick', 'lobu@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(29, 'Luke Dodson', 'jopilev@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(30, 'Brennan Hays', 'sinavi@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(31, 'Megan Gaines', 'johexyvosa@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(32, 'Amos Houston', 'xohajub@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(33, 'Marny Durham', 'kady@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(34, 'fat', 'fat@admin.com', '25f9e794323b453885f5181f1b624d0b'),
(35, 'Elmo Lewis', 'wivigelasu@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(36, 'Kieran Franklin', 'weroxuvew@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tasks_tags`
--
ALTER TABLE `tasks_tags`
  ADD KEY `task_id` (`task_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tasks_tags`
--
ALTER TABLE `tasks_tags`
  ADD CONSTRAINT `tasks_tags_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tasks_tags_ibfk_2` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
