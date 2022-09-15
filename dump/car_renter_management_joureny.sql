-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: car_renter_management
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `joureny`
--

DROP TABLE IF EXISTS `joureny`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `joureny` (
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `start_date` varchar(30) DEFAULT NULL,
  `end_date` varchar(30) DEFAULT NULL,
  `start_place` varchar(30) DEFAULT NULL,
  `end_place` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joureny`
--

LOCK TABLES `joureny` WRITE;
/*!40000 ALTER TABLE `joureny` DISABLE KEYS */;
INSERT INTO `joureny` VALUES ('akshay','190330131@klh.edu.in','2021-04-07','2021-04-07','Adilabad','Amritsar'),('akshay','190330131@klh.edu.in','2021-04-07','2021-04-30','Adilabad','Alwar'),('akshay','190330131@klh.edu.in','2021-04-07','2021-04-07','Aligarh','Amravati'),('akshay','190330131@klh.edu.in','2021-04-07','2021-04-07','Aligarh','Amravati'),('Aksdo','akshay95735@gmail.com','2022-05-16','2022-05-15','Ajmer','Almora'),('Aksdo','akshay95735@gmail.com','2022-05-15','2022-05-19','Ahmedabad','Amravati'),('M Akshaya','1903330141@klh.edu.in','2022-05-12','2022-05-28','Aizawl','Nizamabad'),('Sudheendra','sudheendramurugula@gmail.com','2022-05-21','2022-05-28','Allahabad','Balrampur'),('Prabhu','vanamaprabhushakthi@gmail.com','2022-05-13','2022-05-26','Hyderabad','Ahmednagar'),('sai','saichoppadandi42@gmail.com','2022-05-10','2022-05-15','Hyderabad','Adilabad'),('sai','saichoppadandi42@gmail.com','2022-05-10','2022-05-15','Hyderabad','Adilabad'),('sai','saichoppadandi42@gmail.com','2022-05-10','2022-05-15','Hyderabad','Adilabad');
/*!40000 ALTER TABLE `joureny` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-27 10:52:18
