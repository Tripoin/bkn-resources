-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2017 at 02:48 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `e_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `link_post_function`
--

CREATE TABLE IF NOT EXISTS `link_post_function` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `function_id` bigint(20) unsigned DEFAULT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `link_question_selected`
--

CREATE TABLE IF NOT EXISTS `link_question_selected` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `questionnaire_id` bigint(20) unsigned DEFAULT NULL,
  `question_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_action_parameter`
--

CREATE TABLE IF NOT EXISTS `mst_action_parameter` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_address`
--

CREATE TABLE IF NOT EXISTS `mst_address` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `province_id` bigint(20) unsigned DEFAULT NULL,
  `city_id` bigint(20) unsigned DEFAULT NULL,
  `district_id` bigint(20) unsigned DEFAULT NULL,
  `village_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_assigment_letter`
--

CREATE TABLE IF NOT EXISTS `mst_assigment_letter` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `letter_title` varchar(255) DEFAULT NULL,
  `letter_body` text,
  `letter_footer` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_author`
--

CREATE TABLE IF NOT EXISTS `mst_author` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_budget_type`
--

CREATE TABLE IF NOT EXISTS `mst_budget_type` (
  `id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mst_calc_questionnaire`
--

CREATE TABLE IF NOT EXISTS `mst_calc_questionnaire` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `questionnaire_id` bigint(20) unsigned DEFAULT NULL,
  `participant_id` bigint(20) unsigned DEFAULT NULL,
  `execute_date` datetime DEFAULT NULL,
  `json_calc` text,
  `questionnaire_result` decimal(10,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_certificate`
--

CREATE TABLE IF NOT EXISTS `mst_certificate` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `signature1` varchar(255) DEFAULT NULL,
  `signature2` varchar(255) DEFAULT NULL,
  `expired` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_checklist_usage`
--

CREATE TABLE IF NOT EXISTS `mst_checklist_usage` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `booking_id` bigint(20) unsigned DEFAULT NULL,
  `json_checklist` text,
  `is_loss` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_city`
--

CREATE TABLE IF NOT EXISTS `mst_city` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `province_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_contact`
--

CREATE TABLE IF NOT EXISTS `mst_contact` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `email_1` varchar(150) DEFAULT NULL,
  `email_2` varchar(150) DEFAULT NULL,
  `phone_number_1` varchar(150) DEFAULT NULL,
  `phone_number_2` varchar(150) DEFAULT NULL,
  `fax` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_contact_message`
--

CREATE TABLE IF NOT EXISTS `mst_contact_message` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `contact_message_guest_name` varchar(50) DEFAULT NULL,
  `contact_message_guest_email` varchar(150) DEFAULT NULL,
  `contact_message_subject` varchar(50) DEFAULT NULL,
  `contact_message_content` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_district`
--

CREATE TABLE IF NOT EXISTS `mst_district` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `city_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_documentation`
--

CREATE TABLE IF NOT EXISTS `mst_documentation` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `documentation_image_url` varchar(255) DEFAULT NULL,
  `activity_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_facility`
--

CREATE TABLE IF NOT EXISTS `mst_facility` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_function_type`
--

CREATE TABLE IF NOT EXISTS `mst_function_type` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_government_agencies`
--

CREATE TABLE IF NOT EXISTS `mst_government_agencies` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_guest`
--

CREATE TABLE IF NOT EXISTS `mst_guest` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `nik` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone_number` varchar(150) DEFAULT NULL,
  `address` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_language`
--

CREATE TABLE IF NOT EXISTS `mst_language` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `language_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_level_akd`
--

CREATE TABLE IF NOT EXISTS `mst_level_akd` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mst_level_akd`
--

INSERT INTO `mst_level_akd` (`id`, `code`, `name`, `status`, `description`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'INDIVIDU', 'Individu', '1', 'Kedudukan peserta kuisioner sebagai Individu', 'Admin', '2017-01-14 13:35:56', NULL, NULL),
(2, 'PEMIMPINUNITKERJA', 'Pemimpin Unit Kerja', '1', 'Kedudukan peserta kuisioner sebagai Pemimpin Unit Kerja', 'Admin', '2017-01-14 13:35:56', NULL, NULL),
(3, 'PENGELOLADIKLATINSTANSILAIN', 'Pengelola Diklat Instansi Lain', '1', 'Kedudukan peserta kuisioner sebagai Pengelola Diklat Instansi Lain', 'Admin', '2017-01-14 13:35:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mst_material_subject`
--

CREATE TABLE IF NOT EXISTS `mst_material_subject` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `duration` int(10) DEFAULT NULL,
  `unit_id` bigint(20) unsigned DEFAULT NULL,
  `author_name` varchar(150) DEFAULT NULL,
  `copyright_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_material_support`
--

CREATE TABLE IF NOT EXISTS `mst_material_support` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_material_support_room`
--

CREATE TABLE IF NOT EXISTS `mst_material_support_room` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `booking_id` bigint(20) unsigned DEFAULT NULL,
  `material_support_id` bigint(20) unsigned DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_notification`
--

CREATE TABLE IF NOT EXISTS `mst_notification` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `notification_title` varchar(255) DEFAULT NULL,
  `notification_message` text,
  `to_user_profile_id` bigint(20) unsigned DEFAULT NULL,
  `from_user_profile_id` bigint(20) unsigned DEFAULT NULL,
  `notification_date` datetime DEFAULT NULL,
  `notification_read` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_organizer`
--

CREATE TABLE IF NOT EXISTS `mst_organizer` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_profile_id` bigint(20) unsigned DEFAULT NULL,
  `nip` varchar(150) DEFAULT NULL,
  `nik` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_organizer_assignment`
--

CREATE TABLE IF NOT EXISTS `mst_organizer_assignment` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `organizer_id` bigint(20) unsigned DEFAULT NULL,
  `is_passed` char(1) DEFAULT NULL,
  `expired` date DEFAULT NULL,
  `assignment_letter_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_participant`
--

CREATE TABLE IF NOT EXISTS `mst_participant` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_profile_id` bigint(20) unsigned DEFAULT NULL,
  `nip` varchar(150) DEFAULT NULL,
  `nik` varchar(150) DEFAULT NULL,
  `json_occupation` text,
  `participant_type_id` bigint(20) unsigned DEFAULT NULL,
  `government_agencies_id` bigint(20) unsigned DEFAULT NULL,
  `is_alumnus` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_participant_answer`
--

CREATE TABLE IF NOT EXISTS `mst_participant_answer` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `question_id` bigint(20) unsigned DEFAULT NULL,
  `calc_questionnaire_id` bigint(20) unsigned DEFAULT NULL,
  `json_answer` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_participant_assignment`
--

CREATE TABLE IF NOT EXISTS `mst_participant_assignment` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `participant_id` bigint(20) unsigned DEFAULT NULL,
  `activity_id` bigint(20) unsigned DEFAULT NULL,
  `is_passed` char(1) DEFAULT NULL,
  `expired` date DEFAULT NULL,
  `assignment_letter_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_participant_type`
--

CREATE TABLE IF NOT EXISTS `mst_participant_type` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_passed_activity`
--

CREATE TABLE IF NOT EXISTS `mst_passed_activity` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `participant_assignment_id` bigint(20) unsigned DEFAULT NULL,
  `subject_name` varchar(255) DEFAULT NULL,
  `subject_category_name` varchar(255) DEFAULT NULL,
  `subject_type_name` varchar(255) DEFAULT NULL,
  `generation` varchar(20) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `start_activity` datetime DEFAULT NULL,
  `end_activity` datetime DEFAULT NULL,
  `year_activity` varchar(4) DEFAULT NULL,
  `certificate_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_passed_activity_details`
--

CREATE TABLE IF NOT EXISTS `mst_passed_activity_details` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `passed_activity_id` bigint(20) unsigned DEFAULT NULL,
  `trainer_name` varchar(150) DEFAULT NULL,
  `material_subject_name` varchar(25) DEFAULT NULL,
  `duration` int(10) DEFAULT NULL,
  `unit_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_post`
--

CREATE TABLE IF NOT EXISTS `mst_post` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `post_title` varchar(255) DEFAULT NULL,
  `post_subtitle` varchar(255) DEFAULT NULL,
  `post_content` text,
  `post_feature` bigint(20) unsigned DEFAULT NULL,
  `post_url_video` varchar(255) DEFAULT NULL,
  `post_url_image` varchar(255) DEFAULT NULL,
  `post_url_thumbnail` varchar(255) DEFAULT NULL,
  `post_comment_enable` char(1) DEFAULT NULL,
  `post_type` varchar(20) DEFAULT NULL,
  `post_extra_flag` varchar(50) DEFAULT NULL,
  `post_status` char(1) DEFAULT NULL,
  `post_template` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `read_count` int(11) DEFAULT NULL,
  `publish_on` datetime DEFAULT NULL,
  `author_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_post_language`
--

CREATE TABLE IF NOT EXISTS `mst_post_language` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `post_title` varchar(255) DEFAULT NULL,
  `post_subtitle` varchar(255) DEFAULT NULL,
  `post_content` text,
  `language_id` bigint(20) unsigned DEFAULT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_province`
--

CREATE TABLE IF NOT EXISTS `mst_province` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_question`
--

CREATE TABLE IF NOT EXISTS `mst_question` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `question_category_id` bigint(20) unsigned DEFAULT NULL,
  `question_type_id` bigint(20) unsigned DEFAULT NULL,
  `question_details` text,
  `json_question` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_questionnaire`
--

CREATE TABLE IF NOT EXISTS `mst_questionnaire` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `question_category_id` bigint(20) unsigned DEFAULT NULL,
  `level_akd_id` bigint(20) unsigned DEFAULT NULL,
  `questionnaire_start` datetime DEFAULT NULL,
  `questionnaire_end` datetime DEFAULT NULL,
  `questionnaire_year` varchar(4) DEFAULT NULL,
  `json_review` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_question_category`
--

CREATE TABLE IF NOT EXISTS `mst_question_category` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_question_type`
--

CREATE TABLE IF NOT EXISTS `mst_question_type` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_religion`
--

CREATE TABLE IF NOT EXISTS `mst_religion` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `mst_religion`
--

INSERT INTO `mst_religion` (`id`, `code`, `name`, `status`, `description`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'REL_ISLAM', 'Islam', '1', 'Agama Islam', 'Admin', '2017-01-14 13:23:06', NULL, NULL),
(2, 'REL_KRISTEN', 'Kristen', '1', 'Agama Kristen', 'Admin', '2017-01-14 13:23:06', NULL, NULL),
(3, 'REL_KRISTEN_KATOLIK', 'Kristen Katolik', '1', 'Agama Kristen Katolik', 'Admin', '2017-01-14 13:28:05', NULL, NULL),
(4, 'REL_KRISTEN_PROTESTAN', 'Kristen Protestan', '1', 'Agama Kristen Protestan', 'Admin', '2017-01-14 13:28:05', NULL, NULL),
(5, 'REL_HINDU', 'Hindu', '1', 'Agama Hindu', 'Admin', '2017-01-14 13:28:48', NULL, NULL),
(6, 'REL_BUDHA', 'Budha', '1', 'Agama Budha', 'Admin', '2017-01-14 13:28:48', NULL, NULL),
(7, 'REL_OTHERS', 'Lainnya', '1', 'Agama yang belum terdefinisi', 'Admin', '2017-01-14 13:29:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mst_room`
--

CREATE TABLE IF NOT EXISTS `mst_room` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_subject`
--

CREATE TABLE IF NOT EXISTS `mst_subject` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `duration` int(10) DEFAULT NULL,
  `unit_id` bigint(20) unsigned DEFAULT NULL,
  `subject_amount` decimal(20,4) DEFAULT NULL,
  `budget_type_id` bigint(20) unsigned DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `start_subject` datetime DEFAULT NULL,
  `end_subject` datetime DEFAULT NULL,
  `necessary_description` text,
  `subject_category_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_subject_category`
--

CREATE TABLE IF NOT EXISTS `mst_subject_category` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `necessary_description` text,
  `subject_type_id` bigint(20) unsigned DEFAULT NULL,
  `subject_category_parent_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mst_subject_category`
--

INSERT INTO `mst_subject_category` (`id`, `code`, `name`, `status`, `description`, `created_by`, `created_on`, `modified_by`, `modified_on`, `necessary_description`, `subject_type_id`, `subject_category_parent_id`) VALUES
(1, 'PELATIHANPRAJABATAN', 'Pelatihan Prajabatan', '1', 'Kategori Pelatihan Prajabatan', 'Admin', '2017-01-14 13:43:11', NULL, NULL, NULL, 1, NULL),
(2, 'PELATIHANDALAMJABATAN', 'Pelatihan Dalam Jabatan', '1', 'Kategori Pelatihan Dalam Jabatan', 'Admin', '2017-01-14 13:44:08', NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mst_subject_requirements`
--

CREATE TABLE IF NOT EXISTS `mst_subject_requirements` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `subject_requirements_key` varchar(255) DEFAULT NULL,
  `subject_requirements_value` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_subject_type`
--

CREATE TABLE IF NOT EXISTS `mst_subject_type` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mst_subject_type`
--

INSERT INTO `mst_subject_type` (`id`, `code`, `name`, `status`, `description`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'PELATIHAN', 'Pelatihan', '1', 'Jenis Kegiatan Pelatihan', 'Admin', '2017-01-14 13:38:34', NULL, NULL),
(2, 'WORKSHOP', 'Seminar/Workshop', '1', 'Jenis Kegiatan Seminar/Workshop', 'Admin', '2017-01-14 13:38:34', NULL, NULL),
(3, 'SERTIFIKASI', 'Sertifikasi', '1', 'Jenis Kegiatan Sertifikasi', 'Admin', '2017-01-14 13:39:14', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mst_system_choice_answer`
--

CREATE TABLE IF NOT EXISTS `mst_system_choice_answer` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `question_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_trainer`
--

CREATE TABLE IF NOT EXISTS `mst_trainer` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_profile_id` bigint(20) unsigned DEFAULT NULL,
  `nip` varchar(150) DEFAULT NULL,
  `nik` varchar(150) DEFAULT NULL,
  `is_external` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_trainer_assignment`
--

CREATE TABLE IF NOT EXISTS `mst_trainer_assignment` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `trainer_id` bigint(20) unsigned DEFAULT NULL,
  `activity_details_id` bigint(20) unsigned DEFAULT NULL,
  `is_passed` char(1) DEFAULT NULL,
  `expired` date DEFAULT NULL,
  `assignment_letter_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_unit`
--

CREATE TABLE IF NOT EXISTS `mst_unit` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mst_unit`
--

INSERT INTO `mst_unit` (`id`, `code`, `name`, `status`, `description`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'JP', 'JP', '1', 'Jam Pembelajaran', 'Admin', '2017-01-14 13:31:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mst_url_type`
--

CREATE TABLE IF NOT EXISTS `mst_url_type` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_village`
--

CREATE TABLE IF NOT EXISTS `mst_village` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `district_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sec_branch`
--

CREATE TABLE IF NOT EXISTS `sec_branch` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `company_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sec_company`
--

CREATE TABLE IF NOT EXISTS `sec_company` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `address_id` bigint(20) unsigned DEFAULT NULL,
  `contact_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sec_function`
--

CREATE TABLE IF NOT EXISTS `sec_function` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `url` varchar(150) DEFAULT NULL,
  `function_order` int(10) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `style` varchar(150) DEFAULT NULL,
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `action_parameter_id` bigint(20) unsigned DEFAULT NULL,
  `url_type_id` bigint(20) unsigned DEFAULT NULL,
  `function_type_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sec_function_assignment`
--

CREATE TABLE IF NOT EXISTS `sec_function_assignment` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `function_id` bigint(20) unsigned DEFAULT NULL,
  `group_id` bigint(20) unsigned DEFAULT NULL,
  `assignment_order` bigint(20) unsigned DEFAULT NULL,
  `action_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sec_function_language`
--

CREATE TABLE IF NOT EXISTS `sec_function_language` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `function_id` bigint(20) unsigned DEFAULT NULL,
  `language_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sec_group`
--

CREATE TABLE IF NOT EXISTS `sec_group` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `branch_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sec_user`
--

CREATE TABLE IF NOT EXISTS `sec_user` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `group_id` bigint(20) unsigned DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `login_status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sec_user_profile`
--

CREATE TABLE IF NOT EXISTS `sec_user_profile` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `dob` datetime DEFAULT NULL,
  `pob` varchar(150) DEFAULT NULL,
  `profile_image` varchar(150) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `religion_id` bigint(20) unsigned DEFAULT NULL,
  `marrital_status` char(1) DEFAULT NULL,
  `contact_id` bigint(20) unsigned DEFAULT NULL,
  `address_id` bigint(20) unsigned DEFAULT NULL,
  `is_subscribe` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `trx_activity`
--

CREATE TABLE IF NOT EXISTS `trx_activity` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `subject_name` varchar(255) DEFAULT NULL,
  `subject_category_name` varchar(255) DEFAULT NULL,
  `subject_type_name` varchar(255) DEFAULT NULL,
  `generation` varchar(20) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `start_activity` date DEFAULT NULL,
  `end_activity` date DEFAULT NULL,
  `year_activity` varchar(4) DEFAULT NULL,
  `duration` int(20) DEFAULT NULL,
  `unit_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `trx_activity_details`
--

CREATE TABLE IF NOT EXISTS `trx_activity_details` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `activity_id` bigint(20) unsigned DEFAULT NULL,
  `subject_id` bigint(20) unsigned DEFAULT NULL,
  `material_subject_name` varchar(25) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `duration` int(20) DEFAULT NULL,
  `unit_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `trx_booking`
--

CREATE TABLE IF NOT EXISTS `trx_booking` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `necessary_title` varchar(255) DEFAULT NULL,
  `necessary_description` text,
  `booking_date` datetime DEFAULT NULL,
  `start_usage` datetime DEFAULT NULL,
  `end_usage` datetime DEFAULT NULL,
  `organizer_id` bigint(20) unsigned DEFAULT NULL,
  `guest_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `trx_registration`
--

CREATE TABLE IF NOT EXISTS `trx_registration` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `participant_type_id` bigint(20) unsigned DEFAULT NULL,
  `delegation_name` varchar(150) DEFAULT NULL,
  `delegation_email` varchar(150) DEFAULT NULL,
  `delegation_phone_number` varchar(150) DEFAULT NULL,
  `delegation_fax` varchar(150) DEFAULT NULL,
  `delegation_address` varchar(255) DEFAULT NULL,
  `village_id` bigint(20) unsigned DEFAULT NULL,
  `district_id` bigint(20) unsigned DEFAULT NULL,
  `city_id` bigint(20) unsigned DEFAULT NULL,
  `province_id` bigint(20) unsigned DEFAULT NULL,
  `message_title` varchar(150) DEFAULT NULL,
  `message_content` text,
  `attachment` varchar(150) DEFAULT NULL,
  `user_profile_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `trx_registration_details`
--

CREATE TABLE IF NOT EXISTS `trx_registration_details` (
`id` bigint(20) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(150) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `registration_id` bigint(20) unsigned DEFAULT NULL,
  `nik` varchar(150) DEFAULT NULL,
  `nip` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone_number` varchar(150) DEFAULT NULL,
  `is_approve` char(1) DEFAULT NULL,
  `is_created` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `link_post_function`
--
ALTER TABLE `link_post_function`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `function_id` (`function_id`), ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `link_question_selected`
--
ALTER TABLE `link_question_selected`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `questionnaire_id` (`questionnaire_id`), ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `mst_action_parameter`
--
ALTER TABLE `mst_action_parameter`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mst_address`
--
ALTER TABLE `mst_address`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `province_id` (`province_id`), ADD KEY `city_id` (`city_id`), ADD KEY `district_id` (`district_id`), ADD KEY `village_id` (`village_id`);

--
-- Indexes for table `mst_assigment_letter`
--
ALTER TABLE `mst_assigment_letter`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mst_author`
--
ALTER TABLE `mst_author`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mst_budget_type`
--
ALTER TABLE `mst_budget_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mst_calc_questionnaire`
--
ALTER TABLE `mst_calc_questionnaire`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `questionnaire_id` (`questionnaire_id`), ADD KEY `participant_id` (`participant_id`);

--
-- Indexes for table `mst_certificate`
--
ALTER TABLE `mst_certificate`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mst_checklist_usage`
--
ALTER TABLE `mst_checklist_usage`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `mst_city`
--
ALTER TABLE `mst_city`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `province_id` (`province_id`);

--
-- Indexes for table `mst_contact`
--
ALTER TABLE `mst_contact`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mst_contact_message`
--
ALTER TABLE `mst_contact_message`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mst_district`
--
ALTER TABLE `mst_district`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `mst_documentation`
--
ALTER TABLE `mst_documentation`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `mst_facility`
--
ALTER TABLE `mst_facility`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mst_function_type`
--
ALTER TABLE `mst_function_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mst_government_agencies`
--
ALTER TABLE `mst_government_agencies`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mst_guest`
--
ALTER TABLE `mst_guest`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mst_language`
--
ALTER TABLE `mst_language`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mst_level_akd`
--
ALTER TABLE `mst_level_akd`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mst_material_subject`
--
ALTER TABLE `mst_material_subject`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `unit_id` (`unit_id`);

--
-- Indexes for table `mst_material_support`
--
ALTER TABLE `mst_material_support`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mst_material_support_room`
--
ALTER TABLE `mst_material_support_room`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `booking_id` (`booking_id`), ADD KEY `material_support_id` (`material_support_id`);

--
-- Indexes for table `mst_notification`
--
ALTER TABLE `mst_notification`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `to_user_profile_id` (`to_user_profile_id`), ADD KEY `from_user_profile_id` (`from_user_profile_id`);

--
-- Indexes for table `mst_organizer`
--
ALTER TABLE `mst_organizer`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `user_profile_id` (`user_profile_id`);

--
-- Indexes for table `mst_organizer_assignment`
--
ALTER TABLE `mst_organizer_assignment`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `organizer_id` (`organizer_id`), ADD KEY `assignment_letter_id` (`assignment_letter_id`);

--
-- Indexes for table `mst_participant`
--
ALTER TABLE `mst_participant`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `user_profile_id` (`user_profile_id`), ADD KEY `participant_type_id` (`participant_type_id`), ADD KEY `government_agencies_id` (`government_agencies_id`);

--
-- Indexes for table `mst_participant_answer`
--
ALTER TABLE `mst_participant_answer`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `question_id` (`question_id`), ADD KEY `calc_questionnaire_id` (`calc_questionnaire_id`);

--
-- Indexes for table `mst_participant_assignment`
--
ALTER TABLE `mst_participant_assignment`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `participant_id` (`participant_id`), ADD KEY `activity_id` (`activity_id`), ADD KEY `assignment_letter_id` (`assignment_letter_id`);

--
-- Indexes for table `mst_participant_type`
--
ALTER TABLE `mst_participant_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mst_passed_activity`
--
ALTER TABLE `mst_passed_activity`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `participant_assignment_id` (`participant_assignment_id`), ADD KEY `certificate_id` (`certificate_id`);

--
-- Indexes for table `mst_passed_activity_details`
--
ALTER TABLE `mst_passed_activity_details`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `passed_activity_id` (`passed_activity_id`), ADD KEY `unit_id` (`unit_id`);

--
-- Indexes for table `mst_post`
--
ALTER TABLE `mst_post`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `mst_post_language`
--
ALTER TABLE `mst_post_language`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `language_id` (`language_id`), ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `mst_province`
--
ALTER TABLE `mst_province`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mst_question`
--
ALTER TABLE `mst_question`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `question_category_id` (`question_category_id`), ADD KEY `question_type_id` (`question_type_id`);

--
-- Indexes for table `mst_questionnaire`
--
ALTER TABLE `mst_questionnaire`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `question_category_id` (`question_category_id`), ADD KEY `level_akd_id` (`level_akd_id`);

--
-- Indexes for table `mst_question_category`
--
ALTER TABLE `mst_question_category`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mst_question_type`
--
ALTER TABLE `mst_question_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mst_religion`
--
ALTER TABLE `mst_religion`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mst_room`
--
ALTER TABLE `mst_room`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mst_subject`
--
ALTER TABLE `mst_subject`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `unit_id` (`unit_id`), ADD KEY `budget_type_id` (`budget_type_id`), ADD KEY `subject_category_id` (`subject_category_id`);

--
-- Indexes for table `mst_subject_category`
--
ALTER TABLE `mst_subject_category`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `subject_category_parent_id` (`subject_category_parent_id`), ADD KEY `subject_type_id` (`subject_type_id`);

--
-- Indexes for table `mst_subject_requirements`
--
ALTER TABLE `mst_subject_requirements`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mst_subject_type`
--
ALTER TABLE `mst_subject_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mst_system_choice_answer`
--
ALTER TABLE `mst_system_choice_answer`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `mst_trainer`
--
ALTER TABLE `mst_trainer`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `user_profile_id` (`user_profile_id`);

--
-- Indexes for table `mst_trainer_assignment`
--
ALTER TABLE `mst_trainer_assignment`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `trainer_id` (`trainer_id`), ADD KEY `activity_details_id` (`activity_details_id`), ADD KEY `assignment_letter_id` (`assignment_letter_id`);

--
-- Indexes for table `mst_unit`
--
ALTER TABLE `mst_unit`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mst_url_type`
--
ALTER TABLE `mst_url_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mst_village`
--
ALTER TABLE `mst_village`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `sec_branch`
--
ALTER TABLE `sec_branch`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `sec_company`
--
ALTER TABLE `sec_company`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `address_id` (`address_id`), ADD KEY `contact_id` (`contact_id`);

--
-- Indexes for table `sec_function`
--
ALTER TABLE `sec_function`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `parent_id` (`parent_id`), ADD KEY `action_parameter_id` (`action_parameter_id`), ADD KEY `url_type_id` (`url_type_id`), ADD KEY `function_type_id` (`function_type_id`);

--
-- Indexes for table `sec_function_assignment`
--
ALTER TABLE `sec_function_assignment`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `function_id` (`function_id`), ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `sec_function_language`
--
ALTER TABLE `sec_function_language`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `function_id` (`function_id`), ADD KEY `language_id` (`language_id`);

--
-- Indexes for table `sec_group`
--
ALTER TABLE `sec_group`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD UNIQUE KEY `branch_id` (`branch_id`);

--
-- Indexes for table `sec_user`
--
ALTER TABLE `sec_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `sec_user_profile`
--
ALTER TABLE `sec_user_profile`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `religion_id` (`religion_id`), ADD KEY `contact_id` (`contact_id`), ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `trx_activity`
--
ALTER TABLE `trx_activity`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `unit_id` (`unit_id`);

--
-- Indexes for table `trx_activity_details`
--
ALTER TABLE `trx_activity_details`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `activity_id` (`activity_id`), ADD KEY `subject_id` (`subject_id`), ADD KEY `unit_id` (`unit_id`);

--
-- Indexes for table `trx_booking`
--
ALTER TABLE `trx_booking`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `organizer_id` (`organizer_id`,`guest_id`), ADD KEY `guest_id` (`guest_id`);

--
-- Indexes for table `trx_registration`
--
ALTER TABLE `trx_registration`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `participant_type_id` (`participant_type_id`), ADD KEY `village_id` (`village_id`), ADD KEY `district_id` (`district_id`), ADD KEY `city_id` (`city_id`), ADD KEY `province_id` (`province_id`), ADD KEY `user_profile_id` (`user_profile_id`);

--
-- Indexes for table `trx_registration_details`
--
ALTER TABLE `trx_registration_details`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `registration_id` (`registration_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `link_post_function`
--
ALTER TABLE `link_post_function`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `link_question_selected`
--
ALTER TABLE `link_question_selected`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_action_parameter`
--
ALTER TABLE `mst_action_parameter`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_address`
--
ALTER TABLE `mst_address`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_assigment_letter`
--
ALTER TABLE `mst_assigment_letter`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_author`
--
ALTER TABLE `mst_author`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_calc_questionnaire`
--
ALTER TABLE `mst_calc_questionnaire`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_certificate`
--
ALTER TABLE `mst_certificate`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_checklist_usage`
--
ALTER TABLE `mst_checklist_usage`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_city`
--
ALTER TABLE `mst_city`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_contact`
--
ALTER TABLE `mst_contact`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_contact_message`
--
ALTER TABLE `mst_contact_message`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_district`
--
ALTER TABLE `mst_district`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_documentation`
--
ALTER TABLE `mst_documentation`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_facility`
--
ALTER TABLE `mst_facility`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_function_type`
--
ALTER TABLE `mst_function_type`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_government_agencies`
--
ALTER TABLE `mst_government_agencies`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_guest`
--
ALTER TABLE `mst_guest`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_language`
--
ALTER TABLE `mst_language`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_level_akd`
--
ALTER TABLE `mst_level_akd`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mst_material_subject`
--
ALTER TABLE `mst_material_subject`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_material_support`
--
ALTER TABLE `mst_material_support`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_material_support_room`
--
ALTER TABLE `mst_material_support_room`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_notification`
--
ALTER TABLE `mst_notification`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_organizer`
--
ALTER TABLE `mst_organizer`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_organizer_assignment`
--
ALTER TABLE `mst_organizer_assignment`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_participant`
--
ALTER TABLE `mst_participant`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_participant_answer`
--
ALTER TABLE `mst_participant_answer`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_participant_assignment`
--
ALTER TABLE `mst_participant_assignment`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_participant_type`
--
ALTER TABLE `mst_participant_type`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_passed_activity`
--
ALTER TABLE `mst_passed_activity`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_passed_activity_details`
--
ALTER TABLE `mst_passed_activity_details`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_post`
--
ALTER TABLE `mst_post`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_post_language`
--
ALTER TABLE `mst_post_language`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_province`
--
ALTER TABLE `mst_province`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_question`
--
ALTER TABLE `mst_question`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_questionnaire`
--
ALTER TABLE `mst_questionnaire`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_question_category`
--
ALTER TABLE `mst_question_category`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_question_type`
--
ALTER TABLE `mst_question_type`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_religion`
--
ALTER TABLE `mst_religion`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `mst_room`
--
ALTER TABLE `mst_room`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_subject`
--
ALTER TABLE `mst_subject`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_subject_category`
--
ALTER TABLE `mst_subject_category`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mst_subject_requirements`
--
ALTER TABLE `mst_subject_requirements`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_subject_type`
--
ALTER TABLE `mst_subject_type`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mst_system_choice_answer`
--
ALTER TABLE `mst_system_choice_answer`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_trainer`
--
ALTER TABLE `mst_trainer`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_trainer_assignment`
--
ALTER TABLE `mst_trainer_assignment`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_unit`
--
ALTER TABLE `mst_unit`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mst_url_type`
--
ALTER TABLE `mst_url_type`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_village`
--
ALTER TABLE `mst_village`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sec_branch`
--
ALTER TABLE `sec_branch`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sec_company`
--
ALTER TABLE `sec_company`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sec_function`
--
ALTER TABLE `sec_function`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sec_function_assignment`
--
ALTER TABLE `sec_function_assignment`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sec_function_language`
--
ALTER TABLE `sec_function_language`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sec_group`
--
ALTER TABLE `sec_group`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sec_user`
--
ALTER TABLE `sec_user`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sec_user_profile`
--
ALTER TABLE `sec_user_profile`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trx_activity`
--
ALTER TABLE `trx_activity`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trx_activity_details`
--
ALTER TABLE `trx_activity_details`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trx_booking`
--
ALTER TABLE `trx_booking`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trx_registration`
--
ALTER TABLE `trx_registration`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trx_registration_details`
--
ALTER TABLE `trx_registration_details`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `link_post_function`
--
ALTER TABLE `link_post_function`
ADD CONSTRAINT `link_post_function_ibfk_1` FOREIGN KEY (`function_id`) REFERENCES `sec_function` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `link_post_function_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `mst_post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `link_question_selected`
--
ALTER TABLE `link_question_selected`
ADD CONSTRAINT `link_question_selected_ibfk_1` FOREIGN KEY (`questionnaire_id`) REFERENCES `mst_questionnaire` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `link_question_selected_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `mst_question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_address`
--
ALTER TABLE `mst_address`
ADD CONSTRAINT `mst_address_ibfk_1` FOREIGN KEY (`province_id`) REFERENCES `mst_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `mst_address_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `mst_city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `mst_address_ibfk_3` FOREIGN KEY (`district_id`) REFERENCES `mst_district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `mst_address_ibfk_4` FOREIGN KEY (`village_id`) REFERENCES `mst_village` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_calc_questionnaire`
--
ALTER TABLE `mst_calc_questionnaire`
ADD CONSTRAINT `mst_calc_questionnaire_ibfk_1` FOREIGN KEY (`questionnaire_id`) REFERENCES `mst_questionnaire` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `mst_calc_questionnaire_ibfk_2` FOREIGN KEY (`participant_id`) REFERENCES `mst_participant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_checklist_usage`
--
ALTER TABLE `mst_checklist_usage`
ADD CONSTRAINT `mst_checklist_usage_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `trx_booking` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_city`
--
ALTER TABLE `mst_city`
ADD CONSTRAINT `mst_city_ibfk_1` FOREIGN KEY (`province_id`) REFERENCES `mst_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_district`
--
ALTER TABLE `mst_district`
ADD CONSTRAINT `mst_district_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `mst_city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_documentation`
--
ALTER TABLE `mst_documentation`
ADD CONSTRAINT `mst_documentation_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `trx_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_material_subject`
--
ALTER TABLE `mst_material_subject`
ADD CONSTRAINT `mst_material_subject_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `mst_unit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_material_support_room`
--
ALTER TABLE `mst_material_support_room`
ADD CONSTRAINT `mst_material_support_room_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `trx_booking` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `mst_material_support_room_ibfk_2` FOREIGN KEY (`material_support_id`) REFERENCES `mst_material_support` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_notification`
--
ALTER TABLE `mst_notification`
ADD CONSTRAINT `mst_notification_ibfk_1` FOREIGN KEY (`to_user_profile_id`) REFERENCES `sec_user_profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `mst_notification_ibfk_2` FOREIGN KEY (`from_user_profile_id`) REFERENCES `sec_user_profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_organizer`
--
ALTER TABLE `mst_organizer`
ADD CONSTRAINT `mst_organizer_ibfk_1` FOREIGN KEY (`user_profile_id`) REFERENCES `sec_user_profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_organizer_assignment`
--
ALTER TABLE `mst_organizer_assignment`
ADD CONSTRAINT `mst_organizer_assignment_ibfk_1` FOREIGN KEY (`organizer_id`) REFERENCES `mst_organizer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `mst_organizer_assignment_ibfk_2` FOREIGN KEY (`assignment_letter_id`) REFERENCES `mst_assigment_letter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_participant`
--
ALTER TABLE `mst_participant`
ADD CONSTRAINT `mst_participant_ibfk_1` FOREIGN KEY (`user_profile_id`) REFERENCES `sec_user_profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `mst_participant_ibfk_2` FOREIGN KEY (`participant_type_id`) REFERENCES `mst_participant_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `mst_participant_ibfk_3` FOREIGN KEY (`government_agencies_id`) REFERENCES `mst_government_agencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_participant_answer`
--
ALTER TABLE `mst_participant_answer`
ADD CONSTRAINT `mst_participant_answer_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `mst_question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `mst_participant_answer_ibfk_2` FOREIGN KEY (`calc_questionnaire_id`) REFERENCES `mst_calc_questionnaire` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_participant_assignment`
--
ALTER TABLE `mst_participant_assignment`
ADD CONSTRAINT `mst_participant_assignment_ibfk_1` FOREIGN KEY (`participant_id`) REFERENCES `mst_participant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `mst_participant_assignment_ibfk_2` FOREIGN KEY (`activity_id`) REFERENCES `trx_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `mst_participant_assignment_ibfk_3` FOREIGN KEY (`assignment_letter_id`) REFERENCES `mst_assigment_letter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_passed_activity`
--
ALTER TABLE `mst_passed_activity`
ADD CONSTRAINT `mst_passed_activity_ibfk_1` FOREIGN KEY (`participant_assignment_id`) REFERENCES `mst_participant_assignment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `mst_passed_activity_ibfk_2` FOREIGN KEY (`certificate_id`) REFERENCES `mst_certificate` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_passed_activity_details`
--
ALTER TABLE `mst_passed_activity_details`
ADD CONSTRAINT `mst_passed_activity_details_ibfk_1` FOREIGN KEY (`passed_activity_id`) REFERENCES `mst_passed_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `mst_passed_activity_details_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `mst_unit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_post`
--
ALTER TABLE `mst_post`
ADD CONSTRAINT `mst_post_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `mst_author` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_post_language`
--
ALTER TABLE `mst_post_language`
ADD CONSTRAINT `mst_post_language_ibfk_1` FOREIGN KEY (`language_id`) REFERENCES `mst_language` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `mst_post_language_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `mst_post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_questionnaire`
--
ALTER TABLE `mst_questionnaire`
ADD CONSTRAINT `mst_questionnaire_ibfk_1` FOREIGN KEY (`question_category_id`) REFERENCES `mst_question_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `mst_questionnaire_ibfk_2` FOREIGN KEY (`level_akd_id`) REFERENCES `mst_level_akd` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_subject`
--
ALTER TABLE `mst_subject`
ADD CONSTRAINT `mst_subject_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `mst_unit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `mst_subject_ibfk_2` FOREIGN KEY (`budget_type_id`) REFERENCES `mst_budget_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `mst_subject_ibfk_3` FOREIGN KEY (`subject_category_id`) REFERENCES `mst_subject_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_subject_category`
--
ALTER TABLE `mst_subject_category`
ADD CONSTRAINT `mst_subject_category_ibfk_1` FOREIGN KEY (`subject_category_parent_id`) REFERENCES `mst_subject_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `mst_subject_category_ibfk_2` FOREIGN KEY (`subject_type_id`) REFERENCES `mst_subject_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_system_choice_answer`
--
ALTER TABLE `mst_system_choice_answer`
ADD CONSTRAINT `mst_system_choice_answer_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `mst_question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_trainer`
--
ALTER TABLE `mst_trainer`
ADD CONSTRAINT `mst_trainer_ibfk_1` FOREIGN KEY (`user_profile_id`) REFERENCES `sec_user_profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_trainer_assignment`
--
ALTER TABLE `mst_trainer_assignment`
ADD CONSTRAINT `mst_trainer_assignment_ibfk_1` FOREIGN KEY (`trainer_id`) REFERENCES `mst_trainer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `mst_trainer_assignment_ibfk_2` FOREIGN KEY (`activity_details_id`) REFERENCES `trx_activity_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `mst_trainer_assignment_ibfk_3` FOREIGN KEY (`assignment_letter_id`) REFERENCES `mst_assigment_letter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_village`
--
ALTER TABLE `mst_village`
ADD CONSTRAINT `mst_village_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `mst_district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sec_branch`
--
ALTER TABLE `sec_branch`
ADD CONSTRAINT `sec_branch_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `sec_company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sec_company`
--
ALTER TABLE `sec_company`
ADD CONSTRAINT `sec_company_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `mst_address` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `sec_company_ibfk_2` FOREIGN KEY (`contact_id`) REFERENCES `mst_contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sec_function`
--
ALTER TABLE `sec_function`
ADD CONSTRAINT `sec_function_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `sec_function` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `sec_function_ibfk_2` FOREIGN KEY (`action_parameter_id`) REFERENCES `mst_action_parameter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `sec_function_ibfk_3` FOREIGN KEY (`url_type_id`) REFERENCES `mst_url_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `sec_function_ibfk_4` FOREIGN KEY (`function_type_id`) REFERENCES `mst_function_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sec_function_assignment`
--
ALTER TABLE `sec_function_assignment`
ADD CONSTRAINT `sec_function_assignment_ibfk_1` FOREIGN KEY (`function_id`) REFERENCES `sec_function` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `sec_function_assignment_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `sec_group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sec_function_language`
--
ALTER TABLE `sec_function_language`
ADD CONSTRAINT `sec_function_language_ibfk_1` FOREIGN KEY (`function_id`) REFERENCES `sec_function` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `sec_function_language_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `mst_language` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sec_group`
--
ALTER TABLE `sec_group`
ADD CONSTRAINT `sec_group_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `sec_branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sec_user`
--
ALTER TABLE `sec_user`
ADD CONSTRAINT `sec_user_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `sec_group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sec_user_profile`
--
ALTER TABLE `sec_user_profile`
ADD CONSTRAINT `sec_user_profile_ibfk_1` FOREIGN KEY (`religion_id`) REFERENCES `mst_religion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `sec_user_profile_ibfk_2` FOREIGN KEY (`contact_id`) REFERENCES `mst_contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `sec_user_profile_ibfk_3` FOREIGN KEY (`address_id`) REFERENCES `mst_address` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trx_activity`
--
ALTER TABLE `trx_activity`
ADD CONSTRAINT `trx_activity_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `mst_unit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trx_activity_details`
--
ALTER TABLE `trx_activity_details`
ADD CONSTRAINT `trx_activity_details_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `trx_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `trx_activity_details_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `mst_subject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `trx_activity_details_ibfk_3` FOREIGN KEY (`unit_id`) REFERENCES `mst_unit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trx_booking`
--
ALTER TABLE `trx_booking`
ADD CONSTRAINT `trx_booking_ibfk_1` FOREIGN KEY (`organizer_id`) REFERENCES `mst_organizer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `trx_booking_ibfk_2` FOREIGN KEY (`guest_id`) REFERENCES `mst_guest` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trx_registration`
--
ALTER TABLE `trx_registration`
ADD CONSTRAINT `trx_registration_ibfk_1` FOREIGN KEY (`participant_type_id`) REFERENCES `mst_participant_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `trx_registration_ibfk_2` FOREIGN KEY (`village_id`) REFERENCES `mst_village` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `trx_registration_ibfk_3` FOREIGN KEY (`district_id`) REFERENCES `mst_district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `trx_registration_ibfk_4` FOREIGN KEY (`city_id`) REFERENCES `mst_city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `trx_registration_ibfk_5` FOREIGN KEY (`province_id`) REFERENCES `mst_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `trx_registration_ibfk_6` FOREIGN KEY (`user_profile_id`) REFERENCES `sec_user_profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trx_registration_details`
--
ALTER TABLE `trx_registration_details`
ADD CONSTRAINT `trx_registration_details_ibfk_1` FOREIGN KEY (`registration_id`) REFERENCES `trx_registration` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
