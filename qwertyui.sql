-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2025 at 09:14 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffee_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`) VALUES
(1, 'Espresso', 'Strong black coffee', 20000.00, 'https://tse2.mm.bing.net/th/id/OIP.QvfUfKJod9afTA_aPHYrgAHaFb?cb=ucfimg2&ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3'),
(2, 'Latte', 'Coffee with milk', 25000.00, 'https://tse3.mm.bing.net/th/id/OIP.RiTs2B-5Zm2RTcQuEHuIjQHaHa?cb=ucfimg2&ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3'),
(3, 'Cappuccino', 'Coffee with foam', 27000.00, 'https://tse2.mm.bing.net/th/id/OIP.ghWt4ZPEQFDTgK623CScvwHaE8?cb=ucfimg2&ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3'),
(4, 'Americano', 'Espresso with hot water', 22000.00, 'https://eatthinkbemerry.com/wp-content/uploads/2023/04/What-Is-An-Americano-1.jpg'),
(5, 'Mocha', 'Coffee with chocolate and milk', 30000.00, 'https://assets.simpleviewinc.com/simpleview/image/upload/c_limit,q_75,w_1200/v1/crm/hamilton/thumbnail_Just-love-coffee-latte_91000229-5056-A36A-08B2E7AF8BBF2297-90ffff835056a36_910002e1-5056-a36a-080d30b3a197649c.jpg'),
(6, 'Flat White', 'Smooth espresso with microfoam', 28000.00, 'https://www.foodandwine.com/thmb/xQZv2CX6FO5331PYK7uGPF1we9Q=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Partners-Flat-White-FT-BLOG0523-b11f6273c2d84462954c2163d6a1076d.jpg'),
(7, 'Macchiato', 'Espresso with a dash of milk', 24000.00, 'https://tse1.mm.bing.net/th/id/OIP.uC9RcV3lK1I1X2INid7e3AHaEO?cb=ucfimg2&ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3'),
(8, 'Iced Coffee', 'Cold brewed coffee with ice', 26000.00, 'https://images.unsplash.com/photo-1517701550927-30cf4ba1dba5?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aWNlZCUyMGNvZmZlZXxlbnwwfHwwfHx8MA%3D%3D'),
(9, 'Matcha Latte', 'Green tea with milk', 25000.00, 'https://tse1.mm.bing.net/th/id/OIP.-7M-6ALDHGAYoYD4HtLuXgHaJM?cb=ucfimg2&ucfimg=1&w=1221&h=1515&rs=1&pid=ImgDetMain&o=7&rm=3'),
(10, 'Chai Latte', 'Spiced tea with milk', 23000.00, 'https://midwestniceblog.com/wp-content/uploads/2022/09/chai-tea-latte-recipe-683x1024.jpg'),
(11, 'Hot Chocolate', 'Rich chocolate drink', 22000.00, 'https://www.prettyopinionated.com/wp-content/uploads/2023/11/classic-hot-chocolate.jpg'),
(12, 'Caramel Latte', 'Latte with caramel syrup', 28000.00, 'https://www.julieseatsandtreats.com/wp-content/uploads/2021/06/Caramel-Latte-4-of-6-750x1128.jpg'),
(13, 'Vanilla Latte', 'Latte with vanilla syrup', 28000.00, 'https://tse3.mm.bing.net/th/id/OIP.LiNijiIrhI6GAS_wOhF9awHaLG?cb=ucfimg2&ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3'),
(14, 'Affogato', 'Espresso poured over ice cream', 35000.00, 'https://img.freepik.com/premium-photo/affogato-coffee-with-ice-cream-black-white-background_972841-165.jpg'),
(15, 'Frappuccino', 'Blended coffee with ice and milk', 32000.00, 'https://minichef.net/wp-content/uploads/2020/05/frappuccino.jpg'),
(16, 'Matcha Strawberry', 'Green tea with strawberry flavor and milk', 27000.00, 'https://thewillowskitchen.com/wp-content/uploads/2022/07/iced-strawberry-matcha-01-1170x1755.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
