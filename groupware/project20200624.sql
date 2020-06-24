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
  `grp_userRegdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newdetailinfo`
--

LOCK TABLES `newdetailinfo` WRITE;
/*!40000 ALTER TABLE `newdetailinfo` DISABLE KEYS */;
INSERT INTO `newdetailinfo` VALUES (21,'남자','1990.09.11','음력','051','123-1234','051','123-1234','인턴채용','개발자','190','80','병역필','무교','개발자','','비장애','비대상','미혼','졸업','개발자','개발자','그','4.0','','','2020-06-24 16:00:12'),(21,'0',' 1990.09.11','0','051','',NULL,NULL,'인턴채용','개발자','','','병역필','무교','개발자','개발자','비장애','비대상','미혼','졸업','개발자','개발자','그','','개발자개발자개발자','개발자개발자개발자','2020-06-24 16:00:36'),(21,'0',' 1990.09.11','0','051','',NULL,NULL,'인턴채용','개발','','','병역필','무교','개발','개발','비장애','비대상','미혼','졸업','개발','개','그','','개발자개발자개발자','개발자개발자개발자','2020-06-24 16:01:00'),(20,'0',' ','0','051','',NULL,NULL,'인턴채용','','','','병역필','무교','','','비장애','비대상','미혼','졸업','','','','','','','2020-06-24 16:03:17'),(20,'0','  ','0','051','',NULL,NULL,'인턴채용','','','','병역필','무교','','','비장애','비대상','미혼','졸업','','','','','','','2020-06-24 16:04:45'),(22,'남자','ㅇㄴㅁ','양력','051','ㅇㄴㅁ','051','ㅇㄴㅁ','인턴채용','ㅇㄴㅁ','ㅇㄴㅁ','ㅇㄴㅁ','병역필','무교','ㅇㄴㅁ','ㅇㄴㅁ','비장애','비대상','미혼','졸업','ㅇㄴㅁ','ㅇㄴㅁ','ㅇㄴㅁ','ㅇㄴㅁ','ㅇㄴㅁ','ㅇㄴㅁ','2020-06-24 16:09:15'),(23,'0',' 123','0','051','132',NULL,NULL,'인턴채용','123','123','123','병역필','무교','123','123','비장애','비대상','미혼','졸업','123','123','123','123','123','123','2020-06-24 16:11:05'),(24,'0',' das','0','051','dsa',NULL,NULL,'인턴채용','dsa','a','a','병역필','무교','adsad','dsadsa','비장애','비대상','미혼','졸업','sada','dsa','dsa','sda','dsad','adad','2020-06-24 16:20:45'),(26,'남자','udvo','양력','051','udvo','051','udvo','인턴채용','udvo','','','병역필','무교','udvo','udvo','비장애','비대상','미혼','휴학','udvo','udvo','udvo','udvo','udvoudvoudvoudvoudvoudvoudvoudvoudvo','udvoudvoudvoudvoudvoudvoudvoudvoudvo','2020-06-24 16:30:02');
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
  `userRegdate` datetime DEFAULT NULL,
  `companyNumber` int NOT NULL,
  `division` char(6) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (19,'admin','1111','관리팀','부장','관리자','admin@naver.com','010-0000-0000','관리자','2020-06-24 15:56:43',200001,NULL),(20,'zoo','','인사팀','대리','김대리','zoo@naver.com','010-1234-1234','일반','2020-06-24 15:58:49',20100001,NULL),(21,'xoo','','기획팀','사원','이사원','xoo@gmail.com','010-3333-3333','일반','2020-06-24 16:00:12',20,NULL),(22,'ㅁㄴㅇ','ㅇㄴㅁㅇㄴㅁ','기획팀','사장','ㅇㄴㅁ','ㅇㄴㅁㅂㅇㄴㅁ','ㅇㄴㅁ','일반','2020-06-24 16:09:15',21,NULL),(23,'123','123123','기획팀','사원','ㅁㅂㄵㅂ','ㅂㅈㄷ','ㅂㅈㄷ','일반','2020-06-24 16:10:35',22,NULL),(24,'zzzz','dsadsadsa','인사팀','대리','ㅇㅇ','111','111','일반','2020-06-24 16:20:09',20100002,NULL),(25,'vvvv','11','인사팀','사원','야야야야','1111','1111','일반','2020-06-24 16:29:29',20100003,NULL),(26,'qqqq','111','기획팀','사원','udvo','udvo','udvo','일반','2020-06-24 16:30:02',23,NULL),(27,'55567','666','관리팀','대리','ㄴㄹㅇ','ㅁㅇㄴ','ㅁㄴㅇ','일반','2020-06-24 16:32:08',200002,NULL),(28,'hh','hh','인사팀','사원','ㅗㅗ','ㅓㅓ','ㅓㅓ','일반','2020-06-24 16:33:43',20100004,NULL),(29,'677888','888','기획팀','차장','구ㅡㅁ','7677','777','일반','2020-06-24 16:35:17',24,'0'),(30,'53873','88','관리팀','사원','ㅗㅗ','ㅓㅓ','ㅏㅓㅓ','일반','2020-06-24 16:37:21',200003,'0'),(31,'ttttt','1111','기획팀','대리','기기긱기','wwww@ewewee','010','일반','2020-06-24 16:41:47',25,'0');
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

-- Dump completed on 2020-06-24 16:43:56
