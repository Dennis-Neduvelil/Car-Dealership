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
-- Table structure for table `tblplace`
--

DROP TABLE IF EXISTS `tblplace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblplace` (
  `pl_id` int(11) NOT NULL AUTO_INCREMENT,
  `st_id` int(11) DEFAULT NULL,
  `dt_id` int(11) DEFAULT NULL,
  `pl_location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblplace`
--

LOCK TABLES `tblplace` WRITE;
/*!40000 ALTER TABLE `tblplace` DISABLE KEYS */;
INSERT INTO `tblplace` VALUES (1,1,1,'Koothattukulam'),(2,1,1,'Piravom'),(3,1,1,'Muvattupuzha'),(4,1,1,'Vyttila'),(5,1,1,'Kaloor'),(6,1,1,'Maradu'),(7,1,2,'Thodupuzha'),(8,1,2,'Kattappana'),(9,1,2,'Adimali'),(10,1,2,'Munnar'),(11,1,2,'Devikulam'),(12,1,2,'Rajakkad'),(13,1,3,'Pala'),(14,1,3,'Ettumanoor'),(15,1,3,'Kozhuvanal'),(16,1,3,'Vaikom'),(17,1,3,'Changanassery'),(18,1,3,'Erattupetta'),(19,1,3,'Kuravilangad'),(20,1,4,'Neyyattinkara'),(21,1,4,'Varkkala'),(22,1,4,'Attingal'),(23,1,4,'Kilimanoor'),(24,1,4,'Nedumangad'),(25,1,4,'Kattakada'),(26,1,5,'Chalakudy'),(27,1,5,'Guruvayoor'),(28,1,5,'Irinjalakuda'),(29,1,5,'Kodungallur'),(30,1,5,'Chavakkad'),(31,1,5,'Kunnamkulam'),(32,1,6,'Tirur'),(33,1,6,'Kottakkal'),(34,1,6,'Karippur'),(35,1,6,'Manjeri'),(36,1,6,'Nilambur'),(37,1,6,'Perinthalmanna');
/*!40000 ALTER TABLE `tblplace` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-19 10:52:06
