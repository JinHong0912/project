-- MySQL dump 10.13  Distrib 8.0.19, for osx10.15 (x86_64)
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
-- Table structure for table `groupBoard`
--

DROP TABLE IF EXISTS `groupBoard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groupBoard` (
  `bid` int NOT NULL AUTO_INCREMENT,
  `grpboard_subject` varchar(300) NOT NULL,
  `grpboard_writer` varchar(20) NOT NULL,
  `grpboard_userDepartment` varchar(20) DEFAULT NULL,
  `grpboard_userRank` varchar(20) DEFAULT NULL,
  `grpboard_userEamil` varchar(30) DEFAULT NULL,
  `grpboard_type` varchar(30) DEFAULT NULL,
  `grpboard_content` text,
  `grpboard_regdate` datetime DEFAULT NULL,
  `grpboard_hit` int DEFAULT NULL,
  `grpboard_fileName` varchar(300) DEFAULT NULL,
  `grpboard_fileOriName` varchar(300) DEFAULT NULL,
  `grpboard_fileUrl` varchar(300) DEFAULT NULL,
  `grpboard_ref` int DEFAULT NULL,
  `grpboard_re_step` int DEFAULT NULL,
  `grpboard_re_level` int DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupBoard`
--

LOCK TABLES `groupBoard` WRITE;
/*!40000 ALTER TABLE `groupBoard` DISABLE KEYS */;
INSERT INTO `groupBoard` VALUES (1,'테스트입니다','김그린','인사1팀','사원','email@nnnn.com','공지사항','게시판 테스트입니다',NULL,1,'1','1','1',1,1,1);
/*!40000 ALTER TABLE `groupBoard` ENABLE KEYS */;
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
-- Table structure for table `newDetailInfo`
--

DROP TABLE IF EXISTS `newDetailInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newDetailInfo` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `udid` int NOT NULL,
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
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newDetailInfo`
--

LOCK TABLES `newDetailInfo` WRITE;
/*!40000 ALTER TABLE `newDetailInfo` DISABLE KEYS */;
INSERT INTO `newDetailInfo` VALUES (1,0,'0','11','0','0',NULL,'0','111',NULL,'11','11','11','0','0',NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,0,'0','11','0','0',NULL,'0','111',NULL,'11','11','11','0','0',NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,'0','11','0','0',NULL,'0','111',NULL,'11','11','11','0','0',NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,77,'0','11','0','0',NULL,'0','111',NULL,'11','11','11','0','0',NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,78,'1','3','0','0',NULL,'0','123123',NULL,'놀고먹기','181','65','1','1',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,79,'0','20201225','0','0',NULL,'0','123-1234',NULL,'놀고먹기','123','12','0','2',NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,80,'0','11','0','0',NULL,'0','1',NULL,'11','11','','0','0',NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `newDetailInfo` ENABLE KEYS */;
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
  `companyNumber` varchar(30) NOT NULL,
  `userRegdate` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','1111','총관리부','관리자','관리자','admin@naver.com','010-0000-0000','관리자','','2020-06-15 11:33:05'),(2,'aaaa','11','기획','사원','한글이다','www@wwwww','123-1234','중간관리자','','2020-06-15 11:38:07'),(3,'ooo','11','기획','과장','김사람','EEE@naver.com','010-2222-2222','일반','','2020-06-17 12:18:26'),(4,'111','11','관리','사원','기린','11','11','일반','','2020-06-17 12:21:19'),(70,'hhh','11','인사','사원','인사','1111','1111','일반','','2020-06-19 09:15:43'),(71,'11','111','0','0','1111','11111','11','일반','11','2020-06-19 17:49:14'),(72,'11','111','0','0','1111','11111','11','일반','11','2020-06-19 17:50:19'),(73,'11','111','0','0','1111','11111','11','일반','11','2020-06-19 17:52:08'),(74,'11','111','0','0','1111','11111','11','일반','11','2020-06-19 17:54:36'),(75,'11','111','0','0','1111','11111','11','일반','11','2020-06-19 18:04:34'),(76,'11','111','0','0','1111','11111','11','일반','11','2020-06-19 18:05:37'),(77,'11','111','0','0','1111','11111','11','일반','11','2020-06-19 18:06:10'),(78,'123','123','1','2','배은경','11111','01041111','일반','11111','2020-06-19 18:12:02'),(79,'ccc','123','0','0','김그린','zzz@naver.com','010-3322-2222','중간관리자','111','2020-06-20 15:19:32'),(80,'11','11111','2','2','ㅃ11','11111','11','관리자','ㅃㅂ','2020-06-20 15:21:55');
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

-- Dump completed on 2020-06-22  0:58:24
