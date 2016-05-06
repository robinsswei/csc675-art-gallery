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
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `img_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `src` text,
  PRIMARY KEY (`img_id`),
  UNIQUE KEY `img_id_UNIQUE` (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'https://upload.wikimedia.org/wikipedia/commons/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg'),(2,'http://www.dalipaintings.net/images/paintings/invisible-sleeping-woman-horse-lion.jpg'),(3,'http://media.nga.gov/public/objects/6/1/3/7/1/61371-primary-0-440x400.jpg'),(4,'https://en.wikipedia.org/wiki/Annunciation_(Fra_Angelico,_San_Marco)#/media/File:ANGELICO,_Fra_Annunciation,_1437-46_(2236990916).jpg'),(5,'https://upload.wikimedia.org/wikipedia/commons/a/ae/El_jard%C3%ADn_de_las_Delicias%2C_de_El_Bosco.jpg'),(6,'https://upload.wikimedia.org/wikipedia/commons/8/8a/Ad%C3%A9la%C3%AFde_Labille-Guiard_-_Self-Portrait_with_Two_Pupils_-_The_Metropolitan_Museum_of_Art.jpg'),(7,'https://upload.wikimedia.org/wikipedia/commons/8/8c/The_Anatomy_Lesson.jpg'),(8,'https://upload.wikimedia.org/wikipedia/commons/5/56/The_Thinker%2C_Rodin.jpg'),(9,'https://upload.wikimedia.org/wikipedia/commons/e/ec/Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg'),(10,'http://www.max-ernst.com/images/paintings/europe-after-rain.jpg'),(11,'https://upload.wikimedia.org/wikipedia/commons/6/6b/Gustav_Klimt_014.jpg'),(12,'https://upload.wikimedia.org/wikipedia/en/d/dd/The_Persistence_of_Memory.jpg'),(13,'https://upload.wikimedia.org/wikipedia/commons/3/3c/Botticelli-primavera.jpg'),(14,'https://upload.wikimedia.org/wikipedia/en/2/21/Metamorphosis_of_Narcissus.jpg'),(15,'https://upload.wikimedia.org/wikipedia/commons/0/06/Peter_Paul_Rubens_063.jpg'),(16,'https://upload.wikimedia.org/wikipedia/commons/f/f3/Albrecht_Altdorfer_-_Schlacht_bei_Issus_%28Alte_Pinakothek%2C_M%C3%BCnchen%29.jpg'),(17,'https://upload.wikimedia.org/wikipedia/en/1/11/Three_Studies_for_Figures_at_the_Base_of_a_Crucifixion.jpg'),(18,'https://upload.wikimedia.org/wikipedia/commons/0/0b/Sandro_Botticelli_-_La_nascita_di_Venere_-_Google_Art_Project_-_edited.jpg'),(19,'https://upload.wikimedia.org/wikipedia/commons/c/c2/Pieter_Bruegel_de_Oude_-_De_val_van_Icarus.jpg'),(20,'https://upload.wikimedia.org/wikipedia/commons/1/17/Gustave_Caillebotte_-_Paris_Street%3B_Rainy_Day_-_Google_Art_Project.jpg'),(21,'https://upload.wikimedia.org/wikipedia/commons/4/4d/1602-3_Caravaggio%2CSupper_at_Emmaus_National_Gallery%2C_London.jpg'),(22,'https://upload.wikimedia.org/wikipedia/commons/7/72/Mary_Cassatt_-_The_Child%27s_Bath_-_Google_Art_Project.jpg'),(23,'https://d32dm0rphc51dk.cloudfront.net/XcE7t0LKbL4qmYWOBnGvlw/large.jpg'),(24,'https://upload.wikimedia.org/wikipedia/commons/6/66/Eug%C3%A8ne_Delacroix_-_Le_Massacre_de_Scio.jpg'),(25,'https://upload.wikimedia.org/wikipedia/commons/4/48/Max_Schmitt_in_a_Single_Scull.jpg'),(26,'https://d32dm0rphc51dk.cloudfront.net/WO1Ksr4FSsV2d_9j_qgZTg/large.jpg'),(27,'https://upload.wikimedia.org/wikipedia/commons/2/2d/Virgin_with_Chancellor_Rolin_Luber.jpg'),(28,'https://upload.wikimedia.org/wikipedia/commons/0/0c/Caspar_David_Friedrich_-_Das_Eismeer_-_Hamburger_Kunsthalle_-_02.jpg'),(29,'https://d32dm0rphc51dk.cloudfront.net/tsKe7z21cWvfOAOTC_vwBQ/large.jpg'),(30,'https://upload.wikimedia.org/wikipedia/commons/1/15/JEAN_LOUIS_TH%C3%89ODORE_G%C3%89RICAULT_-_La_Balsa_de_la_Medusa_%28Museo_del_Louvre%2C_1818-19%29.jpg');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
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
