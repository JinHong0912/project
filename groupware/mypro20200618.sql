-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: groupware
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `bid` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `boardContent` text,
  `boardType` varchar(20) DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `boardRegdate` datetime DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educationalpart`
--

DROP TABLE IF EXISTS `educationalpart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `educationalpart` (
  `ep_graduationDay` varchar(10) DEFAULT NULL,
  `ep_schoolName` varchar(20) DEFAULT NULL,
  `ep_major` varchar(20) DEFAULT NULL,
  `ep_grades` varchar(100) DEFAULT NULL,
  `ep_graduationStatus` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educationalpart`
--

LOCK TABLES `educationalpart` WRITE;
/*!40000 ALTER TABLE `educationalpart` DISABLE KEYS */;
/*!40000 ALTER TABLE `educationalpart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familypart`
--

DROP TABLE IF EXISTS `familypart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `familypart` (
  `fp_relation` varchar(10) DEFAULT NULL,
  `fp_name` varchar(20) DEFAULT NULL,
  `fp_dateBirth` varchar(20) DEFAULT NULL,
  `fp_job` varchar(100) DEFAULT NULL,
  `fp_motivation` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familypart`
--

LOCK TABLES `familypart` WRITE;
/*!40000 ALTER TABLE `familypart` DISABLE KEYS */;
/*!40000 ALTER TABLE `familypart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `militarypart`
--

DROP TABLE IF EXISTS `militarypart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `militarypart` (
  `mp_militaryGroup` varchar(10) DEFAULT NULL,
  `mp_militaryRank` varchar(10) DEFAULT NULL,
  `mp_enlistmentDate` varchar(20) DEFAULT NULL,
  `mp_dischargeDate` varchar(20) DEFAULT NULL,
  `mp_dischargeContents` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `militarypart`
--

LOCK TABLES `militarypart` WRITE;
/*!40000 ALTER TABLE `militarypart` DISABLE KEYS */;
/*!40000 ALTER TABLE `militarypart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualificationpart`
--

DROP TABLE IF EXISTS `qualificationpart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qualificationpart` (
  `qp_qualification` varchar(20) DEFAULT NULL,
  `qp_licenseName` varchar(30) DEFAULT NULL,
  `qp_dateAcquisition` varchar(20) DEFAULT NULL,
  `qp_organizationName` varchar(50) DEFAULT NULL,
  `qp_licenseContents` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualificationpart`
--

LOCK TABLES `qualificationpart` WRITE;
/*!40000 ALTER TABLE `qualificationpart` DISABLE KEYS */;
/*!40000 ALTER TABLE `qualificationpart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdetail`
--

DROP TABLE IF EXISTS `userdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userdetail` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `userDetail_id` int NOT NULL,
  `userName` varchar(20) NOT NULL,
  `userGender` int NOT NULL,
  `userBirth` varchar(20) DEFAULT NULL,
  `userPhone` char(15) NOT NULL,
  `extensionNumber` varchar(20) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `recruitment` int DEFAULT NULL,
  `hopeJob` varchar(200) DEFAULT NULL,
  `userHeight` varchar(15) DEFAULT NULL,
  `userWeight` varchar(20) DEFAULT NULL,
  `militaryService` int DEFAULT NULL,
  `religion` varchar(20) DEFAULT NULL,
  `userHobby` varchar(100) DEFAULT NULL,
  `userSpecialty` varchar(100) DEFAULT NULL,
  `disabledCk` int NOT NULL,
  `veteransCk` int DEFAULT NULL,
  `marriageCk` int DEFAULT NULL,
  `aboutMe` text,
  `userRegdate` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdetail`
--

LOCK TABLES `userdetail` WRITE;
/*!40000 ALTER TABLE `userdetail` DISABLE KEYS */;
INSERT INTO `userdetail` VALUES (1,1,'동물원',1,'123456789','123','123','123',123,'123','123','123',123,'123','123','123',123,123,123,'123','2020-06-18 17:30:43'),(2,0,'1',1,'1','1',NULL,'1',0,NULL,NULL,NULL,0,'0',NULL,NULL,0,0,0,NULL,'2020-06-18 18:19:47'),(3,0,'1',0,'1','1',NULL,'1',0,NULL,NULL,NULL,0,'0',NULL,NULL,0,0,0,NULL,'2020-06-18 18:20:27'),(4,0,'11',0,'1','1',NULL,'1',0,NULL,NULL,NULL,0,'0',NULL,NULL,0,0,0,NULL,'2020-06-18 18:21:02'),(5,0,'1',0,'1','11',NULL,'1',0,NULL,NULL,NULL,0,'0',NULL,NULL,0,0,0,NULL,'2020-06-18 18:22:35');
/*!40000 ALTER TABLE `userdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `userID` varchar(20) NOT NULL,
  `passwd` varchar(20) NOT NULL,
  `department` varchar(10) NOT NULL,
  `userRank` varchar(10) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `userEmail` varchar(50) DEFAULT NULL,
  `userPhone` char(15) NOT NULL,
  `auth` varchar(20) DEFAULT '일반',
  `userRegdate` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','1111','총관리부','관리자','관리자','admin@naver.com','010-0000-0000','관리자','2020-06-15 11:33:05'),(2,'aaaa','11','기획','사원','한글이다','www@wwwww','123-1234','중간관리자','2020-06-15 11:38:07'),(3,'ooo','11','기획','과장','김사람','EEE@naver.com','010-2222-2222','일반','2020-06-17 12:18:26'),(4,'111','11','관리','사원','기린','11','11','일반','2020-06-17 12:21:19'),(5,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:22:48'),(6,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:22:59'),(7,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:01'),(8,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:02'),(9,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:12'),(10,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:12'),(11,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:13'),(12,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:13'),(13,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:13'),(14,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:13'),(15,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:15'),(16,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:15'),(17,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:16'),(18,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:16'),(19,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:17'),(20,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:17'),(21,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:18'),(22,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:18'),(23,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:19'),(24,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:19'),(25,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:20'),(26,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:20'),(27,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:21'),(28,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:21'),(29,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:22'),(30,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:22'),(31,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:23'),(32,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:23'),(33,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:24'),(34,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:24'),(35,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:24'),(36,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:25'),(37,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:25'),(38,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:26'),(39,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:26'),(40,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:27'),(41,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:27'),(42,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:28'),(43,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:29'),(44,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:29'),(45,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:30'),(46,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:30'),(47,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:31'),(48,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:31'),(49,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:31'),(50,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:32'),(51,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:32'),(52,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:33'),(53,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:34'),(54,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:34'),(55,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:34'),(56,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:35'),(57,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:35'),(58,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:36'),(59,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:36'),(60,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:37'),(61,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:37'),(62,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:38'),(63,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:38'),(64,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:39'),(65,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:39'),(66,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:39'),(67,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','일반','2020-06-18 09:23:40'),(68,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','중간관리자','2020-06-18 09:23:40'),(69,'test','1234','관리','사원','테스트','test @ test.com','010-1234-1234','중간관리자','2020-06-18 09:23:41');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workingpart`
--

DROP TABLE IF EXISTS `workingpart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workingpart` (
  `wp_workingDate` varchar(20) DEFAULT NULL,
  `wp_workingDepartment` varchar(25) DEFAULT NULL,
  `wp_workingSpot` varchar(20) DEFAULT NULL,
  `wp_responsibilities` varchar(100) DEFAULT NULL,
  `wp_workingContents` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workingpart`
--

LOCK TABLES `workingpart` WRITE;
/*!40000 ALTER TABLE `workingpart` DISABLE KEYS */;
/*!40000 ALTER TABLE `workingpart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-18 18:28:59
