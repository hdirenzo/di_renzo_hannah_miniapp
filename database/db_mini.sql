-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 07, 2022 at 11:36 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mini`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cars`
--

CREATE TABLE `tbl_cars` (
  `cars_id` int(10) UNSIGNED NOT NULL,
  `cars_name` varchar(100) NOT NULL,
  `cars_price` varchar(75) NOT NULL,
  `cars_engine` varchar(150) NOT NULL,
  `cars_trans` varchar(150) NOT NULL,
  `cars_speed` varchar(75) NOT NULL,
  `cars_img` varchar(300) NOT NULL,
  `cars_model_id` int(11) NOT NULL,
  `cars_model_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cars`
--

INSERT INTO `tbl_cars` (`cars_id`, `cars_name`, `cars_price`, `cars_engine`, `cars_trans`, `cars_speed`, `cars_img`, `cars_model_id`, `cars_model_type_id`) VALUES
(1, '2023 Mini 3-Door', '$36,790 CAD', '3-Cylinder 12 Valve Twin Power Turbo', '6-Speed Manual', '220km/h', 'imgs/img_cars_3Door.jpg', 1, 2),
(2, '2023 Mini Convertiable', '$43,390 CAD', '3-Cylinder Twin Power Turbocharged Engine', '6-Speed Manual', '205km/h', 'imgs/img_cars_Convert.jpg', 1, 4),
(3, '2023 Mini All-Electric', '$45,590 CAD', 'Fully Electric Motor', 'Single-Speed Automatic', '150km/h', 'imgs/img_cars_Electric.jpg', 1, 1),
(4, '2023 Mini 5-Door', '$37,790 CAD', '3-Cylinder 12 Valve Twin Power Turbo', '6-Speed Manual ', '207km/h', 'imgs/img_cars_5Door.jpg', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_models`
--

CREATE TABLE `tbl_models` (
  `models_id` int(11) NOT NULL,
  `models_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_models`
--

INSERT INTO `tbl_models` (`models_id`, `models_name`) VALUES
(1, 'Cooper');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modeltypes`
--

CREATE TABLE `tbl_modeltypes` (
  `modeltypes_id` int(10) UNSIGNED NOT NULL,
  `modeltypes_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_modeltypes`
--

INSERT INTO `tbl_modeltypes` (`modeltypes_id`, `modeltypes_name`) VALUES
(1, 'Electric'),
(2, '3 Door'),
(3, '5 Door '),
(4, 'Convertible');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cars`
--
ALTER TABLE `tbl_cars`
  ADD PRIMARY KEY (`cars_id`);

--
-- Indexes for table `tbl_models`
--
ALTER TABLE `tbl_models`
  ADD PRIMARY KEY (`models_id`);

--
-- Indexes for table `tbl_modeltypes`
--
ALTER TABLE `tbl_modeltypes`
  ADD PRIMARY KEY (`modeltypes_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cars`
--
ALTER TABLE `tbl_cars`
  MODIFY `cars_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_models`
--
ALTER TABLE `tbl_models`
  MODIFY `models_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_modeltypes`
--
ALTER TABLE `tbl_modeltypes`
  MODIFY `modeltypes_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
