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
-- Table structure for table `grp_board`
--

DROP TABLE IF EXISTS `grp_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_board` (
  `bid` int NOT NULL AUTO_INCREMENT,
  `grp_id` int NOT NULL,
  `grpBoard_subject` varchar(300) NOT NULL,
  `grpBoard_writer` varchar(20) NOT NULL,
  `grpBoard_boardContents` text,
  `grpBoard_boardType` varchar(20) DEFAULT NULL,
  `grpBoard_hit` int DEFAULT '0',
  `grpBoard_fileName` varchar(300) DEFAULT NULL,
  `grpBoard_fileOriName` varchar(300) DEFAULT NULL,
  `grpBoard_fileUrl` varchar(500) DEFAULT NULL,
  `grpboard_ref` int DEFAULT NULL,
  `grpboard_re_step` int DEFAULT NULL,
  `grpboard_re_level` int DEFAULT NULL,
  `grpBoard_boardRegdate` datetime DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_board`
--

LOCK TABLES `grp_board` WRITE;
/*!40000 ALTER TABLE `grp_board` DISABLE KEYS */;
INSERT INTO `grp_board` VALUES (1,0,'dewdewdew','1','<p>dewdewdewdw</p>\r\n',NULL,0,'Ti0FXxkyYGXl4hZW4C6oYpkxWInPjka6.png','group.png','/Users/jinhong/git/project/groupware/src/main/resources/static/allimg/',0,0,0,NULL),(2,0,'ㅃㅃㅃㅃㅃㅃㅃㅂ','1','<p>ㅃㅃㅃㅃㅃㅃㅃㅃㅂ</p>\r\n',NULL,0,'nfkjOEqoXQJWwuNU72mW7GM9RJjq2BSv.png','group.png','/Users/jinhong/git/project/groupware/src/main/resources/static/allimg/',0,0,0,NULL);
/*!40000 ALTER TABLE `grp_board` ENABLE KEYS */;
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
-- Table structure for table `newdetailinfo`
--

DROP TABLE IF EXISTS `newdetailinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newdetailinfo` (
  `udid` int NOT NULL AUTO_INCREMENT,
  `grp_userGender` varchar(10) NOT NULL,
  `grp_userBirth` varchar(20) DEFAULT NULL,
  `grp_lunarCalendar` varchar(20) DEFAULT NULL,
  `grp_extension` varchar(10) DEFAULT NULL,
  `grp_extensionNumber` varchar(20) DEFAULT NULL,
  `grp_tele` varchar(10) DEFAULT NULL,
  `grp_telephone` varchar(20) DEFAULT NULL,
  `grp_recruitment` varchar(20) DEFAULT NULL,
  `grp_hopeJob` varchar(200) DEFAULT NULL,
  `grp_userHeight` varchar(20) DEFAULT NULL,
  `grp_userWeight` varchar(20) DEFAULT NULL,
  `grp_militaryService` varchar(8) DEFAULT NULL,
  `grp_religion` varchar(8) DEFAULT NULL,
  `grp_userHobby` varchar(100) DEFAULT NULL,
  `grp_userSpecialty` varchar(100) DEFAULT NULL,
  `grp_disabledCk` varchar(20) NOT NULL,
  `grp_veteransCk` varchar(20) DEFAULT NULL,
  `grp_marriageCk` varchar(20) DEFAULT NULL,
  `grp_finalEducation` varchar(20) DEFAULT NULL,
  `grp_graduationYear` varchar(25) DEFAULT NULL,
  `grp_graduate` varchar(30) DEFAULT NULL,
  `grp_university` varchar(30) DEFAULT NULL,
  `grp_grades` varchar(20) DEFAULT NULL,
  `grp_graduation` text,
  `grp_aboutMe` text,
  `grp_userRegdate` datetime DEFAULT NULL,
  PRIMARY KEY (`udid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newdetailinfo`
--

LOCK TABLES `newdetailinfo` WRITE;
/*!40000 ALTER TABLE `newdetailinfo` DISABLE KEYS */;
INSERT INTO `newdetailinfo` VALUES (3,'남자','11','양력','051','11','051','1','인턴채용','11','개발자','80','병역필','무교','11','11','장애','비대상','미혼','졸업','11','11111111111111','11','11','1111111','11111111111111111','2020-06-25 10:29:24');
/*!40000 ALTER TABLE `newdetailinfo` ENABLE KEYS */;
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
  `companyNumber` int NOT NULL,
  `division` char(6) DEFAULT NULL,
  `userRegdate` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','1111','관리팀','부장','김관리','admin@naver.com','010-0000-0000','관리자',200001,'0','2020-06-25 10:20:37'),(2,'zoo','1111','기획팀','사원','dsadsa','dsadsa','dsadsa','일반',20,'1','2020-06-25 10:23:09'),(3,'dd','d11','기획팀','사원','11','11','11','일반',21,'1','2020-06-25 10:29:24'),(4,'aaaa','11','기획팀','대리','ㅇㅇㅇㅇ','11','11','일반',22,'0','2020-06-25 10:32:39'),(5,'rrr','11','기획팀','대리','ㅇㅇㅇ','11','11','일반',23,'0','2020-06-25 10:32:51'),(6,'rr','11','기획팀','사원','ㅇㅁㅇ','11','11','일반',24,'0','2020-06-25 10:33:04');
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

-- Dump completed on 2020-06-25 11:32:08
