CREATE DATABASE  IF NOT EXISTS `project_1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `project_1`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: project_1
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `broker_master`
--

DROP TABLE IF EXISTS `broker_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `broker_master` (
  `broker_id` int NOT NULL,
  `broker_name` varchar(100) DEFAULT NULL,
  `broker_org_name` varchar(100) DEFAULT NULL,
  `contact_info` text,
  `status` varchar(10) NOT NULL,
  `added_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`broker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `broker_master`
--

LOCK TABLES `broker_master` WRITE;
/*!40000 ALTER TABLE `broker_master` DISABLE KEYS */;
INSERT INTO `broker_master` VALUES (301,'Ravi Mehra','Star Insurance Co.','ravi.mehra@starinsure.com, +91-9000010001','Active','2025-06-13 08:10:03','admin'),(302,'Nisha Iyer','Safe Cover Ltd.','nisha.iyer@safecover.com, +91-9000010002','Active','2025-06-13 08:10:03','admin'),(303,'Kunal Rao','Shield Brokers','kunal.rao@shield.com, +91-9000010003','Active','2025-06-13 08:10:03','admin'),(304,'Divya Sharma','Trusty Plans','divya.sharma@trusty.com, +91-9000010004','Active','2025-06-13 08:10:03','admin'),(305,'Aditya Verma','Secure Life','aditya.verma@securelife.com, +91-9000010005','Active','2025-06-13 08:10:03','admin'),(306,'Pooja Mishra','LifeLine Group','pooja.mishra@lifeline.com, +91-9000010006','Active','2025-06-13 08:10:03','admin'),(307,'Ankit Shah','Trust Guard','ankit.shah@trustguard.com, +91-9000010007','Active','2025-06-13 08:10:03','admin'),(308,'Meera Singh','Bima Secure','meera.singh@bima.com, +91-9000010008','Active','2025-06-13 08:10:03','admin'),(309,'Vikram Reddy','InsureOne','vikram.reddy@insureone.com, +91-9000010009','Active','2025-06-13 08:10:03','admin'),(310,'Sneha Pillai','Cover Point','sneha.pillai@coverpoint.com, +91-9000010010','Active','2025-06-13 08:10:03','admin'),(311,'Ramesh Kapoor','SureTrust','ramesh.kapoor@suretrust.com, +91-9000010011','Active','2025-06-13 08:10:03','admin'),(312,'Anjali Nair','PolicyBazaar Ltd.','anjali.nair@policybazaar.com, +91-9000010012','Active','2025-06-13 08:10:03','admin'),(313,'Neeraj Desai','Right Cover Co.','neeraj.desai@rightcover.com, +91-9000010013','Active','2025-06-13 08:10:03','admin'),(314,'Sonal Bhatia','FutureSecure','sonal.bhatia@futuresecure.com, +91-9000010014','Active','2025-06-13 08:10:03','admin'),(315,'Harshita Rao','SureSafe India','harshita.rao@suresafe.com, +91-9000010015','Active','2025-06-13 08:10:03','admin'),(316,'Rajiv Malik','Insure365','rajiv.malik@insure365.com, +91-9000010016','Active','2025-06-13 08:10:03','admin'),(317,'Prerna Yadav','Smart Secure','prerna.yadav@smartsecure.com, +91-9000010017','Active','2025-06-13 08:10:03','admin'),(318,'Tushar Khanna','Protect Hub','tushar.khanna@protecthub.com, +91-9000010018','Active','2025-06-13 08:10:03','admin'),(319,'Kriti Jain','Assure Co.','kriti.jain@assure.com, +91-9000010019','Active','2025-06-13 08:10:03','admin'),(320,'Deepak Agarwal','Insurance Partner','deepak.agarwal@partner.com, +91-9000010020','Active','2025-06-13 08:10:03','admin'),(321,'Rachna Gupta','Cover360','rachna.gupta@cover360.com, +91-9000010021','Active','2025-06-13 08:10:03','admin'),(322,'Aarav Singh','Bharat Policy','aarav.singh@bharatpolicy.com, +91-9000010022','Active','2025-06-13 08:10:03','admin'),(323,'Sanya Patel','Family Secure','sanya.patel@familysecure.com, +91-9000010023','Active','2025-06-13 08:10:03','admin'),(324,'Yash Khurana','ProtectSure','yash.khurana@protectsure.com, +91-9000010024','Active','2025-06-13 08:10:03','admin'),(325,'Ishita Joshi','MyPolicy Co.','ishita.joshi@mypolicy.com, +91-9000010025','Active','2025-06-13 08:10:03','admin');
/*!40000 ALTER TABLE `broker_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_user`
--

DROP TABLE IF EXISTS `login_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_user` (
  `login_id` int NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `lead_id` int DEFAULT NULL,
  `usertype` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `added_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`login_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `login_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_user`
--

LOCK TABLES `login_user` WRITE;
/*!40000 ALTER TABLE `login_user` DISABLE KEYS */;
INSERT INTO `login_user` VALUES (1,'encryptedPass1',1,201,'Broker','Active','2025-06-13 07:49:30','admin'),(2,'encryptedPass2',2,202,'Broker','Active','2025-06-13 07:49:30','admin'),(3,'encryptedPass3',3,203,'User','Active','2025-06-13 07:49:30','admin'),(4,'encryptedPass4',4,204,'User','Active','2025-06-13 07:49:30','admin'),(5,'encryptedPass5',5,205,'Sales','Active','2025-06-13 07:49:30','admin'),(6,'encryptedPass6',6,206,'User','Active','2025-06-13 07:49:30','admin'),(7,'encryptedPass7',7,207,'User','Active','2025-06-13 07:49:30','admin'),(8,'encryptedPass8',8,208,'Sales','Active','2025-06-13 07:49:30','admin'),(9,'encryptedPass9',9,209,'Broker','Active','2025-06-13 07:49:30','admin'),(10,'encryptedPass10',10,210,'Broker','Active','2025-06-13 07:49:30','admin'),(11,'encryptedPass11',11,211,'Broker','Active','2025-06-13 07:49:30','admin'),(12,'encryptedPass12',12,212,'User','Active','2025-06-13 07:49:30','admin'),(13,'encryptedPass13',13,213,'Sales','Active','2025-06-13 07:49:30','admin'),(14,'encryptedPass14',14,214,'User','Active','2025-06-13 07:49:30','admin'),(15,'encryptedPass15',15,215,'User','Active','2025-06-13 07:49:30','admin'),(16,'encryptedPass16',16,216,'Broker','Active','2025-06-13 07:49:30','admin'),(17,'encryptedPass17',17,217,'User','Active','2025-06-13 07:49:30','admin'),(18,'encryptedPass18',18,218,'Sales','Active','2025-06-13 07:49:30','admin'),(19,'encryptedPass19',19,219,'Sales','Active','2025-06-13 07:49:30','admin'),(20,'encryptedPass20',20,220,'User','Active','2025-06-13 07:49:30','admin'),(21,'encryptedPass21',21,221,'User','Active','2025-06-13 07:49:30','admin'),(22,'encryptedPass22',22,222,'User','Active','2025-06-13 07:49:30','admin'),(23,'encryptedPass23',23,223,'Sales','Active','2025-06-13 07:49:30','admin'),(24,'encryptedPass24',24,224,'Broker','Active','2025-06-13 07:49:30','admin'),(25,'encryptedPass25',25,225,'User','Active','2025-06-13 07:49:30','admin');
/*!40000 ALTER TABLE `login_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policy_details`
--

DROP TABLE IF EXISTS `policy_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `policy_details` (
  `policy_id` int NOT NULL,
  `policy_number` varchar(50) NOT NULL,
  `user_id` int NOT NULL,
  `quote_id` int NOT NULL,
  `vehicle_make_id` int DEFAULT NULL,
  `vehicle_model_id` int DEFAULT NULL,
  `coverage_type` varchar(20) NOT NULL,
  `add_on_coverages` text,
  `base_premium` decimal(10,2) NOT NULL,
  `add_on_premium` decimal(10,2) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `total_premium` decimal(10,2) NOT NULL,
  `currency` varchar(10) DEFAULT 'INR',
  `broker_id` int DEFAULT NULL,
  `policy_start_date` date NOT NULL,
  `policy_end_date` date NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `policy_status` varchar(20) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`policy_id`),
  KEY `user_id` (`user_id`),
  KEY `vehicle_make_id` (`vehicle_make_id`),
  KEY `vehicle_model_id` (`vehicle_model_id`),
  KEY `broker_id` (`broker_id`),
  CONSTRAINT `policy_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`),
  CONSTRAINT `policy_details_ibfk_2` FOREIGN KEY (`vehicle_make_id`) REFERENCES `vehicle_make_master` (`make_id`),
  CONSTRAINT `policy_details_ibfk_3` FOREIGN KEY (`vehicle_model_id`) REFERENCES `vehicle_model_master` (`model_id`),
  CONSTRAINT `policy_details_ibfk_4` FOREIGN KEY (`broker_id`) REFERENCES `broker_master` (`broker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy_details`
--

LOCK TABLES `policy_details` WRITE;
/*!40000 ALTER TABLE `policy_details` DISABLE KEYS */;
INSERT INTO `policy_details` VALUES (1,'POL1001',1,101,1,1,'Comprehensive','ZeroDep,EngineProtect',5000.00,500.00,900.00,6400.00,'INR',301,'2025-01-01','2026-01-01','Paid','Active','2025-06-13 08:10:17','admin'),(2,'POL1002',2,102,2,2,'Third Party','PA Cover',3000.00,200.00,576.00,3776.00,'INR',302,'2025-01-01','2026-01-01','Paid','Active','2025-06-13 08:10:17','admin'),(3,'POL1003',3,103,3,3,'Comprehensive','ZeroDep',5200.00,600.00,936.00,6736.00,'INR',303,'2025-01-01','2026-01-01','Paid','Active','2025-06-13 08:10:17','admin'),(4,'POL1004',4,104,4,4,'Third Party','',2800.00,0.00,504.00,3304.00,'INR',304,'2025-01-01','2026-01-01','Pending','Pending','2025-06-13 08:10:17','admin'),(5,'POL1005',5,105,5,5,'Comprehensive','EngineProtect',5400.00,400.00,972.00,6772.00,'INR',305,'2025-01-01','2026-01-01','Paid','Active','2025-06-13 08:10:17','admin'),(6,'POL1006',6,106,6,6,'Third Party','',2500.00,0.00,450.00,2950.00,'INR',306,'2025-01-01','2026-01-01','Unpaid','Inactive','2025-06-13 08:10:17','admin'),(7,'POL1007',7,107,7,7,'Comprehensive','ZeroDep,PA Cover',5100.00,450.00,954.00,6504.00,'INR',307,'2025-01-01','2026-01-01','Paid','Active','2025-06-13 08:10:17','admin'),(8,'POL1008',8,108,8,8,'Third Party','PA Cover',2700.00,150.00,513.00,3363.00,'INR',308,'2025-01-01','2026-01-01','Paid','Expired','2025-06-13 08:10:17','admin'),(9,'POL1009',9,109,9,9,'Comprehensive','ZeroDep',4800.00,400.00,846.00,6046.00,'INR',309,'2025-01-01','2026-01-01','Paid','Active','2025-06-13 08:10:17','admin'),(10,'POL1010',10,110,10,10,'Third Party','',3100.00,0.00,558.00,3658.00,'INR',310,'2025-01-01','2026-01-01','Pending','Pending','2025-06-13 08:10:17','admin'),(11,'POL1011',11,111,11,11,'Comprehensive','ZeroDep,EngineProtect',5600.00,650.00,999.00,7249.00,'INR',311,'2025-01-01','2026-01-01','Paid','Active','2025-06-13 08:10:17','admin'),(12,'POL1012',12,112,12,12,'Third Party','',2600.00,0.00,468.00,3068.00,'INR',312,'2025-01-01','2026-01-01','Unpaid','Inactive','2025-06-13 08:10:17','admin'),(13,'POL1013',13,113,13,13,'Comprehensive','PA Cover',5000.00,300.00,954.00,6254.00,'INR',313,'2025-01-01','2026-01-01','Paid','Active','2025-06-13 08:10:17','admin'),(14,'POL1014',14,114,14,14,'Third Party','',2400.00,0.00,432.00,2832.00,'INR',314,'2025-01-01','2026-01-01','Paid','Active','2025-06-13 08:10:17','admin'),(15,'POL1015',15,115,15,15,'Comprehensive','ZeroDep',4700.00,500.00,846.00,6046.00,'INR',315,'2025-01-01','2026-01-01','Pending','Pending','2025-06-13 08:10:17','admin'),(16,'POL1016',16,116,16,16,'Third Party','',2800.00,0.00,504.00,3304.00,'INR',316,'2025-01-01','2026-01-01','Paid','Expired','2025-06-13 08:10:17','admin'),(17,'POL1017',17,117,17,17,'Comprehensive','EngineProtect,PA Cover',5500.00,550.00,999.00,7049.00,'INR',317,'2025-01-01','2026-01-01','Paid','Active','2025-06-13 08:10:17','admin'),(18,'POL1018',18,118,18,18,'Third Party','',2500.00,0.00,450.00,2950.00,'INR',318,'2025-01-01','2026-01-01','Paid','Active','2025-06-13 08:10:17','admin'),(19,'POL1019',19,119,19,19,'Comprehensive','ZeroDep',5200.00,400.00,954.00,6554.00,'INR',319,'2025-01-01','2026-01-01','Unpaid','Inactive','2025-06-13 08:10:17','admin'),(20,'POL1020',20,120,20,20,'Third Party','',2300.00,0.00,414.00,2714.00,'INR',320,'2025-01-01','2026-01-01','Paid','Active','2025-06-13 08:10:17','admin'),(21,'POL1021',21,121,21,21,'Comprehensive','PA Cover',5100.00,350.00,982.50,6432.50,'INR',321,'2025-01-01','2026-01-01','Paid','Active','2025-06-13 08:10:17','admin'),(22,'POL1022',22,122,22,22,'Third Party','',2650.00,0.00,477.00,3127.00,'INR',322,'2025-01-01','2026-01-01','Paid','Pending','2025-06-13 08:10:17','admin'),(23,'POL1023',23,123,23,23,'Comprehensive','EngineProtect',5450.00,350.00,954.00,6754.00,'INR',323,'2025-01-01','2026-01-01','Paid','Active','2025-06-13 08:10:17','admin'),(24,'POL1024',24,124,24,24,'Third Party','',2900.00,0.00,522.00,3422.00,'INR',324,'2025-01-01','2026-01-01','Paid','Expired','2025-06-13 08:10:17','admin'),(25,'POL1025',25,125,25,25,'Comprehensive','ZeroDep,PA Cover',5800.00,650.00,999.00,7449.00,'INR',325,'2025-01-01','2026-01-01','Paid','Active','2025-06-13 08:10:17','admin');
/*!40000 ALTER TABLE `policy_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_info`
--

DROP TABLE IF EXISTS `quote_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quote_info` (
  `quote_id` int NOT NULL,
  `user_id` int NOT NULL,
  `vehicle_make_id` int NOT NULL,
  `vehicle_model_id` int NOT NULL,
  `coverage_type` varchar(30) NOT NULL,
  `add_on_coverages` text,
  `base_premium` decimal(10,2) DEFAULT NULL,
  `add_on_premium` decimal(10,2) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `total_premium` decimal(10,2) DEFAULT NULL,
  `quote_status` varchar(20) DEFAULT 'Pending',
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`quote_id`),
  KEY `user_id` (`user_id`),
  KEY `vehicle_make_id` (`vehicle_make_id`),
  KEY `vehicle_model_id` (`vehicle_model_id`),
  CONSTRAINT `quote_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`),
  CONSTRAINT `quote_info_ibfk_2` FOREIGN KEY (`vehicle_make_id`) REFERENCES `vehicle_make_master` (`make_id`),
  CONSTRAINT `quote_info_ibfk_3` FOREIGN KEY (`vehicle_model_id`) REFERENCES `vehicle_model_master` (`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quote_info`
--

LOCK TABLES `quote_info` WRITE;
/*!40000 ALTER TABLE `quote_info` DISABLE KEYS */;
INSERT INTO `quote_info` VALUES (101,1,1,1,'Comprehensive','ZeroDep,PA Cover',5000.00,500.00,900.00,6400.00,'Finalized','2025-06-13 08:26:45','admin'),(102,2,2,2,'Third Party','PA Cover',3000.00,200.00,576.00,3776.00,'Finalized','2025-06-13 08:26:45','admin'),(103,3,3,3,'Comprehensive','ZeroDep',5200.00,600.00,936.00,6736.00,'Finalized','2025-06-13 08:26:45','admin'),(104,4,4,4,'Third Party','',2800.00,0.00,504.00,3304.00,'Pending','2025-06-13 08:26:45','admin'),(105,5,5,5,'Comprehensive','EngineProtect',5400.00,400.00,972.00,6772.00,'Finalized','2025-06-13 08:26:45','admin'),(106,6,6,6,'Third Party','',2500.00,0.00,450.00,2950.00,'Rejected','2025-06-13 08:26:45','admin'),(107,7,7,7,'Comprehensive','ZeroDep,PA Cover',5100.00,450.00,954.00,6504.00,'Finalized','2025-06-13 08:26:45','admin'),(108,8,8,8,'Third Party','PA Cover',2700.00,150.00,513.00,3363.00,'Finalized','2025-06-13 08:26:45','admin'),(109,9,9,9,'Comprehensive','ZeroDep',4800.00,400.00,846.00,6046.00,'Finalized','2025-06-13 08:26:45','admin'),(110,10,10,10,'Third Party','',3100.00,0.00,558.00,3658.00,'Pending','2025-06-13 08:26:45','admin'),(111,11,11,11,'Comprehensive','ZeroDep,EngineProtect',5600.00,650.00,999.00,7249.00,'Finalized','2025-06-13 08:26:45','admin'),(112,12,12,12,'Third Party','',2600.00,0.00,468.00,3068.00,'Rejected','2025-06-13 08:26:45','admin'),(113,13,13,13,'Comprehensive','PA Cover',5000.00,300.00,954.00,6254.00,'Finalized','2025-06-13 08:26:45','admin'),(114,14,14,14,'Third Party','',2400.00,0.00,432.00,2832.00,'Finalized','2025-06-13 08:26:45','admin'),(115,15,15,15,'Comprehensive','ZeroDep',4700.00,500.00,846.00,6046.00,'Pending','2025-06-13 08:26:45','admin'),(116,16,16,16,'Third Party','',2800.00,0.00,504.00,3304.00,'Expired','2025-06-13 08:26:45','admin'),(117,17,17,17,'Comprehensive','EngineProtect,PA Cover',5500.00,550.00,999.00,7049.00,'Finalized','2025-06-13 08:26:45','admin'),(118,18,18,18,'Third Party','',2500.00,0.00,450.00,2950.00,'Finalized','2025-06-13 08:26:45','admin'),(119,19,19,19,'Comprehensive','ZeroDep',5200.00,400.00,954.00,6554.00,'Rejected','2025-06-13 08:26:45','admin'),(120,20,20,20,'Third Party','',2300.00,0.00,414.00,2714.00,'Finalized','2025-06-13 08:26:45','admin'),(121,21,21,21,'Comprehensive','PA Cover',5100.00,350.00,982.50,6432.50,'Finalized','2025-06-13 08:26:45','admin'),(122,22,22,22,'Third Party','',2650.00,0.00,477.00,3127.00,'Pending','2025-06-13 08:26:45','admin'),(123,23,23,23,'Comprehensive','EngineProtect',5450.00,350.00,954.00,6754.00,'Finalized','2025-06-13 08:26:45','admin'),(124,24,24,24,'Third Party','',2900.00,0.00,522.00,3422.00,'Expired','2025-06-13 08:26:45','admin'),(125,25,25,25,'Comprehensive','ZeroDep,PA Cover',5800.00,650.00,999.00,7449.00,'Finalized','2025-06-13 08:26:45','admin');
/*!40000 ALTER TABLE `quote_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile` (
  `user_id` int NOT NULL,
  `usertype` varchar(20) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `marital_status` int DEFAULT NULL,
  `education` int DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `addr1` varchar(100) DEFAULT NULL,
  `addr2` varchar(100) DEFAULT NULL,
  `addr3` varchar(100) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` int DEFAULT NULL,
  `state` int DEFAULT NULL,
  `country` int DEFAULT NULL,
  `national_id` varchar(20) NOT NULL,
  `nationality` int NOT NULL,
  `status` varchar(10) NOT NULL,
  `added_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (1,'User','Arjun','Sharma','Female','2012-10-07','arjun.sharma@example.com',2,3,'05115209273','9329864630','107 Main Street','Apt 1','Near School','Street 1',2,2,1,'IND20121007A',1,'Active','2025-06-13 07:49:12','admin'),(2,'User','Ritika','Verma','Female','2001-07-27','ritika.verma@example.com',1,3,'05115130009','9515736566','197 Main Street','Apt 2','Near Park','Street 2',8,4,1,'IND20010727B',1,'Active','2025-06-13 07:49:12','admin'),(3,'Sales','Karan','Patel','Male','2002-10-27','karan.patel@example.com',2,1,'05115216570','9928246454','21 Main Street','Apt 3','Next to Mall','Street 3',1,2,1,'IND20021027C',1,'Active','2025-06-13 07:49:12','admin'),(4,'Sales','Ankita','Mishra','Female','2010-08-28','ankita.mishra@example.com',2,1,'05115336396','9531247569','114 Main Street','Apt 4','Near Temple','Street 4',9,5,1,'IND20100828D',1,'Active','2025-06-13 07:49:12','admin'),(5,'User','Sahil','Khan','Male','1999-06-12','sahil.khan@example.com',1,2,'05115123456','9988776655','88 Main Street','Apt 5','Next to Bank','Street 5',5,3,1,'IND19990612E',1,'Active','2025-06-13 07:49:12','admin'),(6,'Broker','Priya','Joshi','Female','1995-03-20','priya.joshi@example.com',2,1,'05115781234','9123456780','55 Main Street','Apt 6','Near Bus Stop','Street 6',6,2,1,'IND19950320F',1,'Active','2025-06-13 07:49:12','admin'),(7,'User','Amit','Rao','Male','1998-11-23','amit.rao@example.com',1,3,'05115876543','9345678901','123 Main Street','Apt 7','Near Hospital','Street 7',7,4,1,'IND19981123G',1,'Active','2025-06-13 07:49:12','admin'),(8,'Broker','Meena','Kapoor','Female','1992-09-15','meena.kapoor@example.com',2,2,'05115432109','9234567890','66 Main Street','Apt 8','Next to Library','Street 8',8,1,1,'IND19920915H',1,'Active','2025-06-13 07:49:12','admin'),(9,'User','Rajiv','Nair','Male','2000-05-10','rajiv.nair@example.com',1,1,'05115678901','9456781234','144 Main Street','Apt 9','Near College','Street 9',9,3,1,'IND20000510I',1,'Active','2025-06-13 07:49:12','admin'),(10,'Broker','Sneha','Reddy','Female','1997-01-01','sneha.reddy@example.com',2,3,'05115987654','9123987654','199 Main Street','Apt 10','Next to Gym','Street 10',10,5,1,'IND19970101J',1,'Active','2025-06-13 07:49:12','admin'),(11,'User','Ravi','Singh','Male','1996-02-14','ravi.singh@example.com',1,1,'05115345678','9345678123','77 Main Street','Apt 11','Near Lake','Street 11',1,1,1,'IND19960214K',1,'Active','2025-06-13 07:49:12','admin'),(12,'User','Neha','Dubey','Female','2001-06-05','neha.dubey@example.com',2,2,'05115567890','9876543210','133 Main Street','Apt 12','Next to Police Station','Street 12',2,1,1,'IND20010605L',1,'Active','2025-06-13 07:49:12','admin'),(13,'Sales','Manish','Mehta','Male','1994-08-18','manish.mehta@example.com',1,3,'05115123478','9123009876','66 Main Street','Apt 13','Near Museum','Street 13',3,1,1,'IND19940818M',1,'Active','2025-06-13 07:49:12','admin'),(14,'Sales','Pooja','Yadav','Female','1993-11-11','pooja.yadav@example.com',2,1,'05115456789','9001234567','12 Main Street','Apt 14','Next to Zoo','Street 14',4,1,1,'IND19931111N',1,'Active','2025-06-13 07:49:12','admin'),(15,'User','Vikas','Garg','Male','1991-03-29','vikas.garg@example.com',1,2,'05115678902','9321098765','177 Main Street','Apt 15','Near Airport','Street 15',5,1,1,'IND19910329O',1,'Active','2025-06-13 07:49:12','admin'),(16,'Sales','Divya','Chopra','Female','1990-12-22','divya.chopra@example.com',2,3,'05115345609','9345612780','45 Main Street','Apt 16','Next to Church','Street 16',1,1,1,'IND19901222P',1,'Active','2025-06-13 07:49:12','admin'),(17,'Broker','Rahul','Desai','Male','1998-09-13','rahul.desai@example.com',1,2,'05115789012','9432187650','88 Main Street','Apt 17','Near Stadium','Street 17',2,1,1,'IND19980913Q',1,'Active','2025-06-13 07:49:12','admin'),(18,'Sales','Ayesha','Ali','Female','1996-07-19','ayesha.ali@example.com',2,1,'05115234567','9765432101','22 Main Street','Apt 18','Next to Garden','Street 18',3,1,1,'IND19960719R',1,'Active','2025-06-13 07:49:12','admin'),(19,'User','Gaurav','Bansal','Male','1999-02-02','gaurav.bansal@example.com',1,2,'05115123499','9654321098','34 Main Street','Apt 19','Near Metro','Street 19',4,1,1,'IND19990202S',1,'Active','2025-06-13 07:49:12','admin'),(20,'Sales','Tanya','Jain','Female','2000-04-30','tanya.jain@example.com',2,3,'05115670012','9123498765','199 Main Street','Apt 20','Next to School','Street 20',5,1,1,'IND20000430T',1,'Active','2025-06-13 07:49:12','admin'),(21,'Broker','Rohit','Pandey','Male','1997-09-09','rohit.pandey@example.com',1,1,'05115988765','9345098765','188 Main Street','Apt 21','Near Tower','Street 21',1,1,1,'IND19970909U',1,'Active','2025-06-13 07:49:12','admin'),(22,'User','Nisha','Iyer','Female','1995-10-20','nisha.iyer@example.com',2,2,'05115760001','9123409876','155 Main Street','Apt 22','Next to College','Street 22',2,1,1,'IND19951020V',1,'Active','2025-06-13 07:49:12','admin'),(23,'Broker','Aman','Malik','Male','1994-06-06','aman.malik@example.com',1,3,'05115876543','9543210789','121 Main Street','Apt 23','Near Hilltop','Street 23',3,1,1,'IND19940606W',1,'Active','2025-06-13 07:49:12','admin'),(24,'User','Swati','Roy','Female','1993-03-03','swati.roy@example.com',2,1,'05115199988','9678901234','77 Main Street','Apt 24','Next to Mall','Street 24',4,1,1,'IND19930303X',1,'Active','2025-06-13 07:49:12','admin'),(25,'User','Varun','Yadav','Male','1998-10-10','varun.yadav@example.com',2,1,'05115439064','9373947734','200 Main Street','Apt 25','Near Office','Street 25',10,1,1,'IND19981010Y',1,'Active','2025-06-13 07:49:12','admin');
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_make_master`
--

DROP TABLE IF EXISTS `vehicle_make_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_make_master` (
  `make_id` int NOT NULL,
  `make_desc` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `added_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`make_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_make_master`
--

LOCK TABLES `vehicle_make_master` WRITE;
/*!40000 ALTER TABLE `vehicle_make_master` DISABLE KEYS */;
INSERT INTO `vehicle_make_master` VALUES (1,'Toyota','Active','2025-06-13 06:34:33','admin'),(2,'Honda','Active','2025-06-13 06:34:33','admin'),(3,'Ford','Active','2025-06-13 06:34:33','admin'),(4,'Hyundai','Active','2025-06-13 06:34:33','admin'),(5,'Maruti Suzuki','Active','2025-06-13 06:34:33','admin'),(6,'Tata','Active','2025-06-13 06:34:33','admin'),(7,'Mahindra','Active','2025-06-13 06:34:33','admin'),(8,'Chevrolet','Inactive','2025-06-13 06:34:33','admin'),(9,'Nissan','Active','2025-06-13 06:34:33','admin'),(10,'Volkswagen','Active','2025-06-13 06:34:33','admin'),(11,'Kia','Active','2025-06-13 06:34:33','admin'),(12,'Renault','Active','2025-06-13 06:34:33','admin'),(13,'Skoda','Active','2025-06-13 06:34:33','admin'),(14,'Jeep','Active','2025-06-13 06:34:33','admin'),(15,'BMW','Active','2025-06-13 06:34:33','admin'),(16,'Mercedes-Benz','Active','2025-06-13 06:34:33','admin'),(17,'Audi','Active','2025-06-13 06:34:33','admin'),(18,'Porsche','Active','2025-06-13 06:34:33','admin'),(19,'Lexus','Active','2025-06-13 06:34:33','admin'),(20,'Jaguar','Active','2025-06-13 06:34:33','admin'),(21,'Fiat','Inactive','2025-06-13 06:34:33','admin'),(22,'Mitsubishi','Inactive','2025-06-13 06:34:33','admin'),(23,'Datsun','Inactive','2025-06-13 06:34:33','admin'),(24,'Volvo','Active','2025-06-13 06:34:33','admin'),(25,'Isuzu','Active','2025-06-13 06:34:33','admin');
/*!40000 ALTER TABLE `vehicle_make_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_model_master`
--

DROP TABLE IF EXISTS `vehicle_model_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_model_master` (
  `model_id` int NOT NULL,
  `model_desc` varchar(100) NOT NULL,
  `make_id` int DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `added_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`model_id`),
  KEY `make_id` (`make_id`),
  CONSTRAINT `vehicle_model_master_ibfk_1` FOREIGN KEY (`make_id`) REFERENCES `vehicle_make_master` (`make_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_model_master`
--

LOCK TABLES `vehicle_model_master` WRITE;
/*!40000 ALTER TABLE `vehicle_model_master` DISABLE KEYS */;
INSERT INTO `vehicle_model_master` VALUES (1,'Fortuner',1,'Active','2025-06-13 06:34:49','admin'),(2,'Innova Crysta',1,'Active','2025-06-13 06:34:49','admin'),(3,'City',2,'Active','2025-06-13 06:34:49','admin'),(4,'Civic',2,'Active','2025-06-13 06:34:49','admin'),(5,'EcoSport',3,'Active','2025-06-13 06:34:49','admin'),(6,'Figo',3,'Inactive','2025-06-13 06:34:49','admin'),(7,'i20',4,'Active','2025-06-13 06:34:49','admin'),(8,'Creta',4,'Active','2025-06-13 06:34:49','admin'),(9,'Swift',5,'Active','2025-06-13 06:34:49','admin'),(10,'Baleno',5,'Active','2025-06-13 06:34:49','admin'),(11,'Nexon',6,'Active','2025-06-13 06:34:49','admin'),(12,'Harrier',6,'Active','2025-06-13 06:34:49','admin'),(13,'Thar',7,'Active','2025-06-13 06:34:49','admin'),(14,'XUV700',7,'Active','2025-06-13 06:34:49','admin'),(15,'Beat',8,'Inactive','2025-06-13 06:34:49','admin'),(16,'Cruze',8,'Inactive','2025-06-13 06:34:49','admin'),(17,'Kicks',9,'Active','2025-06-13 06:34:49','admin'),(18,'Magnite',9,'Active','2025-06-13 06:34:49','admin'),(19,'Polo',10,'Active','2025-06-13 06:34:49','admin'),(20,'Vento',10,'Active','2025-06-13 06:34:49','admin'),(21,'Seltos',11,'Active','2025-06-13 06:34:49','admin'),(22,'Sonet',11,'Active','2025-06-13 06:34:49','admin'),(23,'Duster',12,'Active','2025-06-13 06:34:49','admin'),(24,'Kiger',12,'Active','2025-06-13 06:34:49','admin'),(25,'Octavia',13,'Active','2025-06-13 06:34:49','admin');
/*!40000 ALTER TABLE `vehicle_model_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'project_1'
--
/*!50003 DROP FUNCTION IF EXISTS `CalculateQuotePremium` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CalculateQuotePremium`(qid int) RETURNS decimal(10,2)
    DETERMINISTIC
begin
declare total decimal(10, 2);
select base_premium + add_on_premium + tax_amount into total
from quote_info
where quote_id = qid;
return total;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getbrokercode` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getbrokercode`(bid int) RETURNS varchar(10) CHARSET utf8mb4
    DETERMINISTIC
begin
    return concat('br-', lpad(bid, 4, '0'));
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getpolicyrisklabel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getpolicyrisklabel`(pid int) RETURNS varchar(10) CHARSET utf8mb4
    DETERMINISTIC
begin
declare risk varchar(10);
declare total decimal(10,2);

select total_premium into total
from policy_details
where policy_id = pid;

set risk = case
        when total > 7000 then 'high'
        when total between 4000 and 7000 then 'medium'
        else 'low'
end;
return risk;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getuserstatusflag` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getuserstatusflag`(uid int) RETURNS varchar(5) CHARSET utf8mb4
    DETERMINISTIC
begin
declare flag varchar(5);
select if(status = 'active', 'yes', 'no') into flag
from user_profile
where user_id = uid;
return flag;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetPoliciesByDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetPoliciesByDate`(in start_date date, in end_date date)
begin
select policy_number, policy_status, policy_end_date
from policy_details
where policy_end_date BETWEEN start_date AND end_date
and policy_status IN ('Pending', 'Expired')
order by policy_end_date;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_check_user_active` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_check_user_active`(in uid int)
begin
declare u_status varchar(10);

select status into u_status
from user_profile
where user_id = uid;

if u_status = 'Active' THEN
select 'User is active' AS message;
else
select 'User is not active or does not exist' AS message;
end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_get_user_policy_summary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_get_user_policy_summary`(IN uid INT)
begin
select u.user_id, u.first_name, COUNT(p.policy_id) AS active_policies,
sum(p.total_premium) AS total_paid
from user_profile u
join policy_details p ON u.user_id = p.user_id
where u.user_id = uid AND p.payment_status = 'Paid'
group by u.user_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_list_finalized_quotes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_list_finalized_quotes`()
begin
select quote_id, user_id, total_premium, quote_status
from quote_info
where quote_status = 'Finalized'
order by total_premium DESC;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-22 18:41:07
