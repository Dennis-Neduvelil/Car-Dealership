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
-- Table structure for table `tblcarsaftey`
--

DROP TABLE IF EXISTS `tblcarsaftey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcarsaftey` (
  `cs_id` int(11) NOT NULL AUTO_INCREMENT,
  `vr_id` int(11) NOT NULL,
  `cs_abs` varchar(10) DEFAULT NULL,
  `cs_cntrllck` varchar(10) DEFAULT NULL,
  `cs_chldlck` varchar(10) DEFAULT NULL,
  `cs_airbags` varchar(10) DEFAULT NULL,
  `cs_rercam` varchar(10) DEFAULT NULL,
  `cs_crashsncr` varchar(10) DEFAULT NULL,
  `cs_otrfeatures` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`cs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcarsaftey`
--

LOCK TABLES `tblcarsaftey` WRITE;
/*!40000 ALTER TABLE `tblcarsaftey` DISABLE KEYS */;
INSERT INTO `tblcarsaftey` VALUES (31,2,'YES','YES','YES','YES','YES','YES','CRUISE CONTROL'),(32,3,'YES','YES','YES','YES','YES','YES','CRUISE CONTROL'),(33,5,'YES','YES','YES','YES','YES','YES','CRUISE CONTROL'),(34,4,'YES','YES','YES','YES','YES','YES','CRUISE CONTROL'),(35,6,'YES','YES','YES','YES','NO','YES','NA'),(36,7,'YES','YES','YES','YES','NO','YES',' NA'),(37,8,'YES','YES','YES','YES','YES','YES',' NA'),(38,9,'YES','YES','YES','YES','YES','YES',' NA'),(39,10,'YES','YES','YES','YES','NO','YES','NA'),(40,11,'YES','YES','YES','YES','YES','YES',' NA'),(41,12,'YES','YES','YES','YES','YES','YES',' NA'),(42,13,'YES','YES','YES','YES','YES','YES',' NA'),(43,17,'YES','YES','YES','YES','YES','YES','NA'),(44,21,'YES','YES','YES','YES','YES','YES','NA '),(45,25,'YES','YES','YES','YES','YES','YES',' NA'),(46,14,'YES','YES','YES','YES','NO','YES','NA'),(47,15,'YES','YES','YES','YES','NO','YES',' NA'),(48,16,'YES','YES','YES','YES','YES','YES','NA'),(49,18,'YES','YES','YES','YES','NO','YES',' NA'),(50,19,'YES','YES','YES','YES','NO','YES','NA'),(51,20,'YES','YES','YES','YES','NO','YES','NA'),(52,22,'YES','YES','YES','YES','NO','YES',' NA'),(53,23,'YES','YES','YES','YES','NO','YES','NA'),(54,23,'YES','YES','YES','YES','YES','YES','NA'),(55,24,'YES','YES','YES','YES','YES','YES',' NA');
/*!40000 ALTER TABLE `tblcarsaftey` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-19 10:51:53
