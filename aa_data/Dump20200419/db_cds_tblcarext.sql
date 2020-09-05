CREATE DATABASE  IF NOT EXISTS `db_cds` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_cds`;
-- MySQL dump 10.13  Distrib 5.5.9, for Win32 (x86)
--
-- Host: localhost    Database: db_cds
-- ------------------------------------------------------
-- Server version	5.1.56-community

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
-- Table structure for table `tblcarext`
--

DROP TABLE IF EXISTS `tblcarext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcarext` (
  `ce_id` int(11) NOT NULL AUTO_INCREMENT,
  `vr_id` int(11) NOT NULL,
  `ce_foglight` varchar(10) DEFAULT NULL,
  `ce_rnscngviper` varchar(10) DEFAULT NULL,
  `ce_rerwndwviper` varchar(10) DEFAULT NULL,
  `ce_allywhl` varchar(10) DEFAULT NULL,
  `ce_rerspoiler` varchar(10) DEFAULT NULL,
  `ce_sunroof` varchar(10) DEFAULT NULL,
  `ce_otrfeatures` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ce_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcarext`
--

LOCK TABLES `tblcarext` WRITE;
/*!40000 ALTER TABLE `tblcarext` DISABLE KEYS */;
INSERT INTO `tblcarext` VALUES (47,2,'NO','NO','NO','NO','YES','NO','NA'),(48,3,'NO','NO','NO','YES','YES','NO','NA'),(49,5,'YES','YES','YES','YES','YES','YES','NA'),(50,4,'YES','YES','YES','YES','YES','NO','NA'),(51,6,'YES','YES','NO','NO','NO','NO','NA'),(52,7,'YES','YES','NO','NO','YES','NO',' NA'),(53,8,'YES','YES','YES','YES','YES','NO',' NA'),(54,9,'YES','YES','YES','YES','YES','YES',' NA'),(55,10,'NO','NO','YES','NO','NO','NO','NA'),(56,11,'NO','NO','YES','NO','YES','NO',' NA'),(57,12,'NO','NO','YES','YES','YES','NO',' NA'),(58,13,'NO','YES','YES','YES','YES','YES',' NA'),(59,17,'YES','YES','YES','YES','YES','YES','NA'),(60,21,'YES','YES','YES','YES','YES','YES','NA'),(61,25,'YES','YES','YES','YES','YES','YES',' NA'),(62,14,'YES','NO','NO','NO','YES','YES',' NA'),(63,15,'YES','NO','NO','YES','YES','YES',' NA'),(64,16,'YES','NO','YES','YES','YES','YES','NA'),(65,18,'YES','NO','NO','NO','NO','NO',' NA'),(66,19,'YES','NO','NO','YES','NO','NO',' NA'),(67,20,'YES','YES','YES','YES','YES','NO','NA'),(68,22,'NO','NO','NO','NO','NO','NO',' NA'),(69,23,'YES','NO','NO','NO','YES','NO','NA'),(70,23,'YES','YES','YES','YES','YES','NO','NA'),(71,24,'YES','YES','YES','YES','YES','YES',' NA');
/*!40000 ALTER TABLE `tblcarext` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-19 10:51:50
