-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: gmssystem
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `att_date` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `emp_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3ntb14aq9d2e83ox1drpxsry7` (`emp_id`),
  CONSTRAINT `FK3ntb14aq9d2e83ox1drpxsry7` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,'2025-09-19 14:45:00.000000','Present',1),(2,'2025-09-19 14:48:00.000000','Present',2),(3,'2025-09-20 15:06:00.000000','Late',1);
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bom`
--

DROP TABLE IF EXISTS `bom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bom` (
  `id` int NOT NULL AUTO_INCREMENT,
  `material` varchar(255) DEFAULT NULL,
  `quantity` float NOT NULL,
  `serial` int NOT NULL,
  `total_cost` float NOT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `unit_price` float NOT NULL,
  `bomstyle_id` int DEFAULT NULL,
  `uom_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkbepv0v3181sycaei18f2x5ra` (`bomstyle_id`),
  KEY `FKqxdd1saeyvipau3iapvjkx0dx` (`uom_id`),
  CONSTRAINT `FKkbepv0v3181sycaei18f2x5ra` FOREIGN KEY (`bomstyle_id`) REFERENCES `bom_style` (`id`),
  CONSTRAINT `FKqxdd1saeyvipau3iapvjkx0dx` FOREIGN KEY (`uom_id`) REFERENCES `uom` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bom`
--

