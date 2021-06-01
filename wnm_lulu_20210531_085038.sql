-- MySQL dump 10.13  Distrib 5.6.49, for Linux (x86_64)
--
-- Host: localhost    Database: wnm_lulu
-- ------------------------------------------------------
-- Server version	5.6.49-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `track_animals`
--

DROP TABLE IF EXISTS `track_animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `track_animals` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `uid` int(12) NOT NULL,
  `name` varchar(32) NOT NULL,
  `img` varchar(128) NOT NULL,
  `type` varchar(64) NOT NULL,
  `breed` varchar(64) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track_animals`
--

LOCK TABLES `track_animals` WRITE;
/*!40000 ALTER TABLE `track_animals` DISABLE KEYS */;
INSERT INTO `track_animals` VALUES (9,4,'Bella','http://yuanye940702.com/wnm617/mo15/img/dog1.png','Cactus Ball','Chihuahua','Quis labore sit ipsum commodo ipsum.'),(8,1,'Charlie','http://yuanye940702.com/wnm617/mo15/img/dog1.png','Prickly Pear','Chow Chow','Non consequat nisi culpa consequat nisi cupidatat proident adipisicing occaecat.'),(7,7,'Luna','http://yuanye940702.com/wnm617/mo15/img/dog1.png','Prickly Pear','Golden Retriever','Exercitation minim ea minim sunt aute exercitation ut pariatur anim.'),(6,5,'Lucy','http://yuanye940702.com/wnm617/mo15/img/dog1.png','Prickly Pear','Corgi','Aliquip magna aliquip dolor aute nulla ut consequat dolore mollit pariatur elit laborum incididunt.'),(5,5,'Max','http://yuanye940702.com/wnm617/mo15/img/dog2.png','Cactus Ball','Bichon Frise','Labore dolor anim et consectetur proident reprehenderit excepteur reprehenderit exercitation sint.'),(4,7,'Bella','http://yuanye940702.com/wnm617/mo15/img/dog5.png','Ferocactus','Yorkshire Terrier','Aute cupidatat esse eu dolor dolore minim minim.'),(3,4,'Bailey','http://yuanye940702.com/wnm617/mo15/img/dog2.png','Ferocactus','Poodle','Lorem culpa minim excepteur et officia cillum.'),(2,7,'Cooper','http://yuanye940702.com/wnm617/mo15/img/dog2.png','Opuntia ','Husky','Ad quis fugiat ullamco ex ad exercitation nostrud dolor exercitation cupidatat quis dolor tempor.'),(10,3,'Daisy','http://yuanye940702.com/wnm617/mo15/img/dog4.png','Prickly Pear','Labrador','Ut commodo ut tempor qui labore quis eiusmod labore ad voluptate esse deserunt laboris.'),(11,1,'Sadie','http://yuanye940702.com/wnm617/mo15/img/dog2.png','Ferocactus','Akita','Ea consectetur cillum aliqua proident ad culpa aute laboris ex incididunt voluptate qui.'),(12,1,'Molly','http://yuanye940702.com/wnm617/mo15/img/dog3.png','Opuntia ','Shihtzu','Laborum fugiat sit consequat aliquip occaecat id et labore minim elit laboris culpa duis fugiat.'),(13,6,'Buddy','http://yuanye940702.com/wnm617/mo15/img/dog3.png','Bunny Ears','Samoyed','Mollit proident ex sint elit est.'),(14,1,'Lola','http://yuanye940702.com/wnm617/mo15/img/dog4.png','Opuntia ','Japanese Spitzbn','Dolore amet voluptate sit ullamco incididunt dolor consectetur eiusmod tempor dolore nisi.'),(15,4,'Stella','http://yuanye940702.com/wnm617/mo15/img/dog3.png','Ferocactus','Teddy','Aliquip ut sit nisi dolore.'),(16,6,'Tucker','http://yuanye940702.com/wnm617/mo15/img/dog1.png','Opuntia ','Bulldog','Magna do nostrud occaecat fugiat aliqua elit deserunt aliquip cupidatat non nulla fugiat.'),(17,4,'Bentley','http://yuanye940702.com/wnm617/mo15/img/dog4.png','Cactus Ball','Pomeranian','Reprehenderit consequat ad laboris non reprehenderit esse magna ipsum veniam dolore do deserunt.'),(18,1,'Zoey','http://yuanye940702.com/wnm617/mo15/img/dog5.png','Prickly Pear','Golden Retriever','Velit eiusmod eiusmod sint culpa magna.'),(19,3,'Harley','http://yuanye940702.com/wnm617/mo15/img/dog2.png','Bunny Ears','Husky','Nulla excepteur Lorem ut esse cillum anim adipisicing.'),(20,2,'Maggie','http://yuanye940702.com/wnm617/mo15/img/dog3.png','Opuntia ','Corgi','Deserunt cillum sunt commodo nisi officia tempor veniam pariatur consectetur.'),(21,7,'Riley','http://yuanye940702.com/wnm617/mo15/img/dog3.png','Ferocactus','Poodle','Sunt aliqua veniam adipisicing deserunt aliquip.'),(22,2,'Bear','http://yuanye940702.com/wnm617/mo15/img/dog1.png','Bunny Ears','Chihuahua','Nostrud Lorem nulla do eiusmod consectetur velit sit incididunt est ut cillum.'),(23,7,'Sophie','http://yuanye940702.com/wnm617/mo15/img/dog4.png','Bunny Ears','Akita','Ad voluptate labore nulla officia do.'),(24,3,'Duke','http://yuanye940702.com/wnm617/mo15/img/dog1.png','Cactus Ball','Teddy','Sint dolor excepteur aliqua laborum duis commodo ea sit fugiat ut laboris elit.'),(25,1,'Jax','http://yuanye940702.com/wnm617/mo15/img/dog6.png','Cactus Ball','Golden Retriever','Laborum culpa enim laborum aute reprehenderit esse sit voluptate qui voluptate.'),(26,1,'Oliver','http://yuanye940702.com/wnm617/mo15/img/dog7.png','Cactus Ball','Samoyed','Nisi dolor Lorem dolor aliquip quis mollit.');
/*!40000 ALTER TABLE `track_animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `track_locations`
--

DROP TABLE IF EXISTS `track_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `track_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(12) NOT NULL,
  `type` varchar(128) NOT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `cactus_condition` text NOT NULL,
  `img` varchar(128) NOT NULL,
  `date_create` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track_locations`
--

LOCK TABLES `track_locations` WRITE;
/*!40000 ALTER TABLE `track_locations` DISABLE KEYS */;
INSERT INTO `track_locations` VALUES (41,11,'Prickly Pear',37.76509600,-122.41048100,'Average ','https://placehold.it/100x100','2019-10-30 15:08:20'),(40,24,'Prickly Pear',37.79237900,-122.39544100,'Not bad','https://placehold.it/100x100','2019-10-30 15:08:20'),(39,26,'Ferocactus',37.74433600,-122.44159000,'Not bad','https://placehold.it/100x100','2019-10-30 15:08:20'),(38,23,'Opuntia ',37.75437200,-122.39882600,'Healthy','https://placehold.it/100x100','2019-10-30 15:08:20'),(37,23,'Cactus Ball',37.71030900,-122.39561500,'Pretty Good','https://placehold.it/100x100','2019-10-30 15:08:20'),(36,25,'Bunny Ears',37.77463000,-122.40428600,'Pretty Good','https://placehold.it/100x100','2019-10-30 15:08:20'),(35,12,'Opuntia ',37.75736400,-122.40503300,'Not well','https://placehold.it/100x100','2019-10-30 15:08:20'),(34,3,'Ferocactus',37.75066700,-122.45414100,'Not bad','https://placehold.it/100x100','2019-10-30 15:08:20'),(33,27,'Cactus Ball',37.69668200,-122.43870200,'Not bad','https://placehold.it/100x100','2019-10-30 15:08:20'),(32,22,'Ferocactus',37.72734300,-122.45535600,'Pretty Good','https://placehold.it/100x100','2019-10-30 15:08:20'),(31,15,'Cactus Ball',37.75301500,-122.41117900,'Not well','https://placehold.it/100x100','2019-10-30 15:08:20'),(30,24,'Ferocactus',37.71972900,-122.41393500,'Pretty Good','https://placehold.it/100x100','2019-10-30 15:08:20'),(29,20,'Ferocactus',37.70869900,-122.44785100,'Not bad','https://placehold.it/100x100','2019-10-30 15:08:20'),(28,16,'Opuntia ',37.72522800,-122.44980600,'Not bad','https://placehold.it/100x100','2019-10-30 15:08:20'),(27,23,'Opuntia ',37.76226500,0.00000000,'Not bad','https://placehold.it/100x100','2019-10-30 15:08:20'),(26,7,'Opuntia ',37.74598300,-122.39958600,'Pretty Good','https://placehold.it/100x100','2019-10-30 15:08:20'),(25,2,'Ferocactus',37.72133800,-122.39761400,'Not bad','https://placehold.it/100x100','2019-10-30 15:08:20'),(24,20,'Cactus Ball',37.77050500,-122.40978600,'Not well','https://placehold.it/100x100','2019-10-30 15:08:20'),(23,17,'Opuntia ',37.73301400,-122.40482200,'Not well','https://placehold.it/100x100','2019-10-30 15:08:20'),(22,12,'Prickly Pear',37.76821200,-122.43407700,'Average ','https://placehold.it/100x100','2019-10-30 15:08:20'),(21,22,'Bunny Ears',37.77499200,-122.40320300,'Pretty Good','https://placehold.it/100x100','2019-10-30 15:08:20'),(20,25,'Prickly Pear',37.76410100,-122.42373100,'Not bad','https://placehold.it/100x100','2019-10-30 15:08:20'),(19,3,'Cactus Ball',37.73818500,-122.40859300,'Healthy','https://placehold.it/100x100','2019-10-30 15:08:20'),(18,20,'Prickly Pear',37.72289200,-122.42912900,'Not well','https://placehold.it/100x100','2019-10-30 15:08:20'),(17,27,'Opuntia ',37.70680100,-122.42839700,'Average ','https://placehold.it/100x100','2019-10-30 15:08:20'),(16,14,'Bunny Ears',37.76503900,-122.45380300,'Average ','https://placehold.it/100x100','2019-10-30 15:08:20'),(15,24,'Bunny Ears',37.79458500,-122.41344000,'Healthy','https://placehold.it/100x100','2019-10-30 15:08:20'),(14,3,'Ferocactus',37.74270200,-122.41704500,'Not bad','https://placehold.it/100x100','2019-10-30 15:08:20'),(13,11,'Prickly Pear',37.75877900,-122.44045600,'Healthy','https://placehold.it/100x100','2019-10-30 15:08:20'),(12,9,'Ferocactus',37.76662100,-122.42534000,'Average ','https://placehold.it/100x100','2019-10-30 15:08:20'),(11,22,'Prickly Pear',37.76606100,-122.39928900,'Healthy','https://placehold.it/100x100','2019-10-30 15:08:20'),(10,23,'Ferocactus',37.72220700,-122.43922800,'Not well','https://placehold.it/100x100','2019-10-30 15:08:20'),(9,12,'Cactus Ball',37.77621300,-122.39944400,'Pretty Good','https://placehold.it/100x100','2019-10-30 15:08:20'),(8,12,'Cactus Ball',37.74573200,-122.42433600,'Not bad','https://placehold.it/100x100','2019-10-30 15:08:20'),(7,27,'Bunny Ears',37.72050400,-122.41402700,'Pretty Good','https://placehold.it/100x100','2019-10-30 15:08:20'),(6,2,'Opuntia ',37.76128000,-122.40570700,'Not well','https://placehold.it/100x100','2019-10-30 15:08:20'),(5,15,'Bunny Ears',37.75985800,-122.44713500,'Pretty Good','https://placehold.it/100x100','2019-10-30 15:08:20'),(4,20,'Prickly Pear',37.75678300,-122.44739700,'Not well','https://placehold.it/100x100','2019-10-30 15:08:20'),(3,18,'Bunny Ears',37.76724600,-122.43732600,'Not bad','https://placehold.it/100x100','2019-10-30 15:08:20'),(2,3,'Cactus Ball',37.77897300,-122.40862900,'Pretty Good','https://placehold.it/100x100','2019-10-30 15:08:20'),(42,23,'Bunny Ears',37.74774100,-122.45295200,'Healthy','https://placehold.it/100x100','2019-10-30 15:08:20'),(43,14,'Opuntia ',37.73959500,-122.42222000,'Healthy','https://placehold.it/100x100','2019-10-30 15:08:20'),(44,28,'Opuntia ',37.72885300,-122.44289500,'Pretty Good','https://placehold.it/100x100','2019-10-30 15:08:20'),(45,5,'Cactus Ball',37.74535100,-122.45281400,'Healthy','https://placehold.it/100x100','2019-10-30 15:08:20'),(46,20,'Bunny Ears',37.77956100,-122.41214800,'Not well','https://placehold.it/100x100','2019-10-30 15:08:20'),(47,12,'Prickly Pear',37.72793700,-122.41020600,'Average ','https://placehold.it/100x100','2019-10-30 15:08:20'),(48,28,'Opuntia ',37.79661300,-122.43073100,'Pretty Good','https://placehold.it/100x100','2019-10-30 15:08:20'),(49,22,'Ferocactus',37.70196500,-122.45189100,'Not bad','https://placehold.it/100x100','2019-10-30 15:08:20'),(50,27,'Cactus Ball',37.75587900,-122.40628100,'Pretty Good','https://placehold.it/100x100','2019-10-30 15:08:20'),(51,11,'Prickly Pear',37.77187400,-122.45279100,'Average ','https://placehold.it/100x100','2019-10-30 15:08:20');
/*!40000 ALTER TABLE `track_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `track_users`
--

DROP TABLE IF EXISTS `track_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `track_users` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(32) NOT NULL,
  `img` varchar(128) NOT NULL,
  `uname` varchar(32) NOT NULL,
  `bio` text NOT NULL,
  `locations` varchar(128) NOT NULL,
  `amount` int(32) NOT NULL,
  `achievement` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track_users`
--

LOCK TABLES `track_users` WRITE;
/*!40000 ALTER TABLE `track_users` DISABLE KEYS */;
INSERT INTO `track_users` VALUES (1,'user1','user1@gmail.com','1a1dc91c907325c69271ddf0c944bc72','http://yuanye940702.com/wnm617/mo15/img/people2.png','Stacy Luth','Minim aute ut nisi proident velit tempor cillum voluptate.','',0,'http://yuanye940702.com/wnm617/mo15/img/people2.png'),(2,'user2','user2@gmail.com','1a1dc91c907325c69271ddf0c944bc72','http://yuanye940702.com/wnm617/mo15/img/people1.png','Velez Martin','Minim aute ut nisi proident velit tempor cillum voluptate.','function(){return c.getItem(\"cities\")}',5,'http://yuanye940702.com/wnm617/mo15/img/people1.png'),(3,'user3','user3@gmail.com','1a1dc91c907325c69271ddf0c944bc72','http://yuanye940702.com/wnm617/mo15/img/people2.png','Gallegos Neal','Mollit cillum occaecat excepteur commodo et non.','function(){return c.getItem(\"cities\")}',8,'http://yuanye940702.com/wnm617/mo15/img/people2.png'),(4,'user4','user4@gmail.com','1a1dc91c907325c69271ddf0c944bc72','http://yuanye940702.com/wnm617/mo15/img/people1.png','Ellis Jensen','Enim dolore consectetur reprehenderit officia qui enim.','function(){return c.getItem(\"cities\")}',8,'http://yuanye940702.com/wnm617/mo15/img/people1.png'),(5,'user5','user5@gmail.com','1a1dc91c907325c69271ddf0c944bc72','http://yuanye940702.com/wnm617/mo15/img/people2.png','Guy Dalton','Do aute irure adipisicing sunt labore excepteur velit dolore velit commodo tempor.','function(){return c.getItem(\"cities\")}',14,'http://yuanye940702.com/wnm617/mo15/img/people2.png'),(6,'user6','user6@gmail.com','1a1dc91c907325c69271ddf0c944bc72','http://yuanye940702.com/wnm617/mo15/img/people1.png','Myrtle Prince','Sunt dolore enim non esse exercitation ut ullamco.','function(){return c.getItem(\"cities\")}',11,'http://yuanye940702.com/wnm617/mo15/img/people1.png'),(7,'user7','user7@gmail.com','1a1dc91c907325c69271ddf0c944bc72','http://yuanye940702.com/wnm617/mo15/img/people2.png','Nettie Jordan','Ex proident incididunt cupidatat ipsum enim ad.','function(){return c.getItem(\"cities\")}',13,'http://yuanye940702.com/wnm617/mo15/img/people2.png'),(8,'rainbow','985781522@qq.com','e10adc3949ba59abbe56e057f20f883e','','','','',0,''),(9,'Lulu','luadvertise54@gmail.com','0eb46332e530ea385b5f0f43f45d7362','','','','',0,'');
/*!40000 ALTER TABLE `track_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-31  8:50:38
