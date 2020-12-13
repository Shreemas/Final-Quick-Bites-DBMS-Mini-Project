-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2020 at 01:08 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `order_details`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('BIRJU KUMAR', 'ckj40856@gmail.com', '8903079750', 'asd', 'asdasdasd'),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'asd', 'hfgdsfsx'),
('abc', 'Shreema16s@gmail.com', '7619537765', 'good', 'Very good!'),
('gfd', 'Shreema16s@gmail.com', '1234567891', 'good', 'jhdr');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('', '', '', '', '', ''),
('1234567898', 'aaa', 'aaa@gmail.com', '1234567891', 'saqwe', 'aaa'),
('ab', 'ab', 'ab@gmail.com', '1234567891', 'ab', 'ab'),
('abc', 'abc', 'Shreema16s@gmail.com', '1234567891', 'nitte', 'abc'),
('abcd', 'abcd', 'Shreema16s@gmail.com', '1234567891', 'Karkala', 'abcd'),
('abcdef', 'abcdef', 'Shreema16s@gmail.com', '1234567891', 'nitte', 'abcdef'),
('birju', 'BIRJU KUMAR', 'bkm123r@gmail.com', '8903079750', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Birju123@'),
('ckumar', 'CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Ckumar123@'),
('nidha', 'nidha', 'nidha@gmail.com', '998696572', 'Maharashtra', 'suhail'),
('pratheek083', 'Pratheek Shiri', 'pratheek@gmail.com', '8779546521', 'Hyderabad', 'pratheek'),
('qqq', 'qqq', 'Shreema@gmail.com', '1212121232', 'qqq', 'qqq'),
('rakshithk00', 'Rakshith Kotian', 'rakshith@gmail.com', '9547123658', 'Gujarath', 'rakshith'),
('shreema', 'Shreema', 'Shreema16s@gmail.com', '1234567891', 'nitte', 'shreema'),
('zzz', 'zzz', 'Shreema@gmail.com', '1212121232', 'Nitte', 'zzz');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(58, 'Strawberry Balsamic Pizza', 120, 'Yummy Strawberry Balsamic Pizza', 1, 'strawberry_basamic_pizza.jfif', 'ENABLE'),
(59, 'Neapolitan Pizza', 160, 'Yummy Neapolitan Pizza', 2, 'neapolitan_pizza.jpg', 'ENABLE'),
(60, 'California Pizza', 200, 'Yummy California Pizza', 3, 'california_pizza.jpg', 'ENABLE'),
(61, 'Detroit Pizza', 180, 'Yummy Detroit Pizza', 1, 'detroit_pizza.jpg', 'ENABLE'),
(62, 'St Louis Pizza', 165, 'Yummy St Louis Pizza', 2, 'st_louis_pizza.jpg', 'ENABLE'),
(63, 'Chicago Deep Dish Pizza', 175, 'Yummy Chicago Deep Dish Pizza', 3, 'chicago_deep_dish_pizza.jpg', 'ENABLE'),
(65, 'Sicilian Pizza', 125, 'Yummy Sicilian Pizza', 4, 'Sicilian_Pizza.jpg', 'DISABLE'),
(66, 'Tea', 120, 'The simple elixir of tea is of our natural world.', 4, 'images/tea.jpg', 'DISABLE'),
(68, 'Paneer Makhni Pizza', 185, 'Paneer Makhni Pizza', 6, 'Paneer_Makhni.jpg', 'DISABLE'),
(69, 'Breakfast Pizza', 125, 'Yummy Breakfast Pizza', 2, 'breakfast-pizza.jpg', 'ENABLE'),
(70, 'Bagel Pizza', 120, 'Yummy Bagel Pizza', 2, 'bagel-pizza.jpg', 'ENABLE'),
(71, 'Dessert Pizza', 140, 'Yummy Desert Pizza', 2, 'dessert-pizza.jpg', 'ENABLE'),
(72, 'Pizza Romano', 145, 'Yummy Pizza Romano', 2, 'pizza-romano.jpg', 'ENABLE'),
(73, 'Peppy Paneer Pizza', 135, 'Yummy Peppy Paneer Pizza', 2, 'Peppy_Paneer.jpg', 'ENABLE'),
(74, 'Pizza', 200, 'Good and Tasty ', 2, 'Pizza.jpg', 'DISABLE'),
(75, 'French', 65, 'Pure', 2, 'frenchfries.jpg', 'DISABLE'),
(76, 'Pakora', 135, 'Pure Vegetable and Tasty.', 2, 'images/Pakora.jpg', 'DISABLE'),
(77, 'Veg Extravaganz', 200, 'Yummy Veg Extravaganz', 2, 'Veg_Extravaganz.jpg', 'ENABLE'),
(78, 'Pizza All Italiana', 175, 'Yummy Pizza All Italiana', 2, 'pizza-all-Italiana.jpg', 'ENABLE'),
(79, 'Greek Pizza', 145, 'Yummy Greek Pizza', 2, 'greek-pizza.jpg', 'ENABLE'),
(80, 'Corn and Cheese Pizza', 200, 'Yummy Corn and Cheese Pizza', 2, 'Corn_and_Cheese.jpg', 'DISABLE'),
(81, 'Corn and Cheese Pizza', 200, 'Yummy Corn and Cheese Pizza', 9, 'Corn_and_Cheese.jpg', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('aditi068', 'Aditi Naik', 'aditi@gmail.com', '8654751259', 'Goa', 'aditi'),
('aminnikhil073', 'Nikhil Amin', 'aminnikhil073@gmail.com', '9632587412', 'Karnataka', 'nikhil'),
('ckumar', 'Chandan Kumar', 'ckj40856@gmail.com', '9487810674', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Ckumar123'),
('dhiraj', 'DHIRAJ kUMAR', 'dk123@gmail.com', '8903079750', 'Pondicherry. Le cafe', 'Dhiraj'),
('roshanraj07', 'Roshan Raj', 'roshan@gmail.com', '9541258761', 'Bihar', 'roshan'),
('sample1', 'sample1', 'sample1@gmail.com', '9876543213', 'sample', 'sample1');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(1, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-12', 'abc', 1),
(2, 61, 'Detroit Pizza', 180, 2, '2020-12-12', 'abc', 1),
(3, 61, 'Detroit Pizza', 180, 2, '2020-12-12', 'abc', 1),
(4, 65, 'Sicilian Pizza', 125, 4, '2020-12-12', 'ckumar', 4),
(5, 58, 'Strawberry Balsamic Pizza', 120, 7, '2020-12-12', 'ckumar', 1),
(6, 65, 'Sicilian Pizza', 125, 2, '2020-12-12', 'ckumar', 4),
(7, 58, 'Strawberry Balsamic Pizza', 120, 7, '2020-12-12', 'ckumar', 1),
(8, 65, 'Sicilian Pizza', 125, 2, '2020-12-12', 'ckumar', 4),
(9, 60, 'California Pizza', 200, 1, '2020-12-12', 'ckumar', 3),
(10, 59, 'Neapolitan Pizza', 160, 1, '2020-12-12', 'ckumar', 2),
(11, 60, 'California Pizza', 200, 1, '2020-12-12', 'ckumar', 3),
(12, 65, 'Sicilian Pizza', 125, 1, '2020-12-12', 'ckumar', 4),
(13, 59, 'Neapolitan Pizza', 160, 4, '2020-12-12', 'ckumar', 2),
(14, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-12', 'ckumar', 1),
(15, 60, 'California Pizza', 200, 4, '2020-12-12', 'ckumar', 3),
(16, 65, 'Sicilian Pizza', 125, 1, '2020-12-12', 'ckumar', 4),
(17, 66, 'Tea', 20, 7, '2020-12-12', 'ckumar', 4),
(18, 59, 'Neapolitan Pizza', 160, 5, '2020-12-12', 'birju', 2),
(19, 63, 'Chicago Deep Dish Pizza', 175, 1, '2020-12-12', 'birju', 3),
(20, 68, 'Paneer Makhni Pizza', 185, 1, '2020-12-12', 'birju', 6),
(21, 62, 'St Louis Pizza', 165, 1, '2020-12-12', 'birju', 2),
(22, 68, 'Paneer Makhni Pizza', 185, 1, '2020-12-12', 'birju', 6),
(23, 62, 'St Louis Pizza', 165, 1, '2020-12-12', 'birju', 2),
(24, 65, 'Sicilian Pizza', 125, 1, '2020-12-12', 'birju', 4),
(25, 68, 'Paneer Makhni Pizza', 185, 1, '2020-12-12', 'birju', 6),
(26, 59, 'Meurig Fish', 60, 6, '2019-03-05', 'birju', 2),
(27, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-03-05', 'birju', 1),
(28, 59, 'Meurig Fish', 60, 1, '2019-03-05', 'birju', 2),
(29, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-03-05', 'birju', 1),
(30, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-03-15', 'ckumar', 3),
(31, 59, 'Meurig Fish', 60, 1, '2019-03-15', 'ckumar', 2),
(32, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2019-03-15', 'ckumar', 1),
(33, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-03-15', 'ckumar', 3),
(34, 59, 'Meurig Fish', 60, 1, '2019-03-15', 'ckumar', 2),
(35, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2019-03-15', 'ckumar', 1),
(36, 62, 'Spring Rolls', 65, 1, '2019-03-15', 'ckumar', 2),
(37, 72, 'Paneer Pakora', 45, 6, '2019-03-15', 'ckumar', 2),
(38, 78, 'French Fries', 75, 7, '2019-03-15', 'ckumar', 2),
(39, 78, 'French Fries', 75, 1, '2019-03-15', 'ckumar', 2),
(40, 73, 'Puff', 35, 1, '2019-03-15', 'ckumar', 2),
(41, 77, 'Pizza', 200, 2, '2019-03-16', 'ckumar', 2),
(42, 70, 'Tea', 20, 1, '2019-03-16', 'ckumar', 2),
(43, 60, 'Chocolate Hazelnut Truffle', 99, 2, '2019-03-16', 'ckumar', 3),
(44, 70, 'Tea', 20, 1, '2019-03-16', 'ckumar', 2),
(45, 60, 'Chocolate Hazelnut Truffle', 99, 2, '2019-03-16', 'ckumar', 3),
(46, 70, 'Tea', 20, 1, '2019-03-16', 'ckumar', 2),
(47, 60, 'Chocolate Hazelnut Truffle', 99, 2, '2019-03-16', 'ckumar', 3),
(48, 60, 'Chocolate Hazelnut Truffle', 99, 4, '2019-03-25', 'ckumar', 3),
(49, 62, 'Spring Rolls', 65, 6, '2019-03-25', 'ckumar', 2),
(50, 70, 'Tea', 20, 5, '2019-03-25', 'ckumar', 2),
(51, 73, 'Puff', 35, 3, '2019-03-25', 'ckumar', 2),
(52, 70, 'Tea', 20, 1, '2019-03-30', 'ckumar', 2),
(53, 60, 'Chocolate Hazelnut Truffle', 99, 5, '2019-03-30', 'ckumar', 3),
(54, 69, 'Coffee', 25, 7, '2019-03-30', 'ckumar', 2),
(55, 62, 'Spring Rolls', 65, 1, '2019-04-01', 'ckumar', 2),
(56, 70, 'Tea', 20, 4, '2019-04-01', 'ckumar', 2),
(57, 70, 'Tea', 20, 1, '2019-04-01', 'ckumar', 2),
(58, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-04-01', 'ckumar', 3),
(59, 59, 'Meurig Fish', 60, 6, '2019-04-02', 'ckumar', 2),
(60, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2019-04-02', 'ckumar', 1),
(61, 71, 'Samosa', 40, 3, '2019-04-17', 'ckumar', 2),
(62, 70, 'Tea', 20, 4, '2019-04-17', 'ckumar', 2),
(63, 72, 'Paneer Pakora', 45, 2, '2019-04-17', 'ckumar', 2),
(64, 71, 'Samosa', 40, 3, '2019-04-17', 'ckumar', 2),
(65, 70, 'Tea', 20, 4, '2019-04-17', 'ckumar', 2),
(66, 72, 'Paneer Pakora', 45, 2, '2019-04-17', 'ckumar', 2),
(67, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-04-18', 'ckumar', 3),
(68, 71, 'Samosa', 40, 1, '2019-04-18', 'ckumar', 2),
(69, 79, 'Pakora', 45, 1, '2020-12-11', 'shreema', 2),
(70, 78, 'French Fries', 75, 1, '2020-12-11', 'shreema', 2),
(71, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2020-12-11', 'shreema', 1),
(72, 59, 'Meurig Fish', 60, 1, '2020-12-11', 'shreema', 2),
(73, 79, 'Pakora', 45, 1, '2020-12-11', 'abcd', 2),
(74, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2020-12-11', 'abcd', 1),
(75, 79, 'Pakora', 45, 1, '2020-12-11', 'abcd', 2),
(76, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2020-12-11', 'abcd', 1),
(77, 79, 'Pakora', 45, 1, '2020-12-11', 'abcd', 2),
(78, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2020-12-11', 'abcd', 1),
(79, 59, 'Meurig Fish', 60, 1, '2020-12-11', 'abcd', 2),
(80, 79, 'Pakora', 45, 1, '2020-12-11', 'abcd', 2),
(81, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2020-12-11', 'abcd', 1),
(82, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(83, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'zzz', 2),
(84, 61, 'Detroit Pizza', 180, 1, '2020-12-13', 'zzz', 1),
(85, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'zzz', 2),
(86, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(87, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'zzz', 2),
(88, 61, 'Detroit Pizza', 180, 1, '2020-12-13', 'zzz', 1),
(89, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'zzz', 2),
(90, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(91, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'zzz', 2),
(92, 61, 'Detroit Pizza', 180, 1, '2020-12-13', 'zzz', 1),
(93, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'zzz', 2),
(94, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(95, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'zzz', 2),
(96, 61, 'Detroit Pizza', 180, 1, '2020-12-13', 'zzz', 1),
(97, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'zzz', 2),
(98, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(99, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'zzz', 2),
(100, 61, 'Detroit Pizza', 180, 1, '2020-12-13', 'zzz', 1),
(101, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'zzz', 2),
(102, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(103, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'zzz', 2),
(104, 61, 'Detroit Pizza', 180, 1, '2020-12-13', 'zzz', 1),
(105, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'zzz', 2),
(106, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(107, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'zzz', 2),
(108, 61, 'Detroit Pizza', 180, 1, '2020-12-13', 'zzz', 1),
(109, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'zzz', 2),
(110, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(111, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'zzz', 2),
(112, 61, 'Detroit Pizza', 180, 1, '2020-12-13', 'zzz', 1),
(113, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'zzz', 2),
(114, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(115, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'zzz', 2),
(116, 61, 'Detroit Pizza', 180, 1, '2020-12-13', 'zzz', 1),
(117, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'zzz', 2),
(118, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(119, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'zzz', 2),
(120, 61, 'Detroit Pizza', 180, 1, '2020-12-13', 'zzz', 1),
(121, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'zzz', 2),
(122, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(123, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'zzz', 2),
(124, 61, 'Detroit Pizza', 180, 1, '2020-12-13', 'zzz', 1),
(125, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'zzz', 2),
(126, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(127, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'zzz', 2),
(128, 61, 'Detroit Pizza', 180, 1, '2020-12-13', 'zzz', 1),
(129, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'zzz', 2),
(130, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(131, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'zzz', 2),
(132, 61, 'Detroit Pizza', 180, 1, '2020-12-13', 'zzz', 1),
(133, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'zzz', 2),
(134, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(135, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'zzz', 2),
(136, 61, 'Detroit Pizza', 180, 1, '2020-12-13', 'zzz', 1),
(137, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'zzz', 2),
(138, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(139, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'zzz', 2),
(140, 61, 'Detroit Pizza', 180, 1, '2020-12-13', 'zzz', 1),
(141, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'zzz', 2),
(142, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(143, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'zzz', 2),
(144, 61, 'Detroit Pizza', 180, 1, '2020-12-13', 'zzz', 1),
(145, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'zzz', 2),
(146, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(147, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'zzz', 2),
(148, 61, 'Detroit Pizza', 180, 1, '2020-12-13', 'zzz', 1),
(149, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'zzz', 2),
(150, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(151, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'zzz', 2),
(152, 61, 'Detroit Pizza', 180, 1, '2020-12-13', 'zzz', 1),
(153, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'zzz', 2),
(154, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(155, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'zzz', 2),
(156, 61, 'Detroit Pizza', 180, 1, '2020-12-13', 'zzz', 1),
(157, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'zzz', 2),
(158, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(159, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'zzz', 2),
(160, 61, 'Detroit Pizza', 180, 1, '2020-12-13', 'zzz', 1),
(161, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'zzz', 2),
(162, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(163, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'zzz', 2),
(164, 61, 'Detroit Pizza', 180, 1, '2020-12-13', 'zzz', 1),
(165, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'zzz', 2),
(166, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(167, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'zzz', 2),
(168, 61, 'Detroit Pizza', 180, 1, '2020-12-13', 'zzz', 1),
(169, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'zzz', 2),
(170, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(171, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'zzz', 2),
(172, 61, 'Detroit Pizza', 180, 1, '2020-12-13', 'zzz', 1),
(173, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'zzz', 2),
(174, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(175, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'zzz', 2),
(176, 61, 'Detroit Pizza', 180, 1, '2020-12-13', 'zzz', 1),
(177, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'zzz', 2),
(178, 79, 'Greek Pizza', 145, 1, '2020-12-13', 'zzz', 2),
(179, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(180, 79, 'Greek Pizza', 145, 1, '2020-12-13', 'zzz', 2),
(181, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(182, 79, 'Greek Pizza', 145, 1, '2020-12-13', 'zzz', 2),
(183, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(184, 79, 'Greek Pizza', 145, 1, '2020-12-13', 'zzz', 2),
(185, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'zzz', 1),
(186, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'qqq', 1),
(187, 79, 'Greek Pizza', 145, 1, '2020-12-13', 'qqq', 2),
(188, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'qqq', 2),
(189, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'qqq', 1),
(190, 79, 'Greek Pizza', 145, 1, '2020-12-13', 'qqq', 2),
(191, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'qqq', 2),
(192, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'qqq', 1),
(193, 79, 'Greek Pizza', 145, 1, '2020-12-13', 'qqq', 2),
(194, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'qqq', 2),
(195, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'qqq', 1),
(196, 79, 'Greek Pizza', 145, 1, '2020-12-13', 'qqq', 2),
(197, 62, 'St Louis Pizza', 165, 1, '2020-12-13', 'qqq', 2),
(198, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'ab', 2),
(199, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'ab', 1),
(200, 69, 'Breakfast Pizza', 125, 1, '2020-12-13', 'ab', 2),
(201, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'ab', 2),
(202, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'ab', 1),
(203, 69, 'Breakfast Pizza', 125, 1, '2020-12-13', 'ab', 2),
(204, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'ab', 2),
(205, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'ab', 1),
(206, 78, 'Pizza All Italiana', 175, 1, '2020-12-13', 'ab', 2),
(207, 58, 'Strawberry Balsamic Pizza', 120, 1, '2020-12-13', 'ab', 1);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(1, 'Nikhil\'s Restaurant', 'nikhil@restaurant.com', '7998562145', 'Karnataka', 'aminnikhil073'),
(2, 'Roshan\'s Restaurant', 'roshan@restaurant.com', '9887546821', 'Bihar', 'roshanraj07'),
(3, 'Aditi\'s Restaurant', 'aditi@restaurant.com', '7778564231', 'Goa', 'aditi068'),
(4, 'Food Exploria', 'ckj40856@gmail.com', '09487810674', 'C:\\xampp\\htdocs\\FoodExploria-master\\images/coffee.', 'ckumar'),
(6, 'Le Cafe', 'lecafepondi234@gmail.com', '9443369040', 'Pondicherry,rock beach Near,Le cafe', 'dhiraj'),
(9, 'Quick Bites Malleshwaram', 'Quickbtesm@gmail.com', '9876543211', 'Quick Bites Malleshwaram', 'sample1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
