-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: mobiles
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mobiles`
--

DROP TABLE IF EXISTS `mobiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobiles` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `brand` varchar(20) NOT NULL,
  `model` varchar(40) DEFAULT NULL,
  `fc1` int(3) DEFAULT '0',
  `fc2` int(3) DEFAULT '0',
  `bc1` int(3) DEFAULT '0',
  `bc2` int(3) DEFAULT '0',
  `bc3` int(3) DEFAULT '0',
  `bc4` int(4) DEFAULT '0',
  `ram` float(3,1) NOT NULL,
  `rom` int(3) NOT NULL,
  `battery` int(5) NOT NULL,
  `android` float(2,1) NOT NULL,
  `price` int(6) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobiles`
--

LOCK TABLES `mobiles` WRITE;
/*!40000 ALTER TABLE `mobiles` DISABLE KEYS */;
INSERT INTO `mobiles` VALUES (1,'Samsung','M 10',5,0,13,5,0,0,3.0,32,3400,8.1,8000,'samsung_m_10_3gb.jpeg'),(2,'Samsung','M 20',8,0,13,5,0,0,4.0,64,5000,8.1,12000,'samsung_m_20_4gb.jpeg'),(3,'Samsung','Galaxy A2 Core',5,0,5,0,0,0,1.0,16,2600,8.1,5290,'samsung_galaxy_a2_core.jpeg'),(4,'Samsung','Galaxy J2',5,0,8,0,0,0,2.0,16,2600,7.0,7500,'samsung_galaxy_j2.jpeg'),(5,'Samsung','On 5 Pro',5,0,8,0,0,0,2.0,16,2600,6.0,7250,'samsung_on_5_pro.jpeg'),(6,'Samsung','JS',5,0,13,0,0,0,1.5,8,2600,5.1,7987,'samsung_js.jpeg'),(7,'Samsung','Galaxy A 10',5,0,13,0,0,0,2.0,32,3400,9.0,7990,'samsung_galaxy_a_10.jpeg'),(8,'Samsung','J 6',8,0,13,0,0,0,4.0,64,3000,8.0,9490,'samsung_j_6.jpeg'),(9,'Samsung','M 10',5,0,13,5,0,0,2.0,16,3400,8.1,7862,'samsung_m_10_2gb.jpeg'),(10,'Samsung','M 20',8,0,13,5,0,0,3.0,32,5000,8.1,10000,'samsung_m_20_3gb.jpeg'),(11,'Samsung','M 30',8,0,13,5,5,0,4.0,64,5000,8.1,12000,'samsung_m_30_4gb.jpeg'),(12,'Samsung','A 30',16,0,16,5,0,0,4.0,64,4000,9.0,15490,'samsung_a_30.jpeg'),(13,'Samsung','A 8+',16,8,16,0,0,0,6.0,64,3500,7.0,22000,'samsung_a+8_+.jpeg'),(14,'Samsung','A 8 star',24,0,24,16,0,0,6.0,64,3700,8.0,20800,'samsung_a_8_star.jpeg'),(15,'Samsung','M 30',16,0,13,5,5,0,6.0,128,5000,8.1,17000,'samsung_m_30_6gb.jpeg'),(16,'Samsung','A 70',32,0,32,8,5,0,6.0,128,4500,9.0,29000,'samsung_a_70.jpeg'),(17,'Samsung','M 40',16,0,32,8,5,0,6.0,128,3500,9.0,19000,'samsung_m_40.jpeg'),(18,'Samsung','A 50',25,0,25,5,8,0,6.0,64,4000,9.0,21490,'samsung_a_50.jpeg'),(59,'xiomi','MI A3',32,0,40,8,2,0,4.0,64,4030,9.0,12283,'xiomi_mi_a_3.jpeg'),(60,'xiomi','Redmi Note 7 pro',13,0,48,5,0,0,4.0,64,4000,9.0,11999,'xiomi_redmi_note_7_pro.jpeg'),(61,'xiomi','Redmi Note 7S',13,0,48,5,0,0,3.0,32,4000,9.0,8999,'xiomi_redmi_not_7_s.jpeg'),(62,'xiomi','MI A2 (MI 6X)',20,0,12,2,0,0,4.0,64,3010,8.1,8831,'xiomi_mi_a2.jpeg'),(63,'xiomi','Redmi Y2 64 GB',16,0,12,5,0,0,4.0,64,3080,8.1,8900,'xiomi_redmi_y_2.jpeg'),(64,'xiomi','MI A3 128GB',32,0,48,8,2,0,6.0,128,4030,9.0,15054,'xiomi_mi_a_2.jpeg'),(65,'xiomi','Redmi Note 5 Pro',20,0,12,5,0,0,4.0,64,4000,7.1,9999,'xiomi_redmi_note_5_pro.jpeg'),(66,'xiomi','Redmi Note 6 Pro',20,2,12,5,0,0,4.0,64,4000,8.1,10720,'xiomi_redmi_note_6_pro.jpeg'),(67,'xiomi','Redmi 6A',5,0,13,0,0,0,2.0,16,5570,8.1,3000,'xiomi_redmi_6a.jpeg'),(68,'xiomi','Redmi 6 Pro',5,0,12,5,0,0,3.0,32,4000,8.1,7160,'xiomi_redmi_6_pro.jpeg'),(69,'xiomi','Redmi Go',5,0,8,0,0,0,1.0,8,3000,8.1,4299,'xiomi_redmi_go.jpeg'),(70,'xiomi','Redmi Note 7 Pro 128GB',13,0,48,5,0,0,6.0,128,4000,9.0,14999,'xiomi_redmi_note_7_pro_128gb.jpeg'),(71,'xiomi','Redmi Note 7S 64GB',13,0,48,5,0,0,6.0,64,4000,9.0,9999,'xiomi_redmi_note_7_s.jpeg'),(72,'xiomi','Redmi Y3',32,0,12,2,0,0,3.0,32,4000,9.0,7997,'xiomi_redmi_Y3.jpeg'),(73,'xiomi','Redmi Note 7',13,0,12,2,0,0,3.0,32,4000,9.0,9849,'xiomi_redmi_note_7.jpeg'),(74,'xiomi','Redmi 7A',5,0,12,0,0,0,2.0,16,4000,9.0,4999,'xiomi_redmi_7a.jpeg'),(75,'xiomi','Redmi K20',20,2,48,13,8,0,6.0,64,4000,9.0,19999,'xiomi_redmi_k20.jpeg'),(76,'xiomi','Redmi 7',8,0,12,2,0,0,2.0,32,4000,9.0,5999,'xiomi_redmi_7.jpeg'),(77,'xiomi','Redmi 8A',8,0,12,0,0,0,2.0,32,5000,9.0,6499,'xiomi_redmi_8a.jpeg'),(78,'xiomi','Redmi K20 Pro',20,0,48,13,8,0,6.0,128,4000,9.0,24999,'xiomi_redmi_k20_pro.jpeg'),(79,'vivo','V17 Pro',32,8,48,13,8,2,8.0,128,4100,9.0,28490,'vivo_v_17_pro.jpeg'),(80,'vivo','S1',32,0,16,8,2,0,4.0,128,4500,9.0,16731,'vivo_v_s_1.jpeg'),(81,'vivo','U10',8,0,13,8,2,0,3.0,32,5000,9.0,8990,'vivo_u_10.jpeg'),(82,'vivo','V15 Pro',32,0,48,8,5,0,6.0,128,3700,9.0,22071,'vivo_v_15_pro.jpeg'),(83,'vivo','Y15 2019',16,0,13,8,2,0,4.0,64,5000,9.0,11951,'vivo_y_15_2019.jpeg'),(84,'vivo','Y17',32,8,13,8,2,0,4.0,128,5000,9.0,13941,'vivo_y_17.jpeg'),(85,'vivo','V11',25,0,16,5,0,0,6.0,64,3315,8.1,15190,'vivo_v_11.jpeg'),(86,'vivo','Y81',5,0,13,0,0,0,3.0,32,3260,8.1,8990,'vivo_y_81.jpeg'),(87,'vivo','Y93',8,0,13,2,0,0,4.0,32,4030,8.1,11990,'vivo_y_93.jpeg'),(88,'vivo','V7 Plus',24,0,16,0,0,0,4.0,64,3225,7.1,14899,'vivo_v_7_plus.jpeg'),(89,'vivo','V15 Pro 8GB Ram',32,0,48,8,5,0,8.0,128,3700,9.0,24700,'vivo_v_15_pro.jpeg'),(90,'vivo','Y95',20,0,13,2,0,0,4.0,64,4030,8.1,13990,'vivo_y_95.jpeg'),(91,'vivo','V9',24,0,16,5,0,0,4.0,64,3260,8.1,14999,'vivo_v_9.jpeg'),(92,'vivo','Y91 3GB Ram',8,0,13,2,0,0,3.0,32,4030,8.1,9291,'vivo_y_91.jpeg'),(93,'vivo','Y91i',8,0,13,2,0,0,2.0,16,4030,8.1,7748,'vivo_y_91_i.jpeg'),(94,'vivo','Y91',8,0,13,2,0,0,2.0,32,4030,8.1,10490,'vivo_y_91.jpeg'),(95,'vivo','V11 Pro',25,0,12,5,0,0,6.0,64,3400,8.1,17900,'vivo_v_11_pro.jpeg'),(96,'vivo','Y90',5,0,8,0,0,0,2.0,16,4030,8.1,6640,'vivo_y_90.jpeg'),(97,'vivo','Y12',8,0,13,8,2,0,4.0,32,5000,9.0,12490,'vivo_y_12.jpeg'),(98,'vivo','V15',32,0,12,8,5,0,6.0,64,4000,9.0,14871,'vivo_v_15.jpeg');
/*!40000 ALTER TABLE `mobiles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-20  8:54:35