LOCK TABLES `bom` WRITE;
/*!40000 ALTER TABLE `bom` DISABLE KEYS */;
INSERT INTO `bom` VALUES (1,'Woven Knit Fabric',1.722,1,654.36,'yards',380,1,1),(2,'Plastic Button',8,2,20,'Pieces',2.5,1,1),(3,'Sewing Thread',10,1,300,'cone',30,2,2);
/*!40000 ALTER TABLE `bom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bom_style`
--

DROP TABLE IF EXISTS `bom_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bom_style` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `style_code` varchar(255) DEFAULT NULL,
  `style_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bom_style`
--

LOCK TABLES `bom_style` WRITE;
/*!40000 ALTER TABLE `bom_style` DISABLE KEYS */;
INSERT INTO `bom_style` VALUES (1,'Both Type Of Shirt','SF-100','Casual'),(2,'Both Type Of Shirt','PE-007','Formal'),(3,'Fashionable Both Type Shirt','EPR-8910','Casual');
/*!40000 ALTER TABLE `bom_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyers`
--

DROP TABLE IF EXISTS `buyers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buyers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyers`
--

LOCK TABLES `buyers` WRITE;
/*!40000 ALTER TABLE `buyers` DISABLE KEYS */;
INSERT INTO `buyers` VALUES (1,'London','Parvej Hossen','England','parvej@gmail.com','ABC Industries Ltd.','77868767','www.abc.lon'),(2,'Berlin','Rahmat','Germany','rahmat@gmail.com','M & N Garments Ltd.','54254','www.mn.gn'),(3,'New York','Sadiar Rahman','America','sadiar@gmail.com','Walmart Amearica','854310','www.walmart.com'),(4,'Arteixo','Md. Rejaul Karim Siddique','Spain','reja@gmail.com','ZARA ','7825726583','www.zara.com');
/*!40000 ALTER TABLE `buyers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_message`
--

DROP TABLE IF EXISTS `chat_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_message` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `timestamp` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_message`
--

LOCK TABLES `chat_message` WRITE;
/*!40000 ALTER TABLE `chat_message` DISABLE KEYS */;
INSERT INTO `chat_message` VALUES (1,'hello, everyone....','PRODUCTIONMANAGER','2025-09-21 00:39:00.704743'),(2,'Good Morning Everyone.','MERCHANDISERMANAGER','2025-09-21 09:02:35.963840'),(3,'Hi Everyone','PURCHASEMANAGER','2025-09-21 09:04:17.583295');
/*!40000 ALTER TABLE `chat_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cut_bundles`
--

DROP TABLE IF EXISTS `cut_bundles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cut_bundles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bundle_no` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `cut_bundle_date` datetime(6) DEFAULT NULL,
  `planned_qty` int NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  `cutting_plan_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKto7cjxyobl3t3pgxk7gipcdp0` (`cutting_plan_id`),
  CONSTRAINT `FKto7cjxyobl3t3pgxk7gipcdp0` FOREIGN KEY (`cutting_plan_id`) REFERENCES `cutting_planing` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cut_bundles`
--

LOCK TABLES `cut_bundles` WRITE;
/*!40000 ALTER TABLE `cut_bundles` DISABLE KEYS */;
INSERT INTO `cut_bundles` VALUES (1,'B-101','Red','2025-09-19 06:00:00.000000',1170,'S',1),(2,'B-333','White','2025-09-23 06:00:00.000000',435,'M',2);
/*!40000 ALTER TABLE `cut_bundles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cutting_planing`
--

DROP TABLE IF EXISTS `cutting_planing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cutting_planing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `actual_pcs` float NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `cutting_date` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `fabric_length` float NOT NULL,
  `fabric_used` float NOT NULL,
  `fabric_width` float NOT NULL,
  `lay_count` int NOT NULL,
  `marker_count` int NOT NULL,
  `marker_efficiency` float NOT NULL,
  `marker_no` varchar(255) DEFAULT NULL,
  `marker_output` int NOT NULL,
  `planned_pcs` float NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `production_order_id` int DEFAULT NULL,
  `uom_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrigf5f34w6juhr4wbbbogy22r` (`production_order_id`),
  KEY `FKk8s9qmo9hnrt719cp7te3vs3u` (`uom_id`),
  CONSTRAINT `FKk8s9qmo9hnrt719cp7te3vs3u` FOREIGN KEY (`uom_id`) REFERENCES `uom` (`id`),
  CONSTRAINT `FKrigf5f34w6juhr4wbbbogy22r` FOREIGN KEY (`production_order_id`) REFERENCES `production_orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cutting_planing`
--

LOCK TABLES `cutting_planing` WRITE;
/*!40000 ALTER TABLE `cutting_planing` DISABLE KEYS */;
INSERT INTO `cutting_planing` VALUES (1,1170,'RahmatUllah','2025-09-19 06:00:00.000000','Short Sleeve Shirt',103.32,2583,50,50,60,97.5,'M-111',20,1200,'First Hour Cutting Session ','Running',1,1),(2,435,'Rakib','2025-09-23 06:00:00.000000','Full Sleeve Shirt',40.57,1217.1,60,50,23,96.67,'M-333',20,450,'After Lunch Time ','Running',3,2);
/*!40000 ALTER TABLE `cutting_planing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day_wiseproduction`
--

DROP TABLE IF EXISTS `day_wiseproduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_wiseproduction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fulllqty` int NOT NULL,
  `fullmqty` int NOT NULL,
  `fullsqty` int NOT NULL,
  `fullxlqty` int NOT NULL,
  `shortlqty` int NOT NULL,
  `shortmqty` int NOT NULL,
  `shortsqty` int NOT NULL,
  `shortxlqty` int NOT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `production_order_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4fd6dn974qo2f0o5nh5p3fjol` (`order_id`),
  KEY `FK6oo63kx5imd9mi5i0vbsslsqe` (`production_order_id`),
  CONSTRAINT `FK4fd6dn974qo2f0o5nh5p3fjol` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FK6oo63kx5imd9mi5i0vbsslsqe` FOREIGN KEY (`production_order_id`) REFERENCES `production_orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_wiseproduction`
--

LOCK TABLES `day_wiseproduction` WRITE;
/*!40000 ALTER TABLE `day_wiseproduction` DISABLE KEYS */;
INSERT INTO `day_wiseproduction` VALUES (1,0,0,470,0,0,0,0,0,'2025-09-23 06:00:00.000000',2,3),(2,0,0,0,0,0,900,0,0,'2025-09-21 06:00:00.000000',1,2),(3,0,0,0,1300,0,0,0,0,'2025-09-21 06:00:00.000000',1,4),(4,0,0,0,0,0,455,0,0,'2025-09-21 06:00:00.000000',2,2);
/*!40000 ALTER TABLE `day_wiseproduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Production'),(2,'Sewing'),(3,'Merchandise'),(4,'Cutting');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designations`
--

DROP TABLE IF EXISTS `designations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `designations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `designation_title` varchar(50) NOT NULL,
  `department_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKn6j75bv6gxxbrndmhpp2flvwk` (`department_id`),
  CONSTRAINT `FKn6j75bv6gxxbrndmhpp2flvwk` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designations`
--

LOCK TABLES `designations` WRITE;
/*!40000 ALTER TABLE `designations` DISABLE KEYS */;
INSERT INTO `designations` VALUES (1,'Operator',1),(2,'Supervisor',2),(3,'Supervisor',1),(4,'Cutting Master',4);
/*!40000 ALTER TABLE `designations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `join_date` datetime(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  `designation_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8if1byloc650qvkaxabyjveap` (`department_id`),
  KEY `FKe4i9i8vu1j96m71g4v98kqirb` (`designation_id`),
  CONSTRAINT `FK8if1byloc650qvkaxabyjveap` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  CONSTRAINT `FKe4i9i8vu1j96m71g4v98kqirb` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'atik@gmail.com','2025-03-01 06:00:00.000000','Md. Atiqur Rahman','896574125',4,4),(2,'rahmat@gmail.com','2025-09-04 06:00:00.000000','Md. Rahmat Ullah','7857855',2,2);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventories`
--

DROP TABLE IF EXISTS `inventories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `item_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKr2gp5lgkygpawddnch6gb6lwq` (`item_id`),
  CONSTRAINT `FKr2gp5lgkygpawddnch6gb6lwq` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventories`
--

LOCK TABLES `inventories` WRITE;
/*!40000 ALTER TABLE `inventories` DISABLE KEYS */;
INSERT INTO `inventories` VALUES (1,5000,1),(2,215,2),(3,400,3),(4,1000,4),(5,1425,5),(6,4200,6);
/*!40000 ALTER TABLE `inventories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Woven knit Fabric','YARDS'),(2,'Plastic Button','1 GROSS = 144 PCS'),(3,'Sewing Thread','CONE'),(4,'Poly Bag','BOX'),(5,'Wash care tag','ROLL'),(6,'Light Weight Polyester Fabric','YARDS');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaves`
--

DROP TABLE IF EXISTS `leaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leaves` (
  `id` int NOT NULL AUTO_INCREMENT,
  `from_date` datetime(6) DEFAULT NULL,
  `leave_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `to_date` datetime(6) DEFAULT NULL,
  `emp_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqhl2jh1dk1n19bxko4gmkgor3` (`emp_id`),
  CONSTRAINT `FKqhl2jh1dk1n19bxko4gmkgor3` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaves`
--

LOCK TABLES `leaves` WRITE;
/*!40000 ALTER TABLE `leaves` DISABLE KEYS */;
INSERT INTO `leaves` VALUES (1,'2025-09-22 06:00:00.000000','Casual','Confirmed','2025-09-24 06:00:00.000000',2),(2,'2025-09-26 06:00:00.000000','Sick','Pending','2025-09-28 06:00:00.000000',1);
/*!40000 ALTER TABLE `leaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `line`
--

DROP TABLE IF EXISTS `line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `line` (
  `id` int NOT NULL AUTO_INCREMENT,
  `capacity_per_hour` int NOT NULL,
  `floor` varchar(255) DEFAULT NULL,
  `line_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `line`
--

LOCK TABLES `line` WRITE;
/*!40000 ALTER TABLE `line` DISABLE KEYS */;
INSERT INTO `line` VALUES (1,180,'1st Floor','L-111'),(2,200,'2nd Floor','L-222'),(3,220,'1st Floor','L-001'),(4,280,'3rd Floor','L-303');
/*!40000 ALTER TABLE `line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machines`
--

DROP TABLE IF EXISTS `machines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `machines` (
  `id` int NOT NULL AUTO_INCREMENT,
  `machine_code` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machines`
--

LOCK TABLES `machines` WRITE;
/*!40000 ALTER TABLE `machines` DISABLE KEYS */;
INSERT INTO `machines` VALUES (1,'M-009','ACTIVE'),(2,'M-002','INACTIVE'),(3,'M-005','REPAIR');
/*!40000 ALTER TABLE `machines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `delivery_date` datetime(6) DEFAULT NULL,
  `due_amount` double NOT NULL,
  `fulllprice` double NOT NULL,
  `full_large_size` int NOT NULL,
  `fullmprice` double NOT NULL,
  `full_medium_size` int NOT NULL,
  `fullsprice` double NOT NULL,
  `full_small_size` int NOT NULL,
  `fullxlprice` double NOT NULL,
  `fullxlsize` int NOT NULL,
  `order_date` datetime(6) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `paid_amount` double NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `shortlprice` double NOT NULL,
  `short_large_size` int NOT NULL,
  `shortmprice` double NOT NULL,
  `short_medium_size` int NOT NULL,
  `shortsprice` double NOT NULL,
  `short_small_size` int NOT NULL,
  `shortxlprice` double NOT NULL,
  `shortxlsize` int NOT NULL,
  `sub_total` double NOT NULL,
  `total` double NOT NULL,
  `vat` double NOT NULL,
  `bomstyle_id` int DEFAULT NULL,
  `buyer_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtqbuxbgmxxk3hanfb100pn27v` (`bomstyle_id`),
  KEY `FKm64p5iuhw3kaqel7x21pskgjr` (`buyer_id`),
  CONSTRAINT `FKm64p5iuhw3kaqel7x21pskgjr` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`id`),
  CONSTRAINT `FKtqbuxbgmxxk3hanfb100pn27v` FOREIGN KEY (`bomstyle_id`) REFERENCES `bom_style` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2025-10-07 06:00:00.000000',6020,350,1400,340,1300,330,1200,0,1600,'2025-09-07 06:00:00.000000','Pending',2370000,'final and Exclusive',300,1400,290,1200,280,1000,0,1500,2376000,2376020,20,2,3),(2,'2025-11-16 06:00:00.000000',17,350,560,350,520,330,500,0,600,'2025-10-05 06:00:00.000000','Confirmed',912500,'Test',330,450,320,400,310,300,0,450,912500,912517,17,1,2);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `po`
--

DROP TABLE IF EXISTS `po`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `po` (
  `id` int NOT NULL AUTO_INCREMENT,
  `delivery_date` datetime(6) DEFAULT NULL,
  `po_date` datetime(6) DEFAULT NULL,
  `po_number` varchar(255) DEFAULT NULL,
  `quantity` float NOT NULL,
  `rate` float NOT NULL,
  `sub_total` float NOT NULL,
  `tax` float NOT NULL,
  `terms_and_condition` varchar(500) DEFAULT NULL,
  `total_amount` float NOT NULL,
  `item_id` int NOT NULL,
  `vendor_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmyiepxlwcp8coqeq943203xlc` (`item_id`),
  KEY `FK9pq6qwtyb1604kut7hwlsisb9` (`vendor_id`),
  CONSTRAINT `FK9pq6qwtyb1604kut7hwlsisb9` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`),
  CONSTRAINT `FKmyiepxlwcp8coqeq943203xlc` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `po`
--

LOCK TABLES `po` WRITE;
/*!40000 ALTER TABLE `po` DISABLE KEYS */;
INSERT INTO `po` VALUES (1,'2025-10-05 06:00:00.000000','2025-09-20 06:00:00.000000','PO-19092025bd',1700,340,578000,12,'nhfghmjhm',647360,5,1),(2,'2025-10-11 06:00:00.000000','2025-09-21 06:00:00.000000','PO-995511',2000,2,4000,10,'',4400,2,2);
/*!40000 ALTER TABLE `po` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production_orders`
--

DROP TABLE IF EXISTS `production_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production_orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `end_date` datetime(6) DEFAULT NULL,
  `plan_qty` int NOT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `start_date` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `bomstyle_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKeo5489er6dsa7wyvn9epl1lc5` (`bomstyle_id`),
  KEY `FKg9v85wqed8nfq17ou1deru8na` (`order_id`),
  CONSTRAINT `FKeo5489er6dsa7wyvn9epl1lc5` FOREIGN KEY (`bomstyle_id`) REFERENCES `bom_style` (`id`),
  CONSTRAINT `FKg9v85wqed8nfq17ou1deru8na` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production_orders`
--

LOCK TABLES `production_orders` WRITE;
/*!40000 ALTER TABLE `production_orders` DISABLE KEYS */;
INSERT INTO `production_orders` VALUES (1,'Short Sleeve Shirt','2025-09-24 06:00:00.000000',1000,'Urgent','S','2025-09-20 06:00:00.000000','Running',1,1),(2,'Short Sleeve Shirt','2025-09-23 06:00:00.000000',1200,'Normal','M','2025-09-20 06:00:00.000000','Planned',1,1),(3,'Full Sleeve Shirt','2025-09-24 06:00:00.000000',500,'Low','S','2025-09-22 06:00:00.000000','Planned',1,2),(4,'Full Sleeve Shirt','2025-09-22 06:00:00.000000',1600,'Urgent','XL','2025-09-16 06:00:00.000000','Running',1,1);
/*!40000 ALTER TABLE `production_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production_reports`
--

DROP TABLE IF EXISTS `production_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production_reports` (
  `id` int NOT NULL AUTO_INCREMENT,
  `size` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production_reports`
--

LOCK TABLES `production_reports` WRITE;
/*!40000 ALTER TABLE `production_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `production_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_materials_check`
--

DROP TABLE IF EXISTS `raw_materials_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raw_materials_check` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullltotal_quantity` int NOT NULL,
  `fullmtotal_quantity` int NOT NULL,
  `fullstotal_quantity` int NOT NULL,
  `fullxltotal_quantity` int NOT NULL,
  `shortltotal_quantity` int NOT NULL,
  `shortmtotal_quantity` int NOT NULL,
  `shortstotal_quantity` int NOT NULL,
  `shortxltotal_quantity` int NOT NULL,
  `total_fabric` double NOT NULL,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKo004jkfv1gf581mfidwn2y8ht` (`order_id`),
  CONSTRAINT `FKo004jkfv1gf581mfidwn2y8ht` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_materials_check`
--

LOCK TABLES `raw_materials_check` WRITE;
/*!40000 ALTER TABLE `raw_materials_check` DISABLE KEYS */;
INSERT INTO `raw_materials_check` VALUES (1,1400,1300,1200,1600,1400,1200,1000,1500,19544.7,1),(2,560,520,500,600,450,400,300,450,6980.82,2),(3,1400,1300,1200,1600,1400,1200,1000,1500,8916.6,1);
/*!40000 ALTER TABLE `raw_materials_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisitions`
--

DROP TABLE IF EXISTS `requisitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requisitions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `approx_unit_price` float NOT NULL,
  `pr_date` datetime(6) DEFAULT NULL,
  `pr_status` varchar(255) DEFAULT NULL,
  `quantity` float NOT NULL,
  `requested_by` varchar(255) DEFAULT NULL,
  `total_est_price` float NOT NULL,
  `department_id` int DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmn09kooe0ncb6xkp8oi2k4ct6` (`department_id`),
  KEY `FKhsdo1tacj9b4npssjc77npw8c` (`item_id`),
  KEY `FK6cw5w5l7gsde3yeipqdvg1fl2` (`order_id`),
  CONSTRAINT `FK6cw5w5l7gsde3yeipqdvg1fl2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FKhsdo1tacj9b4npssjc77npw8c` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  CONSTRAINT `FKmn09kooe0ncb6xkp8oi2k4ct6` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisitions`
--

LOCK TABLES `requisitions` WRITE;
/*!40000 ALTER TABLE `requisitions` DISABLE KEYS */;
INSERT INTO `requisitions` VALUES (1,320,'2025-09-18 06:00:00.000000','Pending',400,'Rakib',128000,2,3,2),(2,340,'2025-09-22 06:00:00.000000','Pending',2000,'Atik',680000,4,1,2),(3,700,NULL,'Pending',3534,'',2473800,3,4,2);
/*!40000 ALTER TABLE `requisitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_admin`
--

DROP TABLE IF EXISTS `role_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_admin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `date_of_birth` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKoqpb4umbuixfiabo359fp6wbk` (`user_id`),
  CONSTRAINT `FKr0ehf9whlnov4blw4x6iv2h3w` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_admin`
--

LOCK TABLES `role_admin` WRITE;
/*!40000 ALTER TABLE `role_admin` DISABLE KEYS */;
INSERT INTO `role_admin` VALUES (1,'Shakhipur, Tangail','1997-09-19 06:00:00.000000','sazid@gmail.com','MALE','Md. Sazid Mahmud Joy','854310','Md._Sazid_Mahmud_Joy_f22bf3f5-dca8-4238-be75-d065a09f4ebf',2);
/*!40000 ALTER TABLE `role_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_merchandiser_manager`
--

DROP TABLE IF EXISTS `role_merchandiser_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_merchandiser_manager` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `date_of_birth` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKd5g7s2uhnskrfqb2us6weye9v` (`user_id`),
  CONSTRAINT `FK2hs4dmqfiunih1jmdmwrnd3nb` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_merchandiser_manager`
--

LOCK TABLES `role_merchandiser_manager` WRITE;
/*!40000 ALTER TABLE `role_merchandiser_manager` DISABLE KEYS */;
INSERT INTO `role_merchandiser_manager` VALUES (1,'Mymensingh','1998-01-03 06:00:00.000000','parvej@gmail.com','MALE','Md. Parvej Hossen','54254254','Md._Parvej_Hossen_1d0f975c-7f41-4c55-b520-a27059a2cf59',3);
/*!40000 ALTER TABLE `role_merchandiser_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_production_manager`
--

DROP TABLE IF EXISTS `role_production_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_production_manager` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `date_of_birth` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK9o8sbkcwdgiae5k3fmcb6yhto` (`user_id`),
  CONSTRAINT `FK7i6uqs8qjg5pv2u4l4v3no1x7` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_production_manager`
--

LOCK TABLES `role_production_manager` WRITE;
/*!40000 ALTER TABLE `role_production_manager` DISABLE KEYS */;
INSERT INTO `role_production_manager` VALUES (1,'Madaripur','2000-10-02 06:00:00.000000','rakib@gmail.com','MALE','Md. Rakib Islam','77868767','Md._Rakib_Islam_a22a4f08-dcd0-4ae5-a65a-6401dd5bb297',5);
/*!40000 ALTER TABLE `role_production_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_purchase_manager`
--

DROP TABLE IF EXISTS `role_purchase_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_purchase_manager` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `date_of_birth` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKjniwuabla5y70ofk2ksflux00` (`user_id`),
  CONSTRAINT `FKqgbn9dl54l47a5xe81hg3si21` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_purchase_manager`
--

LOCK TABLES `role_purchase_manager` WRITE;
/*!40000 ALTER TABLE `role_purchase_manager` DISABLE KEYS */;
INSERT INTO `role_purchase_manager` VALUES (1,'Munshiganj','1998-09-18 06:00:00.000000','eiasin@gamil.com','MALE','Md. Eiasin Prodhan','8789090','Md._Eiasin_Prodhan_896f645c-ccd2-4d4e-be2a-9a67be5d9617',4);
/*!40000 ALTER TABLE `role_purchase_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_super_admin`
--

DROP TABLE IF EXISTS `role_super_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_super_admin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `date_of_birth` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKndo1xlovo78pfxvw54aglqiid` (`user_id`),
  CONSTRAINT `FKmyaaute6peuqynbxv197bgtwt` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_super_admin`
--

LOCK TABLES `role_super_admin` WRITE;
/*!40000 ALTER TABLE `role_super_admin` DISABLE KEYS */;
INSERT INTO `role_super_admin` VALUES (1,'101 Admin Street, City','1980-05-15 06:00:00.000000','superadmin@gmail.com','Male','Mohammad Imran Hossain','9876543210','Mohammad_Imran_Hossain_68b6a7cc-7cac-4ec5-aea0-ba064b339ba1',1);
/*!40000 ALTER TABLE `role_super_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolehradmin`
--

DROP TABLE IF EXISTS `rolehradmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rolehradmin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `date_of_birth` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKdt3o21qhf3mt1nbwymfhoigxm` (`user_id`),
  CONSTRAINT `FKdx9ygnm8tupobgq6et8falbn5` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolehradmin`
--

LOCK TABLES `rolehradmin` WRITE;
/*!40000 ALTER TABLE `rolehradmin` DISABLE KEYS */;
/*!40000 ALTER TABLE `rolehradmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_in`
--

DROP TABLE IF EXISTS `stock_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_in` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `received_transaction_date` datetime(6) DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK80dfmumeiuv2qjg9pvlecq4qt` (`item_id`),
  CONSTRAINT `FK80dfmumeiuv2qjg9pvlecq4qt` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_in`
--

LOCK TABLES `stock_in` WRITE;
/*!40000 ALTER TABLE `stock_in` DISABLE KEYS */;
INSERT INTO `stock_in` VALUES (1,5000,'2025-09-19 22:51:17.835000',1),(2,200,'2025-09-19 22:51:40.975000',2),(3,400,'2025-09-19 22:51:54.380000',3),(4,1000,'2025-09-19 22:52:16.995000',4),(5,1500,'2025-09-19 22:52:28.961000',5),(6,4200,'2025-09-19 22:52:43.147000',6),(7,65,'2025-09-19 22:54:02.641000',2);
/*!40000 ALTER TABLE `stock_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_out`
--

DROP TABLE IF EXISTS `stock_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_out` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `transaction_date` datetime(6) DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqtweakh8oqugrktpi9r3elst0` (`item_id`),
  CONSTRAINT `FKqtweakh8oqugrktpi9r3elst0` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_out`
--

LOCK TABLES `stock_out` WRITE;
/*!40000 ALTER TABLE `stock_out` DISABLE KEYS */;
INSERT INTO `stock_out` VALUES (1,50,'2025-09-19 22:53:11.746000',2),(2,75,'2025-09-19 22:53:30.522000',5);
/*!40000 ALTER TABLE `stock_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tokens` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_log_out` bit(1) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2dylsfo39lgjyqml2tbe0b0ss` (`user_id`),
  CONSTRAINT `FK2dylsfo39lgjyqml2tbe0b0ss` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES (1,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzdXBlcmFkbWluQGdtYWlsLmNvbSIsInJvbGUiOiJTVVBFUkFETUlOIiwiaWF0IjoxNzU4Mjk1MzAwLCJleHAiOjE3NTgzODE3MDB9.A1809NyoqzrjoD11vQ2FEL1dumCTDCh01qQSRc4bq2I',1),(2,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzdXBlcmFkbWluQGdtYWlsLmNvbSIsInJvbGUiOiJTVVBFUkFETUlOIiwiaWF0IjoxNzU4Mjk1NDQxLCJleHAiOjE3NTgzODE4NDF9.LUNAtLAhKw1qOlj99Qi07sPdc-QYVRKbPcm9ShRRA0Y',1),(3,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXppZEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTgyOTU4OTEsImV4cCI6MTc1ODM4MjI5MX0.0NytFr2m06doSLXs8hkn060nwLQCg730RcAKMoKw9Uc',2),(4,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJwYXJ2ZWpAZ21haWwuY29tIiwicm9sZSI6Ik1FUkNIQU5ESVNFUk1BTkFHRVIiLCJpYXQiOjE3NTgyOTYwMjksImV4cCI6MTc1ODM4MjQyOX0.l14MbllyUVLY1ceNVLO_bredVE9MgPEpu__C7DxcAmQ',3),(5,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJlaWFzaW5AZ2FtaWwuY29tIiwicm9sZSI6IlBVUkNIQVNFTUFOQUdFUiIsImlhdCI6MTc1ODI5NjE3OSwiZXhwIjoxNzU4MzgyNTc5fQ.Vgd3h4cmloO8aAIGISBLc_LD1vNduDbgjsZCFtDDnE4',4),(6,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWtpYkBnbWFpbC5jb20iLCJyb2xlIjoiUFJPRFVDVElPTk1BTkFHRVIiLCJpYXQiOjE3NTgyOTYyODUsImV4cCI6MTc1ODM4MjY4NX0.8RIuT1RaEHDFmYq54TgRBq01IpEfnDFK2Tfcl5BVd2c',5),(7,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXppZEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTgyOTYzNDUsImV4cCI6MTc1ODM4Mjc0NX0.t_-GrxUCNC_kF_JvzjYZ6m8CG7c_qdAAbJWPfEmrOSw',2),(8,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJwYXJ2ZWpAZ21haWwuY29tIiwicm9sZSI6Ik1FUkNIQU5ESVNFUk1BTkFHRVIiLCJpYXQiOjE3NTgyOTcwMjksImV4cCI6MTc1ODM4MzQyOX0.7g9h6MoMKmM9klwT7obwlL-oYdpFgQgEVCqRVCDCxkY',3),(9,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXppZEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTgyOTcwNjUsImV4cCI6MTc1ODM4MzQ2NX0.Dh3jcCgq0nhPHKlBGGpmT5AV8n0I1sNad93jhrMqJ28',2),(10,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJwYXJ2ZWpAZ21haWwuY29tIiwicm9sZSI6Ik1FUkNIQU5ESVNFUk1BTkFHRVIiLCJpYXQiOjE3NTgyOTcwODIsImV4cCI6MTc1ODM4MzQ4Mn0.djKqdRQyT6to1GR5pLJbfiydnPXHfSVt8v5Y5NuZRNA',3),(11,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJlaWFzaW5AZ2FtaWwuY29tIiwicm9sZSI6IlBVUkNIQVNFTUFOQUdFUiIsImlhdCI6MTc1ODMwMDQ2OSwiZXhwIjoxNzU4Mzg2ODY5fQ.iWnC6NeXNRb8utb20rtaeXOwIjgIIYcl_r7Pt74vjyQ',4),(12,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWtpYkBnbWFpbC5jb20iLCJyb2xlIjoiUFJPRFVDVElPTk1BTkFHRVIiLCJpYXQiOjE3NTgzMDY1MjMsImV4cCI6MTc1ODM5MjkyM30.Qtk_jiKW6BKbphIkcgWM6rlPEqTUj9Uwyx4nV9Mc2vc',5),(13,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWtpYkBnbWFpbC5jb20iLCJyb2xlIjoiUFJPRFVDVElPTk1BTkFHRVIiLCJpYXQiOjE3NTgzOTIyMzAsImV4cCI6MTc1ODQ3ODYzMH0.yKi7fPtY1tsoHUxXJbh64ft5VbuRVuGueoahjEb5r0U',5),(14,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXppZEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTg0MjM0ODIsImV4cCI6MTc1ODUwOTg4Mn0.jZMukiDeKl0JhVvYLzfaUrVeUOUZNv6bbL7QDETdTdM',2),(15,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJwYXJ2ZWpAZ21haWwuY29tIiwicm9sZSI6Ik1FUkNIQU5ESVNFUk1BTkFHRVIiLCJpYXQiOjE3NTg0MjM2ODgsImV4cCI6MTc1ODUxMDA4OH0.tUX2J0_knGTy4xWIbDTJbUuY7gJ7IZMo155VlGX3Kw8',3),(16,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJlaWFzaW5AZ2FtaWwuY29tIiwicm9sZSI6IlBVUkNIQVNFTUFOQUdFUiIsImlhdCI6MTc1ODQyMzc5MiwiZXhwIjoxNzU4NTEwMTkyfQ.AdH8NSEUbfupFauXqNVUFNE5UYgHj51wZKCNbDpvkOk',4),(17,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWtpYkBnbWFpbC5jb20iLCJyb2xlIjoiUFJPRFVDVElPTk1BTkFHRVIiLCJpYXQiOjE3NTg0MjM4ODQsImV4cCI6MTc1ODUxMDI4NH0.4pI-gss99Fq6-wAwkhK0e136XdaJc4x7h08IZ0L032A',5),(18,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzdXBlcmFkbWluQGdtYWlsLmNvbSIsInJvbGUiOiJTVVBFUkFETUlOIiwiaWF0IjoxNzU4NDI0MDcwLCJleHAiOjE3NTg1MTA0NzB9.MXAnyiPMbPl6aVU3E18_cFWB5f6AOaMahze3m2OgsyI',1),(19,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJwYXJ2ZWpAZ21haWwuY29tIiwicm9sZSI6Ik1FUkNIQU5ESVNFUk1BTkFHRVIiLCJpYXQiOjE3NTg0Mjk2OTMsImV4cCI6MTc1ODUxNjA5M30.xx7vev6PpqSOr3w_tNiBxT0MYCMBWicZC-u_XE7yLSM',3),(20,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJlaWFzaW5AZ2FtaWwuY29tIiwicm9sZSI6IlBVUkNIQVNFTUFOQUdFUiIsImlhdCI6MTc1ODQyOTcyNCwiZXhwIjoxNzU4NTE2MTI0fQ.VqBjvKuVmgpAX8KB7ZbMVSmrDPxaFXg__vZtsVVXG8M',4),(21,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzdXBlcmFkbWluQGdtYWlsLmNvbSIsInJvbGUiOiJTVVBFUkFETUlOIiwiaWF0IjoxNzU4NDI5NzgyLCJleHAiOjE3NTg1MTYxODJ9.DwJIRvm9DZ4mPzISCcSWR2y8fJPkUv4THPrSj8gSu8w',1),(22,_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzdXBlcmFkbWluQGdtYWlsLmNvbSIsInJvbGUiOiJTVVBFUkFETUlOIiwiaWF0IjoxNzU4NDMyODAwLCJleHAiOjE3NTg1MTkyMDB9.hO8NEbAPr0vxdbE366CiCO28odSHs-iv-HYZxD-MFOo',1),(23,_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXppZEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTg0MzI4NjcsImV4cCI6MTc1ODUxOTI2N30.GSjForZZWAHA8Yg_LD3XFWWJVmt3vZQNoN78iJFXIaU',2),(24,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJwYXJ2ZWpAZ21haWwuY29tIiwicm9sZSI6Ik1FUkNIQU5ESVNFUk1BTkFHRVIiLCJpYXQiOjE3NTg0MzI5NDUsImV4cCI6MTc1ODUxOTM0NX0.owpTF4iEWywuuXbhNtQV_e2KLWr5jeUCXuMebrIFEAk',3),(25,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWtpYkBnbWFpbC5jb20iLCJyb2xlIjoiUFJPRFVDVElPTk1BTkFHRVIiLCJpYXQiOjE3NTg0MzMwNzYsImV4cCI6MTc1ODUxOTQ3Nn0.oRMc39T4IBgge18OwI1QW0KDaf4hzbKqhyFgAMJQZKk',5),(26,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJwYXJ2ZWpAZ21haWwuY29tIiwicm9sZSI6Ik1FUkNIQU5ESVNFUk1BTkFHRVIiLCJpYXQiOjE3NTg0MzMwOTcsImV4cCI6MTc1ODUxOTQ5N30.uVYwne83opzrcst_i8RjMcfPhA7MZVHDrdp9Onc4rog',3),(27,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJlaWFzaW5AZ2FtaWwuY29tIiwicm9sZSI6IlBVUkNIQVNFTUFOQUdFUiIsImlhdCI6MTc1ODQzMzIwNywiZXhwIjoxNzU4NTE5NjA3fQ.O0aoFsTuY2VMNbK773aA7iY2SF0iGUqxmZGxsKm3g8E',4),(28,_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWtpYkBnbWFpbC5jb20iLCJyb2xlIjoiUFJPRFVDVElPTk1BTkFHRVIiLCJpYXQiOjE3NTg0MzMzNzMsImV4cCI6MTc1ODUxOTc3M30.A4DQI4CXMvm9gn2PyuTt5fvPwmiETQq44kht0H7EHvs',5),(29,_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJwYXJ2ZWpAZ21haWwuY29tIiwicm9sZSI6Ik1FUkNIQU5ESVNFUk1BTkFHRVIiLCJpYXQiOjE3NTg2ODU2MDMsImV4cCI6MTc1ODc3MjAwM30.Ms9JYHXUseqz8r6H6XKsi1CIZSW9lc4Y1P3rVLCGYJE',3),(30,_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJlaWFzaW5AZ2FtaWwuY29tIiwicm9sZSI6IlBVUkNIQVNFTUFOQUdFUiIsImlhdCI6MTc1ODY4NTY4MywiZXhwIjoxNzU4NzcyMDgzfQ.W-6DePQ4JdE9IPF_e_jqt0Y7HaK5y-6hsKDUgOwXa8A',4);
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uom`
--

DROP TABLE IF EXISTS `uom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uom` (
  `id` int NOT NULL AUTO_INCREMENT,
  `base_fabric` float NOT NULL,
  `body` float NOT NULL,
  `pocket` float NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `shrinkage` float NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  `sleeve` float NOT NULL,
  `wastage` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uom`
--

LOCK TABLES `uom` WRITE;
/*!40000 ALTER TABLE `uom` DISABLE KEYS */;
INSERT INTO `uom` VALUES (1,1.722,1.42,0.12,'Short Sleeve ',3,'S',0.1,2),(2,1.764,1.46,0.12,'Short Sleeve',3,'M',0.1,2),(3,1.827,1.52,0.12,'Short Sleeve',3,'L',0.1,2),(4,1.869,1.56,0.12,'Short Sleeve',3,'XL',0.1,2),(5,1.785,1.48,0.12,'Full Sleeve',3,'S',0.1,2),(6,1.848,1.54,0.12,'Full Sleeve',3,'M',0.1,2),(7,1.911,1.6,0.12,'Full Sleeve',3,'L',0.1,2),(8,1.953,1.64,0.12,'Full Sleeve',3,'XL',0.1,2);
/*!40000 ALTER TABLE `uom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_lock` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `role` enum('ADMIN','HRADMIN','MERCHANDISERMANAGER','PRODUCTIONMANAGER','PURCHASEMANAGER','SUPERADMIN') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,_binary '','superadmin@gmail.com',_binary '\0','Mohammad Imran Hossain','$2a$10$aRmf5aL7QUlB./jlaiK09uWf.JwAWf57Bn7.EaPgUpnl1z8bYP8Yu','9876543210','Mohammad Imran Hossain_0016a8ec-6769-43aa-9070-0f8f867d8633','SUPERADMIN'),(2,_binary '','sazid@gmail.com',_binary '\0','Md. Sazid Mahmud Joy','$2a$10$4oXcA8SdmdjTqjcHRUE6rei2HF2XYPfvku4smcEMC3yzKQ3HAJY2m','854310','Md. Sazid Mahmud Joy_0acd96c5-1072-4734-b163-3975b3e152c9','ADMIN'),(3,_binary '','parvej@gmail.com',_binary '\0','Md. Parvej Hossen','$2a$10$C8SE6pT7beMcemBDudjPK.E7C5.6O8NYq06h8ipIEs8h5FyHctn/C','54254254','Md. Parvej Hossen_fde2b170-c3ab-49ac-8713-8feb1b771847','MERCHANDISERMANAGER'),(4,_binary '','eiasin@gamil.com',_binary '\0','Md. Eiasin Prodhan','$2a$10$oRBanxnAKTadAxt9Lv5Z3OewbzmSPCB8BEZ6ZwHfQAC/U4p.TeMA6','8789090','Md. Eiasin Prodhan_b750dd0a-c14d-41de-92e2-b149aafdf449','PURCHASEMANAGER'),(5,_binary '','rakib@gmail.com',_binary '\0','Md. Rakib Islam','$2a$10$aCJeY8osiwJFxoVEUxlpbOtqD0x8ssIOXUsgI2h1nJftaM/BI8YIa','77868767','Md. Rakib Islam_40e39988-0224-4e99-a3d4-7282fcb78d61','PRODUCTIONMANAGER');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `bin` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `tin` varchar(255) DEFAULT NULL,
  `vat` varchar(255) DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES (1,'Bhaluka, Mymensingh','','Badshah Fabric Mills','Atik','atik@gmail.com','54254254','','07452',''),(2,'Chittagong','','M&N Textiles','Rakib','rakib@gmail.com','7878788','9080','','');
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-24  9:52:06
