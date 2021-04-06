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
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `classid` char(5) NOT NULL,
  `dept_code` varchar(4) NOT NULL,
  `course_no` smallint NOT NULL,
  `sect_no` tinyint DEFAULT NULL,
  `year` smallint DEFAULT NULL,
  `semester` varchar(8) DEFAULT NULL,
  `class_limit` smallint DEFAULT NULL,
  `class_size` smallint DEFAULT NULL,
  `room` varchar(10) DEFAULT NULL,
  `ta_B_no` char(4) DEFAULT NULL,
  PRIMARY KEY (`classid`),
  UNIQUE KEY `dept_code` (`dept_code`,`course_no`,`sect_no`,`year`,`semester`),
  CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`dept_code`, `course_no`) REFERENCES `courses` (`dept_code`, `course_no`) ON DELETE CASCADE,
  CONSTRAINT `classes_chk_1` CHECK ((`classid` like _utf8mb4'c%')),
  CONSTRAINT `classes_chk_2` CHECK ((`semester` in (_utf8mb4'Spring',_utf8mb4'Fall',_utf8mb4'Summer 1',_utf8mb4'Summer 2'))),
  CONSTRAINT `classes_chk_3` CHECK ((`class_size` <= `class_limit`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES ('c0001','CS',432,1,2018,'Fall',2,1,'LH 005','B005'),('c0002','Math',314,1,2018,'Spring',4,4,'LH 009','B012'),('c0003','Math',314,2,2018,'Spring',4,2,'LH 009','B009'),('c0004','CS',432,2,2018,'Fall',2,2,'SW 222','B005'),('c0005','CS',240,1,2017,'Spring',3,2,'LH 003','B010'),('c0006','CS',532,1,2018,'Fall',3,2,'LH 005','B011'),('c0007','Math',221,1,2017,'Fall',7,6,'WH 155',NULL),('c0008','CS',552,1,2018,'Fall',1,0,'EB R15',NULL),('c0009','CS',240,1,2018,'Fall',2,1,'EB R15',NULL);
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
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
