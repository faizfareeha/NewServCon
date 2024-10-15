-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: new_service
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `app_form`
--

DROP TABLE IF EXISTS `app_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_form` (
  `con_type` varchar(50) DEFAULT NULL,
  `app_id` int NOT NULL,
  `ltht_supp` varchar(20) DEFAULT NULL,
  `mob_no` varchar(20) DEFAULT NULL,
  `email_id` varchar(20) DEFAULT NULL,
  `house_no` varchar(100) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `addr1` varchar(100) DEFAULT NULL,
  `addr2` varchar(100) DEFAULT NULL,
  `addr3` varchar(100) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `pin` varchar(20) DEFAULT NULL,
  `district` varchar(20) DEFAULT NULL,
  `block` varchar(50) DEFAULT NULL,
  `panchayat` varchar(50) DEFAULT NULL,
  `village` varchar(50) DEFAULT NULL,
  `division` varchar(50) DEFAULT NULL,
  `sub_div` varchar(50) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `tariff` varchar(20) DEFAULT NULL,
  `phase_val` varchar(20) DEFAULT NULL,
  `load_val` varchar(50) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `appl_name` varchar(100) DEFAULT NULL,
  `fh_name` varchar(100) DEFAULT NULL,
  `id_proof_type` varchar(50) DEFAULT NULL,
  `id_proof_file` varchar(100) DEFAULT NULL,
  `addr_proof_type` varchar(50) DEFAULT NULL,
  `addr_proof1` varchar(100) DEFAULT NULL,
  `addr_proof2` varchar(100) DEFAULT NULL,
  `appl_photo` varchar(100) DEFAULT NULL,
  `ownship_photo1` varchar(100) DEFAULT NULL,
  `ownship_photo2` varchar(100) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_form`
--

LOCK TABLES `app_form` WRITE;
/*!40000 ALTER TABLE `app_form` DISABLE KEYS */;
INSERT INTO `app_form` VALUES ('Industrial',1381573,'LT','7487365273','jala@gmail.com','23, 7 Main','Lamington Road','Patel Mansion','Topiwala Lane','Bt Compound','Mumbai','400064','2','5','9','17','3','8','21','DS1D','1','1','Male','Jalal','Abdul','Passport','1381573_id_proof.jpeg','Passport','1381573_address_proof_front.jpeg','1381573_address_proof_last.jpeg','1381573_photo_of_applicant.jpeg','1381573_ownership_front.jpeg','1381573_ownership_last.jpeg','Not Verified'),('Industrial',1850674,'LT','3344556677','mim@gmain.com','645','hall street','Jaga area ','near west port','opposite tripura ashram','Patna city','863567','3','7','13','22','1','1','1','KJ','1','3','Female','Mina','Jayakrishna','Adhaar Card','1850674_id_proof.jpg','Passport','1850674_address_proof_front.jpg','1850674_address_proof_last.jpg','1850674_photo_of_applicant.jpg','1850674_ownership_front.jpg','1850674_ownership_last.jpg','Not Verified'),('Domestic',2010337,'LT','8756483796','govi@gmail.com','49 Sanghrjka House','Meenakshi Koil Street','Shivaji Nagar','Lamington Road','Jamoui Maidan','Danapur','560001','4','9','16','26','1','2','3','DS1D','3','1','Male','Govind Verma','Murari Krishnan','Passport','2010337_id_proof.jpg','Passport','2010337_address_proof_front.jpg','2010337_address_proof_last.jpg','2010337_photo_of_applicant.jpg','2010337_ownership_front.jpg','2010337_ownership_last.jpg','Not Verified'),('Public Water Works',2230025,'HT','8736527618','ashi@gmail.com','1892/9 1st Floor','Mathuradas Road','Hari Ram Market','Badhuram Bhuvan','Shastri Nagar','Danapur','400067','4','10','17','27','2','3','5','DS1D','3','1','Female','Ashiya Khan','Amir Khan','Passport','2230025_id_proof.jpeg','Passport','2230025_address_proof_front.jpeg','2230025_address_proof_last.jpeg','2230025_photo_of_applicant.jpeg','2230025_ownership_front.jpeg','2230025_ownership_last.jpeg','Not Verified'),('Domestic',2329538,'LT','8877633526','jani@gmail.com','102, Plot 393','L T Road','Opp Goyal Shopping Centre','C R Avenue','St,ramakrishnanagar','Darbhanga','600087','4','9','16','26','2','3','5','DS3D','1','1','Female','Janvi','Hritesh','Adhaar Card','2329538_id_proof.jpeg','Adhaar Card','2329538_address_proof_front.jpeg','2329538_address_proof_last.jpeg','2329538_photo_of_applicant.jpeg','2329538_ownership_front.jpeg','2329538_ownership_last.jpeg','Not Verified'),('Industrial',3107400,'LT','7836725634','raju09@gmail.com','6 Gulmohar Apartment','Mandir Road','Sadavijay Nagar Vidya','Delux Char Rasta','Worli Hill Estate','Bhojpur','800001','3','7','13','21','3','9','22','DS1D','3','3','Male','Rajesh','Harishankar','Passport','3107400_id_proof.jpeg','Passport','3107400_address_proof_front.jpeg','3107400_address_proof_last.jpeg','3107400_photo_of_applicant.jpeg','3107400_ownership_front.jpeg','3107400_ownership_last.jpeg','Not Verified'),('Domestic',3175953,'LT','2345432345','rani03@gmail.com','50','Baker street','Johar fall apartment','Near south atlanta','behind rasoi','Patna City','874673','2','5','9','17','1','2','4','DS3D','3','3','Male','Rani','Raja','Pan Card','3175953_id_proof.jpg','Rashan Card','3175953_address_proof_front.jpg','3175953_address_proof_last.jpg','3175953_photo_of_applicant.jpg','3175953_ownership_front.jpg','3175953_ownership_last.jpg','Not Verified'),('Industrial',3441713,'HT','4444444444','tina@gina.com','','2a','','','','Patna','30000','1','2','3','5','3','8','21','DS1D','1','3','Female','Tina','heho','Adhaar Card','3441713_id_proof.jpg','Passport','3441713_address_proof_front.jpg','3441713_address_proof_last.jpg','3441713_photo_of_applicant.jpg','3441713_ownership_front.jpg','3441713_ownership_last.jpg','Not Verified'),('Domestic',3446216,'LT','7763562761','chi12@gmail.com','Plot No 81','Bankim Chatterjee Street','Sandhya Apt','Sector 6','Kopar Khairne','Patna','700073','1','4','8','15','2','5','12','DS3D','3','3','Female','Chetanya','Jitesh','Adhaar Card','3446216_id_proof.jpeg','Adhaar Card','3446216_address_proof_front.jpeg','3446216_address_proof_last.jpeg','3446216_photo_of_applicant.jpeg','3446216_ownership_front.jpeg','3446216_ownership_last.jpeg','Not Verified'),('Har Ghar Nal',4106171,'LT','8888888888','lala@lolo.com','29','Patliputra Colony','Konaje Proper','Ullal','','Manglore','574153','4','10','17','27','2','4','9','DS1D','3','1','Female','tina','heho','Adhaar Card','4106171_id_proof.jpg','Driving License','4106171_address_proof_front.jpg','4106171_address_proof_last.jpg','4106171_photo_of_applicant.jpg','4106171_ownership_front.jpg','4106171_ownership_last.jpg','Verified'),('Commercial',4994667,'LT','9846736527','jai@gmail.com','Shop No 2','2-3-81, Amberpet','Plot No 25','Sai Udhyan, Sec No 14','Opp Juhugaon Devi Mandir','Gaya','800079','2','5','10','18','1','1','2','DS1D','1','1','Male','Jaishankar','Mahesh','Adhaar Card','4994667_id_proof.jpg','Adhaar Card','4994667_address_proof_front.jpg','4994667_address_proof_last.jpg','4994667_photo_of_applicant.jpg','4994667_ownership_front.jpg','4994667_ownership_last.jpg','Not Verified'),('',7626793,'LT','7468362763','laxsh@gmail.com','1st Floor','Jaykunj Rd','Bhagyashree Complex','Guru Govind Sing Indl Est','Loha Bhavan','Doha','764863','3','8','14','24','1','2','3','DS1D','1','3','Female','Lakshmi Bai','Ramakrishna','Driving License','7626793_id_proof.jpeg','Rashan Card','7626793_address_proof_front.jpeg','7626793_address_proof_last.jpeg','7626793_photo_of_applicant.jpeg','7626793_ownership_front.jpeg','7626793_ownership_last.jpeg','Not Verified'),('Domestic',10627628,'LT','9988776655','hina@dombot.com','29','Patliputra Colony','Road 2A','','','Patna','800013','4','9','15','25','3','8','20','DS1D','3','3','Female','Hina','heho','Adhaar Card','10627628_id_proof.jpeg','Adhaar Card','10627628_address_proof_front.jpeg','10627628_address_proof_last.jpeg','10627628_photo_of_applicant.jpeg','10627628_ownership_front.jpeg','10627628_ownership_last.jpeg','Not Verified');
/*!40000 ALTER TABLE `app_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blocks` (
  `id` int NOT NULL,
  `d_id` int NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`,`d_id`),
  KEY `d_id` (`d_id`),
  CONSTRAINT `blocks_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `district` (`d_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks`
--

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` VALUES (1,1,'Patna Sardar'),(2,1,'Bikram'),(3,1,'Bakhtiarpur'),(4,1,'Fatwah'),(5,2,'Bodh Gaya'),(6,2,'Mohanpur'),(7,3,'Arrah'),(8,3,'Piro'),(9,4,'Alinagar'),(10,4,'Baheri');
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `district` (
  `d_id` int NOT NULL,
  `d_name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES (1,'Patna'),(2,'Gaya'),(3,'Bhojpur'),(4,'Darbhanga');
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `division`
--

DROP TABLE IF EXISTS `division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `division` (
  `div_id` int NOT NULL,
  `div_name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`div_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `division`
--

LOCK TABLES `division` WRITE;
/*!40000 ALTER TABLE `division` DISABLE KEYS */;
INSERT INTO `division` VALUES (1,'Patliputra'),(2,'Barh'),(3,'Bihta');
/*!40000 ALTER TABLE `division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panchayat`
--

DROP TABLE IF EXISTS `panchayat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `panchayat` (
  `id` int NOT NULL,
  `d_id` int NOT NULL,
  `b_id` int NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`,`d_id`,`b_id`),
  KEY `d_id` (`d_id`),
  KEY `b_id` (`b_id`),
  CONSTRAINT `panchayat_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `district` (`d_id`) ON DELETE CASCADE,
  CONSTRAINT `panchayat_ibfk_2` FOREIGN KEY (`b_id`) REFERENCES `blocks` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panchayat`
--

LOCK TABLES `panchayat` WRITE;
/*!40000 ALTER TABLE `panchayat` DISABLE KEYS */;
INSERT INTO `panchayat` VALUES (1,1,1,'Digha'),(2,1,1,'Manipur'),(3,1,2,'Barah'),(4,1,2,'Maner Telpa'),(5,1,3,'Champapur'),(6,1,3,'Doma'),(7,1,4,'Bali'),(8,1,4,'Dumari'),(9,2,5,'Atiya'),(10,2,5,'Bara'),(11,2,6,'Ladu'),(12,2,6,'Teswar'),(13,3,7,'Jamira'),(14,3,8,'Amai'),(15,4,9,'Alinagar'),(16,4,9,'Motipur'),(17,4,10,'Baligao');
/*!40000 ALTER TABLE `panchayat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `id` int NOT NULL,
  `div_id` int NOT NULL,
  `sd_id` int NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`,`div_id`,`sd_id`),
  KEY `div_id` (`div_id`),
  KEY `sd_id` (`sd_id`),
  CONSTRAINT `section_ibfk_1` FOREIGN KEY (`div_id`) REFERENCES `division` (`div_id`) ON DELETE CASCADE,
  CONSTRAINT `section_ibfk_2` FOREIGN KEY (`sd_id`) REFERENCES `subdiv` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (1,1,1,'A.N. College'),(2,1,1,'S.K. Puri'),(3,1,2,'Rajapur'),(4,1,2,'Sadakat Ashram'),(5,2,3,'Athmalgola'),(6,2,3,'Bakhtiyarpur(R)'),(7,2,3,'Bakhtiyarpur(T)'),(8,2,4,'Barh(R)'),(9,2,4,'Barh(T)'),(10,2,4,'Belchi'),(11,2,4,'Pandarak'),(12,2,5,'Hathidah(R)'),(13,2,5,'Hathidah(T)'),(14,2,6,'Ghorsari'),(15,2,6,'Mokamah(R)'),(16,2,6,'Mokamah(T)'),(17,3,7,'Bihta-1'),(18,3,7,'Bihta-2'),(19,3,7,'Pareo'),(20,3,8,'Bikram'),(21,3,8,'Lala Bhadsara'),(22,3,9,'Maner');
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subdiv`
--

DROP TABLE IF EXISTS `subdiv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subdiv` (
  `id` int NOT NULL,
  `div_id` int NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`,`div_id`),
  KEY `div_id` (`div_id`),
  CONSTRAINT `subdiv_ibfk_1` FOREIGN KEY (`div_id`) REFERENCES `division` (`div_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subdiv`
--

LOCK TABLES `subdiv` WRITE;
/*!40000 ALTER TABLE `subdiv` DISABLE KEYS */;
INSERT INTO `subdiv` VALUES (1,1,'S.K Puri'),(2,1,'Sadakat Ashram'),(3,2,'Bakhtiyarpur'),(4,2,'Barh'),(5,2,'Hathidah'),(6,2,'Mokamah'),(7,3,'Bihta'),(8,3,'Bikram'),(9,3,'Maner');
/*!40000 ALTER TABLE `subdiv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usr_info`
--

DROP TABLE IF EXISTS `usr_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usr_info` (
  `userid` varchar(20) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) NOT NULL,
  `Mobile` varchar(20) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL,
  `Division` varchar(20) DEFAULT NULL,
  `Subdivision` varchar(20) DEFAULT NULL,
  `Section` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usr_info`
--

LOCK TABLES `usr_info` WRITE;
/*!40000 ALTER TABLE `usr_info` DISABLE KEYS */;
INSERT INTO `usr_info` VALUES ('505','jason','json@mson.c',NULL,'jason','Official',NULL,NULL,NULL),('A101','Raghav','raghu@gmail.com','4455667788','raghav','Official','2','4','8'),('A202','Sunaina','s@gmail.com','2233445566','sunaina','Official','1','1','1'),('A303','Aditya','adi07@gmail.com','8877665544','aditya','Official','3','9','22'),('A404','Ayesha','aish@gmail.com','8476378276','ayesha','Official','1','2','4'),('A505','Jason','json@mson.com','6376487365','jason','Official','3','9','22'),('Admin','Admin','',NULL,'admin','Admin',NULL,NULL,NULL),('ashi@gmail.com','Ashiya Khan','ashi@gmail.com','8736527618','Ashi1234','Applicant','null','null','null'),('chi12@gmail.com','Chetanya','chi12@gmail.com','7763562761','Chi12345','Applicant','null','null','null'),('govi@gmail.com','Govind Verma','govi@gmail.com','8756483796','Govind123','Applicant','null','null','null'),('hina@dombot.com','Hina','hina@dombot.com','9988776655','Hi123456','Applicant',NULL,NULL,NULL),('jai@gmail.com','Jaishankar','jai@gmail.com','9846736527','Jaish123','Applicant','null','null','null'),('jala@gmail.com','Jalal','jala@gmail.com','7487365273','Jala1234','Applicant','null','null','null'),('jani@gmail.com','Janvi','jani@gmail.com','8877633526','Jani1234','Applicant','null','null','null'),('laxsh@gmail.com','Lakshmi Bai','laxsh@gmail.com','7468362763','Laxi1234','Applicant','null','null','null'),('le@pe.c','Laurel','le@pe.c','1122334455','Laurel123','Applicant',NULL,NULL,NULL),('mim@gmain.com','Mina','mim@gmain.com','3344556677','Mini1234','Applicant','null','null','null'),('raju09@gmail.com','Rajesh','raju09@gmail.com','7836725634','Raju1234','Applicant','null','null','null'),('rani03@gmail.com','Rani','rani03@gmail.com','2345432345','Rani1234','Applicant','null','null','null'),('tina@gina.com','Tina','tina@gina.com','4444444444','Tina1234','Applicant',NULL,NULL,NULL),('z@f.can','tina','z@f.can',NULL,'Lala1234','Applicant',NULL,NULL,NULL);
/*!40000 ALTER TABLE `usr_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usr_role`
--

DROP TABLE IF EXISTS `usr_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usr_role` (
  `role_id` int NOT NULL,
  `role_name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usr_role`
--

LOCK TABLES `usr_role` WRITE;
/*!40000 ALTER TABLE `usr_role` DISABLE KEYS */;
INSERT INTO `usr_role` VALUES (1,'Applicant'),(2,'Official');
/*!40000 ALTER TABLE `usr_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vil_ward`
--

DROP TABLE IF EXISTS `vil_ward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vil_ward` (
  `id` int NOT NULL,
  `d_id` int NOT NULL,
  `b_id` int NOT NULL,
  `p_id` int NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`d_id`,`b_id`,`p_id`),
  KEY `d_id` (`d_id`),
  KEY `b_id` (`b_id`),
  KEY `p_id` (`p_id`),
  CONSTRAINT `vil_ward_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `district` (`d_id`) ON DELETE CASCADE,
  CONSTRAINT `vil_ward_ibfk_2` FOREIGN KEY (`b_id`) REFERENCES `blocks` (`id`) ON DELETE CASCADE,
  CONSTRAINT `vil_ward_ibfk_3` FOREIGN KEY (`p_id`) REFERENCES `panchayat` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vil_ward`
--

LOCK TABLES `vil_ward` WRITE;
/*!40000 ALTER TABLE `vil_ward` DISABLE KEYS */;
INSERT INTO `vil_ward` VALUES (1,1,1,1,'Digha Diara'),(2,1,1,1,'Khaas Diara'),(3,1,1,2,'Manipur Diara'),(4,1,1,2,'Manipur Digha Diara'),(5,1,2,3,'Donnpur'),(6,1,2,3,'Barah'),(7,1,2,4,'Chauthia'),(8,1,2,4,'Sundarpur'),(9,1,3,5,'Dedur'),(10,1,3,5,'Simir'),(11,1,3,6,'Salimpur'),(12,1,3,6,'Lakhipur'),(13,1,4,7,'Parsa'),(14,1,4,7,'Ramji Chak'),(15,1,4,8,'Abdalpur'),(16,1,4,8,'Ranipur'),(17,2,5,9,'Gangahar'),(18,2,5,10,'Nimahar'),(19,2,6,11,'Jogar'),(20,2,6,12,'Ramdasa'),(21,3,7,13,'Jamira'),(22,3,7,13,'Santpur'),(23,3,8,14,'Amai'),(24,3,8,14,'Tetar Dih'),(25,4,9,15,'Alinagar'),(26,4,9,16,'Andauli'),(27,4,10,17,'Balgao');
/*!40000 ALTER TABLE `vil_ward` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-16  0:02:24
