-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主机： localhost:3306
-- 生成日期： 2019-12-17 16:16:13
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
-- 表的结构 `track_users`
--

CREATE TABLE `track_users` (
  `id` int(12) NOT NULL,
  `username` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(32) NOT NULL,
  `img` varchar(128) NOT NULL,
  `uname` varchar(32) NOT NULL,
  `bio` text NOT NULL,
  `locations` varchar(128) NOT NULL,
  `amount` int(32) NOT NULL,
  `achievement` varchar(1024) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `track_users`
--

INSERT INTO `track_users` (`id`, `username`, `email`, `password`, `img`, `uname`, `bio`, `locations`, `amount`, `achievement`) VALUES
(1, 'user1', 'user1@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'http://yuanye940702.com/wnm617/mo15/img/people2.png', 'Stacy Luth', 'Minim aute ut nisi proident velit tempor cillum voluptate.', '', 0, 'http://yuanye940702.com/wnm617/mo15/img/people2.png'),
(2, 'user2', 'user2@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'http://yuanye940702.com/wnm617/mo15/img/people1.png', 'Velez Martin', 'Minim aute ut nisi proident velit tempor cillum voluptate.', 'function(){return c.getItem(\"cities\")}', 5, 'http://yuanye940702.com/wnm617/mo15/img/people1.png'),
(3, 'user3', 'user3@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'http://yuanye940702.com/wnm617/mo15/img/people2.png', 'Gallegos Neal', 'Mollit cillum occaecat excepteur commodo et non.', 'function(){return c.getItem(\"cities\")}', 8, 'http://yuanye940702.com/wnm617/mo15/img/people2.png'),
(4, 'user4', 'user4@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'http://yuanye940702.com/wnm617/mo15/img/people1.png', 'Ellis Jensen', 'Enim dolore consectetur reprehenderit officia qui enim.', 'function(){return c.getItem(\"cities\")}', 8, 'http://yuanye940702.com/wnm617/mo15/img/people1.png'),
(5, 'user5', 'user5@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'http://yuanye940702.com/wnm617/mo15/img/people2.png', 'Guy Dalton', 'Do aute irure adipisicing sunt labore excepteur velit dolore velit commodo tempor.', 'function(){return c.getItem(\"cities\")}', 14, 'http://yuanye940702.com/wnm617/mo15/img/people2.png'),
(6, 'user6', 'user6@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'http://yuanye940702.com/wnm617/mo15/img/people1.png', 'Myrtle Prince', 'Sunt dolore enim non esse exercitation ut ullamco.', 'function(){return c.getItem(\"cities\")}', 11, 'http://yuanye940702.com/wnm617/mo15/img/people1.png'),
(7, 'user7', 'user7@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'http://yuanye940702.com/wnm617/mo15/img/people2.png', 'Nettie Jordan', 'Ex proident incididunt cupidatat ipsum enim ad.', 'function(){return c.getItem(\"cities\")}', 13, 'http://yuanye940702.com/wnm617/mo15/img/people2.png'); 

--
-- 转储表的索引
--

--
-- 表的索引 `track_users`
--
ALTER TABLE `track_users`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `track_users`
--
ALTER TABLE `track_users`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
