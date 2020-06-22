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
-- Table structure for table `groupboard`
--

DROP TABLE IF EXISTS `groupboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groupboard` (
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
-- Dumping data for table `groupboard`
--

LOCK TABLES `groupboard` WRITE;
/*!40000 ALTER TABLE `groupboard` DISABLE KEYS */;
INSERT INTO `groupboard` VALUES (1,'테스트입니다','김그린','인사1팀','사원','email@nnnn.com','공지사항','게시판 테스트입니다',NULL,1,'1','1','1',1,1,1);
/*!40000 ALTER TABLE `groupboard` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newdetailinfo`
--

LOCK TABLES `newdetailinfo` WRITE;
/*!40000 ALTER TABLE `newdetailinfo` DISABLE KEYS */;
INSERT INTO `newdetailinfo` VALUES (1,0,'0','11','0','0',NULL,'0','111',NULL,'11','11','11','0','0',NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,0,'0','11','0','0',NULL,'0','111',NULL,'11','11','11','0','0',NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,'0','11','0','0',NULL,'0','111',NULL,'11','11','11','0','0',NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,77,'0','11','0','0',NULL,'0','111',NULL,'11','11','11','0','0',NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,78,'1','3','0','0',NULL,'0','123123',NULL,'놀고먹기','181','65','1','1',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,79,'0','20201225','0','0',NULL,'0','123-1234',NULL,'놀고먹기','123','12','0','2',NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,80,'0','11','0','0',NULL,'0','1',NULL,'11','11','','0','0',NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,81,'0','1','0','0',NULL,'0','1',NULL,'1','1','1','0','0',NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,82,'0','1','0','0',NULL,'0','1',NULL,'1','1','1','0','0',NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,83,'0','1','0','0',NULL,'0','1',NULL,'1','1','1','0','0',NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,84,'0','1','0','0',NULL,'0','1',NULL,'1','1','1','0','0',NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,85,'0','1','0','0',NULL,'0','1',NULL,'1','1','1','0','0',NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,87,'0','7','0','0',NULL,'0','7',NULL,'7','7','7','0','1',NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,88,'0','9','0','0',NULL,'0','9',NULL,'9','9','9','0','0',NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,89,'0','9','0','0',NULL,'0','9',NULL,'9','9','9','0','0',NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,90,'0','1','0','0',NULL,'0','1',NULL,'1','1','','0','1',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,91,'0','1','0','0',NULL,'0','1',NULL,'1','1','','0','1',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,92,'0','1','0','0',NULL,'0','1',NULL,'1','','111','0','0',NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,93,'0','qwe','0','0',NULL,'0','',NULL,'qweqew','','','0','0','ewq',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,94,'1','090909','0','0','123-1234','0','123-1234','0','비전공개발자','','','1','2','비전공개발자','비전공개발자','1','1','1','2','비전공개발자','비전공개발자','그린대학교','4.0','ㅇㄴㅁㅇ','ㄴㅁㅇㄴㅁㅇㅁㄴㅇㅁㄴㅇ',NULL),(21,95,'1','090909','0','0','123-1234','0','123-1234','0','비전공개발자','','','1','2','비전공개발자','비전공개발자','1','1','1','2','비전공개발자','비전공개발자','그린대학교','4.0','ㅇㄴㅁㅇ','ㄴㅁㅇㄴㅁㅇㅁㄴㅇㅁㄴㅇ',NULL),(22,96,'0','d','0','0','d','0','d','0','d','d','d','0','0','11','dd','0','0','0','0','d','d','d','d','dddd','dddd',NULL),(23,97,'0','d','0','0','d','0','d','0','d','d','d','0','0','11','dd','0','0','0','0','d','d','d','d','dddd','dddd',NULL),(24,98,'0','d','0','0','d','0','d','0','d','d','d','0','0','11','dd','0','0','0','0','d','d','d','d','dddd','dddd',NULL),(25,99,'0','d','0','0','d','0','d','0','d','d','d','0','0','11','dd','0','0','0','0','d','d','d','d','dddd','dddd',NULL),(26,100,'0','d','0','0','d','0','d','0','d','d','d','0','0','11','dd','0','0','0','0','d','d','d','d','dddd','dddd',NULL),(27,101,'0','d','0','0','d','0','d','0','d','d','d','0','0','11','dd','0','0','0','0','d','d','d','d','dddd','dddd',NULL),(28,102,'0','','0','0','9','0','','0','1','','','0','0','1','1','0','0','0','0','','','d','q','qqqqqqqqqqqqq','q',NULL),(29,103,'0','wqe','0','0','q','0','qqq','0','eqwe','q','qq','0','0','eqweqe','ewq','0','0','0','0','qeqw','qq','qq','qqq','eq','wqewqewq',NULL),(30,104,'0','wqe','0','0','q','0','qqq','0','eqwe','q','qq','0','0','eqweqe','ewq','0','0','0','0','qeqw','qq','qq','qqq','eq','wqewqewq',NULL),(31,105,'0','wqe','0','0','q','0','qqq','0','eqwe','q','qq','0','0','eqweqe','ewq','0','0','0','0','qeqw','qq','qq','qqq','eq','wqewqewq',NULL),(32,106,'0','dsad','0','0','aaaaa','0','aa','0','da','a','','0','0','das','da','0','0','0','0','da','aa','aaa','aaa','asda','sasa',NULL),(33,107,'0','dsad','0','0','aaaaa','0','aa','0','da','a','','0','0','das','da','0','0','0','0','da','aa','aaa','aaa','asda','sasa',NULL),(34,108,'0','dsad','0','0','aaaaa','0','aa','0','da','a','','0','0','das','da','0','0','0','0','da','aa','aaa','aaa','asda','sasa',NULL),(35,109,'0','dsad','0','0','aaaaa','0','aa','0','da','a','','0','0','das','da','0','0','0','0','da','aa','aaa','aaa','asda','sasa',NULL),(36,110,'0','dsad','0','0','aaaaa','0','aa','0','da','a','','0','0','das','da','0','0','0','0','da','aa','aaa','aaa','asda','sasa',NULL),(37,111,'0','asd','0','0','asd','0','ads','0','asd','s','asd','0','1','asd','asd','0','0','0','0','asd','asd','asd','asd','ads','asd',NULL),(38,112,'0','asd','0','0','asd','0','ads','0','asd','s','asd','0','1','asd','asd','0','0','0','0','asd','asd','asd','asd','ads','asd',NULL),(39,113,'여자','901225','음력','051','123-1234','051','123-1234','수시채용','개발자','170','60','병역미필','불교','개발','개발','비장애','대상','기혼','졸업','09','개발과','그린대학교','4.0','아버지 어머니 형 누나 동생','테스트 입니다.',NULL),(40,114,'남자','1990.09.11','양력','051','123-1234','051','123-1234','인턴채용','개발자','180','70','병역필','불교','만들기','음악듣기','비장애','대상','미혼','졸업','2009년 04월 ','전기공학과 ','그린대학교','4.0','아버지 / 엔지니어 / 힘이 된다\r\n어머니 / 선생님 / 테스트입니다.\r\n남동생 / 학생 / 일본 유학중\r\n','테스트 입니다 .\r\n테스트 입니다 .\r\n테스트 입니다 .테스트 입니다 .\r\n테스트 입니다 .\r\n테스트 입니다 .\r\n테스트 입니다 .\r\n',NULL);
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
  `companyNumber` varchar(30) NOT NULL,
  `userRegdate` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','1111','총관리부','관리자','관리자','admin@naver.com','010-0000-0000','관리자','','2020-06-15 11:33:05'),(2,'aaaa','11','기획','사원','한글이다','www@wwwww','123-1234','중간관리자','','2020-06-15 11:38:07'),(3,'ooo','11','기획','과장','김사람','EEE@naver.com','010-2222-2222','일반','','2020-06-17 12:18:26'),(4,'111','11','관리','사원','기린','11','11','일반','','2020-06-17 12:21:19'),(70,'hhh','11','인사','사원','인사','1111','1111','일반','','2020-06-19 09:15:43'),(71,'11','111','0','0','1111','11111','11','일반','11','2020-06-19 17:49:14'),(72,'11','111','0','0','1111','11111','11','일반','11','2020-06-19 17:50:19'),(73,'11','111','0','0','1111','11111','11','일반','11','2020-06-19 17:52:08'),(74,'11','111','0','0','1111','11111','11','일반','11','2020-06-19 17:54:36'),(75,'11','111','0','0','1111','11111','11','일반','11','2020-06-19 18:04:34'),(76,'11','111','0','0','1111','11111','11','일반','11','2020-06-19 18:05:37'),(77,'11','111','0','0','1111','11111','11','일반','11','2020-06-19 18:06:10'),(78,'123','123','1','2','배은경','11111','01041111','일반','11111','2020-06-19 18:12:02'),(79,'ccc','123','0','0','김그린','zzz@naver.com','010-3322-2222','중간관리자','111','2020-06-20 15:19:32'),(80,'11','11111','2','2','ㅃ11','11111','11','관리자','ㅃㅂ','2020-06-20 15:21:55'),(81,'admin','11','1','0','12dsadsadsa','123123','1','일반','1','2020-06-22 10:23:52'),(82,'admin','11','1','0','12dsadsadsa','123123','1','일반','1','2020-06-22 10:59:56'),(83,'admin','11','1','0','12dsadsadsa','123123','1','일반','1','2020-06-22 11:01:28'),(84,'admin','11','1','0','12dsadsadsa','123123','1','일반','1','2020-06-22 11:01:59'),(85,'admin','11','1','0','12dsadsadsa','123123','1','일반','1','2020-06-22 11:03:22'),(86,'hhh','11','인사팀','사원','ㅇㄹㄴㅁㅇㄹ','11','11','일반','2010100','2020-06-22 11:10:52'),(87,'7','7','1','2','7','7','7','일반','77777777','2020-06-22 11:11:58'),(88,'999999','9','2','1','9','9','9','일반','89999999','2020-06-22 11:27:49'),(89,'999999','9','2','1','9','9','9','일반','89999999','2020-06-22 11:28:32'),(90,'111','11','0','0','11','1231231','1111','일반','asdsa','2020-06-22 11:33:14'),(91,'111','11','0','0','11','1231231','1111','일반','asdsa','2020-06-22 11:33:49'),(92,'dsasad','111111111111','2','0','111','1','111111111','중간관리자','11','2020-06-22 11:43:10'),(93,'111','qqwq','1','2','ewq','ewqewq','qqwe','일반','89999999','2020-06-22 11:50:03'),(94,'GOOD','11','2','3','김향숙','HHH@naver.com','010-1234-12034','일반','12345','2020-06-22 12:12:36'),(95,'GOOD','11','2','3','김향숙','HHH@naver.com','010-1234-12034','일반','12345','2020-06-22 12:14:11'),(96,'11','d','1','2','dsadsa','dsadsa','dd','일반','11','2020-06-22 15:31:14'),(97,'11','d','1','2','dsadsa','dsadsa','dd','일반','11','2020-06-22 15:32:12'),(98,'11','d','1','2','dsadsa','dsadsa','dd','일반','11','2020-06-22 15:37:31'),(99,'11','d','1','2','dsadsa','dsadsa','dd','일반','11','2020-06-22 15:38:40'),(100,'11','d','1','2','dsadsa','dsadsa','dd','일반','11','2020-06-22 15:44:24'),(101,'11','d','1','2','dsadsa','dsadsa','dd','일반','11','2020-06-22 15:45:09'),(102,'11','f','2','0','1','q','dsff','일반','11','2020-06-22 15:45:48'),(103,'ewqe','wqewqewq','0','0','eqwe','qq','qeq','일반','11','2020-06-22 15:47:17'),(104,'ewqe','wqewqewq','0','0','eqwe','qq','qeq','일반','11','2020-06-22 15:49:14'),(105,'ewqe','wqewqewq','0','0','eqwe','qq','qeq','일반','11','2020-06-22 15:50:54'),(106,'rqwde','sada','0','0','asdsa','aaaa','dsadada','일반','rew','2020-06-22 15:51:21'),(107,'rqwde','sada','0','0','asdsa','aaaa','dsadada','일반','rew','2020-06-22 15:57:02'),(108,'rqwde','sada','0','0','asdsa','aaaa','dsadada','일반','rew','2020-06-22 15:59:20'),(109,'rqwde','sada','0','0','asdsa','aaaa','dsadada','일반','rew','2020-06-22 16:06:19'),(110,'rqwde','sada','0','0','asdsa','aaaa','dsadada','일반','rew','2020-06-22 16:07:22'),(111,'asd123dsa','asd','2','2','asd','asd','a','일반','asdsa','2020-06-22 16:08:33'),(112,'asd123dsa','asd','2','2','asd','asd','a','일반','asdsa','2020-06-22 16:08:58'),(113,'VVV','11','2','1','김나라','vvv@vvvv.vvv','010-1234-1234','일반','1234','2020-06-22 16:34:13'),(114,'GGG','11','인사팀','사원','동물원','www@naver.com','010-0000-0000','일반','1234','2020-06-22 17:16:05');
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

-- Dump completed on 2020-06-22 18:36:08
