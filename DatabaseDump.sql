CREATE DATABASE  IF NOT EXISTS `db2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db2`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db2
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency` (
  `currencyCode` varchar(10) NOT NULL,
  `rate` decimal(10,4) NOT NULL,
  PRIMARY KEY (`currencyCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES ('AED',3.6725),('AFN',86.3613),('ALL',96.1500),('AMD',386.1562),('ANG',1.7900),('AOA',832.2195),('ARS',258.9057),('AUD',1.4967),('AWG',1.7900),('AZN',1.6997),('BAM',1.7887),('BBD',2.0000),('BDT',108.3309),('BGN',1.7895),('BHD',0.3760),('BIF',2811.5159),('BMD',1.0000),('BND',1.3489),('BOB',6.9163),('BRL',4.8955),('BSD',1.0000),('BTN',82.6797),('BWP',13.5144),('BYN',2.8323),('BZD',2.0000),('CAD',1.3298),('CDF',2306.6644),('CHF',0.8913),('CLP',801.9268),('CNY',7.2300),('COP',4138.6594),('CRC',542.1364),('CUP',24.0000),('CVE',100.8426),('CZK',21.8635),('DJF',177.7210),('DKK',6.8229),('DOP',55.5293),('DZD',135.7056),('EGP',30.8523),('ERN',15.0000),('ETB',54.9262),('EUR',0.9146),('FJD',2.2137),('FKP',0.7808),('FOK',6.8229),('GBP',0.7804),('GEL',2.5931),('GGP',0.7808),('GHS',11.6092),('GIP',0.7808),('GMD',62.6103),('GNF',8556.9608),('GTQ',7.8321),('GYD',211.3089),('HKD',7.8274),('HNL',24.5945),('HRK',6.8907),('HTG',138.4906),('HUF',351.8291),('IDR',15151.0734),('ILS',3.6985),('IMP',0.7808),('INR',82.6799),('IQD',1307.4760),('IRR',41993.9394),('ISK',134.8850),('JEP',0.7808),('JMD',154.5753),('JOD',0.7090),('JPY',142.3664),('KES',140.5158),('KGS',87.5640),('KHR',4139.0132),('KID',1.4986),('KMF',449.9281),('KRW',1301.2214),('KWD',0.3070),('KYD',0.8333),('KZT',445.4960),('LAK',19154.4517),('LBP',15000.0000),('LKR',309.2249),('LRD',182.4077),('LSL',18.8708),('LYD',4.8087),('MAD',9.7737),('MDL',18.3241),('MGA',4519.8144),('MKD',56.4337),('MMK',2099.9230),('MNT',3448.2350),('MOP',8.0622),('MRU',34.7709),('MUR',45.4232),('MVR',15.4252),('MWK',1058.5619),('MXN',17.1570),('MYR',4.6636),('MZN',63.9870),('NAD',18.8708),('NGN',759.0398),('NIO',36.5468),('NOK',10.6471),('NPR',132.2876),('NZD',1.6119),('OMR',0.3845),('PAB',1.0000),('PEN',3.6378),('PGK',3.5850),('PHP',55.5860),('PKR',275.2891),('PLN',4.0886),('PYG',7275.5482),('QAR',3.6400),('RON',4.5510),('RSD',107.1726),('RUB',91.4496),('RWF',1223.0284),('SAR',3.7500),('SBD',8.4817),('SCR',13.4874),('SDG',566.3097),('SEK',10.8648),('SGD',1.3489),('SHP',0.7808),('SLE',19.9536),('SLL',19953.6089),('SOS',568.7429),('SRD',37.6948),('SSP',993.9389),('STN',22.4064),('SYP',2526.3933),('SZL',18.8708),('THB',35.1742),('TJS',10.9054),('TMT',3.4991),('TND',3.0946),('TOP',2.3309),('TRY',26.0836),('TTD',6.7539),('TVD',1.4986),('TWD',31.2771),('TZS',2397.9988),('UAH',36.9281),('UGX',3695.8717),('USD',1.0000),('UYU',37.4312),('UZS',11613.1810),('VES',28.3048),('VND',23644.6585),('VUV',118.8982),('WST',2.7198),('XAF',599.9041),('XCD',2.7000),('XDR',0.7508),('XOF',599.9041),('XPF',109.1348),('YER',249.9118),('ZAR',18.8711),('ZMW',18.0051),('ZWL',5292.5305);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distances`
--

DROP TABLE IF EXISTS `distances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distances` (
  `sourceAirport` varchar(3) NOT NULL,
  `destinationAirport` varchar(3) NOT NULL,
  `distanceInMiles` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`sourceAirport`,`destinationAirport`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distances`
--

