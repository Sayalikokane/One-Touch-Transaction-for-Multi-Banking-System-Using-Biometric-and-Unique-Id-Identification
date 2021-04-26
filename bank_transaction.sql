CREATE DATABASE  IF NOT EXISTS `bank_transaction` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bank_transaction`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: bank_transaction
-- ------------------------------------------------------
-- Server version	5.6.22-log

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
-- Table structure for table `adminlogin`
--

DROP TABLE IF EXISTS `adminlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminlogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlogin`
--

LOCK TABLES `adminlogin` WRITE;
/*!40000 ALTER TABLE `adminlogin` DISABLE KEYS */;
INSERT INTO `adminlogin` VALUES (1,'admin@gmail.com','admin');
/*!40000 ALTER TABLE `adminlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES (1,'ICIC','8600180055','a@gmail.com','08/09/2018','nhijo','123456'),(2,'SBI','9585748522','sbi@gmail.com','08/09/2018','Gangapur road,nashik','123456'),(3,'icic','9587485563','b@gmail.co','09/11/2018','nashik','123456'),(4,'sbi','9587485563','shruti@gmail.com','09/12/2018','nashik','123456'),(5,'Mahabank-Matori','8600180045','mahabank@gmail.com','04/16/2019','Nashik','123456');
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banklogin`
--

DROP TABLE IF EXISTS `banklogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banklogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banklogin`
--

LOCK TABLES `banklogin` WRITE;
/*!40000 ALTER TABLE `banklogin` DISABLE KEYS */;
INSERT INTO `banklogin` VALUES (1,'bank@gmail.com','bank');
/*!40000 ALTER TABLE `banklogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cust_reg`
--

DROP TABLE IF EXISTS `cust_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cust_reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aadhar` varchar(200) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `pin` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`aadhar`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust_reg`
--

LOCK TABLES `cust_reg` WRITE;
/*!40000 ALTER TABLE `cust_reg` DISABLE KEYS */;
INSERT INTO `cust_reg` VALUES (1,'5956596332987787','Shruti Patil','shruti@gmail.com','9587485698','pethe nager, nashik','6303'),(2,'0154001545400548','harsha Patil','harsha@gmail.com','9857485748','nashik','6047'),(3,'123456789123','Gauresh','gauresh@gmail.com','8600180045','Nashik','5884');
/*!40000 ALTER TABLE `cust_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `ac` varchar(45) DEFAULT NULL,
  `aadhar` varchar(20) DEFAULT NULL,
  `branch` varchar(300) DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `bank` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'harsha','harsha@gmail.com',NULL,'98574858529','0154001545400548','pune',6200,'BOM'),(2,'shruti','patil@gmail.com','9587485585','15841548417','5956596332987787','ICIC, nashik',300,'SBI'),(3,'shruti','pooja@gmail.com','9587485585','56563262598','5956596332987787','SBI, nashik',6000,'ICIC'),(4,'shubhangi','s@gmail.com','9857455563','kmkdm','0101020202020545','icic',2000,'badoda'),(5,'pooja','pooja@gmail.com','9854516562','kmkdmvhvh','0101020202020545','sbi',5000,'BOI'),(7,'Shruti Nimbaji Patil','shruti@gmail.com','9857485220','22555541111','0202030509666666','SBI',0,'Gangapur road,nashik'),(8,'acss','admin@gmail.com','9587485685','95874563222','365200055500','bsbsjb',0,'SBI'),(9,'Gauresh Suryawanshi','gauresh@gmail.com','8600180045','123456789','123456789123','Matori',1000,'Mahabank-Matori'),(10,'Gauresh Suryawanshi','gauresh@gmail.com','8600180045','12456789','123456789123','Matori',4000,'ICIC');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_cse`
--

DROP TABLE IF EXISTS `register_cse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register_cse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `address` varchar(155) DEFAULT NULL,
  `latitude` varchar(45) DEFAULT NULL,
  `langitude` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_cse`
--

LOCK TABLES `register_cse` WRITE;
/*!40000 ALTER TABLE `register_cse` DISABLE KEYS */;
INSERT INTO `register_cse` VALUES (1,'harsha','harsha@gmail.com','12345','9584758596','nashik','20.000451677335498','null'),(2,'shruti','shruti@gmail.com','12345','9587485748','pethe nagar,nashik','19.99170044982386','null'),(3,'shruti','shruti@gmail.com','12345','9584758596','pethe nagar,nashik','19.99899989444387','73.79589697888184'),(4,'avc','s@gmail.com','12345','9587485563','nashik','null','null'),(5,'Gauresh','gauresh@gmail.com','123456','8600180045','Nashik','20.009980917640355','73.76426404607923');
/*!40000 ALTER TABLE `register_cse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp` (
  `id` varchar(45) NOT NULL,
  `fingerid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp`
--

LOCK TABLES `temp` WRITE;
/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
INSERT INTO `temp` VALUES ('1','0');
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-16 15:13:51
