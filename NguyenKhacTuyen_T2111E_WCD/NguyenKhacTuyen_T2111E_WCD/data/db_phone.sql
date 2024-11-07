-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2023 at 02:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_phone`
--
DROP DATABASE IF EXISTS `db_phone`;
CREATE DATABASE `db_phone` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
-- --------------------------------------------------------
USE `db_phone`;
--
-- Table structure for table `phone`
--
DROP TABLE IF EXISTS phone;
CREATE TABLE phone (
  id bigint(20) NOT NULL,
  name_phone varchar(100) NOT NULL,
  brand varchar(100) NOT NULL,
  price float NOT NULL,
  description text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phone`
--

INSERT INTO phone (id, name_phone, brand, price, description) VALUES
(1, 'Iphone 14', 'Apple', 26790000, 'Iphone 14 pro max 128 GB'),
(2, 'Samsung Galaxy A14 4G', 'Samsung', 4790000, 'Điện thoại samsung');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phone`
--
ALTER TABLE phone
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phone`
--
ALTER TABLE phone
  MODIFY id bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
