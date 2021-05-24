-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主机： localhost:3306
-- 生成日期： 2019-12-17 16:15:58
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
-- 表的结构 `track_animals`
--

CREATE TABLE `track_animals` (
  `id` int(12) NOT NULL,
  `uid` int(12) NOT NULL,
  `name` varchar(32) NOT NULL,
  `img` varchar(128) NOT NULL,
  `type` varchar(64) NOT NULL,
  `breed` varchar(64) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `track_animals`
--

INSERT INTO `track_animals` (`id`, `uid`, `name`, `img`, `type`, `breed`, `description`) VALUES
(9, 4, 'Bella', 'http://yuanye940702.com/wnm617/mo15/img/dog1.png', 'Cactus Ball', 'Chihuahua', 'Quis labore sit ipsum commodo ipsum.'),
(8, 1, 'Charlie', 'http://yuanye940702.com/wnm617/mo15/img/dog1.png', 'Prickly Pear', 'Chow Chow', 'Non consequat nisi culpa consequat nisi cupidatat proident adipisicing occaecat.'),
(7, 7, 'Luna', 'http://yuanye940702.com/wnm617/mo15/img/dog1.png', 'Prickly Pear', 'Golden Retriever', 'Exercitation minim ea minim sunt aute exercitation ut pariatur anim.'),
(6, 5, 'Lucy', 'http://yuanye940702.com/wnm617/mo15/img/dog1.png', 'Prickly Pear', 'Corgi', 'Aliquip magna aliquip dolor aute nulla ut consequat dolore mollit pariatur elit laborum incididunt.'),
(5, 5, 'Max', 'http://yuanye940702.com/wnm617/mo15/img/dog2.png', 'Cactus Ball', 'Bichon Frise', 'Labore dolor anim et consectetur proident reprehenderit excepteur reprehenderit exercitation sint.'),
(4, 7, 'Bella', 'http://yuanye940702.com/wnm617/mo15/img/dog5.png', 'Ferocactus', 'Yorkshire Terrier', 'Aute cupidatat esse eu dolor dolore minim minim.'),
(3, 4, 'Bailey', 'http://yuanye940702.com/wnm617/mo15/img/dog2.png', 'Ferocactus', 'Poodle', 'Lorem culpa minim excepteur et officia cillum.'),
(2, 7, 'Cooper', 'http://yuanye940702.com/wnm617/mo15/img/dog2.png', 'Opuntia ', 'Husky', 'Ad quis fugiat ullamco ex ad exercitation nostrud dolor exercitation cupidatat quis dolor tempor.'),
(10, 3, 'Daisy', 'http://yuanye940702.com/wnm617/mo15/img/dog4.png', 'Prickly Pear', 'Labrador', 'Ut commodo ut tempor qui labore quis eiusmod labore ad voluptate esse deserunt laboris.'),
(11, 1, 'Sadie', 'http://yuanye940702.com/wnm617/mo15/img/dog2.png', 'Ferocactus', 'Akita', 'Ea consectetur cillum aliqua proident ad culpa aute laboris ex incididunt voluptate qui.'),
(12, 1, 'Molly', 'http://yuanye940702.com/wnm617/mo15/img/dog3.png', 'Opuntia ', 'Shihtzu', 'Laborum fugiat sit consequat aliquip occaecat id et labore minim elit laboris culpa duis fugiat.'),
(13, 6, 'Buddy', 'http://yuanye940702.com/wnm617/mo15/img/dog3.png', 'Bunny Ears', 'Samoyed', 'Mollit proident ex sint elit est.'),
(14, 1, 'Lola', 'http://yuanye940702.com/wnm617/mo15/img/dog4.png', 'Opuntia ', 'Japanese Spitzbn', 'Dolore amet voluptate sit ullamco incididunt dolor consectetur eiusmod tempor dolore nisi.'),
(15, 4, 'Stella', 'http://yuanye940702.com/wnm617/mo15/img/dog3.png', 'Ferocactus', 'Teddy', 'Aliquip ut sit nisi dolore.'),
(16, 6, 'Tucker', 'http://yuanye940702.com/wnm617/mo15/img/dog1.png', 'Opuntia ', 'Bulldog', 'Magna do nostrud occaecat fugiat aliqua elit deserunt aliquip cupidatat non nulla fugiat.'),
(17, 4, 'Bentley', 'http://yuanye940702.com/wnm617/mo15/img/dog4.png', 'Cactus Ball', 'Pomeranian', 'Reprehenderit consequat ad laboris non reprehenderit esse magna ipsum veniam dolore do deserunt.'),
(18, 1, 'Zoey', 'http://yuanye940702.com/wnm617/mo15/img/dog5.png', 'Prickly Pear', 'Golden Retriever', 'Velit eiusmod eiusmod sint culpa magna.'),
(19, 3, 'Harley', 'http://yuanye940702.com/wnm617/mo15/img/dog2.png', 'Bunny Ears', 'Husky', 'Nulla excepteur Lorem ut esse cillum anim adipisicing.'),
(20, 2, 'Maggie', 'http://yuanye940702.com/wnm617/mo15/img/dog3.png', 'Opuntia ', 'Corgi', 'Deserunt cillum sunt commodo nisi officia tempor veniam pariatur consectetur.'),
(21, 7, 'Riley', 'http://yuanye940702.com/wnm617/mo15/img/dog3.png', 'Ferocactus', 'Poodle', 'Sunt aliqua veniam adipisicing deserunt aliquip.'),
(22, 2, 'Bear', 'http://yuanye940702.com/wnm617/mo15/img/dog1.png', 'Bunny Ears', 'Chihuahua', 'Nostrud Lorem nulla do eiusmod consectetur velit sit incididunt est ut cillum.'),
(23, 7, 'Sophie', 'http://yuanye940702.com/wnm617/mo15/img/dog4.png', 'Bunny Ears', 'Akita', 'Ad voluptate labore nulla officia do.'),
(24, 3, 'Duke', 'http://yuanye940702.com/wnm617/mo15/img/dog1.png', 'Cactus Ball', 'Teddy', 'Sint dolor excepteur aliqua laborum duis commodo ea sit fugiat ut laboris elit.'),
(25, 1, 'Jax', 'http://yuanye940702.com/wnm617/mo15/img/dog6.png', 'Cactus Ball', 'Golden Retriever', 'Laborum culpa enim laborum aute reprehenderit esse sit voluptate qui voluptate.'),
(26, 1, 'Oliver', 'http://yuanye940702.com/wnm617/mo15/img/dog7.png', 'Cactus Ball', 'Samoyed', 'Nisi dolor Lorem dolor aliquip quis mollit.');

--
-- 转储表的索引
--

--
-- 表的索引 `track_animals`
--
ALTER TABLE `track_animals`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `track_animals`
--
ALTER TABLE `track_animals`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
