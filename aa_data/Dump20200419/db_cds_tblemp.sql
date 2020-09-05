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
-- Table structure for table `tblemp`
--

DROP TABLE IF EXISTS `tblemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemp` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `e_name` varchar(45) DEFAULT NULL,
  `e_usrnme` varchar(45) DEFAULT NULL,
  `e_pswrd` varchar(45) DEFAULT NULL,
  `e_address` varchar(100) DEFAULT NULL,
  `e_cntnum` varchar(45) DEFAULT NULL,
  `e_pincode` varchar(45) DEFAULT NULL,
  `e_landmark` varchar(45) DEFAULT NULL,
  `e_email` varchar(45) DEFAULT NULL,
  `e_other` varchar(200) DEFAULT NULL,
  `e_join` datetime DEFAULT NULL,
  `e_dob` datetime DEFAULT NULL,
  `e_gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblemp`
--

LOCK TABLES `tblemp` WRITE;
/*!40000 ALTER TABLE `tblemp` DISABLE KEYS */;
INSERT INTO `tblemp` VALUES (1,'Dennis Mathew','dnz@suzki.com','suzuki','Neduvelil House','9447383616','686667','Meat Products Of India','dennis@gmail.com','NA','2018-01-01 00:00:00','1997-11-26 00:00:00','Male'),(2,'Silju Joseph','silju@suzuki.com','suzuki','Udumbanattu House','9088744566','656664','Marika Church','silju@gmail.com','NA','2017-02-21 00:00:00','1990-03-22 00:00:00','Male'),(3,'Binu Sebastian','binu@suzuki.com','suzuki','Kulathukal House','9985642336','652525','MPI Edayar','binu@gmail.com','NA','2018-07-19 00:00:00','1992-10-23 00:00:00','Male'),(4,'N M Mathew','mathew@suzuki.com','suzuki','Neduvelil House','9446610763','686667','Meat Products Of India','mathew@gmail.com','NA','2018-01-01 00:00:00','1962-12-10 00:00:00','Male'),(5,'Thomas Jose','thomas@suzuki.com','suzuki','Chirakkal House','7874565112','655252','Chirakkal Post Office','thomas@gmail.com','NA','2020-01-01 00:00:00','2000-06-15 00:00:00','Male'),(6,'Stephan Nedumballi','stephan@suzuki.com','suzuki','Nedumballi House','8899554754','652523','Nedumballi Estate','stephan@gmail.com','NA','2018-03-01 00:00:00','1970-07-21 00:00:00','Male'),(7,'John Kurishinkal','john@suzuki.com','suzuki','Kurishinkal House','9953441234','652465','Kurishinkal Family Church','john@gmail.com','NA','2018-10-01 00:00:00','1985-12-25 00:00:00','Male'),(8,'Vincent Gomez','vincent@suzuki.com ','suzuki','Kunnappallil House','9985624153','666555','Nedumballi Estate','gomez@gmail.com','NA','2015-01-01 00:00:00','1990-07-10 00:00:00','Male'),(9,'Anakattil Chakochi','chakochi@suzuki.com','suzuki','Anakkattil House ','7785665422','652254','Anakattil Plantations','chakochi@gmail.com','NA','2013-06-13 00:00:00','1979-07-16 00:00:00','Male'),(10,'Joseph Alex','joseph@suzuki.com','suzuki','Njettor House','8785741555','656655','Njettor Hotels','joseph@gmail.com','NA ','2016-08-05 00:00:00','1974-10-27 00:00:00','Male');
/*!40000 ALTER TABLE `tblemp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-19 10:52:15