LOCK TABLES `distances` WRITE;
/*!40000 ALTER TABLE `distances` DISABLE KEYS */;
INSERT INTO `distances` VALUES ('ATL','AMS',4336.00),('CAN','AMS',5775.00),('CAN','ATL',7512.00),('CDG','AMS',286.00),('CDG','ATL',4207.00),('CDG','CAN',4813.00),('DEN','AMS',4795.00),('DEN','ATL',1198.00),('DEN','CAN',741.00),('DEN','CDG',4845.00),('DFW','AMS',4814.00),('DFW','ATL',720.00),('DFW','CAN',5240.00),('DFW','CDG',5055.00),('DFW','DEN',650.00),('DXB','AMS',3404.00),('DXB','ATL',7290.00),('DXB','CAN',4307.00),('DXB','CDG',3305.00),('DXB','DEN',7626.00),('DXB','DFW',8112.00),('FRA','AMS',230.00),('FRA','ATL',4480.00),('FRA','CAN',5935.00),('FRA','CDG',231.00),('FRA','DEN',4842.00),('FRA','DFW',5170.00),('FRA','DXB',2552.00),('HND','AMS',5713.00),('HND','ATL',6863.00),('HND','CAN',1929.00),('HND','CDG',5758.00),('HND','DEN',5762.00),('HND','DFW',6775.00),('HND','DXB',5304.00),('HND','FRA',5762.00),('ICN','AMS',5303.00),('ICN','ATL',6959.00),('ICN','CAN',1696.00),('ICN','CDG',5615.00),('ICN','DEN',5905.00),('ICN','DFW',6730.00),('ICN','DXB',4085.00),('ICN','FRA',5612.00),('ICN','HND',672.00),('IST','AMS',1441.00),('IST','ATL',5972.00),('IST','CAN',4352.00),('IST','CDG',1353.00),('IST','DEN',6193.00),('IST','DFW',6591.00),('IST','DXB',2279.00),('IST','FRA',1307.00),('IST','HND',4634.00),('IST','ICN',4563.00),('JFK','AMS',3611.00),('JFK','ATL',761.00),('JFK','CAN',7396.00),('JFK','CDG',3639.00),('JFK','DEN',1622.00),('JFK','DFW',1391.00),('JFK','DXB',6845.00),('JFK','FRA',3849.00),('JFK','HND',6796.00),('JFK','ICN',6771.00),('JFK','IST',4984.00),('LAX','AMS',5442.00),('LAX','ATL',1946.00),('LAX','CAN',7160.00),('LAX','CDG',5684.00),('LAX','DEN',862.00),('LAX','DFW',1235.00),('LAX','DXB',8380.00),('LAX','FRA',5707.00),('LAX','HND',5991.00),('LAX','ICN',5901.00),('LAX','IST',6647.00),('LAX','JFK',2475.00),('LHR','AMS',220.00),('LHR','ATL',4145.00),('LHR','CAN',5837.00),('LHR','CDG',206.00),('LHR','DEN',4731.00),('LHR','DFW',4740.00),('LHR','DXB',3446.00),('LHR','FRA',396.00),('LHR','HND',5994.00),('LHR','ICN',5963.00),('LHR','IST',1557.00),('LHR','JFK',3459.00),('LHR','LAX',5451.00),('MAD','AMS',1136.00),('MAD','ATL',4451.00),('MAD','CAN',5859.00),('MAD','CDG',787.00),('MAD','DEN',5164.00),('MAD','DFW',4753.00),('MAD','DXB',4113.00),('MAD','FRA',930.00),('MAD','HND',6534.00),('MAD','ICN',6402.00),('MAD','IST',2411.00),('MAD','JFK',5520.00),('MAD','LAX',6126.00),('MAD','LHR',615.00),('MUC','AMS',450.00),('MUC','ATL',4734.00),('MUC','CAN',5776.00),('MUC','CDG',326.00),('MUC','DEN',5135.00),('MUC','DFW',5357.00),('MUC','DXB',2791.00),('MUC','FRA',181.00),('MUC','HND',5775.00),('MUC','ICN',5675.00),('MUC','IST',1204.00),('MUC','JFK',6416.00),('MUC','LAX',5926.00),('MUC','LHR',599.00),('MUC','MAD',1230.00),('ORD','AMS',4201.00),('ORD','ATL',591.00),('ORD','CAN',7240.00),('ORD','CDG',4174.00),('ORD','DEN',888.00),('ORD','DFW',802.00),('ORD','DXB',7251.00),('ORD','FRA',4157.00),('ORD','HND',6334.00),('ORD','ICN',6205.00),('ORD','IST',4852.00),('ORD','JFK',713.00),('ORD','LAX',1744.00),('ORD','LHR',3954.00),('ORD','MAD',4261.00),('ORD','MUC',4175.00),('PEK','AMS',4861.00),('PEK','ATL',7489.00),('PEK','CAN',1498.00),('PEK','CDG',5164.00),('PEK','DEN',6456.00),('PEK','DFW',6891.00),('PEK','DXB',4721.00),('PEK','FRA',5147.00),('PEK','HND',1278.00),('PEK','ICN',528.00),('PEK','IST',4017.00),('PEK','JFK',6845.00),('PEK','LAX',5937.00),('PEK','LHR',5407.00),('PEK','MAD',5932.00),('PEK','MUC',5004.00),('PEK','ORD',6632.00),('SIN','AMS',6706.00),('SIN','ATL',9409.00),('SIN','CAN',1587.00),('SIN','CDG',6755.00),('SIN','DEN',9458.00),('SIN','DFW',9533.00),('SIN','DXB',3945.00),('SIN','FRA',6117.00),('SIN','HND',3323.00),('SIN','ICN',3312.00),('SIN','IST',5478.00),('SIN','JFK',9530.00),('SIN','LAX',8737.00),('SIN','LHR',6762.00),('SIN','MAD',6670.00),('SIN','MUC',6272.00),('SIN','ORD',9377.00),('SIN','PEK',2302.00),('SYD','AMS',10214.00),('SYD','ATL',9592.00),('SYD','CAN',4812.00),('SYD','CDG',10500.00),('SYD','DEN',8496.00),('SYD','DFW',8626.00),('SYD','DXB',7525.00),('SYD','FRA',10517.00),('SYD','HND',4891.00),('SYD','ICN',5020.00),('SYD','IST',9415.00),('SYD','JFK',9937.00),('SYD','LAX',7486.00),('SYD','LHR',10569.00),('SYD','MAD',10450.00),('SYD','MUC',10470.00),('SYD','ORD',9257.00),('SYD','PEK',5232.00),('SYD','SIN',3925.00);
/*!40000 ALTER TABLE `distances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flights` (
  `flight_id` int NOT NULL AUTO_INCREMENT,
  `business_capacity` int NOT NULL,
  `business_price_adult` double NOT NULL,
  `business_price_child` double NOT NULL,
  `business_price_infant` double NOT NULL,
  `economy_capacity` int DEFAULT NULL,
  `economy_price_adult` double NOT NULL,
  `economy_price_child` double NOT NULL,
  `economy_price_infant` double NOT NULL,
  `plane` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `from_port` varchar(255) DEFAULT NULL,
  `to_port` varchar(255) DEFAULT NULL,
  `flight_date` varchar(255) DEFAULT NULL,
  `flight_time` varchar(255) DEFAULT NULL,
  `from_port_code` varchar(255) DEFAULT NULL,
  `to_port_code` varchar(255) DEFAULT NULL,
  `arrival_time` varchar(255) NOT NULL,
  `flight_no` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`flight_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights`
--

LOCK TABLES `flights` WRITE;
/*!40000 ALTER TABLE `flights` DISABLE KEYS */;
INSERT INTO `flights` VALUES (1,77,4404.7,3303.53,440.47,139,2591,1943.25,259.1,'Airbus A320','PQR Airlines','Chicago O\'Hare','Incheon International','2023-07-05','14:45:00','ORD','ICN','17:20:07','PQR001'),(2,199,1654.1,1240.58,165.41,286,973,729.75,97.3,'Boeing 747','MNO Airways','Beijing Capital','Sydney Kingsford-Smith','2023-07-05','16:20:00','PEK','SYD','18:30:48','MNO002'),(3,77,894.2,670.65,89.42,143,526,394.5,52.6,'Boeing 737','ABC Airlines','Istanbul','Frankfurt am Main','2023-07-05','08:15:00','IST','FRA','08:47:40','ABC003'),(4,59,4977.6,3733.2,497.76,87,2928,2196,292.8,'Embraer E190','XYZ Airways','London Heathrow','Dallas/Fort Worth','2023-07-05','11:45:00','LHR','DFW','13:43:30','XYZ004'),(5,77,7250.5,5437.88,725.05,139,4265,3198.75,426.5,'Airbus A320','PQR Airlines','Sydney Kingsford-Smith','Amsterdam Schiphol','2023-07-05','13:30:00','SYD','AMS','17:45:21','PQR005'),(6,199,1961.8,1471.35,196.18,286,1154,865.5,115.4,'Boeing 747','MNO Airways','Incheon International','Chicago O\'Hare','2023-07-05','15:50:00','ICN','ORD','18:25:07','MNO006'),(7,79,894.2,670.65,89.42,145,526,394.5,52.6,'Boeing 737','ABC Airlines','Frankfurt am Main','Istanbul','2023-07-05','09:30:00','FRA','IST','10:02:40','ABC007'),(8,59,4977.6,3733.2,497.76,87,2928,2196,292.8,'Embraer E190','XYZ Airways','Dallas/Fort Worth','London Heathrow','2023-07-05','11:15:00','DFW','LHR','13:13:30','XYZ008'),(9,77,4404.7,3303.53,440.47,139,2591,1943.25,259.1,'Airbus A320','PQR Airlines','Chicago O\'Hare','Incheon International','2023-07-05','13:30:00','ORD','ICN','16:05:07','PQR009'),(10,199,1654.1,1240.58,165.41,286,973,729.75,97.3,'Boeing 747','MNO Airways','Beijing Capital','Sydney Kingsford-Smith','2023-07-05','15:55:00','PEK','SYD','18:05:48','MNO010'),(11,77,894.2,670.65,89.42,143,526,394.5,52.6,'Boeing 737','ABC Airlines','Istanbul','Frankfurt am Main','2023-07-05','07:30:00','IST','FRA','08:02:40','ABC011'),(12,59,4977.6,3733.2,497.76,87,2928,2196,292.8,'Embraer E190','XYZ Airways','London Heathrow','Dallas/Fort Worth','2023-07-05','10:00:00','LHR','DFW','11:58:30','XYZ012'),(13,77,7250.5,5437.88,725.05,139,4265,3198.75,426.5,'Airbus A320','PQR Airlines','Sydney Kingsford-Smith','Amsterdam Schiphol','2023-07-05','12:15:00','SYD','AMS','16:30:21','PQR013'),(14,199,1961.8,1471.35,196.18,286,1154,865.5,115.4,'Boeing 747','MNO Airways','Incheon International','Chicago O\'Hare','2023-07-05','14:40:00','ICN','ORD','17:15:07','MNO014'),(15,79,894.2,670.65,89.42,145,526,394.5,52.6,'Boeing 737','ABC Airlines','Frankfurt am Main','Istanbul','2023-07-05','08:45:00','FRA','IST','09:17:40','ABC015'),(16,59,4977.6,3733.2,497.76,87,2928,2196,292.8,'Embraer E190','XYZ Airways','Dallas/Fort Worth','London Heathrow','2023-07-05','11:30:00','DFW','LHR','13:28:30','XYZ016'),(17,77,4404.7,3303.53,440.47,139,2591,1943.25,259.1,'Airbus A320','PQR Airlines','Chicago O\'Hare','Incheon International','2023-07-05','13:45:00','ORD','ICN','16:20:07','PQR017'),(18,199,1654.1,1240.58,165.41,286,973,729.75,97.3,'Boeing 747','MNO Airways','Beijing Capital','Sydney Kingsford-Smith','2023-07-05','16:10:00','PEK','SYD','18:20:48','MNO018'),(19,79,894.2,670.65,89.42,145,526,394.5,52.6,'Boeing 737','ABC Airlines','Istanbul','Frankfurt am Main','2023-07-05','09:15:00','IST','FRA','09:47:40','ABC019'),(20,59,4977.6,3733.2,497.76,87,2928,2196,292.8,'Embraer E190','XYZ Airways','London Heathrow','Dallas/Fort Worth','2023-07-05','11:45:00','LHR','DFW','13:43:30','XYZ020'),(21,77,7250.5,5437.88,725.05,139,4265,3198.75,426.5,'Airbus A320','PQR Airlines','Sydney Kingsford-Smith','Amsterdam Schiphol','2023-07-05','14:00:00','SYD','AMS','18:15:21','PQR021'),(22,199,1961.8,1471.35,196.18,286,1154,865.5,115.4,'Boeing 747','MNO Airways','Incheon International','Chicago O\'Hare','2023-07-05','16:20:00','ICN','ORD','18:55:07','MNO022'),(23,79,894.2,670.65,89.42,145,526,394.5,52.6,'Boeing 737','ABC Airlines','Frankfurt am Main','Istanbul','2023-07-05','08:30:00','FRA','IST','09:02:40','ABC023'),(24,59,4977.6,3733.2,497.76,87,2928,2196,292.8,'Embraer E190','XYZ Airways','Dallas/Fort Worth','London Heathrow','2023-07-05','10:15:00','DFW','LHR','12:13:30','XYZ024'),(25,77,4404.7,3303.53,440.47,139,2591,1943.25,259.1,'Airbus A320','PQR Airlines','Chicago O\'Hare','Incheon International','2023-07-05','12:30:00','ORD','ICN','15:05:07','PQR025'),(26,199,1654.1,1240.58,165.41,286,973,729.75,97.3,'Boeing 747','MNO Airways','Beijing Capital','Sydney Kingsford-Smith','2023-07-05','14:55:00','PEK','SYD','17:05:48','MNO026'),(27,79,894.2,670.65,89.42,145,526,394.5,52.6,'Boeing 737','ABC Airlines','Istanbul','Frankfurt am Main','2023-07-05','07:45:00','IST','FRA','08:17:40','ABC027'),(28,59,4977.6,3733.2,497.76,87,2928,2196,292.8,'Embraer E190','XYZ Airways','London Heathrow','Dallas/Fort Worth','2023-07-05','10:30:00','LHR','DFW','12:28:30','XYZ028'),(29,77,7250.5,5437.88,725.05,139,4265,3198.75,426.5,'Airbus A320','PQR Airlines','Sydney Kingsford-Smith','Amsterdam Schiphol','2023-07-05','12:45:00','SYD','AMS','17:00:21','PQR029'),(30,199,1961.8,1471.35,196.18,286,1154,865.5,115.4,'Boeing 747','MNO Airways','Incheon International','Chicago O\'Hare','2023-07-05','15:10:00','ICN','ORD','17:45:07','MNO030'),(31,79,894.2,670.65,89.42,145,526,394.5,52.6,'Boeing 737','ABC Airlines','Frankfurt am Main','Istanbul','2023-07-05','08:15:00','FRA','IST','08:47:40','ABC031'),(32,59,4977.6,3733.2,497.76,87,2928,2196,292.8,'Embraer E190','XYZ Airways','Dallas/Fort Worth','London Heathrow','2023-07-05','10:45:00','DFW','LHR','12:43:30','XYZ032'),(33,77,4404.7,3303.53,440.47,139,2591,1943.25,259.1,'Airbus A320','PQR Airlines','Chicago O\'Hare','Incheon International','2023-07-05','13:00:00','ORD','ICN','15:35:07','PQR033'),(34,199,1654.1,1240.58,165.41,286,973,729.75,97.3,'Boeing 747','MNO Airways','Beijing Capital','Sydney Kingsford-Smith','2023-07-05','15:25:00','PEK','SYD','17:35:48','MNO034'),(35,79,894.2,670.65,89.42,145,526,394.5,52.6,'Boeing 737','ABC Airlines','Istanbul','Frankfurt am Main','2023-07-05','09:30:00','IST','FRA','10:02:40','ABC035'),(36,59,4977.6,3733.2,497.76,87,2928,2196,292.8,'Embraer E190','XYZ Airways','London Heathrow','Dallas/Fort Worth','2023-07-05','11:00:00','LHR','DFW','12:58:30','XYZ036'),(37,77,7250.5,5437.88,725.05,139,4265,3198.75,426.5,'Airbus A320','PQR Airlines','Sydney Kingsford-Smith','Amsterdam Schiphol','2023-07-05','13:15:00','SYD','AMS','17:30:21','PQR037'),(38,79,986,739.5,98.6,145,580,435,58,'Boeing 737','ABC Airlines','Istanbul','Amsterdam Schiphol','2023-07-05','12:00:00','IST','AMS','12:36:01','ABC038'),(39,79,3245.3,2433.98,324.53,145,1909,1431.75,190.9,'Boeing 737','ABC Airlines','Dallas/Fort Worth','London Heathrow','2023-07-05','12:00:00','DFW','LHR','13:58:00','ABC039'),(40,79,3172.2,2379.15,317.22,145,1866,1399.5,186.6,'Boeing 737','ABC Airlines','Tokyo Haneda','Istanbul','2023-07-05','12:00:00','HND','IST','13:55:00','ABC040'),(41,76,894.2,670.65,89.42,142,526,394.5,52.6,'Boeing 737','Turkish Airlines','Istanbul','Frankfurt am Main','2023-07-05','16:00:00','IST','FRA','16:32:00','TUR041'),(42,79,894.2,670.65,89.42,145,526,394.5,52.6,'Boeing 737','New Airlines','Istanbul','Frankfurt am Main','2023-07-05','16:00:00','IST','FRA','18:10:00','NEW042'),(43,77,1065.9,799.43,106.59,143,627,470.25,62.7,'Boeing 737','BGR Airlines','Istanbul','London Heathrow','2023-07-05','16:00:00','IST','LHR','18:35:00','BGR043');
/*!40000 ALTER TABLE `flights` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `calculateCapacity` BEFORE INSERT ON `flights` FOR EACH ROW BEGIN
  DECLARE economyCap INT;
  DECLARE businessCap INT;

  SELECT economyCapacity, businessCapacity INTO economyCap, businessCap
  FROM planecapacity
  WHERE plane = NEW.plane;

  SET NEW.economyCapacity = economyCap;
  SET NEW.businessCapacity = businessCap;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `calculatePrices` BEFORE INSERT ON `flights` FOR EACH ROW BEGIN
    DECLARE fromPortCode VARCHAR(3);
    DECLARE toPortCode VARCHAR(3);
    DECLARE distance DECIMAL(10, 2);
    
    SELECT portCode INTO fromPortCode FROM portcodes WHERE portName = NEW.fromPort;
    SELECT portCode INTO toPortCode FROM portcodes WHERE portName = NEW.toPort;

    SELECT distanceInMiles INTO distance FROM distances WHERE sourceAirport = fromPortCode AND destinationAirport = toPortCode;

    IF distance IS NULL THEN
        SELECT distanceInMiles INTO distance FROM distances WHERE sourceAirport = toPortCode AND destinationAirport = fromPortCode;
    END IF;

    IF distance IS NOT NULL THEN
        SET NEW.economyPriceAdult = ROUND((distance / (SELECT economyCapacity + businessCapacity FROM planecapacity WHERE plane = NEW.plane) * 2.2)*41);
    ELSE
        SET NEW.economyPriceAdult = 0; 
    END IF;

    SET NEW.businessPriceAdult = 1.7 * NEW.economyPriceAdult;
    SET NEW.economyPriceChild = 0.75 * NEW.economyPriceAdult;
    SET NEW.economyPriceInfant = 0.1 * NEW.economyPriceAdult;
    SET NEW.businessPriceChild = 0.75 * NEW.businessPriceAdult;
    SET NEW.businessPriceInfant = 0.1 * NEW.businessPriceAdult;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `set_portcodes_trigger` BEFORE INSERT ON `flights` FOR EACH ROW BEGIN
    DECLARE fromPortCode VARCHAR(10);
    DECLARE toPortCode VARCHAR(10);
    
    SELECT portCode INTO fromPortCode FROM portcodes WHERE portName = NEW.fromPort;
    SELECT portCode INTO toPortCode FROM portcodes WHERE portName = NEW.toPort;
    
    SET NEW.fromPortCode = fromPortCode;
    SET NEW.toPortCode = toPortCode;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `calculate_arrival_time` BEFORE INSERT ON `flights` FOR EACH ROW BEGIN
    DECLARE distance DECIMAL(10,2);
    DECLARE travelTime DECIMAL(10,2);
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE seconds INT;
    DECLARE arrivalTime TIME;

    SELECT distanceInMiles INTO distance
    FROM distances
    WHERE sourceAirport = NEW.fromPortCode
    AND destinationAirport = NEW.toPortCode;

    IF distance IS NULL THEN
        SELECT distanceInMiles INTO distance
        FROM distances
        WHERE sourceAirport = NEW.toPortCode
        AND destinationAirport = NEW.fromPortCode;
    END IF;
   
    IF distance IS NOT NULL THEN

        SET travelTime = distance * 6;

        SET hours = FLOOR(travelTime / 3600);
        SET minutes = FLOOR((travelTime - hours * 3600) / 60);
        SET seconds = 0; 
        

        SET arrivalTime = ADDTIME(NEW.flightTime, SEC_TO_TIME(hours * 3600 + minutes * 60));
        
        SET arrivalTime = TIME_FORMAT(arrivalTime, '%H:%i:%s');
        
        SET NEW.arrivalTime = arrivalTime;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_flights_flight_no` BEFORE INSERT ON `flights` FOR EACH ROW BEGIN
    SET NEW.flight_no = UPPER(CONCAT(LEFT(NEW.company, 3), LPAD((SELECT AUTO_INCREMENT FROM information_schema.TABLES WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'flights'), 3, '0')));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `planecapacity`
--

DROP TABLE IF EXISTS `planecapacity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planecapacity` (
  `plane` varchar(100) NOT NULL,
  `economyCapacity` int DEFAULT NULL,
  `businessCapacity` int DEFAULT NULL,
  PRIMARY KEY (`plane`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planecapacity`
--

LOCK TABLES `planecapacity` WRITE;
/*!40000 ALTER TABLE `planecapacity` DISABLE KEYS */;
INSERT INTO `planecapacity` VALUES ('Airbus A320',139,77),('Boeing 737',145,79),('Boeing 747',286,199),('Embraer E190',87,59);
/*!40000 ALTER TABLE `planecapacity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portcodes`
--

DROP TABLE IF EXISTS `portcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portcodes` (
  `portCode` varchar(10) NOT NULL,
  `portName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`portCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portcodes`
--

LOCK TABLES `portcodes` WRITE;
/*!40000 ALTER TABLE `portcodes` DISABLE KEYS */;
INSERT INTO `portcodes` VALUES ('AMS','Amsterdam Schiphol'),('ATL','Hartsfield-Jackson Atlanta'),('CAN','Guangzhou Baiyun'),('CDG','Charles de Gaulle'),('DEN','Denver International'),('DFW','Dallas/Fort Worth'),('DXB','Dubai International'),('FRA','Frankfurt am Main'),('HND','Tokyo Haneda'),('ICN','Incheon International'),('IST','Istanbul'),('JFK','John F. Kennedy International'),('LAX','Los Angeles International'),('LHR','London Heathrow'),('MAD','Madrid Barajas'),('MUC','Munich Airport'),('ORD','Chicago O\'Hare'),('PEK','Beijing Capital'),('SIN','Singapore Changi'),('SYD','Sydney Kingsford-Smith');
/*!40000 ALTER TABLE `portcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `reservation_id` int NOT NULL,
  `flight_id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `surname` varchar(100) DEFAULT NULL,
  `birth_date` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `company` varchar(20) DEFAULT NULL,
  `flight_no` varchar(255) DEFAULT NULL,
  `flight_class` varchar(255) DEFAULT NULL,
  `flight_date` varchar(255) DEFAULT NULL,
  `flight_time` varchar(255) DEFAULT NULL,
  `from_port` varchar(50) DEFAULT NULL,
  `to_port` varchar(50) DEFAULT NULL,
  `pnr` varchar(20) DEFAULT NULL,
  `passport_no` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `payment` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`reservation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (1,43,'gggg','aaaaa','2023-07-04','male','adult','BGR Airlines','BGR0043','Economy','2023-07-05','16:00:00','Istanbul','London Heathrow','IS8QO6','1234',627.00,'pending'),(2,43,'LeBron','James','1990-05-15','male','adult','BGR Airlines','BGR0043','business','2023-07-05','16:00:00','Istanbul','London Heathrow','ABC123XYZ','123456789',1065.90,'canceled'),(3,43,'dasdsad','asdasd','2023-07-11','male','adult','BGR Airlines','BGR0043','Economy','2023-07-05','16:00:00','Istanbul','London Heathrow','C7G6O9','12321',627.00,'pending'),(4,43,'son','son','2023-07-03','male','adult','BGR Airlines','BGR0043','Economy','2023-07-05','16:00:00','Istanbul','London Heathrow','4C4M66','1234357',627.00,'pending'),(5,43,'son','son','2023-07-03','male','adult','BGR Airlines','BGR0043','Economy','2023-07-05','16:00:00','Istanbul','London Heathrow','IIIC76','1234357',627.00,'pending'),(6,43,'son','son','2023-07-10','male','adult','BGR Airlines','BGR0043','Economy','2023-07-05','16:00:00','Istanbul','London Heathrow','7MD1BK','1234357',627.00,'pending'),(7,43,'sonayakin','asd','2023-07-03','male','adult','BGR Airlines','BGR0043','Economy','2023-07-05','16:00:00','Istanbul','London Heathrow','4RJHNS','1234',627.00,'pending'),(8,43,'dasdsad','asdasd','2023-07-11','male','adult','BGR Airlines','BGR0043','Economy','2023-07-05','16:00:00','Istanbul','London Heathrow','KEYXM5','123124',627.00,'paid'),(9,43,'PNRDENEEM','asd','2023-07-11','male','adult','BGR Airlines','BGR0043','Economy','2023-07-05','16:00:00','Istanbul','London Heathrow','JXMAR4','12345',627.00,'pending'),(10,43,'pnrdeneme','pnrdeneme','2023-07-03','male','adult','BGR Airlines','BGR0043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','R4IRWW','12345678',1065.90,'canceled'),(11,43,'pnrdeneme','pnrdeneme','2023-07-03','male','adult','BGR Airlines','BGR0043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','HX6FPY','12345678',1065.90,'pending'),(12,43,'asdsad','asdasd','2023-07-10','male','adult','BGR Airlines','BGR0043','Economy','2023-07-05','16:00:00','Istanbul','London Heathrow','QOJW4I','123123',627.00,'paid'),(13,43,'paiddeneme','asda','2023-07-05','male','adult','BGR Airlines','BGR0043','Economy','2023-07-05','16:00:00','Istanbul','London Heathrow','JM7RIY','45678',627.00,'paid'),(14,27,'Hasan','Arı','2002-07-04','male','adult','ABC Airlines','ABC0027','Business','2023-07-05','07:45:00','Istanbul','Frankfurt am Main','VBW3MF','159357456',894.20,'canceled'),(15,27,'Fehmi','Abi','1982-07-01','male','adult','ABC Airlines','ABC0027','Business','2023-07-05','07:45:00','Istanbul','Frankfurt am Main','VBW3MF','423687591',894.20,'canceled'),(16,41,'Mustafa','Bugra','1990-07-04','male','adult','Turkish Airlines','Tur0041','Business','2023-07-05','16:00:00','Istanbul','Frankfurt am Main','Y6KW47','15975345625',894.20,'canceled'),(17,41,'Hasan','Arı','2000-07-06','male','child','Turkish Airlines','Tur0041','Business','2023-07-05','16:00:00','Istanbul','Frankfurt am Main','Y6KW47','12678645932',670.65,'canceled'),(18,41,'Selim','Serez','2023-07-04','male','infant','Turkish Airlines','Tur0041','Business','2023-07-05','16:00:00','Istanbul','Frankfurt am Main','Y6KW47','12632545865',89.42,'canceled'),(19,43,'BGR','BGR','2023-07-04','male','adult','BGR Airlines','BGR0043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','VIEBM9','2121212121',1065.90,'paid'),(20,43,'xzxasd','asAS','2023-07-04','male','adult','BGR Airlines','BGR0043','Economy','2023-07-05','16:00:00','Istanbul','London Heathrow','42UDZ3','235235235',627.00,'paid'),(21,41,'asdasdf','asdasd','2023-07-04','male','adult','Turkish Airlines','Tur0041','Business','2023-07-05','16:00:00','Istanbul','Frankfurt am Main','UG239E','1324324',894.20,'canceled'),(22,41,'ASDASD','ASDSAD','2023-07-04','male','child','Turkish Airlines','Tur0041','Business','2023-07-05','16:00:00','Istanbul','Frankfurt am Main','UG239E','123123',670.65,'canceled'),(23,41,'sfgsdgsd','sdfsdfsd','2023-07-04','male','infant','Turkish Airlines','Tur0041','Business','2023-07-05','16:00:00','Istanbul','Frankfurt am Main','UG239E','34534534',89.42,'canceled'),(24,43,'asdasd','asdasd','2023-07-04','male','adult','BGR Airlines','BGR0043','Economy','2023-07-05','16:00:00','Istanbul','London Heathrow','8IQLCW','asdasd',627.00,'paid'),(25,11,'asd','asdasd','2023-06-27','male','adult','ABC Airlines','ABC0011','Business','2023-07-05','07:30:00','Istanbul','Frankfurt am Main','K0XFD7','asdasd',894.20,'canceled'),(26,11,'asdasd','asdasd','2023-07-06','male','adult','ABC Airlines','ABC0011','Business','2023-07-05','07:30:00','Istanbul','Frankfurt am Main','K0XFD7','adasd',894.20,'canceled'),(27,3,'asdasd','asdasdsad','2023-06-27','male','adult','ABC Airlines','ABC003','Business','2023-07-05','08:15:00','Istanbul','Frankfurt am Main','VQ0FL9','asdasdasd',894.20,'paid'),(28,3,'asdasdas','sadasdsa','2023-07-04','male','adult','ABC Airlines','ABC003','Business','2023-07-05','08:15:00','Istanbul','Frankfurt am Main','VQ0FL9','asdasdasd',894.20,'paid');
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `populate_reservations` BEFORE INSERT ON `reservations` FOR EACH ROW BEGIN
    DECLARE v_flightDate DATE;
    DECLARE v_flightTime TIME;
    DECLARE v_fromPort VARCHAR(100);
    DECLARE v_toPort VARCHAR(100);
    DECLARE v_company VARCHAR(100);
    DECLARE v_price DECIMAL(10, 2);
    DECLARE v_payment VARCHAR(20) DEFAULT 'pending';
    DECLARE v_flightNo VARCHAR(20);

    -- Fetch flight details based on flightId
    SELECT flightDate, flightTime, fromPort, toPort,
       CASE 
           WHEN NEW.class = 'business' AND NEW.category = 'child' THEN businessPriceChild
           WHEN NEW.class = 'business' AND NEW.category = 'adult' THEN businessPriceAdult
           WHEN NEW.class = 'business' AND NEW.category = 'infant' THEN businessPriceInfant
           WHEN NEW.class = 'economy' AND NEW.category = 'child' THEN economyPriceChild
           WHEN NEW.class = 'economy' AND NEW.category = 'adult' THEN economyPriceAdult
           WHEN NEW.class = 'economy' AND NEW.category = 'infant' THEN economyPriceInfant 
           ELSE 0
       END AS price,
       company
    INTO v_flightDate, v_flightTime, v_fromPort, v_toPort, v_price, v_company
    FROM flights
    WHERE flightId = NEW.flightId;

    SET v_flightNo = CONCAT(SUBSTRING(v_company, 1, 3), '00', NEW.flightId);

    SET NEW.flightDate = v_flightDate;
    SET NEW.flightTime = v_flightTime;
    SET NEW.fromPort = v_fromPort;
    SET NEW.toPort = v_toPort;
    SET NEW.price = v_price;
    SET NEW.payment = v_payment;
    SET NEW.company = v_company;
    SET NEW.flightNo = v_flightNo;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_reservation_update` AFTER UPDATE ON `reservations` FOR EACH ROW BEGIN
    IF NEW.payment = 'paid' AND OLD.payment != 'paid' THEN

        SET @reduction := 1;
        
        IF NEW.class = 'business' THEN
            SET @reduction := 1; 
        ELSEIF NEW.class = 'economy' THEN
            SET @reduction := 1; 
        END IF;

        UPDATE reservationsystem.flights
        SET
            businessCapacity = GREATEST(businessCapacity - @reduction, 0),
            economyCapacity = GREATEST(economyCapacity - @reduction, 0)
        WHERE flightId = NEW.flightId;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `reservationsm`
--

DROP TABLE IF EXISTS `reservationsm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservationsm` (
  `reservation_id` int NOT NULL AUTO_INCREMENT,
  `flight_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `birth_date` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `flight_class` varchar(255) DEFAULT NULL,
  `pnr` varchar(255) DEFAULT NULL,
  `passport_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reservation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservationsm`
--

LOCK TABLES `reservationsm` WRITE;
/*!40000 ALTER TABLE `reservationsm` DISABLE KEYS */;
INSERT INTO `reservationsm` VALUES (1,3,'asdasdas','dasdasd','2023-08-30','male','adult','null','QDDFWA','asdasdsad'),(2,3,'asdasdasd','asdasdasd','2023-08-08','male','adult','null','QDDFWA','asdasdasd'),(5,3,'AHMET','LAST','2023-08-16','male','adult','null','YG0AP5','65165165165'),(6,3,'AYŞE','LAST','2023-08-30','female','adult','null','YG0AP5','1654146516'),(8,3,'Mustafa Buğra','ESER','2023-08-07','male','adult','null','UTDPCT','3216351534'),(9,3,'Mehmet Onur','Karakaş','2023-08-23','female','adult','null','UTDPCT','46545345'),(10,43,'ahmet','mehmet','2023-08-08','male','adult','null','648BHX','651651'),(11,43,'ayşe','fatma','2023-08-16','female','adult','null','648BHX','45645634'),(13,43,'ahmet','mehmet','2023-08-09','male','adult','Business','6TIXSM','651651'),(14,43,'ayşe','fatma','2023-08-23','female','adult','Business','6TIXSM','45645634'),(15,43,'Mehmet Onur','KARAKAŞ','2023-08-08','female','infant','Economy','BGR31B3G1R','3131313131'),(16,43,'Mustafa Buğra','ESER','2023-08-08','male','adult','Business','BGR31B3G1R','3131313131'),(17,43,'selim','poyraz','2023-08-03','male','adult','Business','6Q2IA2','165165165'),(18,43,'info','deneme','2023-08-29','male','adult','Business','DRJE1Z','161681651'),(19,43,'2li','2li','2023-08-17','male','adult','Business','E6JPO2','iladşlasid'),(20,43,'ahmet','ahmer','2023-08-16','male','adult','Business','E6JPO2','465464'),(21,19,'test','deneme','2023-08-03','male','adult','Business','49XKTN','3213213521'),(22,19,'demo','test','2023-08-10','male','adult','Business','49XKTN','45465465'),(23,19,'ahmet','mehmet','2023-08-11','male','child','Business','49XKTN','475465465'),(24,43,'Ahmet','Mehmet','2023-08-24','male','adult','Business','38I7BW','515313515'),(25,43,'Selim','Selim','2023-08-22','male','adult','Business','38I7BW','151351'),(26,43,'Ahmet','Mehmet','','male','adult','Business','NCBCHT','515313515'),(27,43,'Selim','Selim','','male','adult','Business','NCBCHT','151351'),(28,43,'Ahmet','Mehmet','2023-08-16','male','adult','Business','87ILF4','515313515'),(29,43,'Selim','Selim','2023-08-24','male','adult','Business','87ILF4','151351'),(30,43,'Ahmet','Mehmet','','male','adult','Business','KNYHPK','515313515'),(31,43,'Selim','Selim','','male','adult','Business','KNYHPK','151351'),(32,43,'Ahmet','Mehmet','2023-08-23','male','adult','Business','61J18T','515313515'),(33,43,'Selim','Selim','2023-08-30','male','adult','Business','61J18T','151351'),(34,43,'Ahmet','Mehmet','','male','adult','Business','U10ENU','515313515'),(35,43,'Selim','Selim','','male','adult','Business','U10ENU','151351'),(36,43,'Ahmet','Mehmet','','male','adult','Business','8RO4HK','515313515'),(37,43,'Selim','Selim','','male','adult','Business','8RO4HK','151351'),(38,43,'Ahmet','Mehmet','','male','adult','Business','YHBIGD','515313515'),(39,43,'Selim','Selim','','male','adult','Business','YHBIGD','151351'),(40,43,'pnr','Mehmet','2023-08-01','male','adult','Business','I9SCZ0','515313515'),(41,43,'Selim','Selim','2023-08-08','male','adult','Business','I9SCZ0','151351'),(42,43,'pnr','Mehmet','2023-08-10','male','adult','Business','P3RWCB','515313515'),(43,43,'Selim','Selim','2023-08-21','male','adult','Business','P3RWCB','151351'),(44,43,'pnr','Mehmet','','male','adult','Business','JB9BU5','515313515'),(45,43,'Selim','Selim','','male','adult','Business','JB9BU5','151351'),(46,43,'bgdemo','eser','2023-08-07','male','adult','Business','07F5PH','45456465'),(47,43,'ahmet','mehmet','2023-08-12','male','adult','Business','WCJ1F0','165165165'),(48,43,'asdasdas','dasdasdasd','2023-08-23','male','adult','Business','U3MIFU','asdadsasd'),(49,43,'asdasdas','dasdasdasd','2023-08-15','male','adult','Business','6E92VC','asdadsasd'),(50,43,'hasan','arı','2023-08-08','male','adult','Business','W3LZO1','15615175'),(51,43,'seyyah','ahmet','2023-08-09','male','adult','Economy','MPRDQZ','4165156'),(52,43,'mehmet','seyyah','2023-08-09','male','adult','Economy','MPRDQZ','51651'),(53,43,'adasds','adsads','2023-08-29','male','adult','Economy','MPRDQZ','adasdasd'),(54,19,'john','doe','2023-08-02','male','adult','Business','W5Z0ZS','156165156165'),(55,19,'julia','croy','2023-08-15','male','adult','Business','W5Z0ZS','615651561'),(56,11,'sadasdadasdasdaa','adşaösdlşasdö','2023-08-29','male','adult','Business','ERA2QP','6515616'),(57,43,'Mustafa Buğra','ESER','2002-04-28','male','adult','Business','E4MK8Q','435435435'),(58,43,'Berkan','MARANCI','2000-08-04','male','adult','Business','E4MK8Q','153435134'),(59,43,'Mehmet Onur','KARAKAŞ','2023-08-03','female','child','Business','E4MK8Q','852525282'),(60,43,'Emile','ZONA','2023-08-16','male','infant','Business','E4MK8Q','14354354');
/*!40000 ALTER TABLE `reservationsm` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_reservationsMSpecific` AFTER INSERT ON `reservationsm` FOR EACH ROW BEGIN
    DECLARE classPrice DECIMAL(10, 2);
    DECLARE paymentValue VARCHAR(20);
    
    IF NEW.category = 'child' AND NEW.flight_class = 'business' THEN
        SET classPrice = (SELECT f.business_Price_Child FROM db2.flights f WHERE f.flight_id = NEW.flight_id);
    ELSEIF NEW.category = 'adult' AND NEW.flight_class = 'business' THEN
        SET classPrice = (SELECT f.business_Price_adult FROM db2.flights f WHERE f.flight_id = NEW.flight_id);
    ELSEIF NEW.category = 'infant' AND NEW.flight_class = 'business' THEN
        SET classPrice = (SELECT f.business_Price_infant FROM db2.flights f WHERE f.flight_id = NEW.flight_id);
    ELSEIF NEW.category = 'child' AND NEW.flight_class = 'economy' THEN
        SET classPrice = (SELECT f.economy_Price_Child FROM db2.flights f WHERE f.flight_id = NEW.flight_id);
    ELSEIF NEW.category = 'adult' AND NEW.flight_class = 'economy' THEN
        SET classPrice = (SELECT f.economy_Price_adult FROM db2.flights f WHERE f.flight_id = NEW.flight_id);
    ELSEIF NEW.category = 'infant' AND NEW.flight_class = 'economy' THEN
        SET classPrice = (SELECT f.economy_Price_infant FROM db2.flights f WHERE f.flight_id = NEW.flight_id);
    ELSE
        SET classPrice = 0.0;
    END IF;

    SET paymentValue = 'pending';
    
    INSERT INTO reservationsMSpecific (
        flight_id,
        name,
        surname,
        birth_date,
        gender,
        category,
        company,
        flight_no,
        flight_class,
        flight_date,
        flight_time,
        from_port,
        to_port,
        pnr,
        passport_no,
        price,
        payment
    )
    SELECT
        NEW.flight_id,
        NEW.name,
        NEW.surname,
        NEW.birth_date,
        NEW.gender,
        NEW.category,
        f.company,
        f.flight_no,
        NEW.flight_class,
        f.flight_date,
        f.flight_time,
        f.from_port,
        f.to_port,
        NEW.pnr,
        NEW.passport_no,
        classPrice,
        paymentValue
    FROM
        db2.flights f
    WHERE
        f.flight_id = NEW.flight_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `reservationsmspecific`
--

DROP TABLE IF EXISTS `reservationsmspecific`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservationsmspecific` (
  `reservation_id` int NOT NULL AUTO_INCREMENT,
  `flight_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `birth_date` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `flight_no` varchar(255) DEFAULT NULL,
  `flight_class` varchar(255) DEFAULT NULL,
  `flight_date` varchar(255) DEFAULT NULL,
  `flight_time` varchar(255) DEFAULT NULL,
  `from_port` varchar(255) DEFAULT NULL,
  `to_port` varchar(255) DEFAULT NULL,
  `pnr` varchar(255) DEFAULT NULL,
  `passport_no` varchar(255) DEFAULT NULL,
  `price` decimal(38,2) DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reservation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservationsmspecific`
--

LOCK TABLES `reservationsmspecific` WRITE;
/*!40000 ALTER TABLE `reservationsmspecific` DISABLE KEYS */;
INSERT INTO `reservationsmspecific` VALUES (1,3,'Mustafa Buğra','ESER','2023-08-07','male','adult','ABC Airlines','ABC003','null','2023-07-05','08:15:00','Istanbul','Frankfurt am Main','UTDPCT','3216351534',0.00,'pending'),(2,3,'Mehmet Onur','Karakaş','2023-08-23','female','adult','ABC Airlines','ABC003','null','2023-07-05','08:15:00','Istanbul','Frankfurt am Main','UTDPCT','46545345',0.00,'pending'),(3,43,'ahmet','mehmet','2023-08-08','male','adult','BGR Airlines','BGR043','null','2023-07-05','16:00:00','Istanbul','London Heathrow','648BHX','651651',0.00,'pending'),(4,43,'ayşe','fatma','2023-08-16','female','adult','BGR Airlines','BGR043','null','2023-07-05','16:00:00','Istanbul','London Heathrow','648BHX','45645634',0.00,'pending'),(5,43,'ahmet','mehmet','2023-08-09','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','6TIXSM','651651',1065.90,'pending'),(6,43,'ayşe','fatma','2023-08-23','female','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','6TIXSM','45645634',1065.90,'pending'),(7,43,'Mehmet Onur','KARAKAŞ','2023-08-08','female','infant','BGR Airlines','BGR043','Economy','2023-07-05','16:00:00','Istanbul','London Heathrow','BGR31B3G1R','3131313131',62.70,'pending'),(8,43,'Mustafa Buğra','ESER','2023-08-08','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','BGR31B3G1R','3131313131',1065.90,'pending'),(9,43,'selim','poyraz','2023-08-03','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','6Q2IA2','165165165',1065.90,'pending'),(10,43,'info','deneme','2023-08-29','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','DRJE1Z','161681651',1065.90,'pending'),(11,43,'2li','2li','2023-08-17','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','E6JPO2','iladşlasid',1065.90,'pending'),(12,43,'ahmet','ahmer','2023-08-16','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','E6JPO2','465464',1065.90,'pending'),(13,19,'test','deneme','2023-08-03','male','adult','ABC Airlines','ABC019','Business','2023-07-05','09:15:00','Istanbul','Frankfurt am Main','49XKTN','3213213521',894.20,'pending'),(14,19,'demo','test','2023-08-10','male','adult','ABC Airlines','ABC019','Business','2023-07-05','09:15:00','Istanbul','Frankfurt am Main','49XKTN','45465465',894.20,'pending'),(15,19,'ahmet','mehmet','2023-08-11','male','child','ABC Airlines','ABC019','Business','2023-07-05','09:15:00','Istanbul','Frankfurt am Main','49XKTN','475465465',670.65,'pending'),(16,43,'Ahmet','Mehmet','2023-08-24','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','38I7BW','515313515',1065.90,'pending'),(17,43,'Selim','Selim','2023-08-22','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','38I7BW','151351',1065.90,'pending'),(18,43,'Ahmet','Mehmet','','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','NCBCHT','515313515',1065.90,'pending'),(19,43,'Selim','Selim','','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','NCBCHT','151351',1065.90,'pending'),(20,43,'Ahmet','Mehmet','2023-08-16','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','87ILF4','515313515',1065.90,'pending'),(21,43,'Selim','Selim','2023-08-24','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','87ILF4','151351',1065.90,'pending'),(22,43,'Ahmet','Mehmet','','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','KNYHPK','515313515',1065.90,'pending'),(23,43,'Selim','Selim','','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','KNYHPK','151351',1065.90,'pending'),(24,43,'Ahmet','Mehmet','2023-08-23','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','61J18T','515313515',1065.90,'pending'),(25,43,'Selim','Selim','2023-08-30','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','61J18T','151351',1065.90,'pending'),(26,43,'Ahmet','Mehmet','','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','U10ENU','515313515',1065.90,'pending'),(27,43,'Selim','Selim','','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','U10ENU','151351',1065.90,'pending'),(28,43,'Ahmet','Mehmet','','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','8RO4HK','515313515',1065.90,'pending'),(29,43,'Selim','Selim','','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','8RO4HK','151351',1065.90,'pending'),(30,43,'Ahmet','Mehmet','','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','YHBIGD','515313515',1065.90,'paid'),(31,43,'Selim','Selim','','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','YHBIGD','151351',1065.90,'paid'),(32,43,'pnr','Mehmet','2023-08-01','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','I9SCZ0','515313515',1065.90,'paid'),(33,43,'Selim','Selim','2023-08-08','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','I9SCZ0','151351',1065.90,'paid'),(34,43,'pnr','Mehmet','2023-08-10','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','P3RWCB','515313515',1065.90,'paid'),(35,43,'Selim','Selim','2023-08-21','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','P3RWCB','151351',1065.90,'paid'),(36,43,'pnr','Mehmet','','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','JB9BU5','515313515',1065.90,'canceled'),(37,43,'Selim','Selim','','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','JB9BU5','151351',1065.90,'canceled'),(38,43,'bgdemo','eser','2023-08-07','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','07F5PH','45456465',1065.90,'canceled'),(39,43,'ahmet','mehmet','2023-08-12','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','WCJ1F0','165165165',1065.90,'canceled'),(40,43,'asdasdas','dasdasdasd','2023-08-23','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','U3MIFU','asdadsasd',1065.90,'paid'),(41,43,'asdasdas','dasdasdasd','2023-08-15','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','6E92VC','asdadsasd',1065.90,'paid'),(42,43,'hasan','arı','2023-08-08','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','W3LZO1','15615175',1065.90,'canceled'),(43,43,'seyyah','ahmet','2023-08-09','male','adult','BGR Airlines','BGR043','Economy','2023-07-05','16:00:00','Istanbul','London Heathrow','MPRDQZ','4165156',627.00,'pending'),(44,43,'mehmet','seyyah','2023-08-09','male','adult','BGR Airlines','BGR043','Economy','2023-07-05','16:00:00','Istanbul','London Heathrow','MPRDQZ','51651',627.00,'pending'),(45,43,'adasds','adsads','2023-08-29','male','adult','BGR Airlines','BGR043','Economy','2023-07-05','16:00:00','Istanbul','London Heathrow','MPRDQZ','adasdasd',627.00,'pending'),(46,19,'john','doe','2023-08-02','male','adult','ABC Airlines','ABC019','Business','2023-07-05','09:15:00','Istanbul','Frankfurt am Main','W5Z0ZS','156165156165',894.20,'canceled'),(47,19,'julia','croy','2023-08-15','male','adult','ABC Airlines','ABC019','Business','2023-07-05','09:15:00','Istanbul','Frankfurt am Main','W5Z0ZS','615651561',894.20,'canceled'),(48,11,'sadasdadasdasdaa','adşaösdlşasdö','2023-08-29','male','adult','ABC Airlines','ABC011','Business','2023-07-05','07:30:00','Istanbul','Frankfurt am Main','ERA2QP','6515616',894.20,'canceled'),(49,43,'Mustafa Buğra','ESER','2002-04-28','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','E4MK8Q','435435435',1065.90,'paid'),(50,43,'Berkan','MARANCI','2000-08-04','male','adult','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','E4MK8Q','153435134',1065.90,'paid'),(51,43,'Mehmet Onur','KARAKAŞ','2023-08-03','female','child','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','E4MK8Q','852525282',799.43,'paid'),(52,43,'Emile','ZONA','2023-08-16','male','infant','BGR Airlines','BGR043','Business','2023-07-05','16:00:00','Istanbul','London Heathrow','E4MK8Q','14354354',106.59,'paid');
/*!40000 ALTER TABLE `reservationsmspecific` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `mailAddress` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Alice','Smith','password2','jane@example.com','987654321'),(2,'asd','asd','12345678','asd@mail.com','asd'),(3,'selim','haki','deneme12','selimhaki@mail.com','05557775566'),(4,'deneme','acc','mypass123','acc@mail.com','5055055253'),(5,'null','null','12345678','usermanagemen@mail.com','null'),(8,NULL,NULL,'12345678','add@mail.com',NULL),(9,'hitit','dc','12345678','hitit@mail.com','12345678'),(10,NULL,NULL,'12345678','adda@mail.com',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_user_insert` AFTER INSERT ON `user` FOR EACH ROW BEGIN
    DECLARE table_exists INT DEFAULT 0;

    SELECT COUNT(*) INTO table_exists
    FROM information_schema.tables
    WHERE table_schema = DATABASE()
    AND table_name = 'userPrivate';

    IF table_exists = 1 THEN
        INSERT INTO userPrivate (userId) VALUES (NEW.userId);
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `userm`
--

DROP TABLE IF EXISTS `userm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userm` (
  `login_status` bit(1) NOT NULL DEFAULT b'1',
  `user_id` int NOT NULL AUTO_INCREMENT,
  `mail` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userm`
--

LOCK TABLES `userm` WRITE;
/*!40000 ALTER TABLE `userm` DISABLE KEYS */;
INSERT INTO `userm` VALUES (_binary '\0',1,'eser@mail.com','mustafa','12345678','1234567','eser'),(_binary '\0',2,'asd@mail.com','ahmet','mypass123','05556667788','mehmet'),(_binary '\0',3,'aassdd@mail.com','lastdeneme','12345678','132465746','last'),(_binary '\0',4,'asdsa@mail.com','asdasdasd','12345678','1651651','asdasdsad'),(_binary '\0',5,'dddd@mail.com','asdsadasd','12345678','12345678','asdasdsad'),(_binary '\0',6,'dddddaa@mail.com','denemee','12345678','12345678','deneeeee'),(_binary '\0',7,'ttt@mail.com','asdasdasdasd','12345678','12345678','asdasdasd'),(_binary '\0',8,'asd@mail.com','ahmet','12345678','5555','mehmet'),(_binary '\0',9,'neew@mail.com','asdasd','12345678','sdasda','sadasda'),(_binary '\0',10,'asdasd@mail.com','asdasdas','12345678','asdasdasd','dasdasd'),(_binary '\0',11,'asdasdasd@mail.com','asdasdasd','12345678','asdasdasd','asdasd'),(_binary '\0',12,'asdasd@mail.com','asdasda','12345678','asdasd','sdasdasd'),(_binary '\0',13,'dsadasd@mail.com','asdasdasd','12345678','asdasdas','asdasdsad'),(_binary '\0',14,'hha@mail.com','asdasdasd','12345678asd','adasdasda','asdasdasd'),(_binary '\0',15,'new@mail.com','asdasd','12345678','asdasdasd','asdasd'),(_binary '\0',16,'test@mail.com','test','mypass123','1231321424','demo'),(_binary '\0',17,'test@mail.com','test','mypass123','demo@mail.com','demo'),(_binary '\0',19,'askdlaskdad@hotmail.com','ahmet','12345678','alşlşasklşaskdlş','mehmet'),(_binary '',20,'ahmetto@mail.com',NULL,'159159159',NULL,NULL),(_binary '',21,'ahmetto@mail.com',NULL,'159159159',NULL,NULL),(_binary '',22,'ahmetto@mail.com',NULL,'159159159',NULL,NULL),(_binary '',23,'ahmetto@mail.com',NULL,'159159159',NULL,NULL),(_binary '\0',24,'maranci@mail.com','Berkan','mypass123','05533678931','Marancı');
/*!40000 ALTER TABLE `userm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userprivate`
--

DROP TABLE IF EXISTS `userprivate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userprivate` (
  `userId` int NOT NULL,
  `passportNo` varchar(20) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  CONSTRAINT `userprivate_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userprivate`
--

LOCK TABLES `userprivate` WRITE;
/*!40000 ALTER TABLE `userprivate` DISABLE KEYS */;
INSERT INTO `userprivate` VALUES (1,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL),(5,NULL,NULL,NULL,NULL),(8,NULL,NULL,NULL,NULL),(9,NULL,NULL,NULL,NULL),(10,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `userprivate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db2'
--

--
-- Dumping routines for database 'db2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-15 14:09:33
