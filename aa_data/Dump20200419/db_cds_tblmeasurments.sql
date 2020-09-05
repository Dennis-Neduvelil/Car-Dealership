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
-- Table structure for table `tblmeasurments`
--

DROP TABLE IF EXISTS `tblmeasurments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmeasurments` (
  `cm_id` int(11) NOT NULL AUTO_INCREMENT,
  `cn_id` int(11) NOT NULL,
  `cm_crlength` varchar(45) DEFAULT NULL,
  `cm_crwidth` varchar(45) DEFAULT NULL,
  `cm_crheight` varchar(45) DEFAULT NULL,
  `cm_ftsize` varchar(45) DEFAULT NULL,
  `cm_rtsize` varchar(45) DEFAULT NULL,
  `cm_ground` varchar(45) DEFAULT NULL,
  `cm_other` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`cm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmeasurments`
--

LOCK TABLES `tblmeasurments` WRITE;
/*!40000 ALTER TABLE `tblmeasurments` DISABLE KEYS */;
INSERT INTO `tblmeasurments` VALUES (1,1,'3840 Mm','1735 Mm','1530 Mm','19 Mm','19 Mm','163 Mm','NA'),(2,5,'4100 Mm','1800 Mm','1680 Mm','20 Mm','20 Mm','170 Mm','NA'),(3,3,'3940 Mm','1715Mm','1532 Mm','19 Mm','19 Mm','170 Mm','NA'),(4,2,'4200 Mm','1735 Mm','1500 Mm','20 Mm','20 Mm','170 Mm','NA'),(5,4,'3640 Mm','1700 Mm','1530 Mm','18 Mm','18 Mm','170 Mm','NA'),(6,6,'3985 Mm','1739 Mm','1600 Mm','20Mm','20Mm','171 Mm','NA');
/*!40000 ALTER TABLE `tblmeasurments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-19 10:52:10
