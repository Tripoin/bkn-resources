-- MySQL dump 10.13  Distrib 5.7.13, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: eportalbkn
-- ------------------------------------------------------
-- Server version	5.6.35

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
-- Table structure for table `link_question_selected`
--

DROP TABLE IF EXISTS `link_question_selected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link_question_selected` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  `questionnaire_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_question_selected`
--

LOCK TABLES `link_question_selected` WRITE;
/*!40000 ALTER TABLE `link_question_selected` DISABLE KEYS */;
/*!40000 ALTER TABLE `link_question_selected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_action_parameter`
--

DROP TABLE IF EXISTS `mst_action_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_action_parameter` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_action_parameter`
--

LOCK TABLES `mst_action_parameter` WRITE;
/*!40000 ALTER TABLE `mst_action_parameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_action_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_address`
--

DROP TABLE IF EXISTS `mst_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_address` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `province_id` bigint(20) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `district_id` bigint(20) DEFAULT NULL,
  `village_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`),
  KEY `province_id` (`province_id`),
  KEY `city_id` (`city_id`),
  KEY `district_id` (`district_id`),
  KEY `village_id` (`village_id`),
  CONSTRAINT `mst_address_ibfk_1` FOREIGN KEY (`province_id`) REFERENCES `mst_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mst_address_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `mst_city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mst_address_ibfk_3` FOREIGN KEY (`district_id`) REFERENCES `mst_district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mst_address_ibfk_4` FOREIGN KEY (`village_id`) REFERENCES `mst_village` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_address`
--

LOCK TABLES `mst_address` WRITE;
/*!40000 ALTER TABLE `mst_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_assigment_letter`
--

DROP TABLE IF EXISTS `mst_assigment_letter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_assigment_letter` (
  `id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_assigment_letter`
--

LOCK TABLES `mst_assigment_letter` WRITE;
/*!40000 ALTER TABLE `mst_assigment_letter` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_assigment_letter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_author`
--

DROP TABLE IF EXISTS `mst_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_author` (
  `id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_author`
--

LOCK TABLES `mst_author` WRITE;
/*!40000 ALTER TABLE `mst_author` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_budget_type`
--

DROP TABLE IF EXISTS `mst_budget_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_budget_type` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_budget_type`
--

LOCK TABLES `mst_budget_type` WRITE;
/*!40000 ALTER TABLE `mst_budget_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_budget_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_calc_questionnaire`
--

DROP TABLE IF EXISTS `mst_calc_questionnaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_calc_questionnaire` (
  `id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  `questionnaire_id` int(11) DEFAULT NULL,
  `participant_id` int(11) DEFAULT NULL,
  `execute_date` datetime DEFAULT NULL,
  `json_calc` text,
  `questionnaire_result` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_calc_questionnaire`
--

LOCK TABLES `mst_calc_questionnaire` WRITE;
/*!40000 ALTER TABLE `mst_calc_questionnaire` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_calc_questionnaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_certificate`
--

DROP TABLE IF EXISTS `mst_certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_certificate` (
  `id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  `signature1` varchar(255) DEFAULT NULL,
  `signature2` varchar(255) DEFAULT NULL,
  `expired` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_certificate`
--

LOCK TABLES `mst_certificate` WRITE;
/*!40000 ALTER TABLE `mst_certificate` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_checklist_usage`
--

DROP TABLE IF EXISTS `mst_checklist_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_checklist_usage` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `booking_id` bigint(20) DEFAULT NULL,
  `json_checklist` text,
  `is_loss` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_checklist_usage`
--

LOCK TABLES `mst_checklist_usage` WRITE;
/*!40000 ALTER TABLE `mst_checklist_usage` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_checklist_usage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_city`
--

DROP TABLE IF EXISTS `mst_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_city` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `province_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `province_id` (`province_id`),
  CONSTRAINT `mst_city_ibfk_1` FOREIGN KEY (`province_id`) REFERENCES `mst_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_city`
--

LOCK TABLES `mst_city` WRITE;
/*!40000 ALTER TABLE `mst_city` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_contact`
--

DROP TABLE IF EXISTS `mst_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_contact` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `email_1` varchar(150) DEFAULT NULL,
  `email_2` varchar(150) DEFAULT NULL,
  `phone_number_1` varchar(150) DEFAULT NULL,
  `phone_number_2` varchar(150) DEFAULT NULL,
  `fax` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_contact`
--

LOCK TABLES `mst_contact` WRITE;
/*!40000 ALTER TABLE `mst_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_contact_message`
--

DROP TABLE IF EXISTS `mst_contact_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_contact_message` (
  `id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  `contact_message_guest_name` varchar(50) DEFAULT NULL,
  `contact_message_guest_email` varchar(150) DEFAULT NULL,
  `contact_message_subject` varchar(50) DEFAULT NULL,
  `contact_message_content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_contact_message`
--

LOCK TABLES `mst_contact_message` WRITE;
/*!40000 ALTER TABLE `mst_contact_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_contact_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_district`
--

DROP TABLE IF EXISTS `mst_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_district` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `city_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `mst_district_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `mst_city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_district`
--

LOCK TABLES `mst_district` WRITE;
/*!40000 ALTER TABLE `mst_district` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_documentation`
--

DROP TABLE IF EXISTS `mst_documentation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_documentation` (
  `id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  `documentation_image_url` varchar(255) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_documentation`
--

LOCK TABLES `mst_documentation` WRITE;
/*!40000 ALTER TABLE `mst_documentation` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_documentation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_facility`
--

DROP TABLE IF EXISTS `mst_facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_facility` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_facility`
--

LOCK TABLES `mst_facility` WRITE;
/*!40000 ALTER TABLE `mst_facility` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_function_language`
--

DROP TABLE IF EXISTS `mst_function_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_function_language` (
  `id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  `function_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_function_language`
--

LOCK TABLES `mst_function_language` WRITE;
/*!40000 ALTER TABLE `mst_function_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_function_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_function_type`
--

DROP TABLE IF EXISTS `mst_function_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_function_type` (
  `id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_function_type`
--

LOCK TABLES `mst_function_type` WRITE;
/*!40000 ALTER TABLE `mst_function_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_function_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_government_agencies`
--

DROP TABLE IF EXISTS `mst_government_agencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_government_agencies` (
  `id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_government_agencies`
--

LOCK TABLES `mst_government_agencies` WRITE;
/*!40000 ALTER TABLE `mst_government_agencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_government_agencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_guest`
--

DROP TABLE IF EXISTS `mst_guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_guest` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `nik` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone_number` varchar(150) DEFAULT NULL,
  `address` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_guest`
--

LOCK TABLES `mst_guest` WRITE;
/*!40000 ALTER TABLE `mst_guest` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_language`
--

DROP TABLE IF EXISTS `mst_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_language` (
  `id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  `language_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_language`
--

LOCK TABLES `mst_language` WRITE;
/*!40000 ALTER TABLE `mst_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_level_akd`
--

DROP TABLE IF EXISTS `mst_level_akd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_level_akd` (
  `id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_level_akd`
--

LOCK TABLES `mst_level_akd` WRITE;
/*!40000 ALTER TABLE `mst_level_akd` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_level_akd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_material_subject`
--

DROP TABLE IF EXISTS `mst_material_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_material_subject` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `duration` int(11) DEFAULT NULL,
  `unit_id` bigint(20) DEFAULT NULL,
  `author_name` varchar(150) DEFAULT NULL,
  `copyright_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unit_id` (`unit_id`),
  CONSTRAINT `mst_material_subject_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `mst_unit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_material_subject`
--

LOCK TABLES `mst_material_subject` WRITE;
/*!40000 ALTER TABLE `mst_material_subject` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_material_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_material_support`
--

DROP TABLE IF EXISTS `mst_material_support`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_material_support` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_material_support`
--

LOCK TABLES `mst_material_support` WRITE;
/*!40000 ALTER TABLE `mst_material_support` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_material_support` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_material_support_room`
--

DROP TABLE IF EXISTS `mst_material_support_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_material_support_room` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `booking_id` bigint(20) DEFAULT NULL,
  `material_support_id` bigint(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_material_support_room`
--

LOCK TABLES `mst_material_support_room` WRITE;
/*!40000 ALTER TABLE `mst_material_support_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_material_support_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_notification`
--

DROP TABLE IF EXISTS `mst_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_notification` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  `notification_title` varchar(255) DEFAULT NULL,
  `notification_message` text,
  `to_user_profile_id` bigint(20) DEFAULT NULL,
  `from_user_profile_id` bigint(20) DEFAULT NULL,
  `notification_date` datetime DEFAULT NULL,
  `notification_read` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_notification`
--

LOCK TABLES `mst_notification` WRITE;
/*!40000 ALTER TABLE `mst_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_organizer`
--

DROP TABLE IF EXISTS `mst_organizer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_organizer` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_profile_id` bigint(20) DEFAULT NULL,
  `nip` varchar(150) DEFAULT NULL,
  `nik` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_organizer`
--

LOCK TABLES `mst_organizer` WRITE;
/*!40000 ALTER TABLE `mst_organizer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_organizer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_organizer_assignment`
--

DROP TABLE IF EXISTS `mst_organizer_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_organizer_assignment` (
  `id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  `organizer_id` int(11) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `is_passed` tinyint(1) DEFAULT NULL,
  `expired` date DEFAULT NULL,
  `assignment_letter_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_organizer_assignment`
--

LOCK TABLES `mst_organizer_assignment` WRITE;
/*!40000 ALTER TABLE `mst_organizer_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_organizer_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_participant`
--

DROP TABLE IF EXISTS `mst_participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_participant` (
  `id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  `user_profile_id` int(11) DEFAULT NULL,
  `nip` varchar(150) DEFAULT NULL,
  `nik` varchar(150) DEFAULT NULL,
  `occupation_name` varchar(255) DEFAULT NULL,
  `participant_type_id` int(11) DEFAULT NULL,
  `government_agencies_id` int(11) DEFAULT NULL,
  `is_alumnus` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_participant`
--

LOCK TABLES `mst_participant` WRITE;
/*!40000 ALTER TABLE `mst_participant` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_participant_answer`
--

DROP TABLE IF EXISTS `mst_participant_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_participant_answer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `calc_questionnaire_id` int(11) DEFAULT NULL,
  `json_answer` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_participant_answer`
--

LOCK TABLES `mst_participant_answer` WRITE;
/*!40000 ALTER TABLE `mst_participant_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_participant_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_participant_assignment`
--

DROP TABLE IF EXISTS `mst_participant_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_participant_assignment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  `participant_id` int(11) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `is_passed` varchar(150) DEFAULT NULL,
  `expired` date DEFAULT NULL,
  `assignment_letter_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_participant_assignment`
--

LOCK TABLES `mst_participant_assignment` WRITE;
/*!40000 ALTER TABLE `mst_participant_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_participant_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_participant_type`
--

DROP TABLE IF EXISTS `mst_participant_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_participant_type` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_participant_type`
--

LOCK TABLES `mst_participant_type` WRITE;
/*!40000 ALTER TABLE `mst_participant_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_participant_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_passed_activity`
--

DROP TABLE IF EXISTS `mst_passed_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_passed_activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  `participant_assignment_id` int(11) DEFAULT NULL,
  `subject_name` varchar(255) DEFAULT NULL,
  `subject_category_name` varchar(255) DEFAULT NULL,
  `subject_type_name` varchar(255) DEFAULT NULL,
  `generation` varchar(20) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `start_activity` datetime DEFAULT NULL,
  `end_activity` datetime DEFAULT NULL,
  `year_activity` varchar(4) DEFAULT NULL,
  `certificate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_passed_activity`
--

LOCK TABLES `mst_passed_activity` WRITE;
/*!40000 ALTER TABLE `mst_passed_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_passed_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_passed_activity_details`
--

DROP TABLE IF EXISTS `mst_passed_activity_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_passed_activity_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  `passed_activity_id` int(11) DEFAULT NULL,
  `trainer_name` varchar(150) DEFAULT NULL,
  `material_subject_name` varchar(25) DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_passed_activity_details`
--

LOCK TABLES `mst_passed_activity_details` WRITE;
/*!40000 ALTER TABLE `mst_passed_activity_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_passed_activity_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_post`
--

DROP TABLE IF EXISTS `mst_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  `post_title` varchar(255) DEFAULT NULL,
  `post_subtitle` varchar(255) DEFAULT NULL,
  `post_content` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `publish_on` datetime DEFAULT NULL,
  `post_feature` int(11) DEFAULT NULL,
  `post_url_video` varchar(255) DEFAULT NULL,
  `post_url_image` varchar(255) DEFAULT NULL,
  `post_url_thumbnail` varchar(255) DEFAULT NULL,
  `post_comment_enable` char(1) DEFAULT NULL,
  `read_count` int(11) DEFAULT NULL,
  `post_type` varchar(20) DEFAULT NULL,
  `post_extra_flag` varchar(50) DEFAULT NULL,
  `post_status` char(1) DEFAULT NULL,
  `post_template` varchar(255) DEFAULT NULL,
  `authod_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_post`
--

LOCK TABLES `mst_post` WRITE;
/*!40000 ALTER TABLE `mst_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_post_function`
--

DROP TABLE IF EXISTS `mst_post_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_post_function` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  `function_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_post_function`
--

LOCK TABLES `mst_post_function` WRITE;
/*!40000 ALTER TABLE `mst_post_function` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_post_function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_post_language`
--

DROP TABLE IF EXISTS `mst_post_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_post_language` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  `post_title` varchar(255) DEFAULT NULL,
  `post_subtitle` varchar(255) DEFAULT NULL,
  `post_content` text,
  `language_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_post_language`
--

LOCK TABLES `mst_post_language` WRITE;
/*!40000 ALTER TABLE `mst_post_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_post_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_province`
--

DROP TABLE IF EXISTS `mst_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_province` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_province`
--

LOCK TABLES `mst_province` WRITE;
/*!40000 ALTER TABLE `mst_province` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_question`
--

DROP TABLE IF EXISTS `mst_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  `question_category_id` int(11) DEFAULT NULL,
  `question_type_id` int(11) DEFAULT NULL,
  `question_details` text,
  `json_question` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_question`
--

LOCK TABLES `mst_question` WRITE;
/*!40000 ALTER TABLE `mst_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_question_category`
--

DROP TABLE IF EXISTS `mst_question_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_question_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_question_category`
--

LOCK TABLES `mst_question_category` WRITE;
/*!40000 ALTER TABLE `mst_question_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_question_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_question_type`
--

DROP TABLE IF EXISTS `mst_question_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_question_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_question_type`
--

LOCK TABLES `mst_question_type` WRITE;
/*!40000 ALTER TABLE `mst_question_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_question_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_questionnaire`
--

DROP TABLE IF EXISTS `mst_questionnaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_questionnaire` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  `question_category_id` int(11) DEFAULT NULL,
  `level_akd_id` int(11) DEFAULT NULL,
  `questionnaire_start` datetime DEFAULT NULL,
  `questionnaire_end` datetime DEFAULT NULL,
  `questionnaire_year` varchar(4) DEFAULT NULL,
  `json_review` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_questionnaire`
--

LOCK TABLES `mst_questionnaire` WRITE;
/*!40000 ALTER TABLE `mst_questionnaire` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_questionnaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_room`
--

DROP TABLE IF EXISTS `mst_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_room` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_room`
--

LOCK TABLES `mst_room` WRITE;
/*!40000 ALTER TABLE `mst_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_subject`
--

DROP TABLE IF EXISTS `mst_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_subject` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `duration` int(20) DEFAULT NULL,
  `unit_id` bigint(20) DEFAULT NULL,
  `subject_amount` double DEFAULT NULL,
  `budget_type_id` bigint(20) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `start_subject` datetime DEFAULT NULL,
  `end_subject` datetime DEFAULT NULL,
  `necessary_description` text,
  `subject_category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`),
  KEY `unit_id` (`unit_id`),
  KEY `budget_type_id` (`budget_type_id`),
  KEY `subject_category_id` (`subject_category_id`),
  CONSTRAINT `mst_subject_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `mst_unit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mst_subject_ibfk_2` FOREIGN KEY (`budget_type_id`) REFERENCES `mst_budget_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mst_subject_ibfk_3` FOREIGN KEY (`subject_category_id`) REFERENCES `mst_subject_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_subject`
--

LOCK TABLES `mst_subject` WRITE;
/*!40000 ALTER TABLE `mst_subject` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_subject_category`
--

DROP TABLE IF EXISTS `mst_subject_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_subject_category` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `necessary_description` text,
  `subject_category_parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_category_parent_id` (`subject_category_parent_id`),
  CONSTRAINT `mst_subject_category_ibfk_1` FOREIGN KEY (`subject_category_parent_id`) REFERENCES `mst_subject_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_subject_category`
--

LOCK TABLES `mst_subject_category` WRITE;
/*!40000 ALTER TABLE `mst_subject_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_subject_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_subject_requirements`
--

DROP TABLE IF EXISTS `mst_subject_requirements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_subject_requirements` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `key` varchar(255) DEFAULT NULL,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_subject_requirements`
--

LOCK TABLES `mst_subject_requirements` WRITE;
/*!40000 ALTER TABLE `mst_subject_requirements` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_subject_requirements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_subject_type`
--

DROP TABLE IF EXISTS `mst_subject_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_subject_type` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_subject_type`
--

LOCK TABLES `mst_subject_type` WRITE;
/*!40000 ALTER TABLE `mst_subject_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_subject_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_system_choice_answer`
--

DROP TABLE IF EXISTS `mst_system_choice_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_system_choice_answer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_system_choice_answer`
--

LOCK TABLES `mst_system_choice_answer` WRITE;
/*!40000 ALTER TABLE `mst_system_choice_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_system_choice_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_trainer`
--

DROP TABLE IF EXISTS `mst_trainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_trainer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  `user_profile_id` int(11) DEFAULT NULL,
  `nip` varchar(150) DEFAULT NULL,
  `nik` varchar(150) DEFAULT NULL,
  `is_external` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_trainer`
--

LOCK TABLES `mst_trainer` WRITE;
/*!40000 ALTER TABLE `mst_trainer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_trainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_trainer_assignment`
--

DROP TABLE IF EXISTS `mst_trainer_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_trainer_assignment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  `trainer_id` int(11) DEFAULT NULL,
  `activity_details_id` int(11) DEFAULT NULL,
  `is_passed` tinyint(1) DEFAULT NULL,
  `expired` date DEFAULT NULL,
  `assignment_letter_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_trainer_assignment`
--

LOCK TABLES `mst_trainer_assignment` WRITE;
/*!40000 ALTER TABLE `mst_trainer_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_trainer_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_unit`
--

DROP TABLE IF EXISTS `mst_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_unit` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_unit`
--

LOCK TABLES `mst_unit` WRITE;
/*!40000 ALTER TABLE `mst_unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_url_type`
--

DROP TABLE IF EXISTS `mst_url_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_url_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_url_type`
--

LOCK TABLES `mst_url_type` WRITE;
/*!40000 ALTER TABLE `mst_url_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_url_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_village`
--

DROP TABLE IF EXISTS `mst_village`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_village` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `district_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `district_id` (`district_id`),
  CONSTRAINT `mst_village_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `mst_district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_village`
--

LOCK TABLES `mst_village` WRITE;
/*!40000 ALTER TABLE `mst_village` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_village` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_branch`
--

DROP TABLE IF EXISTS `sec_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_branch` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_branch`
--

LOCK TABLES `sec_branch` WRITE;
/*!40000 ALTER TABLE `sec_branch` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_company`
--

DROP TABLE IF EXISTS `sec_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `address_id` int(11) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_company`
--

LOCK TABLES `sec_company` WRITE;
/*!40000 ALTER TABLE `sec_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_function`
--

DROP TABLE IF EXISTS `sec_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_function` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `url` varchar(150) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `style` varchar(150) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `action_parameter_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_function`
--

LOCK TABLES `sec_function` WRITE;
/*!40000 ALTER TABLE `sec_function` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_function_assignment`
--

DROP TABLE IF EXISTS `sec_function_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_function_assignment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `function_id` bigint(20) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `assignment_order` int(11) DEFAULT NULL,
  `action_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_function_assignment`
--

LOCK TABLES `sec_function_assignment` WRITE;
/*!40000 ALTER TABLE `sec_function_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_function_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_group`
--

DROP TABLE IF EXISTS `sec_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_group` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `branch_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`),
  KEY `branch_id` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_group`
--

LOCK TABLES `sec_group` WRITE;
/*!40000 ALTER TABLE `sec_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user`
--

DROP TABLE IF EXISTS `sec_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `group_id` bigint(20) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `login_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user`
--

LOCK TABLES `sec_user` WRITE;
/*!40000 ALTER TABLE `sec_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user_profile`
--

DROP TABLE IF EXISTS `sec_user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_user_profile` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `dob` datetime DEFAULT NULL,
  `pob` varchar(150) DEFAULT NULL,
  `profile_image` varchar(150) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `religion` tinyint(4) DEFAULT NULL,
  `marrital_status` tinyint(4) DEFAULT NULL,
  `contact_id` bigint(20) DEFAULT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  `is_subscribe` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user_profile`
--

LOCK TABLES `sec_user_profile` WRITE;
/*!40000 ALTER TABLE `sec_user_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trx_activity`
--

DROP TABLE IF EXISTS `trx_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trx_activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  `subject_name` varchar(255) DEFAULT NULL,
  `subject_category_name` varchar(255) DEFAULT NULL,
  `subject_type_name` varchar(255) DEFAULT NULL,
  `generation` varchar(20) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `start_activity` date DEFAULT NULL,
  `end_activity` date DEFAULT NULL,
  `year_activity` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trx_activity`
--

LOCK TABLES `trx_activity` WRITE;
/*!40000 ALTER TABLE `trx_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trx_activity_details`
--

DROP TABLE IF EXISTS `trx_activity_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trx_activity_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(150) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `material_subject_name` varchar(25) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trx_activity_details`
--

LOCK TABLES `trx_activity_details` WRITE;
/*!40000 ALTER TABLE `trx_activity_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_activity_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trx_booking`
--

DROP TABLE IF EXISTS `trx_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trx_booking` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `necessary_description` text,
  `necessary_title` text,
  `booking_date` datetime DEFAULT NULL,
  `start_usage` datetime DEFAULT NULL,
  `end_usage` datetime DEFAULT NULL,
  `organizer_id` bigint(20) DEFAULT NULL,
  `guest_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trx_booking`
--

LOCK TABLES `trx_booking` WRITE;
/*!40000 ALTER TABLE `trx_booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trx_registration`
--

DROP TABLE IF EXISTS `trx_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trx_registration` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `participant_type_id` bigint(20) DEFAULT NULL,
  `delegation_name` varchar(150) DEFAULT NULL,
  `delegation_email` varchar(150) DEFAULT NULL,
  `delegation_phone_number` varchar(150) DEFAULT NULL,
  `delegation_fax` varchar(150) DEFAULT NULL,
  `delegation_address` varchar(255) DEFAULT NULL,
  `village_id` bigint(20) DEFAULT NULL,
  `district_id` bigint(20) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL,
  `message_title` varchar(150) DEFAULT NULL,
  `message_body` text,
  `attachment` varchar(150) DEFAULT NULL,
  `user_profile_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trx_registration`
--

LOCK TABLES `trx_registration` WRITE;
/*!40000 ALTER TABLE `trx_registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trx_registration_details`
--

DROP TABLE IF EXISTS `trx_registration_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trx_registration_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `registration_id` bigint(20) DEFAULT NULL,
  `nik` varchar(150) DEFAULT NULL,
  `nip` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone_number` varchar(150) DEFAULT NULL,
  `is_approve` char(1) DEFAULT NULL,
  `is_created` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trx_registration_details`
--

LOCK TABLES `trx_registration_details` WRITE;
/*!40000 ALTER TABLE `trx_registration_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_registration_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-14 10:40:50
