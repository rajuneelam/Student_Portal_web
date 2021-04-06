-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: srs_db
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `B_no` char(4) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `gpa` decimal(3,2) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `bdate` datetime DEFAULT NULL,
  `deptname` varchar(4) NOT NULL,
  PRIMARY KEY (`B_no`),
  UNIQUE KEY `email` (`email`),
  CONSTRAINT `students_chk_1` CHECK ((`B_no` like _utf8mb4'B%')),
  CONSTRAINT `students_chk_2` CHECK ((`status` in (_utf8mb4'freshman',_utf8mb4'sophomore',_utf8mb4'junior',_utf8mb4'senior',_utf8mb4'MS',_utf8mb4'PhD'))),
  CONSTRAINT `students_chk_3` CHECK ((`gpa` between 0 and 4.0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('B001','Raju','Neelam','junior',3.17,'raju@gmail.com','1995-05-29 00:00:00','CS'),('B002','sai','maddu','senior',3.00,'sai@gmail.com','1989-05-28 00:00:00','Math'),('B003','krishna','kond','senior',4.00,'kri@gmail.com','1993-08-06 00:00:00','CS'),('B004','nandini','konda','junior',2.50,'nan@gmail.com','1991-10-18 00:00:00','Math'),('B005','nandhita','kondi','MS',3.20,'nani@gmail.com','1991-10-18 00:00:00','CS'),('B006','lashmi','konde','PhD',4.00,'lash@gmail.com','1988-06-15 00:00:00','Biol'),('B007','Radhi','maddu','senior',4.00,'rad@gmail.com','1992-11-12 00:00:00','CS'),('B008','sony','bhimi','freshman',NULL,'sony@gmail.com','1996-12-23 00:00:00','CS'),('B009','satish','yeli','MS',3.80,'sati@gmail.com','1992-03-18 00:00:00','Math'),('B010','anji','badam','MS',3.90,'anji@gmail.com','1990-10-12 00:00:00','CS'),('B011','teju','basam','PhD',4.00,'teju@gmail.com','1989-06-08 00:00:00','CS'),('B012','sharvan','Neelam','PhD',3.98,'shar@gmail.com','1991-07-29 00:00:00','Math');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-06 10:34:24
