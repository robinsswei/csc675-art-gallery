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
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artist` (
  `artist_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `status` enum('alive','dead') DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `background` text,
  `phone_no` varchar(50) DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL,
  PRIMARY KEY (`artist_id`),
  UNIQUE KEY `artist_id_UNIQUE` (`artist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (1,'Van','Gogh','male','dead','157','1853-05-30','Vincent Willem van Gogh was a Dutch post-Impressionist painter whose work had far-reaching influence on 20th-century art. His output includes portraits, self portraits, landscapes, still lifes, olive trees and cypresses, wheat fields and sunflowers.','',''),(2,'Salvador','Dali','male','dead','209','1904-05-11','Salvador Domingo Felipe Jacinto Dalí i Domènech, Marqués de Dalí de Pubol (11 May 1904 – 23 January 1989), known as Salvador Dalí was a prominent Spanish surrealist painter born in Figueres, Catalonia, Spain.','',''),(3,'Fra','Angelico','male','dead','110','1395-01-01','Fra Angelico (bornGuido di Pietro; c. 1395 – February 18, 1455) was an EarlyItalian Renaissancepainter described byVasari in his Lives of the Artists as having \"a rare and perfect talent\".','',''),(4,'Hieronymus','Bosch','male','dead','157','1903-12-20','Hieronymus Bosch born Jheronimus van Akenc. 1450 – 9 August 1516) was an Early Netherlandish painter. His work is known for its fantastic imagery, detailed landscapes, and illustrations of religious concepts and narratives','',''),(5,'Michelangelo','Caravaggio','male','dead','110','1571-09-29','Michelangelo Merisi da Caravaggio was an Italian painter active in Rome, Naples, Malta, and Sicily between 1592 and 1610.','',''),(6,'Rembrandt','Rijn','male','dead','157','1606-07-15','Rembrandt Harmenszoon van Rijn was a Dutch painter and etcher. He is generally considered one of the greatest painters and printmakers in European art and the most important in Dutch history.','',''),(7,'Auguste','Rodin','male','dead','76','1840-11-12','François Auguste René Rodin, known as Auguste Rodin, was a French sculptor. Although Rodin is generally considered the progenitor of modern sculpture, he did not set out to rebel against the past.','',''),(9,'Leonardo','Vinci','male','dead','110','1452-04-15','Leonardo di ser Piero da Vinci, more commonly Leonardo da Vinci or simply Leonardo, was an Italian polymath whose areas of interest included invention, painting, sculpting, architecture, science, music, mathematics, engineering, literature, anatomy, geology, astronomy, botany, writing, history, and cartography. He has been variously called the father of paleontology, ichnology, and architecture, and is widely considered one of the greatest painters of all time.','',''),(10,'Max','Ernst','male','dead','83','1891-04-02','Max Ernst was a German painter, sculptor, graphic artist, and poet. A prolific artist, Ernst was a primary pioneer of the Dada movement and Surrealism.','',''),(11,'Gustav','Klimt','male','dead','15','1862-07-14','Gustav Klimt was an Austrian symbolist painter and one of the most prominent members of the Vienna Secession movement. Klimt is noted for his paintings, murals, sketches, and other objets d\'art.','',''),(12,'Sandro','Botticelli','male','dead','110','1445-03-01','Alessandro di Mariano di Vanni Filipepi, known as Sandro Botticelli, was an Italian painter of the Early Renaissance.','',''),(13,'Peter','Ruben','male','dead','83','1577-06-28','Sir Peter Paul Rubens was a Flemish Baroque painter. A proponent of an extravagant Baroque style that emphasized movement, colour, and sensuality, Rubens is well known for his Counter-Reformation altarpieces, portraits, landscapes, and history paintings of mythological and allegorical subjects.','',''),(14,'Albrecht','Altdorfer','male','dead','83','1904-01-19','Albrecht Altdorfer was a German painter, engraver and architect of the Renaissance working in Regensburg. Along with Lucas Cranach the Elder and Wolf Huber he is regarded to be the main representative of the so-called Danube School setting biblical and historical subjects against landscape backgrounds of expressive colours.','',''),(15,'Francis','Bacon','male','dead','235','1561-01-22','Francis Bacon, 1st Viscount St Alban was an English philosopher, statesman, scientist, jurist, orator, and author. He served both as Attorney General and as Lord Chancellor of England. After his death, he remained extremely influential through his works, especially as philosophical advocate and practitioner of the scientific method during the scientific revolution.','',''),(16,'Gustave','Caillebotte','male','dead','76','1848-08-19','Gustave Caillebotte was a French painter, member and patron of the artists known as Impressionists, although he painted in a much more realistic manner than many other artists in the group. Caillebotte was noted for his early interest in photography as an art form.','',''),(17,'Claire ','Colette','female','alive','236','1905-06-02','Born in Reims, France to a French mother and an American father, the artist (who has lived in the US since the age of 6) holds dual citizenship. Her given last name is Droney. Colette is her middle name. Colette grew up in the suburbs of Los Angeles, where she did her undergraduate work at the Art Institute of Los Angeles. She moved to San Francisco in 2004 and attended Mills College where she received her MFA in Painting in 2013. She is represented by K. Imperial Fine Art, San Francisco. (2013)','(415)123-4567','claire@clairecolette.com'),(18,'Linda','Karshan','female','alive','236','1905-04-30','Guided by what she calls her “inner choreography,” Linda Karshan makes spare, monochromatic, abstract prints and drawings that serve as direct reflections of the process of their making. Though she began her career producing expressive compositions, in 1994 she developed a performance-based method for making work, in which every mark is associated with her rhythmic and regulated breathing, her counter-clockwise turning of the paper, the motion of her entire body, and the musical way in which she counts off increments of time. Based on her studies of psychology and Plato’s theory that the universe is ordered numerically, Karshan’s method results in iterative images of intersecting lines, forming grids, geometric shapes and patterns, and, sometimes, ordered yet loosely scribbled marks repeating across the page.','',''),(19,'Takashi','Murakami','male','alive','112','1962-02-01','Takashi Murakami is an internationally prolific contemporary Japanese artist. He works in fine arts media—such as painting and sculpture—as well as what is conventionally considered commercial media —fashion, merchandise, and animation— and is known for blurring the line between high and low arts. ','',''),(20,'Adélaïde','Labille-Guiard','female','dead','76','1749-04-11','Adélaïde Labille-Guiard also known as Adélaïde Labille-Guiard des Vertus, was a French miniaturist and portrait painter.','',''),(21,'Théodore','Géricault','male','dead','76','1791-09-26','Jean-Louis André Théodore Géricault was an influential French painter and lithographer, known for The Raft of the Medusa and other paintings. Although he died young, he was one of the pioneers of the Romantic movement.','',''),(22,'Jan','Eyck','male','dead','22','1903-10-21','Jan van Eyck was an Early Netherlandish painter active in Bruges and one of the most significant Northern Renaissance artists of the 15th century. Outside of the Ghent Altarpiece completed with his brother Hubert van Eyck, and the illuminated miniatures ascribed to Hand G—believed to be Jan—of the Turin-Milan Hours, about 20 surviving paintings are confidently attributed to him, all dated between 1432 and 1439. Ten, including the Ghent altarpiece, are dated and signed with a variation of his motto, ALS IK KAN (As I (Eyck) can) always written in Greek characters, transliterate as a pun on his name.He was highly influential and his techniques and style were quickly adopted and refined by Robert Campin and Rogier van der Weyden and later generations of Early Netherlandish painters.','',''),(23,'Caspar','Friedrich','male','dead','83','1774-09-05','Caspar David Friedrich was a 19th-century German Romantic landscape painter, generally considered the most important German artist of his generation.','',''),(24,'Thomas','Eakins','male','dead','236','1844-07-25','Thomas Cowperthwait Eakins was an American realist painter, photographer, sculptor, and fine arts educator. He is widely acknowledged to be one of the most important artists in American art history.','',''),(25,'Eugène','Delacroix','male','dead','76','1798-04-26','Ferdinand Victor Eugène Delacroix, 26 April 1798 – 13 August 1863, was a French Romantic artist regarded from the outset of his career as the leader of the French Romantic school.','',''),(26,'Mary','Cassatt','female','dead','236','1844-05-22','Mary Stevenson Cassatt was an American painter and printmaker. She was born in Pennsylvania, but lived much of her adult life in France, where she first befriended Edgar Degas and later exhibited among the Impressionists.','',''),(27,'Thomas','Eakins','male','dead','236','1844-07-25','Thomas Cowperthwait Eakins (July 25, 1844 – June 25, 1916) was an American realist painter, photographer, sculptor, and fine arts educator. He is widely acknowledged to be one of the most important artists in American art history.','',''),(28,'Pieter','Brugel','male','dead','157','1904-03-04','Pieter Bruegel (also Brueghel) the Elder ( c. 1525 – 9 September 1569) was a Netherlandish Renaissance painter and printmaker from Brabant, known for his landscapes and peasant scenes (so called genre painting). He is sometimes referred to as the \"Peasant Bruegel\". From 1559, he dropped the \'h\' from his name and signed his paintings as Bruegel.','','');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
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
