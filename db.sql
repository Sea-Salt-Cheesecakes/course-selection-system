CREATE DATABASE  IF NOT EXISTS `self_select_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `self_select_project`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: self_select_project
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `colleges`
--

DROP TABLE IF EXISTS `colleges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colleges` (
  `id` varchar(13) NOT NULL,
  `name` varchar(20) NOT NULL,
  `create_time` varchar(19) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colleges`
--

LOCK TABLES `colleges` WRITE;
/*!40000 ALTER TABLE `colleges` DISABLE KEYS */;
INSERT INTO `colleges` VALUES ('1638089590690','计算学部','2021-11-28 17:00:00'),('1638089590691','物理学院','2021-11-28 17:00:00');
/*!40000 ALTER TABLE `colleges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `id` varchar(13) NOT NULL,
  `name` varchar(20) NOT NULL,
  `create_time` varchar(19) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES ('1638089590690','一年级一班','2021-11-28 17:00:00'),('1638089590691','一年级二班','2021-11-28 17:00:00'),('1638089590692','二年级一班','2021-11-28 17:00:00'),('1638089590693','三年级一班','2021-11-28 17:00:00');
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `majors`
--

DROP TABLE IF EXISTS `majors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `majors` (
  `id` varchar(13) NOT NULL,
  `name` varchar(20) NOT NULL,
  `create_time` varchar(19) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `majors`
--

LOCK TABLES `majors` WRITE;
/*!40000 ALTER TABLE `majors` DISABLE KEYS */;
INSERT INTO `majors` VALUES ('1638089590690','信息安全','2021-11-28 17:00:00'),('1638089590691','软件工程','2021-11-28 17:00:00'),('1638089590693','应用物理','2021-11-28 17:00:00');
/*!40000 ALTER TABLE `majors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` varchar(13) NOT NULL,
  `name` varchar(20) NOT NULL,
  `create_time` varchar(19) NOT NULL,
  `credit` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES ('1638089590690','JAVA开发','2021-11-28 17:00:00',3),('1638089590692','操作系统','2021-11-28 17:00:00',3.5),('1717657557','大学物理','2024-06-06 15:05:57',3.5);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `select_logs`
--

DROP TABLE IF EXISTS `select_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `select_logs` (
  `id` varchar(13) NOT NULL,
  `plan_id` varchar(13) NOT NULL,
  `student_id` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `select_logs_plan_id_fda420ff_fk_work_palns_id` (`plan_id`),
  KEY `select_logs_student_id_3c6886d6_fk_students_id` (`student_id`),
  CONSTRAINT `select_logs_plan_id_fda420ff_fk_work_palns_id` FOREIGN KEY (`plan_id`) REFERENCES `work_palns` (`id`),
  CONSTRAINT `select_logs_student_id_3c6886d6_fk_students_id` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `select_logs`
--

LOCK TABLES `select_logs` WRITE;
/*!40000 ALTER TABLE `select_logs` DISABLE KEYS */;
INSERT INTO `select_logs` VALUES ('1717658448','1717658395','1717657793'),('1717658821','1717658760','1717657729'),('1718691976','1717658348','1717657669');
/*!40000 ALTER TABLE `select_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` varchar(13) NOT NULL,
  `college_id` varchar(13) NOT NULL,
  `grade_id` varchar(13) NOT NULL,
  `major_id` varchar(13) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `students_college_id_c8d7be0c_fk_colleges_id` (`college_id`),
  KEY `students_grade_id_0af4093a_fk_grades_id` (`grade_id`),
  KEY `students_major_id_29b04427_fk_majors_id` (`major_id`),
  CONSTRAINT `students_college_id_c8d7be0c_fk_colleges_id` FOREIGN KEY (`college_id`) REFERENCES `colleges` (`id`),
  CONSTRAINT `students_grade_id_0af4093a_fk_grades_id` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`),
  CONSTRAINT `students_id_1214cad7_fk_users_id` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  CONSTRAINT `students_major_id_29b04427_fk_majors_id` FOREIGN KEY (`major_id`) REFERENCES `majors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('1717657669','1638089590690','1638089590690','1638089590690'),('1717657729','1638089590690','1638089590692','1638089590691'),('1717657793','1638089590691','1638089590693','1638089590693'),('1717657845','1638089590690','1638089590691','1638089590690');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` varchar(13) NOT NULL,
  `record` varchar(8) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `teachers_id_21149ded_fk_users_id` FOREIGN KEY (`id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES ('1717657952','本科','12312311231','哈尔滨工业大学十六公寓'),('1717658030','研究生','32132133213','哈尔滨工业大学十六公寓');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(13) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `pass_word` varchar(32) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int NOT NULL,
  `gender` varchar(4) NOT NULL,
  `type` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1638089590690','admin','admin','风清扬',38,'男',0),('1717657669','2021111111','123456789','张国强',19,'男',2),('1717657729','2021111112','987654321','张富强',19,'男',2),('1717657793','2021111113','123456789','刘英',20,'女',2),('1717657845','2021111114','987654321','宋红',18,'女',2),('1717657952','js202101','123456789','刘军',35,'男',1),('1717658030','js202102','123456789','李玲',40,'女',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_palns`
--

DROP TABLE IF EXISTS `work_palns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_palns` (
  `id` varchar(13) NOT NULL,
  `grade_id` varchar(13) NOT NULL,
  `project_id` varchar(13) NOT NULL,
  `teacher_id` varchar(13) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `work_palns_grade_id_b27ef61c_fk_grades_id` (`grade_id`),
  KEY `work_palns_project_id_7f717ceb_fk_projects_id` (`project_id`),
  KEY `work_palns_teacher_id_c5828d9d_fk_teachers_id` (`teacher_id`),
  CONSTRAINT `work_palns_grade_id_b27ef61c_fk_grades_id` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`),
  CONSTRAINT `work_palns_project_id_7f717ceb_fk_projects_id` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  CONSTRAINT `work_palns_teacher_id_c5828d9d_fk_teachers_id` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_palns`
--

LOCK TABLES `work_palns` WRITE;
/*!40000 ALTER TABLE `work_palns` DISABLE KEYS */;
INSERT INTO `work_palns` VALUES ('1717658348','1638089590690','1638089590690','1717657952'),('1717658395','1638089590693','1717657557','1717658030'),('1717658760','1638089590692','1638089590690','1717657952');
/*!40000 ALTER TABLE `work_palns` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-18 14:58:24
