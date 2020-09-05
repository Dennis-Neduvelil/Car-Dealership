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
-- Table structure for table `tbldealer`
--

DROP TABLE IF EXISTS `tbldealer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldealer` (
  `dl_id` int(11) NOT NULL AUTO_INCREMENT,
  `pl_id` int(11) DEFAULT NULL,
  `dl_name` varchar(45) DEFAULT NULL,
  `dl_cntnum` varchar(45) DEFAULT NULL,
  `dealer_email` varchar(45) DEFAULT NULL,
  `dl_address` varchar(500) DEFAULT NULL,
  `dl_sitelink` varchar(500) DEFAULT NULL,
  `dl_tstdrvlink` varchar(500) DEFAULT NULL,
  `dl_img1` varchar(500) DEFAULT NULL,
  `dl_img2` varchar(500) DEFAULT NULL,
  `dl_mapimg` varchar(500) DEFAULT NULL,
  `dt_id` int(11) DEFAULT NULL,
  `st_id` int(11) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `dl_desc` varchar(500) DEFAULT NULL,
  `dl_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`dl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldealer`
--

LOCK TABLES `tbldealer` WRITE;
/*!40000 ALTER TABLE `tbldealer` DISABLE KEYS */;
INSERT INTO `tbldealer` VALUES (1,1,'Indus Motors Koothattukulam','9988771122','induskklm@su.com','koothattukulam sai complex','https://www.indusmotor.com','https://www.indusmotor.com','../images/dealer1.jpg','../images/dealer2.jpg','../images/deal3.jpg',1,1,'suzuki',NULL,'Enabled');
/*!40000 ALTER TABLE `tbldealer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-19 10:51:58
