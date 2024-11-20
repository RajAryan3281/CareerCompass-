-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Nov 18, 2024 at 01:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `career_compass`
--

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `company` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `description`, `company`, `location`, `created_at`) VALUES
(1, 'Software Engineer', 'Software Engineer Development Role', 'Tech Company', 'Banglore', '2024-11-01 14:53:11'),
(2, 'Process Associtae', 'Handling Different Process', 'Cogneesol', 'Mohali', '2024-11-01 15:15:28'),
(3, 'Data Analyst', 'Handling Data of the different project accurately', 'Amazon', 'USA', '2024-11-01 15:16:22'),
(4, 'Mern Stack', 'Web Site Developer', 'Cipher Scools', 'Mumbai', '2024-11-01 15:22:17'),
(5, 'Sales Associate', 'Sales', 'XYZ PVT. Ltd.', 'Delhi', '2024-11-01 15:23:08'),
(6, 'Data Engineer', 'Data Engineer', 'ABC Company', 'Noida', '2024-11-01 15:23:30'),
(7, 'Software Associate', 'Operational Job', 'FGH company', 'delhi', '2024-11-01 15:24:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `cv` longblob NOT NULL,
  `applied_in` text DEFAULT NULL,
  `full_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `contact` varchar(15) NOT NULL,
  `location` varchar(100) NOT NULL,
  `skills` text NOT NULL,
  `experience` int(11) DEFAULT 0,
  `education` varchar(255) NOT NULL,
  `linkedin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`, `cv`, `applied_in`, `full_name`, `dob`, `contact`, `location`, `skills`, `experience`, `education`, `linkedin`) VALUES
(4, 'pranav54', 'pranav@gmail.com', '$2y$10$wX0l0RAxY/gCOYPGy.3C6O/1FAeKXyECrIWB1I9DqnxK/7PIXUjJS', '2024-11-08 14:10:35', '', NULL, 'Pranav Bhatti', '0000-00-00', '9877523315', 'mohali', 'laravel', 2, '', ''),
(5, 'kashishv09', 'kashish@gmail.com', '$2y$10$iL5vf/5.3KTU1TUvWBODse07jwhf/tit.UOM6NkgxW6SO7xaH7Yqu', '2024-11-08 14:16:30', '', NULL, 'Kashish Verma', '0000-00-00', '7082880664', 'Jalandhar', 'Java, C++, Php', 0, 'Bachelor\'s Degree', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
