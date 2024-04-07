-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2024 at 07:30 PM
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
-- Database: `signupandlogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `pwd`, `email`, `created_at`) VALUES
(1, 'wadiib', '$2y$12$5m6fviSEDjEabgRGKVF/UuC2S9CKIghRgMLu/3s.w1A51IMFwQiE2', 'wadii@gmail.com', '2024-03-05 13:02:40'),
(2, 'wadiibounenni', '$2y$12$Prdd4tQ..7PhP57jbUzXJepxT54G6TTMpJrf/sCZxn9darLyNs95q', 'wadii.bounenni@gmail.com', '2024-03-05 14:06:44'),
(3, 'anis', '$2y$12$CMXeWsctBr/Mz5nu4qSvGe/bq9NioWM23VmJGMnoSIJjYrnayaa3y', 'contact@agencewebsigma.tn', '2024-03-05 16:43:27'),
(4, 'haroun', '$2y$12$QidYhTNKzNC.pVeQn4pcMO5709M/iVBCvX9.bZ5nKEIhlzB5aHFV.', 'bloggerwb21@gmail.com', '2024-03-05 17:57:56'),
(5, 'cjhgfgfjfugh', '$2y$12$5B1yhdMVi6U9f/9CKIkDXuJj.lZM2TMA8afySAgO2Xa.khNR1sThq', 'sdfsdfsdf@dfsdfsdf.com', '2024-03-05 18:04:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
