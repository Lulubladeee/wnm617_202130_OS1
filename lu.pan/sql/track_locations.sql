-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主机： localhost:3306
-- 生成日期： 2019-12-17 16:16:04
-- 服务器版本： 5.6.44-cll-lve
-- PHP 版本： 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `wnm617_yuanyue1`
--

-- --------------------------------------------------------

--
-- 表的结构 `track_locations`
--

CREATE TABLE `track_locations` (
  `id` int(11) NOT NULL,
  `aid` int(12) NOT NULL,
  `type` varchar(128) NOT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `cactus_condition` text NOT NULL,
  `img` varchar(128) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `track_locations`
--

INSERT INTO `track_locations` (`id`, `aid`, `type`, `lat`, `lng`, `cactus_condition`, `img`, `date_create`) VALUES
(41, 11, 'Prickly Pear', '37.765096', '-122.410481', 'Average ', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(40, 24, 'Prickly Pear', '37.792379', '-122.395441', 'Not bad', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(39, 26, 'Ferocactus', '37.744336', '-122.44159', 'Not bad', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(38, 23, 'Opuntia ', '37.754372', '-122.398826', 'Healthy', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(37, 23, 'Cactus Ball', '37.710309', '-122.395615', 'Pretty Good', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(36, 25, 'Bunny Ears', '37.77463', '-122.404286', 'Pretty Good', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(35, 12, 'Opuntia ', '37.757364', '-122.405033', 'Not well', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(34, 3, 'Ferocactus', '37.750667', '-122.454141', 'Not bad', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(33, 27, 'Cactus Ball', '37.696682', '-122.438702', 'Not bad', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(32, 22, 'Ferocactus', '37.727343', '-122.455356', 'Pretty Good', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(31, 15, 'Cactus Ball', '37.753015', '-122.411179', 'Not well', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(30, 24, 'Ferocactus', '37.719729', '-122.413935', 'Pretty Good', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(29, 20, 'Ferocactus', '37.708699', '-122.447851', 'Not bad', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(28, 16, 'Opuntia ', '37.725228', '-122.449806', 'Not bad', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(27, 23, 'Opuntia ', '37.762265', '--122.442411', 'Not bad', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(26, 7, 'Opuntia ', '37.745983', '-122.399586', 'Pretty Good', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(25, 2, 'Ferocactus', '37.721338', '-122.397614', 'Not bad', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(24, 20, 'Cactus Ball', '37.770505', '-122.409786', 'Not well', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(23, 17, 'Opuntia ', '37.733014', '-122.404822', 'Not well', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(22, 12, 'Prickly Pear', '37.768212', '-122.434077', 'Average ', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(21, 22, 'Bunny Ears', '37.774992', '-122.403203', 'Pretty Good', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(20, 25, 'Prickly Pear', '37.764101', '-122.423731', 'Not bad', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(19, 3, 'Cactus Ball', '37.738185', '-122.408593', 'Healthy', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(18, 20, 'Prickly Pear', '37.722892', '-122.429129', 'Not well', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(17, 27, 'Opuntia ', '37.706801', '-122.428397', 'Average ', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(16, 14, 'Bunny Ears', '37.765039', '-122.453803', 'Average ', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(15, 24, 'Bunny Ears', '37.794585', '-122.41344', 'Healthy', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(14, 3, 'Ferocactus', '37.742702', '-122.417045', 'Not bad', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(13, 11, 'Prickly Pear', '37.758779', '-122.440456', 'Healthy', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(12, 9, 'Ferocactus', '37.766621', '-122.42534', 'Average ', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(11, 22, 'Prickly Pear', '37.766061', '-122.399289', 'Healthy', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(10, 23, 'Ferocactus', '37.722207', '-122.439228', 'Not well', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(9, 12, 'Cactus Ball', '37.776213', '-122.399444', 'Pretty Good', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(8, 12, 'Cactus Ball', '37.745732', '-122.424336', 'Not bad', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(7, 27, 'Bunny Ears', '37.720504', '-122.414027', 'Pretty Good', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(6, 2, 'Opuntia ', '37.76128', '-122.405707', 'Not well', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(5, 15, 'Bunny Ears', '37.759858', '-122.447135', 'Pretty Good', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(4, 20, 'Prickly Pear', '37.756783', '-122.447397', 'Not well', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(3, 18, 'Bunny Ears', '37.767246', '-122.437326', 'Not bad', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(2, 3, 'Cactus Ball', '37.778973', '-122.408629', 'Pretty Good', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(42, 23, 'Bunny Ears', '37.747741', '-122.452952', 'Healthy', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(43, 14, 'Opuntia ', '37.739595', '-122.42222', 'Healthy', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(44, 28, 'Opuntia ', '37.728853', '-122.442895', 'Pretty Good', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(45, 5, 'Cactus Ball', '37.745351', '-122.452814', 'Healthy', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(46, 20, 'Bunny Ears', '37.779561', '-122.412148', 'Not well', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(47, 12, 'Prickly Pear', '37.727937', '-122.410206', 'Average ', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(48, 28, 'Opuntia ', '37.796613', '-122.430731', 'Pretty Good', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(49, 22, 'Ferocactus', '37.701965', '-122.451891', 'Not bad', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(50, 27, 'Cactus Ball', '37.755879', '-122.406281', 'Pretty Good', 'https://placehold.it/100x100', '2019-10-30 15:08:20'),
(51, 11, 'Prickly Pear', '37.771874', '-122.452791', 'Average ', 'https://placehold.it/100x100', '2019-10-30 15:08:20');

--
-- 转储表的索引
--

--
-- 表的索引 `track_locations`
--
ALTER TABLE `track_locations`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `track_locations`
--
ALTER TABLE `track_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
