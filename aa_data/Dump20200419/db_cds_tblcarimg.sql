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
-- Table structure for table `tblcarimg`
--

DROP TABLE IF EXISTS `tblcarimg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcarimg` (
  `cimg_id` int(11) NOT NULL AUTO_INCREMENT,
  `cn_id` int(11) DEFAULT NULL,
  `cimg_1` varchar(500) DEFAULT NULL,
  `cimg_2` varchar(500) DEFAULT NULL,
  `cimg_3` varchar(500) DEFAULT NULL,
  `cimg_4` varchar(500) DEFAULT NULL,
  `cimg_5` varchar(500) DEFAULT NULL,
  `cimg_6` varchar(500) DEFAULT NULL,
  `cimg_desc` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`cimg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcarimg`
--

LOCK TABLES `tblcarimg` WRITE;
/*!40000 ALTER TABLE `tblcarimg` DISABLE KEYS */;
INSERT INTO `tblcarimg` VALUES (2,1,'../images/FormatFactorysw 1.jpg','../images/FormatFactorysw 2.jpg','../images/FormatFactorysw 3.jpg','../images/FormatFactorysw 4.jpg','../images/FormatFactorysw 5.jpg','../images/FormatFactorysw 6.jpg','NA'),(3,5,'../images/FormatFactoryxl1.jpg','../images/FormatFactoryxl2.jpg','../images/FormatFactoryxl3.jpg','../images/FormatFactoryxl4.jpg','../images/FormatFactoryxl5.jpg','../images/FormatFactoryxl6.jpg','NA'),(4,3,'../images/FormatFactorybl1.jpg','../images/FormatFactorybl2.jpg','../images/FormatFactorybl3.jpg','../images/FormatFactorybl4.jpg','../images/FormatFactorybl5.jpg','../images/FormatFactorybl6.jpg','NA'),(5,2,'../images/FormatFactorycz1.jpg','../images/FormatFactorycz2.jpg','../images/FormatFactorycz3.jpg','../images/FormatFactorycz4.jpg','../images/FormatFactorycz5.jpg','../images/FormatFactorycz6.jpg','NA'),(6,4,'../images/FormatFactoryig1.jpg','../images/FormatFactoryig2.jpg','../images/FormatFactorycz3.jpg','../images/FormatFactorycz4.jpg','../images/FormatFactoryig5.jpg','../images/FormatFactoryig6.jpg','NA'),(7,6,'../images/sc 1.jpg','../images/sc 2.jpg','../images/sc 3.jpg','../images/sc 4.jpg','../images/sc 5.jpg','../images/sc 6.jpg',' NA');
/*!40000 ALTER TABLE `tblcarimg` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-19 10:52:12
