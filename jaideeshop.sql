-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 06, 2019 at 01:13 AM
-- Server version: 5.7.19
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
-- Database: `jaideeshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `username`, `password`, `firstname`, `lastname`, `email`, `active`) VALUES
(1, 'Noraseat', '3fb5606bd0362ead41a787099083983b', 'Noraseat', 'Panawong', 'jabnakub01@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `price` float NOT NULL,
  `unintInStock` int(11) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `unintInStock`, `picture`, `category`) VALUES
(5, 'notebook Asus', 'โคตรแรงราคาไม่แรง', 19000, 5, 'notebookAsus.jpg', 1),
(6, 'notebook DELL', 'ใช้งานได้ดีเยี่ยมแรงสุดๆ', 13000, 5, 'notebooksDELL.jpg', 1),
(7, 'Notebook Lenovo', 'เครื่องใช้งานดีคุณภาพเยี่ยม', 15000, 5, 'notebookLenovo.jpg', 1),
(8, 'notebook HP', 'ใช้งานดี', 12000, 5, 'notebooksHP.jpg', 1),
(9, 'PC ACER', 'GOOD', 15000, 5, 'pcACER.jpg', 3),
(10, 'PC ACERA spire', 'GOOD', 12000, 5, 'pcACERAspire.jpg', 3),
(11, 'PC HP', 'Very Good', 15000, 5, 'pcHP.jpg', 3),
(12, 'PC LENOVO', 'Very Good', 12000, 5, 'pcLENOVO.jpg', 3),
(13, 'Keyboard ROCCAT', 'Good', 1200, 3, 'Roccat.jpg', 2),
(14, 'Keyboard GAMDIAS', 'Good', 1000, 5, 'GAMDIAS.png', 2),
(15, 'Keyboard RAZER', 'Good', 1500, 5, 'RAZER.png', 2),
(16, 'LOGITECH', 'Very Good', 1230, 5, 'LOGITECH.jpg', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
