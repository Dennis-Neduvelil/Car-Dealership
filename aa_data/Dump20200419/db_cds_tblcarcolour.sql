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
-- Table structure for table `tblcarcolour`
--

DROP TABLE IF EXISTS `tblcarcolour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcarcolour` (
  `cclr_id` int(11) NOT NULL AUTO_INCREMENT,
  `cn_id` int(11) DEFAULT NULL,
  `cclr_name` varchar(45) DEFAULT NULL,
  `cclr_code` varchar(45) DEFAULT NULL,
  `cclr_icon` varchar(500) DEFAULT NULL,
  `cclr_img` varchar(500) DEFAULT NULL,
  `cclr_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cclr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcarcolour`
--

LOCK TABLES `tblcarcolour` WRITE;
/*!40000 ALTER TABLE `tblcarcolour` DISABLE KEYS */;
INSERT INTO `tblcarcolour` VALUES (2,1,'Fire Red','sw-fr','../images/FormatFactoryfirered.jpg','../images/FormatFactoryfirered.jpg','Enabled'),(3,1,'Magma Grey','sw-mg','../images/FormatFactorymagma grey.jpg','../images/FormatFactorymagma grey.jpg','Enabled'),(4,1,'Midnight Blue',' sw-mb','../images/FormatFactorymidnight blue.jpg','../images/FormatFactorymidnight blue.jpg','Enabled'),(5,1,'Lucent Orange','sw-or','../images/FormatFactoryprime lucent orange.jpg','../images/FormatFactoryprime lucent orange.jpg','Disabled'),(6,5,'Magma Grey','xl-mg','../images/MAGMA GREY.png','../images/MAGMA GREY.png','Enabled'),(7,5,' Nexa Blue','xl-nb','../images/NEXA BLUE.png','../images/NEXA BLUE.png','Enabled'),(8,5,' Premium Silver',' xl-ps','../images/PREMIUM SILVER.png','../images/PREMIUM SILVER.png','Enabled'),(9,3,'Phoneix Red','bl-pr','../images/FormatFactoryPEARL PHOENIX RED.jpg','../images/FormatFactoryPEARL PHOENIX RED.jpg','Enabled'),(10,3,'Metalic Premium Silver','bl-mps','../images/FormatFactoryMETALLIC PREMIUM SILVER.jpg','../images/FormatFactoryMETALLIC PREMIUM SILVER.jpg','Enabled'),(11,3,'Autumn Orange','bl-ao','../images/FormatFactoryPREMIUM AUTUMN ORANGE.jpg','../images/FormatFactoryPREMIUM AUTUMN ORANGE.jpg','Enabled'),(12,2,'Metalic Dignity Brown','cz-mdb','../images/METALLIC DIGNITY BROWN.jpg','../images/METALLIC DIGNITY BROWN.jpg','Enabled'),(13,2,'Perl Midnight Black','cz-pl-mnb','../images/FormatFactoryPEARL MIDNIGHT BLACK.jpg','../images/FormatFactoryPEARL MIDNIGHT BLACK.jpg','Enabled'),(14,2,'Nexa Blue','cz-nb','../images/FormatFactoryNEXA BLUE.jpg','../images/FormatFactoryNEXA BLUE.jpg','Enabled'),(15,4,' Silky Silver','ig-ss','../images/silky silver.jpg','../images/silky silver.jpg','Enabled'),(16,4,'Turquoise Blue','ig-tb','../images/turquoise blue.jpg','../images/turquoise blue.jpg','Enabled'),(17,4,'Tinsel Blue With Silver','ig-tbs','../images/TINSEL BLUE WITH SILVER.jpg','../images/TINSEL BLUE WITH SILVER.jpg','Enabled'),(18,6,' Caffeine Brown','sc-cb','../images/sc caffeine brown.jpg','../images/sc caffeine brown.jpg','Enabled'),(19,6,'Perl White','sc-pw','../images/sc perl white.jpg','../images/sc perl white.jpg','Enabled'),(20,6,' Silver Metalic','sc-sm','../images/silver metalic.jpg','../images/silver metalic.jpg','Enabled');
/*!40000 ALTER TABLE `tblcarcolour` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-19 10:52:14
