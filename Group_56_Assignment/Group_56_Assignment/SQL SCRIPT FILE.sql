CREATE DATABASE  IF NOT EXISTS `group56schema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `group56schema`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: group56schema
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `administrative_assistant`
--

DROP TABLE IF EXISTS `administrative_assistant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrative_assistant` (
  `Administrative_assistant_ID` int DEFAULT NULL,
  `Administrative_assistant_Name` varchar(45) DEFAULT NULL,
  `Salary` int DEFAULT NULL,
  `Shift` varchar(45) DEFAULT NULL,
  `Shift_ID` int DEFAULT NULL,
  `Employee_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrative_assistant`
--

LOCK TABLES `administrative_assistant` WRITE;
/*!40000 ALTER TABLE `administrative_assistant` DISABLE KEYS */;
INSERT INTO `administrative_assistant` VALUES (1,'Assistant Brown',45000,'Morning',1,301),(2,'Assistant Wilson',47000,'Afternoon',2,302),(3,'Assistant Smith',40000,'Morning',3,303),(4,'Assistant Johnson',38000,'Mid-day',4,304),(5,'Assistant Williams',36000,'Evening',5,305),(6,'Assistant Martinez',32000,'Mid-night',6,306),(7,'Assistant Taylor',30000,'Morning',7,307),(8,'Assistant Lee',28000,'Afternoon',8,308),(9,'Assistant Rodriguez',24000,'Evening',9,309),(10,'Assistant Nguyen',22000,'Morning',10,310),(1,'Assistant Brown',45000,'Morning',1,301),(2,'Assistant Wilson',47000,'Afternoon',2,302),(3,'Assistant Smith',40000,'Morning',3,303),(4,'Assistant Johnson',38000,'Mid-day',4,304),(5,'Assistant Williams',36000,'Evening',5,305),(6,'Assistant Martinez',32000,'Mid-night',6,306),(7,'Assistant Taylor',30000,'Morning',7,307),(8,'Assistant Lee',28000,'Afternoon',8,308),(9,'Assistant Rodriguez',24000,'Evening',9,309),(10,'Assistant Nguyen',22000,'Morning',10,310),(1,'Assistant Brown',45000,'Morning',1,301),(2,'Assistant Wilson',47000,'Afternoon',2,302),(3,'Assistant Smith',40000,'Morning',3,303),(4,'Assistant Johnson',38000,'Mid-day',4,304),(5,'Assistant Williams',36000,'Evening',5,305),(6,'Assistant Martinez',32000,'Mid-night',6,306),(7,'Assistant Taylor',30000,'Morning',7,307),(8,'Assistant Lee',28000,'Afternoon',8,308),(9,'Assistant Rodriguez',24000,'Evening',9,309),(10,'Assistant Nguyen',22000,'Morning',10,310),(1,'Assistant Brown',45000,'Morning',1,301),(2,'Assistant Wilson',47000,'Afternoon',2,302),(3,'Assistant Smith',40000,'Morning',3,303),(4,'Assistant Johnson',38000,'Mid-day',4,304),(5,'Assistant Williams',36000,'Evening',5,305),(6,'Assistant Martinez',32000,'Mid-night',6,306),(7,'Assistant Taylor',30000,'Morning',7,307),(8,'Assistant Lee',28000,'Afternoon',8,308),(9,'Assistant Rodriguez',24000,'Evening',9,309),(10,'Assistant Nguyen',22000,'Morning',10,310),(1,'Assistant Brown',45000,'Morning',1,301),(2,'Assistant Wilson',47000,'Afternoon',2,302),(3,'Assistant Smith',40000,'Morning',3,303),(4,'Assistant Johnson',38000,'Mid-day',4,304),(5,'Assistant Williams',36000,'Evening',5,305),(6,'Assistant Martinez',32000,'Mid-night',6,306),(7,'Assistant Taylor',30000,'Morning',7,307),(8,'Assistant Lee',28000,'Afternoon',8,308),(9,'Assistant Rodriguez',24000,'Evening',9,309),(10,'Assistant Nguyen',22000,'Morning',10,310),(1,'Assistant Brown',45000,'Morning',1,301),(2,'Assistant Wilson',47000,'Afternoon',2,302),(3,'Assistant Smith',40000,'Morning',3,303),(4,'Assistant Johnson',38000,'Mid-day',4,304),(5,'Assistant Williams',36000,'Evening',5,305),(6,'Assistant Martinez',32000,'Mid-night',6,306),(7,'Assistant Taylor',30000,'Morning',7,307),(8,'Assistant Lee',28000,'Afternoon',8,308),(9,'Assistant Rodriguez',24000,'Evening',9,309),(10,'Assistant Nguyen',22000,'Morning',10,310);
/*!40000 ALTER TABLE `administrative_assistant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `Appointment_ID` int DEFAULT NULL,
  `Doctor_ID` int DEFAULT NULL,
  `Patient_ID` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `Is_Follow_up` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (1,101,1,'2022-03-01','08:00:00','Cancelled','No'),(2,102,2,'2023-12-02','09:00:00','Cancelled','Yes'),(3,103,3,'2023-12-03','10:00:00','Cancelled','No'),(4,104,4,'2013-12-04','11:00:00','Cancelled','No'),(5,105,5,'2023-12-05','12:00:00','Cancelled','No'),(6,106,6,'2023-12-06','13:00:00','Cancelled','No'),(7,107,7,'2024-03-07','14:00:00','Booked','No'),(8,108,8,'2024-03-08','15:00:00','Booked','No'),(9,109,9,'2024-03-09','16:00:00','Cancelled','Yes'),(10,110,10,'2024-03-10','17:00:00','Booked','No'),(1,101,1,'2024-03-01','08:00:00','Booked','No'),(2,102,2,'2024-03-02','09:00:00','Cancelled','Yes'),(3,103,3,'2024-03-03','10:00:00','Arrived','No'),(4,104,4,'2024-03-04','11:00:00','Booked','No'),(5,105,5,'2024-03-05','12:00:00','Arrived','No'),(6,106,6,'2024-03-06','13:00:00','Booked','No'),(7,107,7,'2024-03-07','14:00:00','Booked','No'),(8,108,8,'2024-03-08','15:00:00','Booked','No'),(9,109,9,'2024-03-09','16:00:00','Cancelled','Yes'),(10,110,10,'2024-03-10','17:00:00','Booked','No'),(1,101,1,'2024-03-01','08:00:00','Booked','No'),(2,102,2,'2024-03-02','09:00:00','Cancelled','Yes'),(3,103,3,'2024-03-03','10:00:00','Arrived','No'),(4,104,4,'2024-03-04','11:00:00','Booked','No'),(5,105,5,'2024-03-05','12:00:00','Arrived','No'),(6,106,6,'2024-03-06','13:00:00','Booked','No'),(7,107,7,'2024-03-07','14:00:00','Booked','No'),(8,108,8,'2024-03-08','15:00:00','Booked','No'),(9,109,9,'2024-03-09','16:00:00','Cancelled','Yes'),(10,110,10,'2024-03-10','17:00:00','Booked','No'),(1,101,1,'2024-03-01','08:00:00','Booked','No'),(2,102,2,'2024-03-02','09:00:00','Cancelled','Yes'),(3,103,3,'2024-03-03','10:00:00','Arrived','No'),(4,104,4,'2024-03-04','11:00:00','Booked','No'),(5,105,5,'2024-03-05','12:00:00','Arrived','No'),(6,106,6,'2024-03-06','13:00:00','Booked','No'),(7,107,7,'2024-03-07','14:00:00','Booked','No'),(8,108,8,'2024-03-08','15:00:00','Booked','No'),(9,109,9,'2024-03-09','16:00:00','Cancelled','Yes'),(10,110,10,'2024-03-10','17:00:00','Booked','No'),(1,101,1,'2024-03-01','08:00:00','Booked','No'),(2,102,2,'2024-03-02','09:00:00','Cancelled','Yes'),(3,103,3,'2024-03-03','10:00:00','Arrived','No'),(4,104,4,'2024-03-04','11:00:00','Booked','No'),(5,105,5,'2024-03-05','12:00:00','Arrived','No'),(6,106,6,'2024-03-06','13:00:00','Booked','No'),(7,107,7,'2024-03-07','14:00:00','Booked','No'),(8,108,8,'2024-03-08','15:00:00','Booked','No'),(9,109,9,'2024-03-09','16:00:00','Cancelled','Yes'),(10,110,10,'2024-03-10','17:00:00','Booked','No'),(1,101,1,'2024-03-01','08:00:00','Booked','No'),(2,102,2,'2024-03-02','09:00:00','Cancelled','Yes'),(3,103,3,'2024-03-03','10:00:00','Arrived','No'),(4,104,4,'2024-03-04','11:00:00','Booked','No'),(5,105,5,'2024-03-05','12:00:00','Arrived','No'),(6,106,6,'2024-03-06','13:00:00','Booked','No'),(7,107,7,'2024-03-07','14:00:00','Booked','No'),(8,108,8,'2024-03-08','15:00:00','Booked','No'),(9,109,9,'2024-03-09','16:00:00','Cancelled','Yes'),(10,110,10,'2024-03-10','17:00:00','Booked','No');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charges`
--

DROP TABLE IF EXISTS `charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `charges` (
  `Charge_ID` int DEFAULT NULL,
  `Patient_ID` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Details` varchar(45) DEFAULT NULL,
  `Amount` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charges`
--

LOCK TABLES `charges` WRITE;
/*!40000 ALTER TABLE `charges` DISABLE KEYS */;
INSERT INTO `charges` VALUES (1,1,'2024-03-01','Sick note',20),(2,2,'2024-03-02','Prescription refill',10),(3,3,'2024-03-03','Lab test',30),(4,4,'2024-03-04','Medical certificate',15),(5,5,'2024-03-05','Consultation fee',25),(6,6,'2024-03-06','Injection fee',5),(7,7,'2024-03-07','Dressing fee',10),(8,8,'2024-03-08','Physiotherapy session',40),(9,9,'2024-03-09','Medical report fee',20),(10,10,'2024-03-10','Emergency room visit',50),(1,1,'2024-03-01','Sick note',20),(2,2,'2024-03-02','Prescription refill',10),(3,3,'2024-03-03','Lab test',30),(4,4,'2024-03-04','Medical certificate',15),(5,5,'2024-03-05','Consultation fee',25),(6,6,'2024-03-06','Injection fee',5),(7,7,'2024-03-07','Dressing fee',10),(8,8,'2024-03-08','Physiotherapy session',40),(9,9,'2024-03-09','Medical report fee',20),(10,10,'2024-03-10','Emergency room visit',50),(1,1,'2024-03-01','Sick note',20),(2,2,'2024-03-02','Prescription refill',10),(3,3,'2024-03-03','Lab test',30),(4,4,'2024-03-04','Medical certificate',15),(5,5,'2024-03-05','Consultation fee',25),(6,6,'2024-03-06','Injection fee',5),(7,7,'2024-03-07','Dressing fee',10),(8,8,'2024-03-08','Physiotherapy session',40),(9,9,'2024-03-09','Medical report fee',20),(10,10,'2024-03-10','Emergency room visit',50),(1,1,'2024-03-01','Sick note',20),(2,2,'2024-03-02','Prescription refill',10),(3,3,'2024-03-03','Lab test',30),(4,4,'2024-03-04','Medical certificate',15),(5,5,'2024-03-05','Consultation fee',25),(6,6,'2024-03-06','Injection fee',5),(7,7,'2024-03-07','Dressing fee',10),(8,8,'2024-03-08','Physiotherapy session',40),(9,9,'2024-03-09','Medical report fee',20),(10,10,'2024-03-10','Emergency room visit',50),(1,1,'2024-03-01','Sick note',20),(2,2,'2024-03-02','Prescription refill',10),(3,3,'2024-03-03','Lab test',30),(4,4,'2024-03-04','Medical certificate',15),(5,5,'2024-03-05','Consultation fee',25),(6,6,'2024-03-06','Injection fee',5),(7,7,'2024-03-07','Dressing fee',10),(8,8,'2024-03-08','Physiotherapy session',40),(9,9,'2024-03-09','Medical report fee',20),(10,10,'2024-03-10','Emergency room visit',50),(1,1,'2024-03-01','Sick note',20),(2,2,'2024-03-02','Prescription refill',10),(3,3,'2024-03-03','Lab test',30),(4,4,'2024-03-04','Medical certificate',15),(5,5,'2024-03-05','Consultation fee',25),(6,6,'2024-03-06','Injection fee',5),(7,7,'2024-03-07','Dressing fee',10),(8,8,'2024-03-08','Physiotherapy session',40),(9,9,'2024-03-09','Medical report fee',20),(10,10,'2024-03-10','Emergency room visit',50);
/*!40000 ALTER TABLE `charges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnostic_tests`
--

DROP TABLE IF EXISTS `diagnostic_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnostic_tests` (
  `Test_ID` int DEFAULT NULL,
  `Doctor_ID` int DEFAULT NULL,
  `Patient_ID` int DEFAULT NULL,
  `Test_name` varchar(45) DEFAULT NULL,
  `Test_result` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnostic_tests`
--

LOCK TABLES `diagnostic_tests` WRITE;
/*!40000 ALTER TABLE `diagnostic_tests` DISABLE KEYS */;
INSERT INTO `diagnostic_tests` VALUES (1,101,1,'Temperature Test','Normal'),(2,102,2,'Physical Test','Abnormal'),(3,103,3,'Migraine Diagnosis','Normal'),(4,104,4,'Physical Test','Abnormal'),(5,105,5,'Upper GI Endoscopy','Normal'),(6,106,6,'Blood Test','Normal'),(7,107,7,'MRI','Abnormal'),(8,108,8,'X-Ray','Normal'),(9,109,9,'CT scan','Abnormal'),(10,110,10,'Oxygen Therapy','Abnormal'),(1,101,1,'Temperature Test','Normal'),(2,102,2,'Physical Test','Abnormal'),(3,103,3,'Migraine Diagnosis','Normal'),(4,104,4,'Physical Test','Abnormal'),(5,105,5,'Upper GI Endoscopy','Normal'),(6,106,6,'Blood Test','Normal'),(7,107,7,'MRI','Abnormal'),(8,108,8,'X-Ray','Normal'),(9,109,9,'CT scan','Abnormal'),(10,110,10,'Oxygen Therapy','Abnormal'),(1,101,1,'Temperature Test','Normal'),(2,102,2,'Physical Test','Abnormal'),(3,103,3,'Migraine Diagnosis','Normal'),(4,104,4,'Physical Test','Abnormal'),(5,105,5,'Upper GI Endoscopy','Normal'),(6,106,6,'Blood Test','Normal'),(7,107,7,'MRI','Abnormal'),(8,108,8,'X-Ray','Normal'),(9,109,9,'CT scan','Abnormal'),(10,110,10,'Oxygen Therapy','Abnormal'),(1,101,1,'Temperature Test','Normal'),(2,102,2,'Physical Test','Abnormal'),(3,103,3,'Migraine Diagnosis','Normal'),(4,104,4,'Physical Test','Abnormal'),(5,105,5,'Upper GI Endoscopy','Normal'),(6,106,6,'Blood Test','Normal'),(7,107,7,'MRI','Abnormal'),(8,108,8,'X-Ray','Normal'),(9,109,9,'CT scan','Abnormal'),(10,110,10,'Oxygen Therapy','Abnormal'),(1,101,1,'Temperature Test','Normal'),(2,102,2,'Physical Test','Abnormal'),(3,103,3,'Migraine Diagnosis','Normal'),(4,104,4,'Physical Test','Abnormal'),(5,105,5,'Upper GI Endoscopy','Normal'),(6,106,6,'Blood Test','Normal'),(7,107,7,'MRI','Abnormal'),(8,108,8,'X-Ray','Normal'),(9,109,9,'CT scan','Abnormal'),(10,110,10,'Oxygen Therapy','Abnormal'),(1,101,1,'Temperature Test','Normal'),(2,102,2,'Physical Test','Abnormal'),(3,103,3,'Migraine Diagnosis','Normal'),(4,104,4,'Physical Test','Abnormal'),(5,105,5,'Upper GI Endoscopy','Normal'),(6,106,6,'Blood Test','Normal'),(7,107,7,'MRI','Abnormal'),(8,108,8,'X-Ray','Normal'),(9,109,9,'CT scan','Abnormal'),(10,110,10,'Oxygen Therapy','Abnormal');
/*!40000 ALTER TABLE `diagnostic_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `Doctor_ID` int DEFAULT NULL,
  `Doctor_Name` varchar(45) DEFAULT NULL,
  `Salary` int DEFAULT NULL,
  `Specialization` varchar(45) DEFAULT NULL,
  `shift_ID` int DEFAULT NULL,
  `Employee_Id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Dr. Smith',100000,'General Practitioner',1,101),(2,'Dr. Johnson',120000,'Cardiologist',2,102),(3,'Dr. Williams',110000,'Pediatrician',3,103),(4,'Dr. Chris',95000,'Orthopedic Surgeon',4,104),(5,'Dr. Vy',105000,'Gynecologist',5,105),(6,'Dr. Tu',98000,'Psychiatrist',6,106),(7,'Dr. Leo',100000,'Oncologist',7,107),(8,'Dr. Libareo',110000,'X-ray Specialist',8,108),(9,'Dr. Kamel',115000,'Orthopedic surgeons',9,109),(10,'Dr. Joaquin',100000,'Pulmonologists',10,110),(1,'Dr. Smith',100000,'General Practitioner',1,101),(2,'Dr. Johnson',120000,'Cardiologist',2,102),(3,'Dr. Williams',110000,'Pediatrician',3,103),(4,'Dr. Chris',95000,'Orthopedic Surgeon',4,104),(5,'Dr. Vy',105000,'Gynecologist',5,105),(6,'Dr. Tu',98000,'Psychiatrist',6,106),(7,'Dr. Leo',100000,'Oncologist',7,107),(8,'Dr. Libareo',110000,'X-ray Specialist',8,108),(9,'Dr. Kamel',115000,'Orthopedic surgeons',9,109),(10,'Dr. Joaquin',100000,'Pulmonologists',10,110),(1,'Dr. Smith',100000,'General Practitioner',1,101),(2,'Dr. Johnson',120000,'Cardiologist',2,102),(3,'Dr. Williams',110000,'Pediatrician',3,103),(4,'Dr. Chris',95000,'Orthopedic Surgeon',4,104),(5,'Dr. Vy',105000,'Gynecologist',5,105),(6,'Dr. Tu',98000,'Psychiatrist',6,106),(7,'Dr. Leo',100000,'Oncologist',7,107),(8,'Dr. Libareo',110000,'X-ray Specialist',8,108),(9,'Dr. Kamel',115000,'Orthopedic surgeons',9,109),(10,'Dr. Joaquin',100000,'Pulmonologists',10,110),(1,'Dr. Smith',100000,'General Practitioner',1,101),(2,'Dr. Johnson',120000,'Cardiologist',2,102),(3,'Dr. Williams',110000,'Pediatrician',3,103),(4,'Dr. Chris',95000,'Orthopedic Surgeon',4,104),(5,'Dr. Vy',105000,'Gynecologist',5,105),(6,'Dr. Tu',98000,'Psychiatrist',6,106),(7,'Dr. Leo',100000,'Oncologist',7,107),(8,'Dr. Libareo',110000,'X-ray Specialist',8,108),(9,'Dr. Kamel',115000,'Orthopedic surgeons',9,109),(10,'Dr. Joaquin',100000,'Pulmonologists',10,110),(1,'Dr. Smith',100000,'General Practitioner',1,101),(2,'Dr. Johnson',120000,'Cardiologist',2,102),(3,'Dr. Williams',110000,'Pediatrician',3,103),(4,'Dr. Chris',95000,'Orthopedic Surgeon',4,104),(5,'Dr. Vy',105000,'Gynecologist',5,105),(6,'Dr. Tu',98000,'Psychiatrist',6,106),(7,'Dr. Leo',100000,'Oncologist',7,107),(8,'Dr. Libareo',110000,'X-ray Specialist',8,108),(9,'Dr. Kamel',115000,'Orthopedic surgeons',9,109),(10,'Dr. Joaquin',100000,'Pulmonologists',10,110),(1,'Dr. Smith',100000,'General Practitioner',1,101),(2,'Dr. Johnson',120000,'Cardiologist',2,102),(3,'Dr. Williams',110000,'Pediatrician',3,103),(4,'Dr. Chris',95000,'Orthopedic Surgeon',4,104),(5,'Dr. Vy',105000,'Gynecologist',5,105),(6,'Dr. Tu',98000,'Psychiatrist',6,106),(7,'Dr. Leo',100000,'Oncologist',7,107),(8,'Dr. Libareo',110000,'X-ray Specialist',8,108),(9,'Dr. Kamel',115000,'Orthopedic surgeons',9,109),(10,'Dr. Joaquin',100000,'Pulmonologists',10,110);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_id`
--

DROP TABLE IF EXISTS `employee_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_id` (
  `Employee_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_id`
--

LOCK TABLES `employee_id` WRITE;
/*!40000 ALTER TABLE `employee_id` DISABLE KEYS */;
INSERT INTO `employee_id` VALUES (101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(201),(202),(203),(204),(205),(206),(207),(208),(209),(210),(301),(302),(303),(304),(305),(306),(307),(308),(309),(310),(401),(402),(403),(404),(405),(406),(407),(408),(409),(410),(101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(201),(202),(203),(204),(205),(206),(207),(208),(209),(210),(301),(302),(303),(304),(305),(306),(307),(308),(309),(310),(401),(402),(403),(404),(405),(406),(407),(408),(409),(410),(101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(201),(202),(203),(204),(205),(206),(207),(208),(209),(210),(301),(302),(303),(304),(305),(306),(307),(308),(309),(310),(401),(402),(403),(404),(405),(406),(407),(408),(409),(410),(101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(201),(202),(203),(204),(205),(206),(207),(208),(209),(210),(301),(302),(303),(304),(305),(306),(307),(308),(309),(310),(401),(402),(403),(404),(405),(406),(407),(408),(409),(410),(101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(201),(202),(203),(204),(205),(206),(207),(208),(209),(210),(301),(302),(303),(304),(305),(306),(307),(308),(309),(310),(401),(402),(403),(404),(405),(406),(407),(408),(409),(410),(101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(201),(202),(203),(204),(205),(206),(207),(208),(209),(210),(301),(302),(303),(304),(305),(306),(307),(308),(309),(310),(401),(402),(403),(404),(405),(406),(407),(408),(409),(410);
/*!40000 ALTER TABLE `employee_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hours_and_rates`
--

DROP TABLE IF EXISTS `hours_and_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hours_and_rates` (
  `Hours_Rates_ID` int DEFAULT NULL,
  `Employee_ID` int DEFAULT NULL,
  `Shift_ID` int DEFAULT NULL,
  `Manager_ID` int DEFAULT NULL,
  `Employee_Name` varchar(45) DEFAULT NULL,
  `Employee_Role` varchar(45) DEFAULT NULL,
  `Hourly_rate` int DEFAULT NULL,
  `Hours_worked` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hours_and_rates`
--

LOCK TABLES `hours_and_rates` WRITE;
/*!40000 ALTER TABLE `hours_and_rates` DISABLE KEYS */;
INSERT INTO `hours_and_rates` VALUES (1,101,1,9,'Dr. Smith','Doctor',120,50),(2,102,2,1,'Dr. Johnson','Doctor',120,48),(3,103,3,7,'Dr. Williams','Doctor',115,47),(4,104,4,2,'Dr. Chris','Doctor',115,47),(5,105,5,10,'Dr. Vy','Doctor',115,48),(6,106,6,4,'Dr. Tu','Doctor',110,46),(7,107,7,6,'Dr. Leo','Doctor',110,47),(8,108,8,8,'Dr. Libareo','Doctor',110,47),(9,109,9,5,'Dr. Kamel','Doctor',110,47),(10,110,10,3,'Dr. Joaquin','Doctor',105,67),(11,201,9,1,'Nurse Laily','Nurse',80,38),(12,202,1,2,'Nurse Wilson','Nurse',75,37),(13,203,7,3,'Nurse Martinez','Nurse',78,39),(14,204,2,4,'Nurse Natalia','Nurse',72,39),(15,205,10,5,'Nurse Michelle','Nurse',62,39),(16,206,4,6,'Nurse Bianca','Nurse',60,39),(17,207,6,7,'Nurse Funmi','Nurse',67,39),(18,208,8,8,'Nurse Ashley','Nurse',60,39),(19,209,5,9,'Nurse Kaima','Nurse',65,39),(20,210,3,10,'Nurse Cheyenne','Nurse',63,39),(21,301,1,9,'Assistant Brown','Administrative Assistant',45,40),(22,302,2,1,'Assistant Wilson','Administrative Assistant',47,38),(23,303,3,7,'Assistant Smith','Administrative Assistant',47,36),(24,304,4,2,'Assistant Johnson','Administrative Assistant',47,38),(25,305,5,10,'Assistant Williams','Administrative Assistant',47,40),(26,306,6,4,'Assistant Roselyn','Administrative Assistant',47,36),(27,307,7,6,'Assistant Taylor','Administrative Assistant',47,38),(28,308,8,8,'Assistant Lee','Administrative Assistant',47,40),(29,309,9,5,'Assistant Rodriguez','Administrative Assistant',47,36),(30,310,10,3,'Assistant Nguyen','Administrative Assistant',47,40),(31,401,9,1,'Secretary Davis','Office Secretary',50,40),(32,402,1,2,'Secretary Garcia','Office Secretary',52,37),(33,403,7,3,'Secretary Evans','Office Secretary',48,38),(34,404,2,4,'Secretary Fisher','Office Secretary',45,36),(35,405,10,5,'Secretary Adams','Office Secretary',35,40),(36,406,4,6,'Secretary Baker','Office Secretary',25,38),(37,407,6,7,'Secretary Clark','Office Secretary',25,36),(38,408,8,8,'Secretary Harris','Office Secretary',25,38),(39,409,5,9,'Secretary Jackson','Office Secretary',25,36),(40,410,3,10,'Secretary King','Office Secretary',25,40),(1,101,1,9,'Dr. Smith','Doctor',120,50),(2,102,2,1,'Dr. Johnson','Doctor',120,48),(3,103,3,7,'Dr. Williams','Doctor',115,47),(4,104,4,2,'Dr. Chris','Doctor',115,47),(5,105,5,10,'Dr. Vy','Doctor',115,48),(6,106,6,4,'Dr. Tu','Doctor',110,46),(7,107,7,6,'Dr. Leo','Doctor',110,47),(8,108,8,8,'Dr. Libareo','Doctor',110,47),(9,109,9,5,'Dr. Kamel','Doctor',110,47),(10,110,10,3,'Dr. Joaquin','Doctor',105,67),(11,201,9,1,'Nurse Laily','Nurse',80,38),(12,202,1,2,'Nurse Wilson','Nurse',75,37),(13,203,7,3,'Nurse Martinez','Nurse',78,39),(14,204,2,4,'Nurse Natalia','Nurse',72,39),(15,205,10,5,'Nurse Michelle','Nurse',62,39),(16,206,4,6,'Nurse Bianca','Nurse',60,39),(17,207,6,7,'Nurse Funmi','Nurse',67,39),(18,208,8,8,'Nurse Ashley','Nurse',60,39),(19,209,5,9,'Nurse Kaima','Nurse',65,39),(20,210,3,10,'Nurse Cheyenne','Nurse',63,39),(21,301,1,9,'Assistant Brown','Administrative Assistant',45,40),(22,302,2,1,'Assistant Wilson','Administrative Assistant',47,38),(23,303,3,7,'Assistant Smith','Administrative Assistant',47,36),(24,304,4,2,'Assistant Johnson','Administrative Assistant',47,38),(25,305,5,10,'Assistant Williams','Administrative Assistant',47,40),(26,306,6,4,'Assistant Roselyn','Administrative Assistant',47,36),(27,307,7,6,'Assistant Taylor','Administrative Assistant',47,38),(28,308,8,8,'Assistant Lee','Administrative Assistant',47,40),(29,309,9,5,'Assistant Rodriguez','Administrative Assistant',47,36),(30,310,10,3,'Assistant Nguyen','Administrative Assistant',47,40),(31,401,9,1,'Secretary Davis','Office Secretary',50,40),(32,402,1,2,'Secretary Garcia','Office Secretary',52,37),(33,403,7,3,'Secretary Evans','Office Secretary',48,38),(34,404,2,4,'Secretary Fisher','Office Secretary',45,36),(35,405,10,5,'Secretary Adams','Office Secretary',35,40),(36,406,4,6,'Secretary Baker','Office Secretary',25,38),(37,407,6,7,'Secretary Clark','Office Secretary',25,36),(38,408,8,8,'Secretary Harris','Office Secretary',25,38),(39,409,5,9,'Secretary Jackson','Office Secretary',25,36),(40,410,3,10,'Secretary King','Office Secretary',25,40),(1,101,1,9,'Dr. Smith','Doctor',120,50),(2,102,2,1,'Dr. Johnson','Doctor',120,48),(3,103,3,7,'Dr. Williams','Doctor',115,47),(4,104,4,2,'Dr. Chris','Doctor',115,47),(5,105,5,10,'Dr. Vy','Doctor',115,48),(6,106,6,4,'Dr. Tu','Doctor',110,46),(7,107,7,6,'Dr. Leo','Doctor',110,47),(8,108,8,8,'Dr. Libareo','Doctor',110,47),(9,109,9,5,'Dr. Kamel','Doctor',110,47),(10,110,10,3,'Dr. Joaquin','Doctor',105,67),(11,201,9,1,'Nurse Laily','Nurse',80,38),(12,202,1,2,'Nurse Wilson','Nurse',75,37),(13,203,7,3,'Nurse Martinez','Nurse',78,39),(14,204,2,4,'Nurse Natalia','Nurse',72,39),(15,205,10,5,'Nurse Michelle','Nurse',62,39),(16,206,4,6,'Nurse Bianca','Nurse',60,39),(17,207,6,7,'Nurse Funmi','Nurse',67,39),(18,208,8,8,'Nurse Ashley','Nurse',60,39),(19,209,5,9,'Nurse Kaima','Nurse',65,39),(20,210,3,10,'Nurse Cheyenne','Nurse',63,39),(21,301,1,9,'Assistant Brown','Administrative Assistant',45,40),(22,302,2,1,'Assistant Wilson','Administrative Assistant',47,38),(23,303,3,7,'Assistant Smith','Administrative Assistant',47,36),(24,304,4,2,'Assistant Johnson','Administrative Assistant',47,38),(25,305,5,10,'Assistant Williams','Administrative Assistant',47,40),(26,306,6,4,'Assistant Roselyn','Administrative Assistant',47,36),(27,307,7,6,'Assistant Taylor','Administrative Assistant',47,38),(28,308,8,8,'Assistant Lee','Administrative Assistant',47,40),(29,309,9,5,'Assistant Rodriguez','Administrative Assistant',47,36),(30,310,10,3,'Assistant Nguyen','Administrative Assistant',47,40),(31,401,9,1,'Secretary Davis','Office Secretary',50,40),(32,402,1,2,'Secretary Garcia','Office Secretary',52,37),(33,403,7,3,'Secretary Evans','Office Secretary',48,38),(34,404,2,4,'Secretary Fisher','Office Secretary',45,36),(35,405,10,5,'Secretary Adams','Office Secretary',35,40),(36,406,4,6,'Secretary Baker','Office Secretary',25,38),(37,407,6,7,'Secretary Clark','Office Secretary',25,36),(38,408,8,8,'Secretary Harris','Office Secretary',25,38),(39,409,5,9,'Secretary Jackson','Office Secretary',25,36),(40,410,3,10,'Secretary King','Office Secretary',25,40),(1,101,1,9,'Dr. Smith','Doctor',120,50),(2,102,2,1,'Dr. Johnson','Doctor',120,48),(3,103,3,7,'Dr. Williams','Doctor',115,47),(4,104,4,2,'Dr. Chris','Doctor',115,47),(5,105,5,10,'Dr. Vy','Doctor',115,48),(6,106,6,4,'Dr. Tu','Doctor',110,46),(7,107,7,6,'Dr. Leo','Doctor',110,47),(8,108,8,8,'Dr. Libareo','Doctor',110,47),(9,109,9,5,'Dr. Kamel','Doctor',110,47),(10,110,10,3,'Dr. Joaquin','Doctor',105,67),(11,201,9,1,'Nurse Laily','Nurse',80,38),(12,202,1,2,'Nurse Wilson','Nurse',75,37),(13,203,7,3,'Nurse Martinez','Nurse',78,39),(14,204,2,4,'Nurse Natalia','Nurse',72,39),(15,205,10,5,'Nurse Michelle','Nurse',62,39),(16,206,4,6,'Nurse Bianca','Nurse',60,39),(17,207,6,7,'Nurse Funmi','Nurse',67,39),(18,208,8,8,'Nurse Ashley','Nurse',60,39),(19,209,5,9,'Nurse Kaima','Nurse',65,39),(20,210,3,10,'Nurse Cheyenne','Nurse',63,39),(21,301,1,9,'Assistant Brown','Administrative Assistant',45,40),(22,302,2,1,'Assistant Wilson','Administrative Assistant',47,38),(23,303,3,7,'Assistant Smith','Administrative Assistant',47,36),(24,304,4,2,'Assistant Johnson','Administrative Assistant',47,38),(25,305,5,10,'Assistant Williams','Administrative Assistant',47,40),(26,306,6,4,'Assistant Roselyn','Administrative Assistant',47,36),(27,307,7,6,'Assistant Taylor','Administrative Assistant',47,38),(28,308,8,8,'Assistant Lee','Administrative Assistant',47,40),(29,309,9,5,'Assistant Rodriguez','Administrative Assistant',47,36),(30,310,10,3,'Assistant Nguyen','Administrative Assistant',47,40),(31,401,9,1,'Secretary Davis','Office Secretary',50,40),(32,402,1,2,'Secretary Garcia','Office Secretary',52,37),(33,403,7,3,'Secretary Evans','Office Secretary',48,38),(34,404,2,4,'Secretary Fisher','Office Secretary',45,36),(35,405,10,5,'Secretary Adams','Office Secretary',35,40),(36,406,4,6,'Secretary Baker','Office Secretary',25,38),(37,407,6,7,'Secretary Clark','Office Secretary',25,36),(38,408,8,8,'Secretary Harris','Office Secretary',25,38),(39,409,5,9,'Secretary Jackson','Office Secretary',25,36),(40,410,3,10,'Secretary King','Office Secretary',25,40),(1,101,1,9,'Dr. Smith','Doctor',120,50),(2,102,2,1,'Dr. Johnson','Doctor',120,48),(3,103,3,7,'Dr. Williams','Doctor',115,47),(4,104,4,2,'Dr. Chris','Doctor',115,47),(5,105,5,10,'Dr. Vy','Doctor',115,48),(6,106,6,4,'Dr. Tu','Doctor',110,46),(7,107,7,6,'Dr. Leo','Doctor',110,47),(8,108,8,8,'Dr. Libareo','Doctor',110,47),(9,109,9,5,'Dr. Kamel','Doctor',110,47),(10,110,10,3,'Dr. Joaquin','Doctor',105,67),(11,201,9,1,'Nurse Laily','Nurse',80,38),(12,202,1,2,'Nurse Wilson','Nurse',75,37),(13,203,7,3,'Nurse Martinez','Nurse',78,39),(14,204,2,4,'Nurse Natalia','Nurse',72,39),(15,205,10,5,'Nurse Michelle','Nurse',62,39),(16,206,4,6,'Nurse Bianca','Nurse',60,39),(17,207,6,7,'Nurse Funmi','Nurse',67,39),(18,208,8,8,'Nurse Ashley','Nurse',60,39),(19,209,5,9,'Nurse Kaima','Nurse',65,39),(20,210,3,10,'Nurse Cheyenne','Nurse',63,39),(21,301,1,9,'Assistant Brown','Administrative Assistant',45,40),(22,302,2,1,'Assistant Wilson','Administrative Assistant',47,38),(23,303,3,7,'Assistant Smith','Administrative Assistant',47,36),(24,304,4,2,'Assistant Johnson','Administrative Assistant',47,38),(25,305,5,10,'Assistant Williams','Administrative Assistant',47,40),(26,306,6,4,'Assistant Roselyn','Administrative Assistant',47,36),(27,307,7,6,'Assistant Taylor','Administrative Assistant',47,38),(28,308,8,8,'Assistant Lee','Administrative Assistant',47,40),(29,309,9,5,'Assistant Rodriguez','Administrative Assistant',47,36),(30,310,10,3,'Assistant Nguyen','Administrative Assistant',47,40),(31,401,9,1,'Secretary Davis','Office Secretary',50,40),(32,402,1,2,'Secretary Garcia','Office Secretary',52,37),(33,403,7,3,'Secretary Evans','Office Secretary',48,38),(34,404,2,4,'Secretary Fisher','Office Secretary',45,36),(35,405,10,5,'Secretary Adams','Office Secretary',35,40),(36,406,4,6,'Secretary Baker','Office Secretary',25,38),(37,407,6,7,'Secretary Clark','Office Secretary',25,36),(38,408,8,8,'Secretary Harris','Office Secretary',25,38),(39,409,5,9,'Secretary Jackson','Office Secretary',25,36),(40,410,3,10,'Secretary King','Office Secretary',25,40),(1,101,1,9,'Dr. Smith','Doctor',120,50),(2,102,2,1,'Dr. Johnson','Doctor',120,48),(3,103,3,7,'Dr. Williams','Doctor',115,47),(4,104,4,2,'Dr. Chris','Doctor',115,47),(5,105,5,10,'Dr. Vy','Doctor',115,48),(6,106,6,4,'Dr. Tu','Doctor',110,46),(7,107,7,6,'Dr. Leo','Doctor',110,47),(8,108,8,8,'Dr. Libareo','Doctor',110,47),(9,109,9,5,'Dr. Kamel','Doctor',110,47),(10,110,10,3,'Dr. Joaquin','Doctor',105,67),(11,201,9,1,'Nurse Laily','Nurse',80,38),(12,202,1,2,'Nurse Wilson','Nurse',75,37),(13,203,7,3,'Nurse Martinez','Nurse',78,39),(14,204,2,4,'Nurse Natalia','Nurse',72,39),(15,205,10,5,'Nurse Michelle','Nurse',62,39),(16,206,4,6,'Nurse Bianca','Nurse',60,39),(17,207,6,7,'Nurse Funmi','Nurse',67,39),(18,208,8,8,'Nurse Ashley','Nurse',60,39),(19,209,5,9,'Nurse Kaima','Nurse',65,39),(20,210,3,10,'Nurse Cheyenne','Nurse',63,39),(21,301,1,9,'Assistant Brown','Administrative Assistant',45,40),(22,302,2,1,'Assistant Wilson','Administrative Assistant',47,38),(23,303,3,7,'Assistant Smith','Administrative Assistant',47,36),(24,304,4,2,'Assistant Johnson','Administrative Assistant',47,38),(25,305,5,10,'Assistant Williams','Administrative Assistant',47,40),(26,306,6,4,'Assistant Roselyn','Administrative Assistant',47,36),(27,307,7,6,'Assistant Taylor','Administrative Assistant',47,38),(28,308,8,8,'Assistant Lee','Administrative Assistant',47,40),(29,309,9,5,'Assistant Rodriguez','Administrative Assistant',47,36),(30,310,10,3,'Assistant Nguyen','Administrative Assistant',47,40),(31,401,9,1,'Secretary Davis','Office Secretary',50,40),(32,402,1,2,'Secretary Garcia','Office Secretary',52,37),(33,403,7,3,'Secretary Evans','Office Secretary',48,38),(34,404,2,4,'Secretary Fisher','Office Secretary',45,36),(35,405,10,5,'Secretary Adams','Office Secretary',35,40),(36,406,4,6,'Secretary Baker','Office Secretary',25,38),(37,407,6,7,'Secretary Clark','Office Secretary',25,36),(38,408,8,8,'Secretary Harris','Office Secretary',25,38),(39,409,5,9,'Secretary Jackson','Office Secretary',25,36),(40,410,3,10,'Secretary King','Office Secretary',25,40);
/*!40000 ALTER TABLE `hours_and_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `Manager_ID` int DEFAULT NULL,
  `Manager_Name` varchar(45) DEFAULT NULL,
  `Salary` int DEFAULT NULL,
  `Shift_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (1,'Manager Smith',150000,1),(2,'Manager Johnson',155000,2),(3,'Manager Williams',140000,3),(4,'Manager Anderson',130000,4),(5,'Manager Wilson',125000,5),(6,'Manager Taylor',120000,6),(7,'Manager Brown',115000,7),(8,'Manager Martinez',110000,8),(9,'Manager Lopez',105000,9),(10,'Manager Hernandez',100000,10),(1,'Manager Smith',150000,1),(2,'Manager Johnson',155000,2),(3,'Manager Williams',140000,3),(4,'Manager Anderson',130000,4),(5,'Manager Wilson',125000,5),(6,'Manager Taylor',120000,6),(7,'Manager Brown',115000,7),(8,'Manager Martinez',110000,8),(9,'Manager Lopez',105000,9),(10,'Manager Hernandez',100000,10),(1,'Manager Smith',150000,1),(2,'Manager Johnson',155000,2),(3,'Manager Williams',140000,3),(4,'Manager Anderson',130000,4),(5,'Manager Wilson',125000,5),(6,'Manager Taylor',120000,6),(7,'Manager Brown',115000,7),(8,'Manager Martinez',110000,8),(9,'Manager Lopez',105000,9),(10,'Manager Hernandez',100000,10),(1,'Manager Smith',150000,1),(2,'Manager Johnson',155000,2),(3,'Manager Williams',140000,3),(4,'Manager Anderson',130000,4),(5,'Manager Wilson',125000,5),(6,'Manager Taylor',120000,6),(7,'Manager Brown',115000,7),(8,'Manager Martinez',110000,8),(9,'Manager Lopez',105000,9),(10,'Manager Hernandez',100000,10),(1,'Manager Smith',150000,1),(2,'Manager Johnson',155000,2),(3,'Manager Williams',140000,3),(4,'Manager Anderson',130000,4),(5,'Manager Wilson',125000,5),(6,'Manager Taylor',120000,6),(7,'Manager Brown',115000,7),(8,'Manager Martinez',110000,8),(9,'Manager Lopez',105000,9),(10,'Manager Hernandez',100000,10),(1,'Manager Smith',150000,1),(2,'Manager Johnson',155000,2),(3,'Manager Williams',140000,3),(4,'Manager Anderson',130000,4),(5,'Manager Wilson',125000,5),(6,'Manager Taylor',120000,6),(7,'Manager Brown',115000,7),(8,'Manager Martinez',110000,8),(9,'Manager Lopez',105000,9),(10,'Manager Hernandez',100000,10);
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurse`
--

DROP TABLE IF EXISTS `nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nurse` (
  `Nurse_ID` int DEFAULT NULL,
  `Nurse_Name` varchar(45) DEFAULT NULL,
  `Shift` varchar(45) DEFAULT NULL,
  `Salary` int DEFAULT NULL,
  `Shift_ID` int DEFAULT NULL,
  `Employee_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse`
--

LOCK TABLES `nurse` WRITE;
/*!40000 ALTER TABLE `nurse` DISABLE KEYS */;
INSERT INTO `nurse` VALUES (1,'Nurse Laily','Evening',60000,9,201),(2,'Nurse Wilson','Morning',58000,1,202),(3,'Nurse Martinez','Morning',56000,7,203),(4,'Nurse Natalia','Afternoon',54000,2,204),(5,'Nurse Michelle','Morning',52000,10,205),(6,'Nurse Bianca','Mid-day',50000,4,206),(7,'Nurse Funmi','Mid-night',48000,6,207),(8,'Nurse Ashley','Afternoon',46000,8,208),(9,'Nurse Kaima','Evening',44000,5,209),(10,'Nurse Cheyenne','Morning',42000,3,210),(1,'Nurse Laily','Evening',60000,9,201),(2,'Nurse Wilson','Morning',58000,1,202),(3,'Nurse Martinez','Morning',56000,7,203),(4,'Nurse Natalia','Afternoon',54000,2,204),(5,'Nurse Michelle','Morning',52000,10,205),(6,'Nurse Bianca','Mid-day',50000,4,206),(7,'Nurse Funmi','Mid-night',48000,6,207),(8,'Nurse Ashley','Afternoon',46000,8,208),(9,'Nurse Kaima','Evening',44000,5,209),(10,'Nurse Cheyenne','Morning',42000,3,210),(1,'Nurse Laily','Evening',60000,9,201),(2,'Nurse Wilson','Morning',58000,1,202),(3,'Nurse Martinez','Morning',56000,7,203),(4,'Nurse Natalia','Afternoon',54000,2,204),(5,'Nurse Michelle','Morning',52000,10,205),(6,'Nurse Bianca','Mid-day',50000,4,206),(7,'Nurse Funmi','Mid-night',48000,6,207),(8,'Nurse Ashley','Afternoon',46000,8,208),(9,'Nurse Kaima','Evening',44000,5,209),(10,'Nurse Cheyenne','Morning',42000,3,210),(1,'Nurse Laily','Evening',60000,9,201),(2,'Nurse Wilson','Morning',58000,1,202),(3,'Nurse Martinez','Morning',56000,7,203),(4,'Nurse Natalia','Afternoon',54000,2,204),(5,'Nurse Michelle','Morning',52000,10,205),(6,'Nurse Bianca','Mid-day',50000,4,206),(7,'Nurse Funmi','Mid-night',48000,6,207),(8,'Nurse Ashley','Afternoon',46000,8,208),(9,'Nurse Kaima','Evening',44000,5,209),(10,'Nurse Cheyenne','Morning',42000,3,210),(1,'Nurse Laily','Evening',60000,9,201),(2,'Nurse Wilson','Morning',58000,1,202),(3,'Nurse Martinez','Morning',56000,7,203),(4,'Nurse Natalia','Afternoon',54000,2,204),(5,'Nurse Michelle','Morning',52000,10,205),(6,'Nurse Bianca','Mid-day',50000,4,206),(7,'Nurse Funmi','Mid-night',48000,6,207),(8,'Nurse Ashley','Afternoon',46000,8,208),(9,'Nurse Kaima','Evening',44000,5,209),(10,'Nurse Cheyenne','Morning',42000,3,210),(1,'Nurse Laily','Evening',60000,9,201),(2,'Nurse Wilson','Morning',58000,1,202),(3,'Nurse Martinez','Morning',56000,7,203),(4,'Nurse Natalia','Afternoon',54000,2,204),(5,'Nurse Michelle','Morning',52000,10,205),(6,'Nurse Bianca','Mid-day',50000,4,206),(7,'Nurse Funmi','Mid-night',48000,6,207),(8,'Nurse Ashley','Afternoon',46000,8,208),(9,'Nurse Kaima','Evening',44000,5,209),(10,'Nurse Cheyenne','Morning',42000,3,210);
/*!40000 ALTER TABLE `nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `office_secretary`
--

DROP TABLE IF EXISTS `office_secretary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `office_secretary` (
  `Office_Secretary_ID` int DEFAULT NULL,
  `Office_Secretary_Name` varchar(45) DEFAULT NULL,
  `Shift` varchar(45) DEFAULT NULL,
  `Salary` int DEFAULT NULL,
  `Shift_ID` int DEFAULT NULL,
  `Employee_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office_secretary`
--

LOCK TABLES `office_secretary` WRITE;
/*!40000 ALTER TABLE `office_secretary` DISABLE KEYS */;
INSERT INTO `office_secretary` VALUES (1,'Secretary Davis','Evening',50000,9,401),(2,'Secretary Garcia','Morning',52000,1,402),(3,'Secretary Evans','Morning',37000,7,403),(4,'Secretary Fisher','Afternoon',35000,2,404),(5,'Secretary Adams','Morning',45000,10,405),(6,'Secretary Baker','Mid-day',43000,4,406),(7,'Secretary Clark','Mid-night',41000,6,407),(8,'Secretary Harris','Afternoon',31000,8,408),(9,'Secretary Jackson','Evening',29000,5,409),(10,'Secretary King','Morning',27000,3,410),(1,'Secretary Davis','Evening',50000,9,401),(2,'Secretary Garcia','Morning',52000,1,402),(3,'Secretary Evans','Morning',37000,7,403),(4,'Secretary Fisher','Afternoon',35000,2,404),(5,'Secretary Adams','Morning',45000,10,405),(6,'Secretary Baker','Mid-day',43000,4,406),(7,'Secretary Clark','Mid-night',41000,6,407),(8,'Secretary Harris','Afternoon',31000,8,408),(9,'Secretary Jackson','Evening',29000,5,409),(10,'Secretary King','Morning',27000,3,410),(1,'Secretary Davis','Evening',50000,9,401),(2,'Secretary Garcia','Morning',52000,1,402),(3,'Secretary Evans','Morning',37000,7,403),(4,'Secretary Fisher','Afternoon',35000,2,404),(5,'Secretary Adams','Morning',45000,10,405),(6,'Secretary Baker','Mid-day',43000,4,406),(7,'Secretary Clark','Mid-night',41000,6,407),(8,'Secretary Harris','Afternoon',31000,8,408),(9,'Secretary Jackson','Evening',29000,5,409),(10,'Secretary King','Morning',27000,3,410),(1,'Secretary Davis','Evening',50000,9,401),(2,'Secretary Garcia','Morning',52000,1,402),(3,'Secretary Evans','Morning',37000,7,403),(4,'Secretary Fisher','Afternoon',35000,2,404),(5,'Secretary Adams','Morning',45000,10,405),(6,'Secretary Baker','Mid-day',43000,4,406),(7,'Secretary Clark','Mid-night',41000,6,407),(8,'Secretary Harris','Afternoon',31000,8,408),(9,'Secretary Jackson','Evening',29000,5,409),(10,'Secretary King','Morning',27000,3,410),(1,'Secretary Davis','Evening',50000,9,401),(2,'Secretary Garcia','Morning',52000,1,402),(3,'Secretary Evans','Morning',37000,7,403),(4,'Secretary Fisher','Afternoon',35000,2,404),(5,'Secretary Adams','Morning',45000,10,405),(6,'Secretary Baker','Mid-day',43000,4,406),(7,'Secretary Clark','Mid-night',41000,6,407),(8,'Secretary Harris','Afternoon',31000,8,408),(9,'Secretary Jackson','Evening',29000,5,409),(10,'Secretary King','Morning',27000,3,410),(1,'Secretary Davis','Evening',50000,9,401),(2,'Secretary Garcia','Morning',52000,1,402),(3,'Secretary Evans','Morning',37000,7,403),(4,'Secretary Fisher','Afternoon',35000,2,404),(5,'Secretary Adams','Morning',45000,10,405),(6,'Secretary Baker','Mid-day',43000,4,406),(7,'Secretary Clark','Mid-night',41000,6,407),(8,'Secretary Harris','Afternoon',31000,8,408),(9,'Secretary Jackson','Evening',29000,5,409),(10,'Secretary King','Morning',27000,3,410);
/*!40000 ALTER TABLE `office_secretary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `Patient_ID` int DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `Health_related_information` varchar(45) DEFAULT NULL,
  `Contact_number` varchar(45) DEFAULT NULL,
  `Permanent_Doctor_ID` int DEFAULT NULL,
  `Primary_Member_ID` int DEFAULT NULL,
  `Relationship` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'John Doe','123 Main St, Toronto , Ontario','Permanent','None','123-456-7890',1,NULL,NULL),(2,'Jane Smith','456 Elm St, Toronto, Ontario','Walk-in','None','234-567-8901',NULL,NULL,NULL),(3,'Michael Johnson','789 Oak St, Toronto, Ontario','Permanent','None','345-678-9012',3,NULL,NULL),(4,'Emily Brown','321 Maple St, Toronto, Ontario','Permanent','None','456-789-0123',4,NULL,NULL),(5,'David Lee','654 Pine St, Toronto, Ontario','Permanent','None','567-890-1234',NULL,NULL,NULL),(6,'Sarah Miller','987 Cedar St, Toronto, Ontario','Permanent','None','678-901-2345',6,NULL,NULL),(7,'Michael Clark','234 Birch St, Toronto, Ontario','Permanent','None','789-012-3456',NULL,NULL,NULL),(8,'Jessica Garcia','567 Willow St, Toronto, Ontario','Permanent','None','890-123-4567',8,NULL,NULL),(9,'Chris Taylor','890 Cherry St, Toronto, Ontario','Permanent','None','901-234-5678',NULL,NULL,NULL),(10,'Jennifer Martinez','123 Pineapple St, Toronto, Ontario','Permanent','None','012-345-6789',NULL,NULL,NULL),(1,'John Doe','123 Main St, Toronto','Permanent','None','123-456-7890',1,NULL,NULL),(2,'Jane Smith','456 Elm St, Toronto','Walk-in','None','234-567-8901',NULL,NULL,NULL),(3,'Michael Johnson','789 Oak St, Toronto','Permanent','None','345-678-9012',3,NULL,NULL),(4,'Emily Brown','321 Maple St, Toronto','Permanent','None','456-789-0123',4,NULL,NULL),(5,'David Lee','654 Pine St, Toronto','Permanent','None','567-890-1234',NULL,NULL,NULL),(6,'Sarah Miller','987 Cedar St, Toronto','Permanent','None','678-901-2345',6,NULL,NULL),(7,'Michael Clark','234 Birch St, Toronto','Permanent','None','789-012-3456',NULL,NULL,NULL),(8,'Jessica Garcia','567 Willow St, Toronto','Permanent','None','890-123-4567',8,NULL,NULL),(9,'Chris Taylor','890 Cherry St, Toronto','Permanent','None','901-234-5678',NULL,NULL,NULL),(10,'Jennifer Martinez','123 Pineapple St, Toronto','Permanent','None','012-345-6789',NULL,NULL,NULL),(1,'John Doe','123 Main St, Toronto','Permanent','None','123-456-7890',1,NULL,NULL),(2,'Jane Smith','456 Elm St, Toronto','Walk-in','None','234-567-8901',NULL,NULL,NULL),(3,'Michael Johnson','789 Oak St, Toronto','Permanent','None','345-678-9012',3,NULL,NULL),(4,'Emily Brown','321 Maple St, Toronto','Permanent','None','456-789-0123',4,NULL,NULL),(5,'David Lee','654 Pine St, Toronto','Permanent','None','567-890-1234',NULL,NULL,NULL),(6,'Sarah Miller','987 Cedar St, Toronto','Permanent','None','678-901-2345',6,NULL,NULL),(7,'Michael Clark','234 Birch St, Toronto','Permanent','None','789-012-3456',NULL,NULL,NULL),(8,'Jessica Garcia','567 Willow St, Toronto','Permanent','None','890-123-4567',8,NULL,NULL),(9,'Chris Taylor','890 Cherry St, Toronto','Permanent','None','901-234-5678',NULL,NULL,NULL),(10,'Jennifer Martinez','123 Pineapple St, Toronto','Permanent','None','012-345-6789',NULL,NULL,NULL),(1,'John Doe','123 Main St, Toronto','Permanent','None','123-456-7890',1,NULL,NULL),(2,'Jane Smith','456 Elm St, Toronto','Walk-in','None','234-567-8901',NULL,NULL,NULL),(3,'Michael Johnson','789 Oak St, Toronto','Permanent','None','345-678-9012',3,NULL,NULL),(4,'Emily Brown','321 Maple St, Toronto','Permanent','None','456-789-0123',4,NULL,NULL),(5,'David Lee','654 Pine St, Toronto','Permanent','None','567-890-1234',NULL,NULL,NULL),(6,'Sarah Miller','987 Cedar St, Toronto','Permanent','None','678-901-2345',6,NULL,NULL),(7,'Michael Clark','234 Birch St, Toronto','Permanent','None','789-012-3456',NULL,NULL,NULL),(8,'Jessica Garcia','567 Willow St, Toronto','Permanent','None','890-123-4567',8,NULL,NULL),(9,'Chris Taylor','890 Cherry St, Toronto','Permanent','None','901-234-5678',NULL,NULL,NULL),(10,'Jennifer Martinez','123 Pineapple St, Toronto','Permanent','None','012-345-6789',NULL,NULL,NULL),(1,'John Doe','123 Main St, Toronto','Permanent','None','123-456-7890',1,NULL,NULL),(2,'Jane Smith','456 Elm St, Toronto','Walk-in','None','234-567-8901',NULL,NULL,NULL),(3,'Michael Johnson','789 Oak St, Toronto','Permanent','None','345-678-9012',3,NULL,NULL),(4,'Emily Brown','321 Maple St, Toronto','Permanent','None','456-789-0123',4,NULL,NULL),(5,'David Lee','654 Pine St, Toronto','Permanent','None','567-890-1234',NULL,NULL,NULL),(6,'Sarah Miller','987 Cedar St, Toronto','Permanent','None','678-901-2345',6,NULL,NULL),(7,'Michael Clark','234 Birch St, Toronto','Permanent','None','789-012-3456',NULL,NULL,NULL),(8,'Jessica Garcia','567 Willow St, Toronto','Permanent','None','890-123-4567',8,NULL,NULL),(9,'Chris Taylor','890 Cherry St, Toronto','Permanent','None','901-234-5678',NULL,NULL,NULL),(10,'Jennifer Martinez','123 Pineapple St, Toronto','Permanent','None','012-345-6789',NULL,NULL,NULL),(1,'John Doe','123 Main St, Toronto','Permanent','None','123-456-7890',1,NULL,NULL),(2,'Jane Smith','456 Elm St, Toronto','Walk-in','None','234-567-8901',NULL,NULL,NULL),(3,'Michael Johnson','789 Oak St, Toronto','Permanent','None','345-678-9012',3,NULL,NULL),(4,'Emily Brown','321 Maple St, Toronto','Permanent','None','456-789-0123',4,NULL,NULL),(5,'David Lee','654 Pine St, Toronto','Permanent','None','567-890-1234',NULL,NULL,NULL),(6,'Sarah Miller','987 Cedar St, Toronto','Permanent','None','678-901-2345',6,NULL,NULL),(7,'Michael Clark','234 Birch St, Toronto','Permanent','None','789-012-3456',NULL,NULL,NULL),(8,'Jessica Garcia','567 Willow St, Toronto','Permanent','None','890-123-4567',8,NULL,NULL),(9,'Chris Taylor','890 Cherry St, Toronto','Permanent','None','901-234-5678',NULL,NULL,NULL),(10,'Jennifer Martinez','123 Pineapple St, Toronto','Permanent','None','012-345-6789',NULL,NULL,NULL);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients_records`
--

DROP TABLE IF EXISTS `patients_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients_records` (
  `Patient_record_ID` int DEFAULT NULL,
  `Patient_ID` int DEFAULT NULL,
  `Nurse_ID` int DEFAULT NULL,
  `Doctor_ID` int DEFAULT NULL,
  `Diagnostic_Test_ID` int DEFAULT NULL,
  `Prescriptions_prescription_ID` int DEFAULT NULL,
  `Nurse_treatment` varchar(45) DEFAULT NULL,
  `Visit_date` datetime DEFAULT NULL,
  `Symptoms` varchar(45) DEFAULT NULL,
  `Referral` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients_records`
--

LOCK TABLES `patients_records` WRITE;
/*!40000 ALTER TABLE `patients_records` DISABLE KEYS */;
INSERT INTO `patients_records` VALUES (1,2,202,101,1,2,'Tylenol','2024-03-01 00:00:00','Cold','Dr. Smith'),(2,3,204,102,2,3,'Cough syrup','2024-03-13 00:00:00','Cough','Dr. Johnson'),(3,1,210,103,3,1,'Aspirin','2024-03-03 00:00:00','Headache','Dr. Williams'),(4,4,206,104,4,4,'Multivitamins','2024-03-04 00:00:00','Sore throat','Dr. Chris'),(5,8,209,105,5,8,'Gestid','2024-03-05 00:00:00','Ulcer','Dr. Vy'),(6,10,207,106,6,10,'Phenergan','2024-03-06 00:00:00','Dizziness','Dr. Tu'),(7,7,203,107,7,7,'Cisplatin','2024-03-10 00:00:00','Cancer','Dr. Leo'),(8,9,208,108,8,9,'Panadol','2024-01-08 00:00:00','Back pain','Dr. Libareo'),(9,6,201,109,9,6,'Ibuprofen','2024-01-09 00:00:00','Joint pain','Dr. Kamel'),(10,5,205,110,10,5,'Amoxicillin','2024-03-07 00:00:00','Shortness of breath','Dr. Joaquin'),(1,2,202,101,1,2,'Tylenol','2015-03-01 00:00:00','Cold','Dr. Smith'),(2,3,204,102,2,3,'Cough syrup','2018-03-13 00:00:00','Cough','Dr. Johnson'),(3,1,210,103,3,1,'Aspirin','2019-03-03 00:00:00','Headache','Dr. Williams'),(4,4,206,104,4,4,'Multivitamins','2022-03-04 00:00:00','Sore throat','Dr. Chris'),(5,8,209,105,5,8,'Gestid','2020-03-05 00:00:00','Ulcer','Dr. Vy'),(6,10,207,106,6,10,'Phenergan','2021-03-06 00:00:00','Dizziness','Dr. Tu'),(7,7,203,107,7,7,'Cisplatin','2001-03-10 00:00:00','Cancer','Dr. Leo'),(8,9,208,108,8,9,'Panadol','2002-01-08 00:00:00','Back pain','Dr. Libareo'),(9,6,201,109,9,6,'Ibuprofen','2024-01-09 00:00:00','Joint pain','Dr. Kamel'),(10,5,205,110,10,5,'Amoxicillin','2024-03-07 00:00:00','Shortness of breath','Dr. Joaquin'),(1,2,202,101,1,2,'Tylenol','2015-03-01 00:00:00','Cold','Dr. Smith'),(2,3,204,102,2,3,'Cough syrup','2018-03-13 00:00:00','Cough','Dr. Johnson'),(3,1,210,103,3,1,'Aspirin','2019-03-03 00:00:00','Headache','Dr. Williams'),(4,4,206,104,4,4,'Multivitamins','2022-03-04 00:00:00','Sore throat','Dr. Chris'),(5,8,209,105,5,8,'Gestid','2020-03-05 00:00:00','Ulcer','Dr. Vy'),(6,10,207,106,6,10,'Phenergan','2021-03-06 00:00:00','Dizziness','Dr. Tu'),(7,7,203,107,7,7,'Cisplatin','2001-03-10 00:00:00','Cancer','Dr. Leo'),(8,9,208,108,8,9,'Panadol','2002-01-08 00:00:00','Back pain','Dr. Libareo'),(9,6,201,109,9,6,'Ibuprofen','2024-01-09 00:00:00','Joint pain','Dr. Kamel'),(10,5,205,110,10,5,'Amoxicillin','2024-03-07 00:00:00','Shortness of breath','Dr. Joaquin'),(1,2,202,101,1,2,'Tylenol','2015-03-01 00:00:00','Cold','Dr. Smith'),(2,3,204,102,2,3,'Cough syrup','2018-03-13 00:00:00','Cough','Dr. Johnson'),(3,1,210,103,3,1,'Aspirin','2019-03-03 00:00:00','Headache','Dr. Williams'),(4,4,206,104,4,4,'Multivitamins','2022-03-04 00:00:00','Sore throat','Dr. Chris'),(5,8,209,105,5,8,'Gestid','2020-03-05 00:00:00','Ulcer','Dr. Vy'),(6,10,207,106,6,10,'Phenergan','2021-03-06 00:00:00','Dizziness','Dr. Tu'),(7,7,203,107,7,7,'Cisplatin','2001-03-10 00:00:00','Cancer','Dr. Leo'),(8,9,208,108,8,9,'Panadol','2002-01-08 00:00:00','Back pain','Dr. Libareo'),(9,6,201,109,9,6,'Ibuprofen','2024-01-09 00:00:00','Joint pain','Dr. Kamel'),(10,5,205,110,10,5,'Amoxicillin','2024-03-07 00:00:00','Shortness of breath','Dr. Joaquin'),(1,2,202,101,1,2,'Tylenol','2015-03-01 00:00:00','Cold','Dr. Smith'),(2,3,204,102,2,3,'Cough syrup','2018-03-13 00:00:00','Cough','Dr. Johnson'),(3,1,210,103,3,1,'Aspirin','2019-03-03 00:00:00','Headache','Dr. Williams'),(4,4,206,104,4,4,'Multivitamins','2022-03-04 00:00:00','Sore throat','Dr. Chris'),(5,8,209,105,5,8,'Gestid','2020-03-05 00:00:00','Ulcer','Dr. Vy'),(6,10,207,106,6,10,'Phenergan','2021-03-06 00:00:00','Dizziness','Dr. Tu'),(7,7,203,107,7,7,'Cisplatin','2001-03-10 00:00:00','Cancer','Dr. Leo'),(8,9,208,108,8,9,'Panadol','2002-01-08 00:00:00','Back pain','Dr. Libareo'),(9,6,201,109,9,6,'Ibuprofen','2024-01-09 00:00:00','Joint pain','Dr. Kamel'),(10,5,205,110,10,5,'Amoxicillin','2024-03-07 00:00:00','Shortness of breath','Dr. Joaquin'),(1,2,202,101,1,2,'Tylenol','2015-03-01 00:00:00','Cold','Dr. Smith'),(2,3,204,102,2,3,'Cough syrup','2018-03-13 00:00:00','Cough','Dr. Johnson'),(3,1,210,103,3,1,'Aspirin','2019-03-03 00:00:00','Headache','Dr. Williams'),(4,4,206,104,4,4,'Multivitamins','2022-03-04 00:00:00','Sore throat','Dr. Chris'),(5,8,209,105,5,8,'Gestid','2020-03-05 00:00:00','Ulcer','Dr. Vy'),(6,10,207,106,6,10,'Phenergan','2021-03-06 00:00:00','Dizziness','Dr. Tu'),(7,7,203,107,7,7,'Cisplatin','2001-03-10 00:00:00','Cancer','Dr. Leo'),(8,9,208,108,8,9,'Panadol','2002-01-08 00:00:00','Back pain','Dr. Libareo'),(9,6,201,109,9,6,'Ibuprofen','2024-01-09 00:00:00','Joint pain','Dr. Kamel'),(10,5,205,110,10,5,'Amoxicillin','2024-03-07 00:00:00','Shortness of breath','Dr. Joaquin');
/*!40000 ALTER TABLE `patients_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescriptions`
--

DROP TABLE IF EXISTS `prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescriptions` (
  `Prescription_ID` int DEFAULT NULL,
  `Patient_ID` int DEFAULT NULL,
  `Doctor_Doctor_ID` int DEFAULT NULL,
  `Medication_title` varchar(45) DEFAULT NULL,
  `Dosage` int DEFAULT NULL,
  `Prescription_usage` varchar(45) DEFAULT NULL,
  `Start_date` datetime DEFAULT NULL,
  `End_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescriptions`
--

LOCK TABLES `prescriptions` WRITE;
/*!40000 ALTER TABLE `prescriptions` DISABLE KEYS */;
INSERT INTO `prescriptions` VALUES (1,1,103,'Aspirin',100,'Once daily','2024-03-17 00:00:00','2024-03-24 00:00:00'),(2,2,101,'Tylenol',250,'Twice daily','2024-03-16 00:00:00','2024-03-23 00:00:00'),(3,3,102,'Cough syrup',50,'Thrice daily','2024-03-15 00:00:00','2024-03-22 00:00:00'),(4,4,104,'Multivitamins',100,'Four times a day','2024-03-04 00:00:00','2024-03-13 00:00:00'),(5,5,110,'Amoxicillin',150,'Twice times a day','2024-03-05 00:00:00','2024-03-14 00:00:00'),(6,6,109,'Ibuprofen',100,'Twice times a day','2024-03-06 00:00:00','2024-03-15 00:00:00'),(7,7,107,'Cisplatin',50,'Once times a day','2024-03-07 00:00:00','2024-03-16 00:00:00'),(8,8,105,'Gestid',80,'Twice times a day','2024-03-08 00:00:00','2024-03-17 00:00:00'),(9,9,108,'Panadol',200,'Thrice times a day','2024-03-09 00:00:00','2024-03-18 00:00:00'),(10,10,106,'Promethazine (Phenergan)',10,'Twice times a day','2024-03-10 00:00:00','2024-03-19 00:00:00'),(1,1,103,'Aspirin',100,'Once daily','2023-03-17 00:00:00','2024-03-24 00:00:00'),(2,2,101,'Tylenol',250,'Twice daily','2019-03-16 00:00:00','2024-03-23 00:00:00'),(3,3,102,'Cough syrup',50,'Thrice daily','2020-03-15 00:00:00','2024-03-22 00:00:00'),(4,4,104,'Multivitamins',100,'Four times a day','2023-03-04 00:00:00','2024-03-13 00:00:00'),(5,5,110,'Amoxicillin',150,'Twice times a day','2024-03-05 00:00:00','2024-03-14 00:00:00'),(6,6,109,'Ibuprofen',100,'Twice times a day','2024-03-06 00:00:00','2024-03-15 00:00:00'),(7,7,107,'Cisplatin',50,'Once times a day','2024-03-07 00:00:00','2024-03-16 00:00:00'),(8,8,105,'Gestid',80,'Twice times a day','2024-03-08 00:00:00','2024-03-17 00:00:00'),(9,9,108,'Panadol',200,'Thrice times a day','2024-03-09 00:00:00','2024-03-18 00:00:00'),(10,10,106,'Promethazine (Phenergan)',10,'Twice times a day','2024-03-10 00:00:00','2024-03-19 00:00:00'),(1,1,103,'Aspirin',100,'Once daily','2023-03-17 00:00:00','2024-03-24 00:00:00'),(2,2,101,'Tylenol',250,'Twice daily','2019-03-16 00:00:00','2024-03-23 00:00:00'),(3,3,102,'Cough syrup',50,'Thrice daily','2020-03-15 00:00:00','2024-03-22 00:00:00'),(4,4,104,'Multivitamins',100,'Four times a day','2023-03-04 00:00:00','2024-03-13 00:00:00'),(5,5,110,'Amoxicillin',150,'Twice times a day','2024-03-05 00:00:00','2024-03-14 00:00:00'),(6,6,109,'Ibuprofen',100,'Twice times a day','2024-03-06 00:00:00','2024-03-15 00:00:00'),(7,7,107,'Cisplatin',50,'Once times a day','2024-03-07 00:00:00','2024-03-16 00:00:00'),(8,8,105,'Gestid',80,'Twice times a day','2024-03-08 00:00:00','2024-03-17 00:00:00'),(9,9,108,'Panadol',200,'Thrice times a day','2024-03-09 00:00:00','2024-03-18 00:00:00'),(10,10,106,'Promethazine (Phenergan)',10,'Twice times a day','2024-03-10 00:00:00','2024-03-19 00:00:00'),(1,1,103,'Aspirin',100,'Once daily','2023-03-17 00:00:00','2024-03-24 00:00:00'),(2,2,101,'Tylenol',250,'Twice daily','2019-03-16 00:00:00','2024-03-23 00:00:00'),(3,3,102,'Cough syrup',50,'Thrice daily','2020-03-15 00:00:00','2024-03-22 00:00:00'),(4,4,104,'Multivitamins',100,'Four times a day','2023-03-04 00:00:00','2024-03-13 00:00:00'),(5,5,110,'Amoxicillin',150,'Twice times a day','2024-03-05 00:00:00','2024-03-14 00:00:00'),(6,6,109,'Ibuprofen',100,'Twice times a day','2024-03-06 00:00:00','2024-03-15 00:00:00'),(7,7,107,'Cisplatin',50,'Once times a day','2024-03-07 00:00:00','2024-03-16 00:00:00'),(8,8,105,'Gestid',80,'Twice times a day','2024-03-08 00:00:00','2024-03-17 00:00:00'),(9,9,108,'Panadol',200,'Thrice times a day','2024-03-09 00:00:00','2024-03-18 00:00:00'),(10,10,106,'Promethazine (Phenergan)',10,'Twice times a day','2024-03-10 00:00:00','2024-03-19 00:00:00'),(1,1,103,'Aspirin',100,'Once daily','2023-03-17 00:00:00','2024-03-24 00:00:00'),(2,2,101,'Tylenol',250,'Twice daily','2019-03-16 00:00:00','2024-03-23 00:00:00'),(3,3,102,'Cough syrup',50,'Thrice daily','2020-03-15 00:00:00','2024-03-22 00:00:00'),(4,4,104,'Multivitamins',100,'Four times a day','2023-03-04 00:00:00','2024-03-13 00:00:00'),(5,5,110,'Amoxicillin',150,'Twice times a day','2024-03-05 00:00:00','2024-03-14 00:00:00'),(6,6,109,'Ibuprofen',100,'Twice times a day','2024-03-06 00:00:00','2024-03-15 00:00:00'),(7,7,107,'Cisplatin',50,'Once times a day','2024-03-07 00:00:00','2024-03-16 00:00:00'),(8,8,105,'Gestid',80,'Twice times a day','2024-03-08 00:00:00','2024-03-17 00:00:00'),(9,9,108,'Panadol',200,'Thrice times a day','2024-03-09 00:00:00','2024-03-18 00:00:00'),(10,10,106,'Promethazine (Phenergan)',10,'Twice times a day','2024-03-10 00:00:00','2024-03-19 00:00:00'),(1,1,103,'Aspirin',100,'Once daily','2023-03-17 00:00:00','2024-03-24 00:00:00'),(2,2,101,'Tylenol',250,'Twice daily','2019-03-16 00:00:00','2024-03-23 00:00:00'),(3,3,102,'Cough syrup',50,'Thrice daily','2020-03-15 00:00:00','2024-03-22 00:00:00'),(4,4,104,'Multivitamins',100,'Four times a day','2023-03-04 00:00:00','2024-03-13 00:00:00'),(5,5,110,'Amoxicillin',150,'Twice times a day','2024-03-05 00:00:00','2024-03-14 00:00:00'),(6,6,109,'Ibuprofen',100,'Twice times a day','2024-03-06 00:00:00','2024-03-15 00:00:00'),(7,7,107,'Cisplatin',50,'Once times a day','2024-03-07 00:00:00','2024-03-16 00:00:00'),(8,8,105,'Gestid',80,'Twice times a day','2024-03-08 00:00:00','2024-03-17 00:00:00'),(9,9,108,'Panadol',200,'Thrice times a day','2024-03-09 00:00:00','2024-03-18 00:00:00'),(10,10,106,'Promethazine (Phenergan)',10,'Twice times a day','2024-03-10 00:00:00','2024-03-19 00:00:00');
/*!40000 ALTER TABLE `prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shifts`
--

DROP TABLE IF EXISTS `shifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shifts` (
  `Shift_ID` int DEFAULT NULL,
  `Start_time` time DEFAULT NULL,
  `End_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shifts`
--

LOCK TABLES `shifts` WRITE;
/*!40000 ALTER TABLE `shifts` DISABLE KEYS */;
INSERT INTO `shifts` VALUES (1,'07:00:00','12:00:00'),(2,'14:00:00','20:00:00'),(3,'09:00:00','15:00:00'),(4,'08:00:00','14:00:00'),(5,'15:00:00','22:00:00'),(6,'22:00:00','05:00:00'),(7,'05:00:00','09:00:00'),(8,'12:00:00','19:00:00'),(9,'19:00:00','02:00:00'),(10,'02:00:00','08:00:00'),(1,'07:00:00','12:00:00'),(2,'14:00:00','20:00:00'),(3,'09:00:00','15:00:00'),(4,'08:00:00','14:00:00'),(5,'15:00:00','22:00:00'),(6,'22:00:00','05:00:00'),(7,'05:00:00','09:00:00'),(8,'12:00:00','19:00:00'),(9,'19:00:00','02:00:00'),(10,'02:00:00','08:00:00'),(1,'07:00:00','12:00:00'),(2,'14:00:00','20:00:00'),(3,'09:00:00','15:00:00'),(4,'08:00:00','14:00:00'),(5,'15:00:00','22:00:00'),(6,'22:00:00','05:00:00'),(7,'05:00:00','09:00:00'),(8,'12:00:00','19:00:00'),(9,'19:00:00','02:00:00'),(10,'02:00:00','08:00:00'),(1,'07:00:00','12:00:00'),(2,'14:00:00','20:00:00'),(3,'09:00:00','15:00:00'),(4,'08:00:00','14:00:00'),(5,'15:00:00','22:00:00'),(6,'22:00:00','05:00:00'),(7,'05:00:00','09:00:00'),(8,'12:00:00','19:00:00'),(9,'19:00:00','02:00:00'),(10,'02:00:00','08:00:00'),(1,'07:00:00','12:00:00'),(2,'14:00:00','20:00:00'),(3,'09:00:00','15:00:00'),(4,'08:00:00','14:00:00'),(5,'15:00:00','22:00:00'),(6,'22:00:00','05:00:00'),(7,'05:00:00','09:00:00'),(8,'12:00:00','19:00:00'),(9,'19:00:00','02:00:00'),(10,'02:00:00','08:00:00'),(1,'07:00:00','12:00:00'),(2,'14:00:00','20:00:00'),(3,'09:00:00','15:00:00'),(4,'08:00:00','14:00:00'),(5,'15:00:00','22:00:00'),(6,'22:00:00','05:00:00'),(7,'05:00:00','09:00:00'),(8,'12:00:00','19:00:00'),(9,'19:00:00','02:00:00'),(10,'02:00:00','08:00:00');
/*!40000 ALTER TABLE `shifts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-05 15:29:16
