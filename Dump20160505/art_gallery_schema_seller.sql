-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: art_gallery_schema
-- ------------------------------------------------------
-- Server version	5.7.11

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
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller` (
  `seller_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `seller_type` enum('Person','Organization') DEFAULT NULL,
  `organization_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `country` int(10) unsigned NOT NULL,
  PRIMARY KEY (`seller_id`),
  KEY `country_id_idx` (`country`),
  CONSTRAINT `country_id` FOREIGN KEY (`country`) REFERENCES `country` (`country_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (1,'Person','','Jimmy','He','','','',236),(2,'Organization','The Great Highway Gallery','','','(415) 680-3891','3649 Lawton St, San Francisco, CA 94122','info@thegreathighway.com',236),(3,'Person','','Robin','Wei','','123 25th Ave, China','robinsswei@gmail.com',46),(4,'Person','','Christopher','Dea','(707) 570-5369','777 Ice Street, Portland, OR, 97045','cdea@mail.sfsu.edu',236),(5,'Organization','Oriental Art Gallery','','','(415) 681-6448','1340 9th Ave, San Francisco, CA 94122','',236),(6,'Organization','Cherry Art Studio','','','(415) 661-1104','1444 Taraval Street, San Francisco, CA 94116','',236),(7,'Person','','JoAnne','Strickland','','','',235),(8,'Organization','Honey Hive Gallery','','','(612) 888-4483','4117 Judah Street, San Francisco, CA 94122','honeyhivegaller@gmail.com',236),(9,'Organization','Creativity Explored','','','(415) 863-2108','3245 16th Street, San Francisco, CA 94103','info@creativityexplored.org',236),(10,'Person','','John','Doe','(123) 456-7890','123 Smith Street, SanJose, CA ','',236),(11,'Organization','Conduit Gallery','','','(214) 939-0064','1626 Hi Line Dr # C, Dallas, TX','',236),(12,'Organization','Art 3 Gallery','','','(646) 331-3162','109 Ingraham St. Brooklyn, NY 11237','silas@art-3gallery.com',236);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-05 18:11:46
