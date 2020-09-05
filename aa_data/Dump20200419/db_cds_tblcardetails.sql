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
-- Table structure for table `tblcardetails`
--

DROP TABLE IF EXISTS `tblcardetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcardetails` (
  `cd_id` int(11) NOT NULL AUTO_INCREMENT,
  `cd_name` varchar(45) DEFAULT NULL,
  `cd_year` varchar(45) DEFAULT NULL,
  `cn_id` int(11) DEFAULT NULL,
  `cd_type` varchar(45) DEFAULT NULL,
  `cd_warrenty` varchar(45) DEFAULT NULL,
  `car_image` varchar(500) DEFAULT NULL,
  `cd_seat` varchar(45) DEFAULT NULL,
  `cd_desc` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcardetails`
--

LOCK TABLES `tblcardetails` WRITE;
/*!40000 ALTER TABLE `tblcardetails` DISABLE KEYS */;
INSERT INTO `tblcardetails` VALUES (2,'sw-pl','2019',1,'Hatchback','3 Year/First 45000 kms','../images/FormatFactoryfirered.jpg','5 Seater',' Maruti offers dual front airbags, ISOFIX child seat anchors and ABS with EBD as standard across all variants of the Swift. Other features on offer include auto LED projector headlamps with LED DRLs, tail lamps with LED brake lights, and a 7-inch touchscreen infotainment system with Apple CarPlay and Android Auto compatibility.'),(3,'xl-pw','2019',5,'Premium','3 Year/First 45000 kms','../images/MAGMA GREY.png','7 Seater','The XL6 has been designed keeping in mind your diverse lifestyle demands, and integrates style, luxury, and comfort. From its powerful exterior to premium interior, everything about this premium 3 row MPV feels just right.'),(4,'bl-pw','2018',3,'Premium','3 Year/First 45000 kms','../images/FormatFactoryNEXA BLUE.jpg','5 Seater',' It is offered with standard safety features such as rear parking sensors, ABS with EBD, ISOFIX child seat anchors, and dual front airbags across all variants. Maruti also offers a rearview camera on the Baleno. It now gets LED projector headlamps and new alloy wheels. The Baleno sports a 7-inch touchscreen infotainment system with Apple CarPlay and Android Auto, auto climate control, push-button stop/start, and passive keyless entry.\r\n'),(5,'ig-pl','2018',4,'Hatchback','3 Year/First 45000 kms','../images/TINSEL BLUE WITH SILVER.jpg','4 Seater','The Ignis facelift is equipped with a host of features. It includes dual front airbags, ABS with EBD, ISOFIX child seat anchors, LED projector headlamps with daytime running lamps, 15-inch alloy wheels, 7-inch SmartPlay Studio touchscreen infotainment system'),(6,'cz-pl','2019',2,'Sedan','3 Year/First 45000 kms','../images/METALLIC DIGNITY BROWN.jpg','5 Seater','The Maruti Ciaz gets auto LED headlamps LED fog lamps, tail lamps with LED inserts on the outside. Theres even a 7 inch touchscreen infotainment system with Apple CarPlay and Android  auto climate control passive keyless entry system with push-button and leather upholstery and cruise control among others on the inside. For safety the Ciaz gets dual front airbags and ABS with EBD and ISOFIX child seat anchors speed alert system (SAS) and seatbelt reminder (SBR) as standard across the range.'),(7,'sc-pl','2018',6,'SUV','3 Year/First 45000 kms','../images/sc granite grey.jpg','5 Seater','NA');
/*!40000 ALTER TABLE `tblcardetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-19 10:51:57
