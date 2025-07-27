-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2025 at 08:05 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_manufacturer` (`name` VARCHAR(20), `contact` VARCHAR(20))   begin
  insert into manufacturer(name,contact)values(name,contact);
end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ac_sell`
--

CREATE TABLE `ac_sell` (
  `id` int(10) UNSIGNED NOT NULL,
  `core_ac_name_id` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_profile`
--

CREATE TABLE `admin_profile` (
  `id` int(10) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_profile`
--

INSERT INTO `admin_profile` (`id`, `full_name`, `email`, `mobile`, `address`, `password`, `status`, `created_at`) VALUES
(10, 'Super Admin', 'superadmin@gmail.com', '1234567890', 'Noida', '0192023a7bbd73250516f069df18b500', 1, '2020-06-17 18:38:43.432266'),
(11, 'Test admin', 'testadmin@gmail.com', '1234567890', 'New Delhi', '0192023a7bbd73250516f069df18b500', 1, '2020-06-17 18:39:14.874271'),
(12, 'temp admin', 'tempadmin@gmail.com', '12', 'Noida', '0192023a7bbd73250516f069df18b500', 1, '2020-06-17 18:39:52.830541');

-- --------------------------------------------------------

--
-- Table structure for table `anayet`
--

CREATE TABLE `anayet` (
  `id` int(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `role_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `anayet`
--

INSERT INTO `anayet` (`id`, `name`, `password`, `role_id`) VALUES
(1, 'anayet', '2365487', 1),
(2, 'ratul', '36548795', 2);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `parent_id` int(10) DEFAULT 0,
  `category_name` varchar(255) NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `header_menu` int(10) NOT NULL,
  `footer_menu` int(10) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `category_name`, `menu_link`, `header_menu`, `footer_menu`, `description`) VALUES
(63, 64, 'second', '', 1, 0, ' off\r\n   \r\nda'),
(64, 63, 'first-chid', '', 1, 0, ' \r\n  '),
(65, 0, 'first', 'first', 1, 0, ''),
(66, 0, 'first child 1', '', 1, 0, ' \r\n   \r\n   \r\n  '),
(67, 65, 'first cat', 'first-cat', 1, 1, ' \r\n  '),
(68, 0, 'k', 'mm', 1, 0, ' \r\n  ');

-- --------------------------------------------------------

--
-- Table structure for table `color_setting`
--

CREATE TABLE `color_setting` (
  `id` int(10) NOT NULL,
  `navbar_background` varchar(255) NOT NULL,
  `sidebar_background` varchar(255) NOT NULL,
  `text_color` varchar(255) NOT NULL,
  `save_button_color` varchar(255) NOT NULL,
  `edit_button_color` varchar(255) NOT NULL,
  `delete_button_color` varchar(255) NOT NULL,
  `view_button_color` varchar(255) NOT NULL,
  `label_text_color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `color_setting`
--

INSERT INTO `color_setting` (`id`, `navbar_background`, `sidebar_background`, `text_color`, `save_button_color`, `edit_button_color`, `delete_button_color`, `view_button_color`, `label_text_color`) VALUES
(1, '#0763c5', '#0f40b3', '#dad7d7', '#049a2a', '#11ac2b', '#c60c0c', '#6c6a6a', '#434242');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `id` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `google_map` text NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `google_plus` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`id`, `email`, `mobile`, `address`, `google_map`, `facebook`, `google_plus`, `twitter`, `linkedin`, `youtube`, `instagram`) VALUES
(1, 'youremailaddress@gmail.com', '1234567890', 'Noida, Uttar Pradesh, India', 'Enter You Google Map Code', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact_email`
--

CREATE TABLE `contact_email` (
  `id` int(10) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_email`
--

INSERT INTO `contact_email` (`id`, `email`) VALUES
(8, 'email'),
(9, 'xxxxxxx');

-- --------------------------------------------------------

--
-- Table structure for table `contact_form_email`
--

CREATE TABLE `contact_form_email` (
  `id` int(10) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_form_email`
--

INSERT INTO `contact_form_email` (`id`, `email`) VALUES
(1, 'youremail@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `core_ac`
--

CREATE TABLE `core_ac` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_ac`
--

INSERT INTO `core_ac` (`id`, `name`, `price`) VALUES
(1, 'ac1', 1000),
(2, 'ac2', 2000),
(3, 'ac3', 3000),
(4, 'ac10', 10000),
(5, 'Shuvo', 3000),
(6, 'Shuvo Bhuiyan', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `core_academy_admissions`
--

CREATE TABLE `core_academy_admissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `academy_student_id` int(10) UNSIGNED NOT NULL,
  `academy_batch_id` int(10) UNSIGNED NOT NULL,
  `academy_section_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `roll` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_admissions`
--

INSERT INTO `core_academy_admissions` (`id`, `academy_student_id`, `academy_batch_id`, `academy_section_id`, `created_at`, `roll`) VALUES
(1, 1, 1, 2, '2025-03-19 15:20:06', 2);

-- --------------------------------------------------------

--
-- Table structure for table `core_academy_batches`
--

CREATE TABLE `core_academy_batches` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `current_class_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_batches`
--

INSERT INTO `core_academy_batches` (`id`, `name`, `current_class_id`) VALUES
(1, 'Batch1', 1),
(2, 'Batch2', 2);

-- --------------------------------------------------------

--
-- Table structure for table `core_academy_classes`
--

CREATE TABLE `core_academy_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_classes`
--

INSERT INTO `core_academy_classes` (`id`, `name`) VALUES
(1, 'KG'),
(2, 'ONE'),
(3, 'TWO'),
(4, 'THREE'),
(5, 'FOUR'),
(6, 'FIVE');

-- --------------------------------------------------------

--
-- Table structure for table `core_academy_exam_types`
--

CREATE TABLE `core_academy_exam_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_exam_types`
--

INSERT INTO `core_academy_exam_types` (`id`, `name`) VALUES
(1, 'MCQ'),
(2, 'CT');

-- --------------------------------------------------------

--
-- Table structure for table `core_academy_invoices`
--

CREATE TABLE `core_academy_invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `invoice_total` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `paid_total` float DEFAULT NULL,
  `previous_due` float DEFAULT NULL,
  `payment_term_id` int(10) UNSIGNED DEFAULT NULL,
  `vat` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_invoices`
--

INSERT INTO `core_academy_invoices` (`id`, `student_id`, `created_at`, `updated_at`, `invoice_total`, `discount`, `paid_total`, `previous_due`, `payment_term_id`, `vat`) VALUES
(1, 1, '2025-04-01 00:00:00', '2025-04-01 00:00:00', 223, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_academy_invoice_details`
--

CREATE TABLE `core_academy_invoice_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `price` float NOT NULL,
  `discount` float DEFAULT NULL,
  `unit` int(10) UNSIGNED DEFAULT NULL,
  `vat` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_invoice_details`
--

INSERT INTO `core_academy_invoice_details` (`id`, `invoice_id`, `service_id`, `price`, `discount`, `unit`, `vat`) VALUES
(1, 1, 1, 343, 3, 3, 1),
(2, 1, 2, 343, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_academy_money_receipts`
--

CREATE TABLE `core_academy_money_receipts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` varchar(45) NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `remark` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_academy_money_receipt_details`
--

CREATE TABLE `core_academy_money_receipt_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `fee` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_academy_periods`
--

CREATE TABLE `core_academy_periods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `time` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_periods`
--

INSERT INTO `core_academy_periods` (`id`, `name`, `time`) VALUES
(1, '1st Period', '( 9:00 AM - 9:45 AM)'),
(2, '2nd Period', '( 9:45 AM - 10:30 AM)'),
(3, '3rd Period', '( 10:30 AM - 11:15 AM)'),
(4, '4th Period', '( 11:15 AM - 12:00 PM)');

-- --------------------------------------------------------

--
-- Table structure for table `core_academy_results`
--

CREATE TABLE `core_academy_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `academy_student_id` int(10) UNSIGNED NOT NULL,
  `academy_subject_id` int(10) UNSIGNED NOT NULL,
  `academy_term_id` int(10) UNSIGNED NOT NULL,
  `academy_exam_type_id` int(10) UNSIGNED NOT NULL,
  `mark` float NOT NULL,
  `fullmark` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_results`
--

INSERT INTO `core_academy_results` (`id`, `academy_student_id`, `academy_subject_id`, `academy_term_id`, `academy_exam_type_id`, `mark`, `fullmark`) VALUES
(1, 1, 1, 1, 1, 20, 50),
(2, 1, 2, 1, 1, 28, 50),
(3, 1, 3, 1, 1, 40, 50),
(4, 1, 4, 1, 1, 32, 50),
(5, 1, 5, 1, 1, 46, 50),
(6, 2, 1, 1, 1, 45, 50),
(7, 2, 2, 1, 1, 36, 50),
(8, 2, 4, 1, 1, 44, 50),
(9, 1, 1, 2, 1, 70, 100);

-- --------------------------------------------------------

--
-- Table structure for table `core_academy_routines`
--

CREATE TABLE `core_academy_routines` (
  `id` int(10) UNSIGNED NOT NULL,
  `academy_class_id` int(10) UNSIGNED NOT NULL,
  `academy_subject_id` int(10) UNSIGNED NOT NULL,
  `academy_teacher_id` int(10) UNSIGNED NOT NULL,
  `day` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_routines`
--

INSERT INTO `core_academy_routines` (`id`, `academy_class_id`, `academy_subject_id`, `academy_teacher_id`, `day`, `time`) VALUES
(1, 1, 3, 3, 'SUN', '( 9:00 AM - 9:45 AM)'),
(2, 1, 2, 2, 'SUN', '( 9:00 AM - 9:45 AM)'),
(3, 1, 3, 1, 'MON', '( 9:00 AM - 9:45 AM)');

-- --------------------------------------------------------

--
-- Table structure for table `core_academy_sections`
--

CREATE TABLE `core_academy_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_sections`
--

INSERT INTO `core_academy_sections` (`id`, `name`) VALUES
(1, 'A'),
(2, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `core_academy_services`
--

CREATE TABLE `core_academy_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_academy_students`
--

CREATE TABLE `core_academy_students` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `fathers_name` varchar(45) NOT NULL,
  `mothers_name` varchar(45) NOT NULL,
  `academy_batch_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dob` date DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_students`
--

INSERT INTO `core_academy_students` (`id`, `name`, `fathers_name`, `mothers_name`, `academy_batch_id`, `created_at`, `dob`, `photo`, `contact_no`, `address`) VALUES
(1, 'Jahidul Islam', 'Habibur Rahama', 'Najma Akter', 2, '2025-03-20 03:42:13', '2000-03-19', '1.jpg', '45435436565', 'Rampura'),
(2, 'Abdur Rahim', 'Abdur Karam', 'Fatema Akter', 1, '2025-03-20 03:41:33', '2001-01-01', 'student-jpg.jpg', '34242343', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `core_academy_subjects`
--

CREATE TABLE `core_academy_subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_subjects`
--

INSERT INTO `core_academy_subjects` (`id`, `name`) VALUES
(1, 'Bengali'),
(2, 'English'),
(3, 'Mathematics'),
(4, 'Science'),
(5, 'Islamic Studies'),
(6, 'Social Science');

-- --------------------------------------------------------

--
-- Table structure for table `core_academy_teachers`
--

CREATE TABLE `core_academy_teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `contact_no` varchar(45) NOT NULL,
  `position` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_teachers`
--

INSERT INTO `core_academy_teachers` (`id`, `name`, `contact_no`, `position`) VALUES
(1, 'Md. Hassan', '324324324', 'Asst. Teacher'),
(2, 'Md. Sabbir Ahmed', '3432432', 'Teacher'),
(3, 'Md. Hamid', '334324', 'Headmaster'),
(4, 'Md. Kamruzzaman', '34324324', 'Asst. Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `core_academy_terms`
--

CREATE TABLE `core_academy_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_terms`
--

INSERT INTO `core_academy_terms` (`id`, `name`) VALUES
(1, 'Mid Term'),
(2, 'Final');

-- --------------------------------------------------------

--
-- Table structure for table `core_ac_price`
--

CREATE TABLE `core_ac_price` (
  `id` int(10) UNSIGNED NOT NULL,
  `core_ac_name_id` varchar(45) NOT NULL,
  `core_ac_price_id` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_ac_price`
--

INSERT INTO `core_ac_price` (`id`, `core_ac_name_id`, `core_ac_price_id`) VALUES
(1, 'Shuvo Bhuiyan', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `core_assets`
--

CREATE TABLE `core_assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `price` double NOT NULL,
  `purchased_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_assets`
--

INSERT INTO `core_assets` (`id`, `name`, `price`, `purchased_at`) VALUES
(1, 'Computer', 50000, '2025-01-01 00:00:00'),
(2, 'Laptop', 60000, '2025-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `core_booking`
--

CREATE TABLE `core_booking` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Mobile` varchar(45) NOT NULL,
  `Room_type` varchar(45) NOT NULL,
  `Price` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_bookings`
--

CREATE TABLE `core_bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `order_total` float NOT NULL,
  `paid_total` float NOT NULL,
  `remark` text DEFAULT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_bookings`
--

INSERT INTO `core_bookings` (`id`, `created_at`, `order_total`, `paid_total`, `remark`, `customer_id`) VALUES
(1, '2024-05-22 00:00:00', 1000, 1000, 'Test', 7),
(2, '2024-05-24 00:00:00', 700, 700, 'Test Update Api', 3),
(3, '2024-05-25 00:00:00', 3544, 3544, 'Test', 2),
(4, '2024-05-23 00:00:00', 500, 500, 'Test Api', 3),
(5, '0000-00-00 00:00:00', 446, 446, 'Test', 2),
(6, '0000-00-00 00:00:00', 344, 455, 'test', 1),
(7, '0000-00-00 00:00:00', 5000, 2000, 'NT', 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_booking_details`
--

CREATE TABLE `core_booking_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_booking_details`
--

INSERT INTO `core_booking_details` (`id`, `booking_id`, `room_id`, `from_date`, `to_date`, `price`) VALUES
(1, 1, 1, '2024-02-10', '2024-02-11', 500),
(2, 6, 2, '2024-05-01', '2024-05-03', 500),
(3, 6, 1, '2024-05-01', '2024-05-03', 2000),
(4, 7, 2, '2024-05-29', '2024-05-30', 500),
(5, 7, 1, '2024-05-29', '2024-05-30', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `core_buyers`
--

CREATE TABLE `core_buyers` (
  `Id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phoneNumber` int(10) UNSIGNED NOT NULL,
  `address` varchar(45) NOT NULL,
  `registrationDate` datetime NOT NULL,
  `totalpurchasesAmount` int(10) UNSIGNED NOT NULL,
  `paymentMethod` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_buyers`
--

INSERT INTO `core_buyers` (`Id`, `name`, `email`, `phoneNumber`, `address`, `registrationDate`, `totalpurchasesAmount`, `paymentMethod`) VALUES
(15, 'sabbir', 'guyftfvty', 4294967295, 'dhaka', '2025-03-17 00:00:00', 50000, 'Bank');

-- --------------------------------------------------------

--
-- Table structure for table `core_cache`
--

CREATE TABLE `core_cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_cache_locks`
--

CREATE TABLE `core_cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_cattles`
--

CREATE TABLE `core_cattles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `region` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `color` varchar(45) NOT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `gender` tinyint(1) UNSIGNED DEFAULT NULL,
  `cattle_category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_cattles`
--

INSERT INTO `core_cattles` (`id`, `name`, `region`, `dob`, `color`, `description`, `photo`, `gender`, `cattle_category_id`) VALUES
(2, 'Black and White', 'Indian', '2021-05-07', 'White', '', '2.webp', 1, 2),
(3, 'BlackCow', 'Indian', '2021-05-07', 'Black', '', '3.jpeg', 1, 1),
(19, 'Goat 25', 'Deshi', '2024-05-01', 'Red', '', '19.png', 0, 1),
(24, 'Goat 25', 'Deshi', '2021-05-07', 'Red', 'Test', '1-925-webp.webp', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `core_cattle_categories`
--

CREATE TABLE `core_cattle_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_cattle_categories`
--

INSERT INTO `core_cattle_categories` (`id`, `name`) VALUES
(1, 'Cow'),
(2, 'Goat');

-- --------------------------------------------------------

--
-- Table structure for table `core_company`
--

CREATE TABLE `core_company` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `bin` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `street_address` varchar(45) DEFAULT NULL,
  `post_code` varchar(45) DEFAULT NULL,
  `inactive` tinyint(3) UNSIGNED DEFAULT NULL,
  `logo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_company`
--

INSERT INTO `core_company` (`id`, `name`, `mobile`, `bin`, `email`, `website`, `city`, `area`, `street_address`, `post_code`, `inactive`, `logo`) VALUES
(1, 'OYELI FASHION', '432523432', '3423423432', 'oyeili@gmail.com', 'www.oyelibd.com', 'Dhaka', 'Mirpur', 'Building: 21, Road: 12, Block: A', '1219', 0, '1.png'),
(2, 'ELYSIAN FABRICS', '+8801515666666', '+33564555', 'elysianfabrics@gmail.com', 'www.elysianfabrics.com', 'Dhaka', 'Cantonment', 'Rod no: 2, Falcon Mart, Saudi colony', '1206', 1, '1-png.png');

-- --------------------------------------------------------

--
-- Table structure for table `core_contacts`
--

CREATE TABLE `core_contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `contact_category_id` int(10) UNSIGNED NOT NULL,
  `contact_no` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_contacts`
--

INSERT INTO `core_contacts` (`id`, `name`, `contact_category_id`, `contact_no`, `email`) VALUES
(1, 'Mehedi', 4, '01797993131', 'mehedihasandb0@gmail.com'),
(2, 'Jahid', 1, '3423423', 'jahid1@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `core_contact_categories`
--

CREATE TABLE `core_contact_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_contact_categories`
--

INSERT INTO `core_contact_categories` (`id`, `name`) VALUES
(1, 'Family'),
(2, 'Relative'),
(3, 'Friend'),
(4, 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `core_customers`
--

CREATE TABLE `core_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `address` text DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_customers`
--

INSERT INTO `core_customers` (`id`, `name`, `mobile`, `email`, `created_at`, `updated_at`, `address`, `photo`) VALUES
(3, 'Niyamot', '3434343', 'niyamot@yahoo.com', '2023-12-05 10:27:19', '2023-12-05 10:27:19', 'Mirpur', '3.png'),
(7, 'Jahidul Hasan', '34324324', 'mehedihasandb0@gmail.com', '2025-04-23 20:25:55', '2025-04-23 20:25:55', '343', '7.png'),
(9, 'Sabbir Ahmed', '34343434', 'sabbir3@gmail.com', '2023-12-30 09:30:13', '2023-12-30 09:30:13', 'NA', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_deliveries`
--

CREATE TABLE `core_deliveries` (
  `id` int(10) UNSIGNED NOT NULL,
  `create_at` datetime NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `person_id` int(10) UNSIGNED NOT NULL,
  `shipper_id` int(10) UNSIGNED NOT NULL,
  `shipped_at` datetime NOT NULL,
  `delivery_status_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_deliveries`
--

INSERT INTO `core_deliveries` (`id`, `create_at`, `order_id`, `person_id`, `shipper_id`, `shipped_at`, `delivery_status_id`) VALUES
(2, '2025-04-25 00:00:00', 39, 1, 1, '1970-01-01 00:00:00', 2),
(3, '2025-04-24 00:00:00', 39, 1, 1, '2025-04-24 00:00:00', 1),
(4, '2025-04-24 00:00:00', 39, 1, 1, '2025-04-24 00:00:00', 1),
(5, '2025-04-24 00:00:00', 39, 1, 1, '2025-04-24 00:00:00', 1),
(6, '2025-04-24 00:00:00', 39, 1, 1, '2025-04-24 00:00:00', 1),
(7, '2025-04-24 00:00:00', 39, 1, 1, '2025-04-24 00:00:00', 1),
(8, '2025-04-24 00:00:00', 39, 1, 1, '2025-04-24 00:00:00', 1),
(9, '2025-04-24 00:00:00', 39, 1, 1, '2025-04-24 00:00:00', 1),
(10, '2025-04-24 00:00:00', 39, 1, 1, '2025-04-24 00:00:00', 1),
(11, '2025-04-24 00:00:00', 39, 1, 1, '2025-04-24 00:00:00', 1),
(12, '2025-04-24 00:00:00', 39, 1, 1, '2025-04-24 00:00:00', 1),
(13, '2025-04-24 00:00:00', 39, 1, 1, '2025-04-24 00:00:00', 1),
(14, '2025-04-24 00:00:00', 39, 1, 1, '2025-04-24 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_delivery`
--

CREATE TABLE `core_delivery` (
  `id` int(10) UNSIGNED NOT NULL,
  `create_at` datetime NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `person_id` int(10) UNSIGNED NOT NULL,
  `shipper_id` int(10) UNSIGNED NOT NULL,
  `shipped_at` datetime NOT NULL,
  `delivery_status_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_delivery_details`
--

CREATE TABLE `core_delivery_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `delivery_id` varchar(45) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `qty` varchar(45) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_delivery_details`
--

INSERT INTO `core_delivery_details` (`id`, `delivery_id`, `product_id`, `qty`, `price`) VALUES
(1, '1', 56, '1', 0),
(2, '2', 57, '10', 2000),
(3, '3', 57, '10', 2000),
(4, '4', 57, '10', 2000),
(5, '5', 57, '10', 2000),
(6, '6', 57, '10', 2000),
(7, '7', 57, '10', 2000),
(8, '8', 57, '10', 2000),
(9, '9', 57, '10', 2000),
(10, '10', 57, '10', 2000),
(11, '11', 57, '10', 2000),
(12, '12', 57, '10', 2000),
(13, '13', 57, '10', 2000),
(14, '14', 57, '10', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `core_delivery_status`
--

CREATE TABLE `core_delivery_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_delivery_status`
--

INSERT INTO `core_delivery_status` (`id`, `name`) VALUES
(1, 'In transit'),
(2, 'Shipped');

-- --------------------------------------------------------

--
-- Table structure for table `core_departments`
--

CREATE TABLE `core_departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_departments`
--

INSERT INTO `core_departments` (`id`, `code`, `name`) VALUES
(1, '10', 'Accounts'),
(2, '20', 'IT'),
(3, '30', 'HR'),
(4, '40', 'Sales and Marketing');

-- --------------------------------------------------------

--
-- Table structure for table `core_districts`
--

CREATE TABLE `core_districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `division_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_districts`
--

INSERT INTO `core_districts` (`id`, `name`, `division_id`) VALUES
(1, 'Narayangang', 1),
(2, 'Nonakhali', 3),
(3, 'Feni', 3),
(4, 'Tingile', 1),
(5, 'Gajipur', 1),
(6, 'Potuakhali', 2),
(7, 'Dhaka', 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_divisions`
--

CREATE TABLE `core_divisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_divisions`
--

INSERT INTO `core_divisions` (`id`, `name`) VALUES
(1, 'Dhaka'),
(2, 'Borishal'),
(3, 'Chottrogram');

-- --------------------------------------------------------

--
-- Table structure for table `core_ecom_coupons`
--

CREATE TABLE `core_ecom_coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon` varchar(45) NOT NULL,
  `percent_b2b` double NOT NULL,
  `percent_b2c` double NOT NULL,
  `percent_m` double NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_ecom_coupons`
--

INSERT INTO `core_ecom_coupons` (`id`, `coupon`, `percent_b2b`, `percent_b2c`, `percent_m`, `start_date`, `end_date`, `created_at`) VALUES
(1, 'AX353', 5, 3, 4, '2025-04-09 00:00:00', '2025-04-30 00:00:00', '2025-04-09 11:06:25');

-- --------------------------------------------------------

--
-- Table structure for table `core_ecom_used_coupons`
--

CREATE TABLE `core_ecom_used_coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `used_at` datetime NOT NULL,
  `percent_given` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_failed_jobs`
--

CREATE TABLE `core_failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_fan2`
--

CREATE TABLE `core_fan2` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_fan2`
--

INSERT INTO `core_fan2` (`id`, `name`, `price`) VALUES
(1, 'Fan1', '5000'),
(2, 'fan12', '5000'),
(3, 'Shuvo', '3000');

-- --------------------------------------------------------

--
-- Table structure for table `core_fan3`
--

CREATE TABLE `core_fan3` (
  `id` int(10) UNSIGNED NOT NULL,
  `core_fan2_name_id` varchar(45) NOT NULL,
  `core_fan2_price_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_final`
--

CREATE TABLE `core_final` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Mobile` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_finished_goods`
--

CREATE TABLE `core_finished_goods` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_code` varchar(45) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `order_date` datetime NOT NULL,
  `finished_good_status` varchar(45) NOT NULL,
  `batch_number` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_finished_goods`
--

INSERT INTO `core_finished_goods` (`id`, `product_code`, `product_name`, `quantity`, `price`, `order_date`, `finished_good_status`, `batch_number`) VALUES
(3, '54', '5600', 56654, 45000, '2025-03-21 00:00:00', 'nice', 4500);

-- --------------------------------------------------------

--
-- Table structure for table `core_hms_appointments`
--

CREATE TABLE `core_hms_appointments` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL,
  `doctor_id` int(10) UNSIGNED NOT NULL,
  `appointment_at` datetime NOT NULL,
  `cc` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_hms_consultants`
--

CREATE TABLE `core_hms_consultants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `hms_department_id` int(10) UNSIGNED NOT NULL,
  `designation` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hms_consultants`
--

INSERT INTO `core_hms_consultants` (`id`, `name`, `hms_department_id`, `designation`) VALUES
(1, 'Dr. Moshaidul Islam', 1, 'MBBS'),
(2, 'Jahidul Islam', 2, 'Prof.');

-- --------------------------------------------------------

--
-- Table structure for table `core_hms_departments`
--

CREATE TABLE `core_hms_departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hms_departments`
--

INSERT INTO `core_hms_departments` (`id`, `name`) VALUES
(1, 'Medicine'),
(2, 'ENT');

-- --------------------------------------------------------

--
-- Table structure for table `core_hms_medicines`
--

CREATE TABLE `core_hms_medicines` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `hms_medicine_category_id` int(10) UNSIGNED NOT NULL,
  `hms_medicine_type_id` int(10) UNSIGNED NOT NULL,
  `generic_name` varchar(45) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hms_medicines`
--

INSERT INTO `core_hms_medicines` (`id`, `name`, `hms_medicine_category_id`, `hms_medicine_type_id`, `generic_name`, `description`) VALUES
(1, 'Napa 500mg', 4, 1, 'Paracitamal', 'Na'),
(2, 'Seclo 20mg', 3, 4, 'Antacid', 'Na');

-- --------------------------------------------------------

--
-- Table structure for table `core_hms_medicine_categories`
--

CREATE TABLE `core_hms_medicine_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hms_medicine_categories`
--

INSERT INTO `core_hms_medicine_categories` (`id`, `name`) VALUES
(1, 'Antibiotic'),
(2, 'Vitamin'),
(3, 'Painkiller'),
(4, 'Antacids');

-- --------------------------------------------------------

--
-- Table structure for table `core_hms_medicine_types`
--

CREATE TABLE `core_hms_medicine_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hms_medicine_types`
--

INSERT INTO `core_hms_medicine_types` (`id`, `name`) VALUES
(1, 'Tab'),
(2, 'Inj'),
(3, 'Syr'),
(4, 'Cap');

-- --------------------------------------------------------

--
-- Table structure for table `core_hms_patients`
--

CREATE TABLE `core_hms_patients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `mob_ext` int(10) UNSIGNED NOT NULL,
  `gender` tinyint(3) UNSIGNED NOT NULL,
  `profession` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hms_patients`
--

INSERT INTO `core_hms_patients` (`id`, `name`, `mobile`, `dob`, `mob_ext`, `gender`, `profession`) VALUES
(1, 'Jahidul Islam', '038403423', '2000-01-01', 1, 1, 'student'),
(2, 'Jamuna', '034343345', '2023-01-02', 1, 1, 'na'),
(3, 'Abdur Rahman', '23432432', '2000-01-20', 1, 1, 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `core_hms_prescriptions`
--

CREATE TABLE `core_hms_prescriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL,
  `consultant_id` int(10) UNSIGNED NOT NULL,
  `cc` text NOT NULL,
  `rf` text NOT NULL,
  `investigation` text NOT NULL,
  `advice` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_hms_prescription_details`
--

CREATE TABLE `core_hms_prescription_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `prescription_id` int(10) UNSIGNED NOT NULL,
  `medicine_id` int(10) UNSIGNED NOT NULL,
  `dose` varchar(20) NOT NULL,
  `days` double NOT NULL,
  `suggestion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_hotel`
--

CREATE TABLE `core_hotel` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Room_NO` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_hotelb`
--

CREATE TABLE `core_hotelb` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_hotel_staffdepartment`
--

CREATE TABLE `core_hotel_staffdepartment` (
  `id` int(11) NOT NULL,
  `department_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hotel_staffdepartment`
--

INSERT INTO `core_hotel_staffdepartment` (`id`, `department_name`) VALUES
(1, 'Executive Department'),
(2, 'Front Office Department'),
(3, 'Housekeeping Department'),
(4, 'Food and Beverage (F&B) Department'),
(5, 'Maintenance Department'),
(6, 'Security Department'),
(7, 'Sales and Marketing Department'),
(8, 'Accounting and Finance Department'),
(9, 'Human Resources (HR) Department'),
(10, 'IT Department'),
(11, 'Guest Relations Department'),
(12, 'Purchasing and Inventory Department'),
(13, 'Spa and Wellness Department'),
(14, 'Recreation and Activities Department'),
(15, 'Executive Department'),
(16, 'Front Office Department'),
(17, 'Housekeeping Department'),
(18, 'Food and Beverage (F&B) Department'),
(19, 'Maintenance Department'),
(20, 'Security Department'),
(21, 'Sales and Marketing Department'),
(22, 'Accounting and Finance Department'),
(23, 'Human Resources (HR) Department'),
(24, 'IT Department'),
(25, 'Guest Relations Department'),
(26, 'Purchasing and Inventory Department'),
(27, 'Spa and Wellness Department'),
(28, 'Recreation and Activities Department');

-- --------------------------------------------------------

--
-- Table structure for table `core_hotel_staffrole`
--

CREATE TABLE `core_hotel_staffrole` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_invoices`
--

CREATE TABLE `core_invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `payment_term` varchar(45) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `invoice_total` float NOT NULL,
  `paid_total` float NOT NULL,
  `previous_due` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_invoices`
--

INSERT INTO `core_invoices` (`id`, `customer_id`, `created_at`, `remark`, `payment_term`, `updated_at`, `invoice_total`, `paid_total`, `previous_due`) VALUES
(11, 3, '0000-00-00 00:00:00', 'Na', 'CASH', '0000-00-00 00:00:00', 30000, 30000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_invoice_details`
--

CREATE TABLE `core_invoice_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` float NOT NULL,
  `qty` float NOT NULL,
  `discount` float NOT NULL,
  `vat` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_invoice_details`
--

INSERT INTO `core_invoice_details` (`id`, `invoice_id`, `product_id`, `price`, `qty`, `discount`, `vat`) VALUES
(1, 5, 1, 299, 3, 0, 0),
(2, 5, 2, 399, 2, 0, 0),
(3, 6, 50, 100, 1, 0, 0),
(4, 6, 17, 200, 1, 0, 0),
(5, 7, 50, 467, 1, 0, 0),
(6, 8, 17, 100, 1, 0, 0),
(7, 9, 56, 100, 4, 0, 0),
(8, 9, 47, 200, 4, 0, 0),
(9, 10, 46, 110, 1, 0, 0),
(10, 11, 57, 2000, 10, 0, 0),
(11, 11, 55, 1000, 10, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_jobs`
--

CREATE TABLE `core_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_job_batches`
--

CREATE TABLE `core_job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_manufacturers`
--

CREATE TABLE `core_manufacturers` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_manufacturers`
--

INSERT INTO `core_manufacturers` (`id`, `name`) VALUES
(1, 'Elysian Fabrics'),
(2, 'One Ummah'),
(3, 'Easy');

-- --------------------------------------------------------

--
-- Table structure for table `core_mfg_boms`
--

CREATE TABLE `core_mfg_boms` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `qty` varchar(45) NOT NULL,
  `labour_cost` float NOT NULL,
  `date` datetime DEFAULT NULL,
  `remark` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_boms`
--

INSERT INTO `core_mfg_boms` (`id`, `code`, `name`, `product_id`, `qty`, `labour_cost`, `date`, `remark`) VALUES
(1, '100', 'T-Shirt', 1, '100', 2000, NULL, NULL),
(2, '343', 'BM-3', 47, '3', 45, NULL, NULL),
(3, '3532', 'BM93', 47, '34', 432, NULL, NULL),
(4, 'bn-29', 'New', 55, '10', 1000, '2025-04-23 00:00:00', 'nm');

-- --------------------------------------------------------

--
-- Table structure for table `core_mfg_bom_details`
--

CREATE TABLE `core_mfg_bom_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `bom_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `qty` float NOT NULL,
  `cost` float NOT NULL,
  `uom_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_bom_details`
--

INSERT INTO `core_mfg_bom_details` (`id`, `bom_id`, `product_id`, `qty`, `cost`, `uom_id`) VALUES
(1, 1, 400, 200, 100, 1),
(2, 1, 401, 100, 10, 2),
(3, 1, 402, 10, 50, 3),
(4, 3, 49, 13, 30, 1),
(5, 3, 17, 14, 2500, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_mfg_bom_secondary_products`
--

CREATE TABLE `core_mfg_bom_secondary_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `qty` float NOT NULL,
  `price` float NOT NULL,
  `uom` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_bom_secondary_products`
--

INSERT INTO `core_mfg_bom_secondary_products` (`id`, `product_id`, `qty`, `price`, `uom`) VALUES
(1, 500, 5, 400, 5);

-- --------------------------------------------------------

--
-- Table structure for table `core_mfg_productions`
--

CREATE TABLE `core_mfg_productions` (
  `id` int(10) UNSIGNED NOT NULL,
  `production_datetime` datetime NOT NULL,
  `bom_id` int(10) UNSIGNED NOT NULL,
  `qty` float NOT NULL,
  `labor_cost` float NOT NULL,
  `manager_id` int(10) UNSIGNED NOT NULL,
  `total_cost` float NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `uom_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_productions`
--

INSERT INTO `core_mfg_productions` (`id`, `production_datetime`, `bom_id`, `qty`, `labor_cost`, `manager_id`, `total_cost`, `product_id`, `uom_id`) VALUES
(1, '2025-04-15 00:00:00', 1, 10, 10, 2, 1000, 55, 1),
(2, '1970-01-01 00:00:00', 1, 10, 1000, 1, 2000, 55, 1),
(3, '2025-04-30 00:00:00', 4, 1000, 120, 1, 1253, 53, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_mfg_production_details`
--

CREATE TABLE `core_mfg_production_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `production_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `qty` float NOT NULL,
  `uom_id` int(10) UNSIGNED NOT NULL,
  `cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_migrations`
--

CREATE TABLE `core_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_migrations`
--

INSERT INTO `core_migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2024_07_02_044553_create_personal_access_tokens_table', 3),
(18, '0001_01_01_000000_create_users_table', 4),
(19, '0001_01_01_000001_create_cache_table', 4),
(20, '0001_01_01_000002_create_jobs_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `core_money_receipts`
--

CREATE TABLE `core_money_receipts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `remark` text DEFAULT NULL,
  `receipt_total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_money_receipts`
--

INSERT INTO `core_money_receipts` (`id`, `created_at`, `updated_at`, `customer_id`, `remark`, `receipt_total`) VALUES
(31, '2025-04-24 10:16:12', '2025-04-24 10:16:12', 3, 'Na', 1000),
(32, '2025-04-24 10:19:28', '2025-04-24 10:19:28', 7, 'Na', 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `core_money_receipt_details`
--

CREATE TABLE `core_money_receipt_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `money_receipt_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `qty` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_money_receipt_details`
--

INSERT INTO `core_money_receipt_details` (`id`, `money_receipt_id`, `product_id`, `price`, `qty`) VALUES
(1, 1, 36, 100, 1),
(2, 7, 0, 2500, 2),
(3, 7, 0, 180, 1),
(4, 7, 0, 999, 1),
(5, 8, 36, 2500, 1),
(6, 25, 0, 180, 2),
(7, 25, 0, 999, 1),
(8, 26, 46, 180, 2),
(9, 26, 47, 999, 1),
(10, 27, 46, 180, 2),
(11, 27, 47, 999, 1),
(12, 28, 46, 180, 2),
(13, 28, 47, 999, 1),
(14, 29, 46, 180, 2),
(15, 29, 47, 999, 1),
(16, 30, 55, 0, 1),
(17, 31, 54, 100, 10),
(18, 32, 57, 10000, 100);

-- --------------------------------------------------------

--
-- Table structure for table `core_monitor`
--

CREATE TABLE `core_monitor` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_monitor2`
--

CREATE TABLE `core_monitor2` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand` varchar(45) NOT NULL,
  `batch` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_monitor2`
--

INSERT INTO `core_monitor2` (`id`, `brand`, `batch`) VALUES
(1, 'asus', 'a25'),
(2, 'dell', 'd58');

-- --------------------------------------------------------

--
-- Table structure for table `core_orders`
--

CREATE TABLE `core_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `order_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `shipping_address` text DEFAULT NULL,
  `order_total` double NOT NULL DEFAULT 0,
  `paid_amount` double NOT NULL DEFAULT 0,
  `remark` text DEFAULT NULL,
  `status_id` int(10) UNSIGNED DEFAULT 1,
  `discount` float DEFAULT 0,
  `vat` float DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_orders`
--

INSERT INTO `core_orders` (`id`, `customer_id`, `order_date`, `delivery_date`, `shipping_address`, `order_total`, `paid_amount`, `remark`, `status_id`, `discount`, `vat`, `created_at`, `updated_at`) VALUES
(39, 7, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'mehedihasandb0@gmail.com', 21000, 0, 'Order', 2, 0, 0, '2025-04-24 05:00:10', '2025-04-24 05:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `core_order_details`
--

CREATE TABLE `core_order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `qty` float NOT NULL,
  `price` float NOT NULL,
  `vat` float NOT NULL DEFAULT 0,
  `discount` float NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_order_details`
--

INSERT INTO `core_order_details` (`id`, `order_id`, `product_id`, `qty`, `price`, `vat`, `discount`, `created_at`, `updated_at`) VALUES
(1, 1, 17, 1, 16, 0, 0, '2021-12-14 06:45:23', '2021-12-14 06:45:23'),
(2, 1, 18, 1, 40, 0, 0, '2021-12-14 06:45:23', '2021-12-14 06:45:23'),
(3, 2, 18, 4, 40, 0, 0, '2021-12-14 06:45:23', '2021-12-14 06:45:23'),
(4, 2, 17, 2, 16, 0, 0, '2021-12-14 06:45:23', '2021-12-14 06:45:23'),
(5, 3, 17, 2, 16, 0, 0, '2021-12-14 06:45:23', '2021-12-14 06:45:23'),
(6, 3, 18, 1, 40, 0, 0, '2021-12-14 06:45:23', '2021-12-14 06:45:23'),
(7, 4, 17, 1, 16, 0, 0, '2021-12-14 06:45:23', '2021-12-14 06:45:23'),
(8, 4, 18, 1, 40, 0, 0, '2021-12-14 06:45:23', '2021-12-14 06:45:23'),
(9, 5, 17, 1, 16, 0, 0, '2021-12-14 06:45:23', '2021-12-14 06:45:23'),
(10, 14, 18, 1, 30, 0, 0, '2021-12-14 01:14:27', '2021-12-14 01:14:27'),
(11, 14, 17, 1, 15, 0, 0, '2021-12-14 01:14:27', '2021-12-14 01:14:27'),
(12, 15, 18, 1, 40, 0, 0, '2021-12-15 12:48:59', '2021-12-15 12:48:59'),
(13, 15, 17, 2, 16, 0, 0, '2021-12-15 12:48:59', '2021-12-15 12:48:59'),
(14, 16, 28, 1, 5000, 0, 0, '2022-01-06 06:39:11', '2022-01-06 06:39:11'),
(15, 16, 29, 1, 342, 0, 0, '2022-01-06 06:39:11', '2022-01-06 06:39:11'),
(16, 17, 29, 1, 342, 0, 0, '2022-01-06 06:43:37', '2022-01-06 06:43:37'),
(17, 17, 28, 1, 5000, 0, 0, '2022-01-06 06:43:37', '2022-01-06 06:43:37'),
(18, 17, 20, 1, 110, 0, 0, '2022-01-06 06:43:37', '2022-01-06 06:43:37'),
(19, 18, 28, 10, 5000, 0, 0, '2022-01-06 09:14:42', '2022-01-06 09:14:42'),
(20, 19, 30, 1, 7999, 0, 0, '2022-01-08 03:05:54', '2022-01-08 03:05:54'),
(21, 19, 31, 1, 4444, 0, 0, '2022-01-08 03:05:54', '2022-01-08 03:05:54'),
(22, 19, 20, 1, 110, 0, 0, '2022-01-08 03:05:55', '2022-01-08 03:05:55'),
(23, 20, 29, 1, 342, 0, 0, '2022-01-08 03:06:58', '2022-01-08 03:06:58'),
(24, 20, 20, 1, 110, 0, 0, '2022-01-08 03:06:58', '2022-01-08 03:06:58'),
(25, 20, 30, 1, 7999, 0, 0, '2022-01-08 03:06:58', '2022-01-08 03:06:58'),
(26, 20, 32, 1, 5555, 0, 0, '2022-01-08 03:06:58', '2022-01-08 03:06:58'),
(27, 21, 29, 1, 342, 0, 0, '2022-01-08 03:07:27', '2022-01-08 03:07:27'),
(28, 21, 28, 1, 5000, 0, 0, '2022-01-08 03:07:27', '2022-01-08 03:07:27'),
(29, 21, 31, 1, 4444, 0, 0, '2022-01-08 03:07:27', '2022-01-08 03:07:27'),
(30, 21, 32, 2, 5555, 0, 0, '2022-01-08 03:07:27', '2022-01-08 03:07:27'),
(31, 21, 30, 1, 7999, 0, 0, '2022-01-08 03:07:27', '2022-01-08 03:07:27'),
(32, 21, 20, 1, 110, 0, 0, '2022-01-08 03:07:28', '2022-01-08 03:07:28'),
(40, 25, 18, 1, 180, 0, 0, '2024-03-13 02:26:34', '2024-03-13 02:26:34'),
(41, 25, 17, 1, 2500, 0, 0, '2024-03-13 02:26:34', '2024-03-13 02:26:34'),
(42, 26, 18, 1, 180, 0, 0, '2024-03-13 02:40:15', '2024-03-13 02:40:15'),
(43, 26, 17, 1, 2500, 0, 0, '2024-03-13 02:40:15', '2024-03-13 02:40:15'),
(44, 32, 17, 1, 100, 0, 0, '2024-05-12 06:40:03', '2024-05-12 06:40:03'),
(45, 33, 17, 1, 2500, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 34, 52, 1, 20000, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 35, 17, 5, 2500, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 36, 17, 1, 2500, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 37, 17, 1, 2500, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 37, 52, 1, 20000, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 38, 56, 1, 0, 0, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 39, 57, 10, 2000, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `core_password_reset_tokens`
--

CREATE TABLE `core_password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_personal_access_tokens`
--

CREATE TABLE `core_personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_persons`
--

CREATE TABLE `core_persons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `position_id` int(10) UNSIGNED NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `dob` date NOT NULL,
  `doj` date NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `inactive` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_persons`
--

INSERT INTO `core_persons` (`id`, `name`, `position_id`, `sex`, `dob`, `doj`, `mobile`, `address`, `inactive`) VALUES
(1, 'Jahidul Islam', 1, 0, '2000-01-01', '2021-01-01', '677657657567', 'Rampura', 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_positions`
--

CREATE TABLE `core_positions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `grade` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_positions`
--

INSERT INTO `core_positions` (`id`, `name`, `grade`, `department_id`) VALUES
(1, 'Programmer', 6, 2),
(2, 'System Analyst', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_production_manager`
--

CREATE TABLE `core_production_manager` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `hire_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_production_manager`
--

INSERT INTO `core_production_manager` (`id`, `name`, `email`, `phone`, `department`, `is_active`, `hire_date`, `created_at`, `updated_at`) VALUES
(1, 'John Smith', 'john.smith@garmentco.com', '+1 (555) 123-4567', 'Cutting', 1, '2020-03-15', '2025-04-23 17:59:22', '2025-04-23 17:59:22'),
(2, 'Maria Garcia', 'maria.garcia@garmentco.com', '+1 (555) 234-5678', 'Sewing', 1, '2019-07-22', '2025-04-23 17:59:22', '2025-04-23 17:59:22'),
(3, 'Robert Johnson', 'robert.johnson@garmentco.com', '+1 (555) 345-6789', 'Finishing', 1, '2021-01-10', '2025-04-23 17:59:22', '2025-04-23 17:59:22'),
(4, 'Sarah Williams', 'sarah.williams@garmentco.com', '+1 (555) 456-7890', 'Quality Control', 1, '2018-11-05', '2025-04-23 17:59:22', '2025-04-23 17:59:22'),
(5, 'David Kim', 'david.kim@garmentco.com', '+1 (555) 567-8901', 'Packaging', 0, '2022-06-30', '2025-04-23 17:59:22', '2025-04-23 17:59:22');

-- --------------------------------------------------------

--
-- Table structure for table `core_products`
--

CREATE TABLE `core_products` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `offer_price` double DEFAULT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `regular_price` double NOT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `product_category_id` int(10) UNSIGNED NOT NULL,
  `product_section_id` int(10) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) DEFAULT 0,
  `star` int(10) UNSIGNED DEFAULT NULL,
  `is_brand` tinyint(1) DEFAULT 0,
  `offer_discount` float DEFAULT 0,
  `uom_id` int(10) UNSIGNED NOT NULL,
  `weight` float DEFAULT NULL,
  `barcode` varchar(45) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `product_type_id` int(10) UNSIGNED NOT NULL,
  `product_unit_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_products`
--

INSERT INTO `core_products` (`id`, `name`, `offer_price`, `manufacturer_id`, `regular_price`, `description`, `photo`, `product_category_id`, `product_section_id`, `is_featured`, `star`, `is_brand`, `offer_discount`, `uom_id`, `weight`, `barcode`, `created_at`, `updated_at`, `product_type_id`, `product_unit_id`) VALUES
(17, 'Brown Borka', 2500, 3, 4000, '', '17.jpg', 5, 1, 1, 0, 1, 0, 1, 0, '4456342342', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 2),
(54, 'T-Shirt', 1200, 2, 1500, 'Soft Cotton T-Shirt', '1-jpg.jpg', 10, 2, 1, 4, 0, 300, 1, 0, 'b40', '2025-04-24 01:04:14', '2025-04-24 01:04:14', 1, 1),
(55, 'Polo T- Shirt', 1000, 1, 1200, 'Polo Shirt', '1-jpg.jpg', 10, 2, 0, 4, 1, 300, 1, 0, 'fg', '2025-04-24 01:36:57', '2025-04-24 01:36:57', 1, 1),
(57, 'Panjabi', 2000, 1, 2200, 'Cotton Panjabi', 'fbimg1743393811832-20250331053059-jpg.jpg', 9, 1, 0, 0, 1, 0, 1, 0, 'bfsoo', '2025-04-24 09:55:26', '2025-04-24 09:55:26', 1, 1),
(58, '100% Cotton Fabrics', 100, 1, 120, 'Row Materials', 'elysian-fabrics-min-1-png.png', 9, 1, 0, 0, 0, 0, 3, 0, 'fg00', '2025-04-24 12:00:04', '2025-04-24 12:00:04', 2, 1),
(59, 'Buttons', 8, 3, 10, 'raw', 'nirbachon-png.png', 9, 1, 0, 0, 0, 0, 1, 0, 'kj0', '2025-04-24 11:27:45', '2025-04-24 11:27:45', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `core_product_brands`
--

CREATE TABLE `core_product_brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_product_brands`
--

INSERT INTO `core_product_brands` (`id`, `name`) VALUES
(1, 'RFL'),
(2, 'Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `core_product_categories`
--

CREATE TABLE `core_product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_product_categories`
--

INSERT INTO `core_product_categories` (`id`, `name`, `section_id`, `created_at`, `updated_at`) VALUES
(9, 'Women\'s', 2, '2022-01-11 06:46:24', NULL),
(10, 'Men\'s', 2, '2022-01-11 06:46:24', NULL),
(11, 'Kids', 2, '2022-01-11 06:46:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_product_sections`
--

CREATE TABLE `core_product_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `unit_id` int(10) UNSIGNED DEFAULT NULL,
  `photo` varchar(145) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_product_sections`
--

INSERT INTO `core_product_sections` (`id`, `name`, `unit_id`, `photo`, `icon`) VALUES
(1, 'Fabrics', 1, NULL, NULL),
(2, 'Clothings', 1, NULL, NULL),
(3, 'Accecesories', 1, NULL, NULL),
(4, 'Health & Beauty', 1, NULL, NULL),
(5, 'Sports & Leisure', 1, NULL, NULL),
(6, 'Books & Entertainments', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_product_types`
--

CREATE TABLE `core_product_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_product_types`
--

INSERT INTO `core_product_types` (`id`, `name`) VALUES
(1, 'Finished Goods'),
(2, 'Raw Materials'),
(3, 'Consumable Materials');

-- --------------------------------------------------------

--
-- Table structure for table `core_product_units`
--

CREATE TABLE `core_product_units` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_product_units`
--

INSERT INTO `core_product_units` (`id`, `name`, `photo`, `icon`) VALUES
(1, 'Jeans', NULL, NULL),
(2, 'Polo', NULL, NULL),
(3, 'Dress', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_purchases`
--

CREATE TABLE `core_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `purchase_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `shipping_address` text NOT NULL,
  `purchase_total` double NOT NULL,
  `paid_amount` double DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `discount` float DEFAULT 0,
  `vat` float DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_purchase_details`
--

CREATE TABLE `core_purchase_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `qty` float NOT NULL,
  `price` float NOT NULL,
  `vat` float NOT NULL DEFAULT 0,
  `discount` float NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_purchase_details`
--

INSERT INTO `core_purchase_details` (`id`, `purchase_id`, `product_id`, `qty`, `price`, `vat`, `discount`, `created_at`, `updated_at`) VALUES
(1, 1, 17, 50, 200, 0, 0, NULL, NULL),
(2, 1, 18, 30, 250, 0, 0, NULL, NULL),
(3, 2, 17, 20, 210, 0, 0, NULL, NULL),
(4, 2, 40, 70, 240, 0, 0, NULL, NULL),
(5, 3, 39, 10, 202, 0, 0, NULL, NULL),
(6, 4, 40, 30, 300, 0, 0, NULL, NULL),
(7, 10, 1, 4, 200, 0, 0, NULL, NULL),
(8, 15, 18, 1, 180, 0, 0, NULL, NULL),
(9, 15, 50, 1, 345, 0, 0, NULL, NULL),
(10, 15, 17, 1, 2500, 0, 0, NULL, NULL),
(11, 16, 50, 1, 345, 0, 0, NULL, NULL),
(12, 16, 17, 1, 2500, 0, 0, NULL, NULL),
(13, 17, 17, 14, 2500, 0, 0, NULL, NULL),
(14, 17, 50, 15, 345, 0, 0, NULL, NULL),
(15, 50, 52, 6, 19000, 0, 0, NULL, NULL),
(16, 51, 17, 3, 4000, 0, 0, NULL, NULL),
(17, 51, 52, 1, 4000, 0, 0, NULL, NULL),
(18, 52, 0, 2, 100, 0, 0, NULL, NULL),
(19, 53, 0, 10, 10, 0, 0, NULL, NULL),
(20, 54, 0, 10, 1000, 0, 0, NULL, NULL),
(21, 55, 50, 10, 10, 0, 0, NULL, NULL),
(22, 56, 50, 10000, 100, 0, 0, NULL, NULL),
(23, 65, 52, 10, 10, 0, 0, NULL, NULL),
(24, 66, 50, 0, 0, 0, 0, NULL, NULL),
(25, 67, 50, 0, 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_raw_materials`
--

CREATE TABLE `core_raw_materials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `supplier_name` varchar(45) NOT NULL,
  `unit_cost` int(10) UNSIGNED NOT NULL,
  `total_cost` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `color` varchar(45) NOT NULL DEFAULT '',
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unit` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_raw_materials`
--

INSERT INTO `core_raw_materials` (`id`, `name`, `supplier_name`, `unit_cost`, `total_cost`, `color`, `quantity`, `unit`) VALUES
(7, '100% Cotton Fabric', 'Textile World Inc.', 5, 500, 'White', 100, 1),
(8, 'Polyester Blend', 'Global Fabrics Ltd.', 3, 300, 'Black', 100, 1),
(9, 'Silk Chiffon', 'Luxury Textiles Co.', 15, 1500, 'Ivory', 100, 1),
(10, 'Denim Fabric', 'Blue Horizon Mills', 8, 800, 'Blue', 100, 1),
(11, 'Linen Cloth', 'Natural Fibers Corp.', 7, 700, 'Beige', 100, 1),
(12, 'Wool Suiting', 'Premium Woolens LLC', 12, 1200, 'Charcoal', 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_rest_tables`
--

CREATE TABLE `core_rest_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `status` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `photo` varchar(45) DEFAULT NULL,
  `seats` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_rest_tables`
--

INSERT INTO `core_rest_tables` (`id`, `name`, `status`, `photo`, `seats`) VALUES
(1, 'Table 1', 0, '1.png', 6),
(2, 'Table 2', 1, '2.jpeg', 5),
(3, 'Table 3', 2, '3.jpg', 2),
(4, 'Table 4', 1, '4.jpeg', 4),
(5, 'Table 5', 1, '5.jpg', 2),
(6, 'Table 6', 1, '6.jpg', 12),
(7, 'Table 7', 1, '10-jpg.jpg', 10),
(8, 'Guest 1', 1, '6-png.png', 5);

-- --------------------------------------------------------

--
-- Table structure for table `core_roles`
--

CREATE TABLE `core_roles` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_roles`
--

INSERT INTO `core_roles` (`id`, `name`, `updated_at`, `created_at`) VALUES
(1, 'Admin', '2024-03-02 04:59:14', '2024-03-02 04:59:14'),
(2, 'Manager', '2024-02-28 12:10:59', '2024-02-28 06:10:59'),
(4, 'Guest', '2024-03-07 10:24:21', '2024-03-07 04:24:21'),
(5, 'Demo1', '2024-03-07 12:25:34', '2024-06-09 06:38:21'),
(12, 'Dem34', '2024-06-11 05:29:21', '2024-06-10 23:29:21');

-- --------------------------------------------------------

--
-- Table structure for table `core_rooms`
--

CREATE TABLE `core_rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `code` varchar(45) NOT NULL,
  `room_type_id` int(10) UNSIGNED NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_rooms`
--

INSERT INTO `core_rooms` (`id`, `name`, `code`, `room_type_id`, `price`) VALUES
(1, 'Double South Side 200sft 2nd floor- 322', '322', 2, 2000),
(2, 'Single 100sft non ac -324', '324', 1, 500);

-- --------------------------------------------------------

--
-- Table structure for table `core_room_types`
--

CREATE TABLE `core_room_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_room_types`
--

INSERT INTO `core_room_types` (`id`, `name`) VALUES
(1, 'Single'),
(2, 'Double');

-- --------------------------------------------------------

--
-- Table structure for table `core_round63`
--

CREATE TABLE `core_round63` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `roll` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_round63`
--

INSERT INTO `core_round63` (`id`, `name`, `contact`, `email`, `roll`) VALUES
(1, 'Naiyem', '01515618932', 'mdnaiyem@gmail.com', '1286770');

-- --------------------------------------------------------

--
-- Table structure for table `core_sections`
--

CREATE TABLE `core_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_sections`
--

INSERT INTO `core_sections` (`id`, `name`) VALUES
(1, 'Electronices'),
(2, 'Clothings'),
(3, 'Food and Beverages'),
(4, 'Health & Beauty'),
(5, 'Sports & Leisure'),
(6, 'Books & Entertainments');

-- --------------------------------------------------------

--
-- Table structure for table `core_sessions`
--

CREATE TABLE `core_sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_shippers`
--

CREATE TABLE `core_shippers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `contact_person` varchar(45) NOT NULL,
  `contact_no` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_shippers`
--

INSERT INTO `core_shippers` (`id`, `name`, `contact_person`, `contact_no`) VALUES
(1, 'Sundarban Courier ', 'Mr. Jahid', '343243242'),
(2, 'SA Poribahan', '+58245', '+8801245457854');

-- --------------------------------------------------------

--
-- Table structure for table `core_site_albums`
--

CREATE TABLE `core_site_albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_albums`
--

INSERT INTO `core_site_albums` (`id`, `name`, `created_at`, `description`, `photo`) VALUES
(1, 'Main Slider', NULL, 'Na', NULL),
(2, 'INDUSTRY SECTORS', NULL, 'We cover different industry sectors, from food and beverage, chemical, retail, durable goods and more. Check the full list.', NULL),
(3, 'Screenshot - Home Page', NULL, NULL, NULL),
(4, 'POS', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_site_album_details`
--

CREATE TABLE `core_site_album_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_album_id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(245) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `inactive` tinyint(3) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_album_details`
--

INSERT INTO `core_site_album_details` (`id`, `site_album_id`, `photo`, `name`, `description`, `inactive`) VALUES
(1, 1, './uploads/posts/1548841158.jpg', 'Intellect Software Ltd', 'Leading Software Company', 0),
(2, 1, '1548843065.jpg', 'Intellect Cloud POS', 'Intellect Enterprise Resource Planning (ERP) is business management&#8230;', 0),
(3, 1, '1548841332.jpg', 'Education and Training', 'For many people, gaining new skills through accredited&#8230;', 0),
(4, 2, '1548867137.svg', 'Food and Beverage', NULL, 0),
(5, 2, '1548867301.svg', 'Retail Goods', NULL, 0),
(6, 2, '1548867424.svg', 'Energy, Oil and Gas', NULL, 0),
(7, 2, '1548867363.svg', 'Chemical Goods', NULL, 0),
(8, 2, '1548867453.svg', 'Consumer Packaged Goods', NULL, 0),
(9, 3, '15488786820.jpg', 'Screenshot1', NULL, 0),
(10, 3, '15488786821.jpg', 'Screenshot2', NULL, 0),
(11, 4, '15488797600.jpg', 'POS1', NULL, 0),
(12, 4, '15488797601.jpg', 'POS2', NULL, 0),
(13, 4, '15488797602.jpg', 'POS3', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_site_attributes`
--

CREATE TABLE `core_site_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(245) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_site_clients`
--

CREATE TABLE `core_site_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `photo` varchar(300) DEFAULT NULL,
  `review` text DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_clients`
--

INSERT INTO `core_site_clients` (`id`, `name`, `photo`, `review`, `website`) VALUES
(1, 'Karnaphuli Group', '1548871087-png.png', 'Na', 'https://www.karnaphuli.com/'),
(2, 'Doreen', '1548871127-png.png', 'Na', 'https://doreen.com/');

-- --------------------------------------------------------

--
-- Table structure for table `core_site_menus`
--

CREATE TABLE `core_site_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `link` varchar(45) NOT NULL,
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_menus`
--

INSERT INTO `core_site_menus` (`id`, `name`, `link`, `has_child`) VALUES
(1, 'Home', '/', 0),
(2, 'Software', './software.html', 1),
(3, 'Service', './service.html', 0),
(4, 'Partner', './partner.html', 0),
(5, 'Client', './client.html', 0),
(6, 'About', './about.html', 0),
(7, 'Contact', '/contact.html', 0),
(8, 'Blog', './blog.html', 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_site_menu_subs`
--

CREATE TABLE `core_site_menu_subs` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_menu_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `link` varchar(45) NOT NULL,
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_menu_subs`
--

INSERT INTO `core_site_menu_subs` (`id`, `site_menu_id`, `name`, `link`, `has_child`) VALUES
(1, 2, 'POS ERP', 'pos-erp', 0),
(2, 2, 'ERP-Garments', 'garment-erp', 0),
(3, 2, 'ERP-General Insurance', 'general-insurance-erp', 0),
(4, 2, 'ERP-Education', 'education-erp', 0),
(5, 2, 'ERP Manufacturing', 'manufacturing-erp', 0),
(6, 2, 'ERP Hospital', 'hospital-erp', 0),
(7, 2, 'ERP Texttile', 'texttile-erp', 0),
(8, 2, 'ERP Real Estate', 'real-estate-erp', 0),
(9, 8, 'Web publising', 'webpublishing', 0),
(10, 8, 'Javascript Library', 'javascript-library', 0),
(11, 8, 'Server Side', 'server-side', 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_site_menu_sub_details`
--

CREATE TABLE `core_site_menu_sub_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `link` varchar(45) NOT NULL,
  `site_menu_sub_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_site_pages`
--

CREATE TABLE `core_site_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `link` varchar(45) DEFAULT NULL,
  `inactive` tinyint(3) UNSIGNED DEFAULT 0,
  `slug` varchar(145) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_pages`
--

INSERT INTO `core_site_pages` (`id`, `name`, `link`, `inactive`, `slug`, `description`, `photo`) VALUES
(1, 'POS ERP', 'http', 0, NULL, 'Integrated solution from production to point of sale for any retials business including\r\n                                supershop, clothing, pharmacy, restaurant/food, electronics, library, jewellery,\r\n                                furniture, tiles &amp; sanitary etc', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_site_posts`
--

CREATE TABLE `core_site_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `slug` varchar(245) DEFAULT NULL,
  `site_album_id` int(10) UNSIGNED DEFAULT NULL,
  `inactive` tinyint(3) UNSIGNED DEFAULT 0,
  `post_category_id` int(10) UNSIGNED DEFAULT NULL,
  `post_page_id` int(10) UNSIGNED DEFAULT NULL,
  `photo` varchar(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_posts`
--

INSERT INTO `core_site_posts` (`id`, `name`, `description`, `slug`, `site_album_id`, `inactive`, `post_category_id`, `post_page_id`, `photo`) VALUES
(1, 'Explain why its best', 'There are several kind of information we have for why we are best. Some the best features\r\n                                we provide for you that are the world wide challenging features. Some best features are\r\n                                given below.', NULL, 3, 0, 1, 1, NULL),
(2, 'Great way to Include with POS', 'With integrated POS software, the following business software is listed together.', NULL, 4, 0, 1, 1, NULL),
(3, 'ERP - POS', 'Integrated solution from production to point of sale for any retials business including\r\n                                supershop, clothing, pharmacy, restaurant/food, electronics, library, jewellery,\r\n                                furniture, tiles &amp; sanitary etc', NULL, 5, 0, 1, 1, '1548843653.jpg'),
(4, 'Intellect Cloud POS Software - features', 'Responsive & optimized for mobile devices. Completely without coding skills!', NULL, NULL, 0, NULL, NULL, '15488780820.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `core_site_post_categories`
--

CREATE TABLE `core_site_post_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_post_categories`
--

INSERT INTO `core_site_post_categories` (`id`, `name`) VALUES
(1, 'Business'),
(2, 'Software');

-- --------------------------------------------------------

--
-- Table structure for table `core_site_post_details`
--

CREATE TABLE `core_site_post_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_post_id` int(10) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(245) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_post_details`
--

INSERT INTO `core_site_post_details` (`id`, `site_post_id`, `description`, `photo`, `name`) VALUES
(1, 1, 'Product multi-dimensional measurement unit', NULL, NULL),
(2, 1, 'Convenience of buying and selling products according to batch / lot\r\n                                        number', NULL, NULL),
(3, 1, 'Advantages of Product Metrics', NULL, NULL),
(4, 1, 'Business data will never be lost or ', NULL, NULL),
(5, 1, 'Buying from multiple branches can be sold through the same software', NULL, NULL),
(6, 1, 'The software will never slow down, if the data is high or even from the remote\r\n                                        location.', NULL, NULL),
(7, 2, 'Accounting Management', NULL, NULL),
(8, 2, 'Payroll Management', NULL, NULL),
(9, 2, ' Inventory Management', NULL, NULL),
(10, 2, 'Purchase Management', NULL, NULL),
(11, 2, 'Production & Distribution Management', NULL, NULL),
(12, 2, ' Human Resource Management', NULL, NULL),
(13, 2, ' Customer Relationship Management', NULL, NULL),
(14, 2, 'Sales Management', NULL, NULL),
(15, 2, 'Barcode Creator', NULL, NULL),
(16, 2, 'Cloud Backup Server', NULL, NULL),
(17, 4, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos\r\n                                        himenaeos. Nulla nunc dui, tristique in semper vel.', NULL, 'Super Design Layout '),
(18, 4, 'Intellect Cloud pos software can be automated update after the release new\r\n                                        version of software. Update for the better performace and better userfriendly.', NULL, 'Regular Updates & Support'),
(19, 4, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos\r\n                                        himenaeos nulla nunc dui.', NULL, 'Responsive Web Design');

-- --------------------------------------------------------

--
-- Table structure for table `core_site_products`
--

CREATE TABLE `core_site_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `site_product_category_id` int(10) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(345) DEFAULT NULL,
  `regular_price` float DEFAULT NULL,
  `offer_price` float DEFAULT NULL,
  `inactive` tinyint(3) UNSIGNED DEFAULT NULL,
  `current_stock` float DEFAULT NULL,
  `site_product_uom_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(45) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_products`
--

INSERT INTO `core_site_products` (`id`, `name`, `site_product_category_id`, `description`, `photo`, `regular_price`, `offer_price`, `inactive`, `current_stock`, `site_product_uom_id`, `slug`, `icon`) VALUES
(1, 'POS ERP', 1, ' Integrated solution from production to point of sale for any retials business including supershop, clothing, pharmacy, restaurant/food, electronics, library, jewellery, furniture, tiles & sanitary etc', '1548843653.jpg', 0, 0, 0, 0, 1, 'pos-erp', ''),
(2, 'ERP - GARMENTS', 1, 'Intellect Garments ERP is one of the leading ERP solution provider, especially for Garments industries which is integrated with different modules that cover all the…', '1548855465.jpg', 0, 0, 0, 0, 1, 'garments-erp', NULL),
(3, 'ERP - GENERAL INSURANCE', 1, 'Our Insurance software so flexible that you will reach your business goals in no time. Stop struggling with legacy systems! Our intellect software will help…', '1548855650.jpg', 0, 0, 0, 0, 1, 'genaral-insurance-erp', NULL),
(4, 'ERP - EDUCATION', 1, 'Intellect education management software is used by teachers, students, and school/college/university administrators for organization and collaboration, and to facilitate learning. School software is', '1548856590.jpg', 0, 0, 0, 0, 1, 'education-erp', NULL),
(5, 'ERP - MANUFACTURING', 1, 'Intellect ERP gives a company an integrated real-time view of its core business processes such as production, order processing, and inventory management, tied together by…', '1548856850.jpg', 0, 0, 0, 0, 1, 'manufacturing-erp', NULL),
(6, 'ERP - HOSPITAL', 1, 'Intellect Hospital Management Software is a comprehensive and integrated hospital management software, designed to manage all aspects of hospital operations.(i.e. Outpatient and Inpatient management, Patient…', '1548857774.jpg', 0, 0, 0, 0, 1, 'hospital-erp', NULL),
(7, 'ERP - MERCHANDISING', 1, 'Merchandising, CONTROL Retail Management System and POS also takes care of Retail CRM, Inventory Management, online trading, Sales & Profit Analysis, Order Entry & Invoicing,…', '1548858095.jpg', 0, 0, 0, 0, 1, 'merchandising-erp', NULL),
(8, 'ERP - TEXTILE', 1, 'The Intellect ERP (enterprise resource planning) software solutions - seek to integrate the business processes involving eight critical areas in the textile production planning which…', '1548858372.jpg', 0, 0, 0, 0, 1, 'texttile-erp', NULL),
(9, 'ERP - REAL ESTATE', 1, 'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater', '1548858645.jpg', 0, 0, 0, 0, 1, 'real-estate-erp', NULL),
(10, 'Accounting', 2, 'Accounting Software includes general journal, creating bill & invoice, all financial reports (Trial Balance, Income Statement, Balance Sheet) and so on.', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M19 2H5c-1.103 0-2 .897-2 2v16c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zM5 20V4h14l.001 16H5z\"></path><path d=\"M7 12h2v2H7zm0 4h2v2H7zm4-4h2v2h-2zM7 6h10v4H7zm4 10h2v2h-2zm4-4h2v6h-2z\"></path>', 0, 0, 0, 0, 1, 'accounting', NULL),
(11, 'HR & Accounting', 2, 'Human Resource Management System includes person management, payroll, attendance, leave & holiday, shift & schedule, accounting and so on.', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M9.715 12c1.151 0 2-.849 2-2s-.849-2-2-2-2 .849-2 2 .848 2 2 2z\"></path><path d=\"M20 4H4c-1.103 0-2 .841-2 1.875v12.25C2 19.159 2.897 20 4 20h16c1.103 0 2-.841 2-1.875V5.875C22 4.841 21.103 4 20 4zm0 14-16-.011V6', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Diagnostic Application', 2, 'Diagnostic Application includes pharmacy management, radioloy reporting management, sample collection and reporting management and so on', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M15.794 11.09c.332-.263.648-.542.947-.84l.136-.142c.283-.293.552-.598.801-.919l.062-.075c.255-.335.486-.688.702-1.049l.128-.22c.205-.364.395-.737.559-1.123.02-.047.035-.095.055-.142.147-.361.274-.731.383-1.109.02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Doctors Prescription', 2, 'Doctors Prescription Application includes appointment scheduling, visit fee collection, create and print prescription and so on..', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M8.434 20.566c1.335 0 2.591-.52 3.535-1.464l7.134-7.133a5.008 5.008 0 0 0-.001-7.072 4.969 4.969 0 0 0-3.536-1.463c-1.335 0-2.59.52-3.534 1.464l-7.134 7.133a5.01 5.01 0 0 0-.001 7.072 4.971 4.971 0 0 0 3.537 1.46', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Asset Management', 2, 'Asset Management System includes asset and components, operation schedule, material & service requisition and so on.', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"m20.772 13.155-1.368-4.104A2.995 2.995 0 0 0 16.559 7H7.441a2.995 2.995 0 0 0-2.845 2.051l-1.368 4.104A2.001 2.001 0 0 0 2 15v3c0 .738.404 1.376 1 1.723V21a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-1h12v1a1 1 0 0 0 1 1h1a1 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Inventory Management', 2, 'Inventory Management System includes stock management, warehouse management, stock adjustment, requisition management, stock reporting and so on.', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M21.993 7.95a.96.96 0 0 0-.029-.214c-.007-.025-.021-.049-.03-.074-.021-.057-.04-.113-.07-.165-.016-.027-.038-.049-.057-.075-.032-.045-.063-.091-.102-.13-.023-.022-.053-.04-.078-.061-.039-.032-.075-.067-.12-.094-.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'RealTime Attendance System', 2, 'Biometric System Application includes registration with finger print and webcam device, Bio-Metric verification, real time data storage, system & security and so on.', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M5.962 17.674C7 19.331 7 20.567 7 22h2c0-1.521 0-3.244-1.343-5.389l-1.695 1.063zM16.504 3.387C13.977 1.91 7.55.926 4.281 4.305c-3.368 3.481-2.249 9.072.001 11.392.118.122.244.229.369.333.072.061.146.116.205.184l1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Project Management', 2, 'Project Management Application includes person management, task & team management, asset management, costing, reporting and so o', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M5 22h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2h-2a1 1 0 0 0-1-1H8a1 1 0 0 0-1 1H5c-1.103 0-2 .897-2 2v15c0 1.103.897 2 2 2zM5 5h2v2h10V5h2v15H5V5z\"></path><path d=\"m11 13.586-1.793-1.793-1.414 1.414L11 16.414l5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Logistics Management', 2, 'Logistics Management System includes procurement & delivery management, transportation & route management, storage of goods & transportation flow, navigation, billing and so on.', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M14.844 20H6.5C5.121 20 4 18.879 4 17.5S5.121 15 6.5 15h7c1.93 0 3.5-1.57 3.5-3.5S15.43 8 13.5 8H8.639a9.812 9.812 0 0 1-1.354 2H13.5c.827 0 1.5.673 1.5 1.5s-.673 1.5-1.5 1.5h-7C4.019 13 2 15.019 2 17.5S4.019 22 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'E-Commerce Solution', 2, 'E-Commerce Solution includes website, management of product, order, purchase, warehouse, customer, supplier, payment gateway and so on.', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M4 20h2V10a1 1 0 0 1 1-1h12V7a1 1 0 0 0-1-1h-3.051c-.252-2.244-2.139-4-4.449-4S6.303 3.756 6.051 6H3a1 1 0 0 0-1 1v11a2 2 0 0 0 2 2zm6.5-16c1.207 0 2.218.86 2.45 2h-4.9c.232-1.14 1.243-2 2.45-2z\"></path><path d=\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Visa Processing Software', 2, 'Our Visa Processing Software includes customer registration, deed and document management, visa & ticket processing step management, invoice & payment, status report and so on.', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M3 18h18v2H3zm18.509-9.473a1.61 1.61 0 0 0-2.036-1.019L15 9 7 6 5 7l6 4-4 2-4-2-1 1 4 4 14.547-5.455a1.611 1.611 0 0 0 .962-2.018z\"></path></svg>', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_site_product_categories`
--

CREATE TABLE `core_site_product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_product_categories`
--

INSERT INTO `core_site_product_categories` (`id`, `name`) VALUES
(1, 'ERP'),
(2, 'OTHER SOFTWARES');

-- --------------------------------------------------------

--
-- Table structure for table `core_site_product_uoms`
--

CREATE TABLE `core_site_product_uoms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_product_uoms`
--

INSERT INTO `core_site_product_uoms` (`id`, `name`) VALUES
(1, 'Piece');

-- --------------------------------------------------------

--
-- Table structure for table `core_site_routes`
--

CREATE TABLE `core_site_routes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `src` varchar(45) DEFAULT NULL,
  `inactive` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `site_menu_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_routes`
--

INSERT INTO `core_site_routes` (`id`, `name`, `src`, `inactive`, `site_menu_id`) VALUES
(1, 'pos-erp', 'views/pages/ERP-POS.php', 0, 2),
(2, 'garment-erp', 'views/pages/ERP-Garments.php', 0, 2),
(3, 'education-erp', 'views/pages/ERP-Education.php', 0, 2),
(4, 'general-insurance-erp', 'views/pages/ERP-General-Insurance.php', 0, 2),
(5, 'manufacturing-erp', 'views/pages/ERP-Manufacturing.php', 0, 2),
(6, 'hospital-erp', 'views/pages/ERP-Hospital.php', 0, 2),
(7, 'texttile-erp', 'views/pages/ERP-Textitle.php', 0, 2),
(8, 'real-estate-erp', 'views/pages/ERP-Real-Estate.php', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `core_site_services`
--

CREATE TABLE `core_site_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `regular_price` float DEFAULT 0,
  `offer_price` float DEFAULT 0,
  `icon` varchar(45) DEFAULT NULL,
  `inactive` tinyint(3) UNSIGNED DEFAULT 0,
  `photo` varchar(145) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_services`
--

INSERT INTO `core_site_services` (`id`, `name`, `category_id`, `description`, `regular_price`, `offer_price`, `icon`, `inactive`, `photo`) VALUES
(1, 'Software Quality Assurance', 1, 'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater', 0, 0, NULL, 0, '1548863121.png'),
(2, 'Software forensic', 1, 'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater', 0, 0, NULL, 0, '1548863180.png'),
(3, 'Database Migration', 1, 'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater', 0, 0, NULL, 0, '1548863362.png'),
(4, 'Setup Own Hosting', 1, 'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater', 0, 0, NULL, 0, '1548863484.png'),
(5, 'Cloud Backup Service', 1, 'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greate', 0, 0, NULL, 0, '1548862800.png'),
(6, 'Software Upgrade and Maintenance', 1, 'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater', 0, 0, NULL, 0, '1548863512.png'),
(7, 'Incredibly Responsive', 2, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel.', 0, 0, '<i class=\"fa fa-laptop v-icon\"></i>', 0, NULL),
(8, 'Fully Customizible', 2, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel.', 0, 0, '<i class=\"fa fa-leaf v-icon\"></i>', 0, NULL),
(9, 'Interactive Elements', 2, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel.', 0, 0, '<i class=\"fa fa-scissors v-icon\"></i>', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_site_service_categories`
--

CREATE TABLE `core_site_service_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_service_categories`
--

INSERT INTO `core_site_service_categories` (`id`, `name`) VALUES
(1, 'Software Enable Service');

-- --------------------------------------------------------

--
-- Table structure for table `core_status`
--

CREATE TABLE `core_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_status`
--

INSERT INTO `core_status` (`id`, `name`) VALUES
(1, 'Processing'),
(2, 'Shifted'),
(3, 'Delivered'),
(4, 'Invoiced');

-- --------------------------------------------------------

--
-- Table structure for table `core_stocks`
--

CREATE TABLE `core_stocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `qty` float NOT NULL,
  `transaction_type_id` int(10) UNSIGNED NOT NULL,
  `remark` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `warehouse_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_stocks`
--

INSERT INTO `core_stocks` (`id`, `product_id`, `qty`, `transaction_type_id`, `remark`, `created_at`, `warehouse_id`) VALUES
(47, 57, -10, 2, 'Sales Delivery', '0000-00-00 00:00:00', 0),
(48, 57, 100, 1, 'Build', '2025-04-24 05:15:27', 1),
(49, 57, -10, 2, 'Sales Delivery', '0000-00-00 00:00:00', 0),
(50, 57, -10, 2, 'Sales Delivery', '0000-00-00 00:00:00', 0),
(51, 57, -10, 2, 'Sales Delivery', '0000-00-00 00:00:00', 0),
(52, 57, -10, 2, 'Sales Delivery', '0000-00-00 00:00:00', 0),
(53, 57, -10, 2, 'Sales Delivery', '0000-00-00 00:00:00', 0),
(54, 57, -10, 2, 'Sales Delivery', '0000-00-00 00:00:00', 0),
(55, 57, -10, 2, 'Sales Delivery', '0000-00-00 00:00:00', 0),
(56, 57, -10, 2, 'Sales Delivery', '0000-00-00 00:00:00', 0),
(57, 57, -10, 2, 'Sales Delivery', '0000-00-00 00:00:00', 0),
(58, 57, -10, 2, 'Sales Delivery', '0000-00-00 00:00:00', 0),
(59, 57, -10, 2, 'Sales Delivery', '0000-00-00 00:00:00', 0),
(60, 57, -10, 2, 'Sales Delivery', '0000-00-00 00:00:00', 0),
(61, 57, 200, 1, 'Now Stock', '2025-04-24 05:58:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_stock_adjustments`
--

CREATE TABLE `core_stock_adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `adjustment_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(10) UNSIGNED NOT NULL,
  `remark` text NOT NULL,
  `adjustment_type_id` int(10) UNSIGNED NOT NULL,
  `werehouse_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_stock_adjustments`
--

INSERT INTO `core_stock_adjustments` (`id`, `adjustment_at`, `user_id`, `remark`, `adjustment_type_id`, `werehouse_id`) VALUES
(1, '2021-12-27 18:00:00', 1, 'ddd', 2, 1),
(2, '2021-12-27 18:00:00', 1, 'ddd', 2, 1),
(3, '2021-12-27 18:00:00', 1, 'ddddfd', 6, 1),
(4, '2021-12-27 18:00:00', 1, 'NA', 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `core_stock_adjustment_details`
--

CREATE TABLE `core_stock_adjustment_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `adjustment_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `qty` float NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_stock_adjustment_details`
--

INSERT INTO `core_stock_adjustment_details` (`id`, `adjustment_id`, `product_id`, `qty`, `price`) VALUES
(1, 2, 20, 5, 400),
(2, 3, 20, 50, 400),
(3, 4, 28, 70, 6650),
(4, 4, 20, 30, 300);

-- --------------------------------------------------------

--
-- Table structure for table `core_stock_adjustment_types`
--

CREATE TABLE `core_stock_adjustment_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `factor` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_stock_adjustment_types`
--

INSERT INTO `core_stock_adjustment_types` (`id`, `name`, `factor`) VALUES
(1, 'Is Outdated', -1),
(2, 'Is Damaged', -1),
(3, 'Material Missing', -1),
(4, 'Product Is Obsolete', -1),
(5, 'Existing Inventory', 1),
(6, 'Fixed/Found Inventory', 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_students`
--

CREATE TABLE `core_students` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `fathers_name` varchar(45) NOT NULL,
  `mothers_name` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_students`
--

INSERT INTO `core_students` (`id`, `name`, `fathers_name`, `mothers_name`, `dob`, `contact_no`, `address`, `photo`) VALUES
(1, 'Mahedi Hassan', 'Abdur Rahman', 'Amena Akter', '2024-01-19', '', 'Rampura ', '1.png');

-- --------------------------------------------------------

--
-- Table structure for table `core_suppliers`
--

CREATE TABLE `core_suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `photo` varchar(145) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_suppliers`
--

INSERT INTO `core_suppliers` (`id`, `name`, `mobile`, `email`, `photo`) VALUES
(1, 'Md. Shahin', '56879898', 'shahin@yahoo.com', '1.png');

-- --------------------------------------------------------

--
-- Table structure for table `core_tailor_dresses`
--

CREATE TABLE `core_tailor_dresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_tailor_dresses`
--

INSERT INTO `core_tailor_dresses` (`id`, `name`, `price`) VALUES
(1, 'Shirt', 1000),
(2, 'Kamiz', 1200),
(3, 'Pants', 1100),
(4, 'Borka', 2500),
(5, 'Panjabi', 1300);

-- --------------------------------------------------------

--
-- Table structure for table `core_tailor_dress_parameters`
--

CREATE TABLE `core_tailor_dress_parameters` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `dress_id` int(10) UNSIGNED NOT NULL,
  `default_size` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_tailor_dress_parameters`
--

INSERT INTO `core_tailor_dress_parameters` (`id`, `name`, `dress_id`, `default_size`) VALUES
(1, 'Chest', 1, NULL),
(2, 'Waist', 1, NULL),
(3, 'Seat', 1, NULL),
(4, 'Bicep', 1, NULL),
(5, 'Shirt Length', 1, NULL),
(6, 'Shoulder Width', 1, NULL),
(7, 'Sleeve Length', 1, NULL),
(8, 'Cuff Circumference', 1, NULL),
(9, 'Collar Size', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_tailor_orders`
--

CREATE TABLE `core_tailor_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(20) NOT NULL,
  `paid_amount` double DEFAULT NULL,
  `order_datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delivery_datetime` datetime NOT NULL,
  `order_total` double DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `discount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_tailor_orders`
--

INSERT INTO `core_tailor_orders` (`id`, `customer_name`, `paid_amount`, `order_datetime`, `delivery_datetime`, `order_total`, `shipping_address`, `remark`, `mobile`, `discount`) VALUES
(1, 'Jahidul Islam', 500, '0000-00-00 00:00:00', '2024-01-20 00:00:00', 950, 'Rampura', '', '3434343234', 50);

-- --------------------------------------------------------

--
-- Table structure for table `core_tailor_order_details`
--

CREATE TABLE `core_tailor_order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `dress_id` int(10) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `qty` double NOT NULL,
  `discount` double NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_tailor_order_details`
--

INSERT INTO `core_tailor_order_details` (`id`, `dress_id`, `price`, `qty`, `discount`, `order_id`) VALUES
(1, 1, 1000, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_tailor_order_measurements`
--

CREATE TABLE `core_tailor_order_measurements` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `measurement_id` int(10) UNSIGNED NOT NULL,
  `size` varchar(10) NOT NULL,
  `uom_id` int(10) UNSIGNED NOT NULL,
  `dress_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_tailor_order_measurements`
--

INSERT INTO `core_tailor_order_measurements` (`id`, `order_id`, `measurement_id`, `size`, `uom_id`, `dress_id`) VALUES
(1, 1, 1, '34', 1, 1),
(2, 1, 2, '33', 1, 1),
(3, 1, 5, '22', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_tailor_uoms`
--

CREATE TABLE `core_tailor_uoms` (
  `id` int(10) UNSIGNED NOT NULL,
  `abbr` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `inactive` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_tailor_uoms`
--

INSERT INTO `core_tailor_uoms` (`id`, `abbr`, `name`, `inactive`) VALUES
(1, 'inc', 'Inch', 0),
(2, 'ft', 'Foot', 0),
(3, 'yd', 'yard', 0),
(4, 'piece', 'piece', 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_thanas`
--

CREATE TABLE `core_thanas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_thanas`
--

INSERT INTO `core_thanas` (`id`, `name`, `district_id`) VALUES
(1, 'Chatkhil', 2),
(2, 'Ramgonj', 2),
(3, 'Mijdi Sadar', 2),
(4, 'Begomganj', 2);

-- --------------------------------------------------------

--
-- Table structure for table `core_transaction_types`
--

CREATE TABLE `core_transaction_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_transaction_types`
--

INSERT INTO `core_transaction_types` (`id`, `name`) VALUES
(1, 'Finished Good'),
(2, 'Sales Return'),
(3, 'Purchase RM'),
(4, 'Purchase Return'),
(5, 'Positive Stock Adjustment'),
(6, 'Negative Stock Adjustment');

-- --------------------------------------------------------

--
-- Table structure for table `core_uoms`
--

CREATE TABLE `core_uoms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_uoms`
--

INSERT INTO `core_uoms` (`id`, `name`) VALUES
(1, 'Piece'),
(2, 'Kg'),
(3, 'Pack'),
(4, 'Litter'),
(5, 'Gram'),
(6, 'Ton');

-- --------------------------------------------------------

--
-- Table structure for table `core_users`
--

CREATE TABLE `core_users` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `role_id` int(10) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `photo` varchar(50) DEFAULT NULL,
  `verify_code` varchar(50) DEFAULT NULL,
  `inactive` tinyint(1) UNSIGNED DEFAULT 0,
  `mobile` varchar(50) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `remember_token` varchar(145) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_users`
--

INSERT INTO `core_users` (`id`, `name`, `role_id`, `password`, `email`, `full_name`, `created_at`, `photo`, `verify_code`, `inactive`, `mobile`, `updated_at`, `ip`, `email_verified_at`, `remember_token`) VALUES
(191, 'Dola', 1, '$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG', 'samdola81@gmail.com', 'Samsunnahar', '2025-01-18 12:36:54', NULL, NULL, 0, '01832482305', NULL, '192.168.150.38', NULL, NULL),
(192, 'samira', 1, '$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG', 'samira@gmail.com', 'Samira Akter', '2025-01-18 12:36:54', NULL, NULL, 0, '01881432313', NULL, '192.168.150.59', NULL, NULL),
(194, 'dibbo', 1, '$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG', 'jkp.jakaria@gmail.com', 'jkp', '2025-01-18 12:36:54', NULL, NULL, 0, '01642527454', NULL, '192.168.150.47', NULL, NULL),
(196, 'akhi', 1, '$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG', 'akhi26713@gmail.cm', 'Aminur Rahman', '2025-01-18 12:36:54', NULL, NULL, 0, '01946357571', NULL, '192.168.150.49', NULL, NULL),
(197, 'tasmin', 1, '$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG', 'tanim@gmail.com', 'Rifat Ahammed Tanim', '2025-01-18 12:36:54', NULL, NULL, 0, '01900000000', NULL, '192.168.150.50', NULL, NULL),
(199, 'MD. HAFIJUL ISLAM', 1, '$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG', 'imdhafijul453@gmail.com', 'Md.Hafijul Islam', '2025-01-18 12:36:54', NULL, NULL, 0, '01755747048', NULL, '192.168.150.55', NULL, NULL),
(200, 'kamruzzaman', 1, '$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG', 'olba@gmail.com', 'Javed ', '2025-01-18 12:36:54', NULL, NULL, 0, '01869546555', NULL, '192.168.150.22', NULL, NULL),
(201, 'Tasmin Jahan', 1, '$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG', 'Tasminjahan875@gmail.com', 'Tasmin Jahan', '2025-01-18 12:36:54', NULL, NULL, 0, '01623578437', NULL, '192.168.150.50', NULL, NULL),
(204, 'sabbir', 1, '$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG', 'sabbir.001@outlook.com', 'Sabbir Ahmed', '2025-01-18 12:36:54', NULL, NULL, 0, '01752485143', NULL, '192.168.150.53', NULL, NULL),
(206, 'jahid', 1, '$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG', 'jahid1@yahoo.com', 'Jahidul Islam', '2024-12-19 12:27:25', NULL, NULL, 0, NULL, '2024-07-04 05:52:52', '::1', NULL, NULL),
(207, 'admin', 1, '$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG', 'towhid1@outlook.com', 'Towhidul Islam', '2024-12-19 12:25:39', NULL, NULL, 0, NULL, '2024-07-04 06:03:13', '::1', NULL, NULL),
(208, 'didar', 1, '$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG', 'mddidar199911@gmail.com', 'Didar', '2025-01-18 12:36:54', NULL, NULL, 0, '01315451430', NULL, '192.168.150.52', NULL, NULL),
(209, 'alifa', 1, '$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG', 'alifa@yahoo.com', 'Alifa', '2025-01-18 12:36:54', NULL, NULL, 0, '01758917270', NULL, '192.168.150.57', NULL, NULL),
(210, 'hasan', 1, '$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG', 'hasanmd993@gmail.com', 'Md Hasan', '2025-01-18 11:48:36', NULL, NULL, 0, '01822304694', NULL, '192.168.150.7', NULL, NULL),
(211, 'Hamid', 1, '$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG', 'hamidyahoo22@gmail.com', ' Abdul Hamid', '2025-01-18 12:36:54', NULL, NULL, 0, '01764577191', NULL, '192.168.150.47', NULL, NULL),
(212, 'anayet', 1, '$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG', 'anayetmd2018@gmail.com', 'Md. Anayet Hossain', '2025-01-18 12:36:54', NULL, NULL, 0, '01622737936', NULL, '192.168.150.47', NULL, NULL),
(213, 'azmir', 1, '$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG', 'azmir@yahoo.com', 'Azmir', '2025-01-18 12:36:54', NULL, NULL, 0, '3432432', NULL, '192.168.150.47', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_users0`
--

CREATE TABLE `core_users0` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_users0`
--

INSERT INTO `core_users0` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'jahid1@yahoo.com', NULL, '$2y$10$02LIGz04kyyFni4VVy619ehpI4JmYcDu9TGziPZwvSOxquyb.kFzC', NULL, '2024-06-11 22:46:24', '2024-06-11 22:46:24');

-- --------------------------------------------------------

--
-- Table structure for table `core_user_deposits`
--

CREATE TABLE `core_user_deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `transaction_at` datetime DEFAULT NULL,
  `note` varchar(45) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_user_deposits`
--

INSERT INTO `core_user_deposits` (`id`, `user_id`, `amount`, `created_at`, `transaction_at`, `note`, `created_by`) VALUES
(1, 158, 100, '2024-04-04 05:22:32', '2024-04-04 00:00:00', 'NA', 127),
(2, 186, 10000, '2024-04-04 05:22:39', '1970-01-01 06:00:00', '', 186),
(3, 160, -5e17, '2024-04-04 05:23:50', '1970-01-01 06:00:00', '', 186),
(4, 194, 1009, '2024-04-04 05:44:18', '1970-01-01 06:00:00', 'NA', 194),
(5, 197, 10000, '2024-04-04 05:56:20', '1970-01-01 06:00:00', '', 197),
(6, 199, 1, '2024-04-04 05:56:29', '1970-01-01 06:00:00', 'Na', 199),
(7, 196, 1000, '2024-04-04 05:56:49', '1970-01-01 06:00:00', '', 196),
(8, 197, -1, '2024-04-04 05:57:17', '1970-01-01 06:00:00', '', 197),
(9, 196, 150, '2024-04-04 05:57:31', '1970-01-01 06:00:00', '', 127),
(10, 203, 5000, '2024-04-04 05:57:52', '2024-04-04 00:00:00', 'Eid Gift', 203),
(11, 204, 0, '2024-04-04 05:58:09', '2024-04-04 00:00:00', 'xero_xero', 91),
(12, 200, 9999, '2024-04-04 05:58:26', '1970-01-01 06:00:00', '', 200),
(13, 199, 4000, '2024-04-15 04:48:13', '2024-04-15 00:00:00', '', 127),
(14, 201, 3000, '2024-04-15 04:48:32', '1970-01-01 06:00:00', '', 127),
(15, 191, 500, '2024-12-19 12:42:46', '1970-01-01 06:00:00', '', 207),
(16, 192, 500, '2024-12-19 12:43:01', '1970-01-01 06:00:00', '', 207),
(17, 191, 100, '2024-12-19 12:43:52', '1970-01-01 06:00:00', '', 207),
(18, 213, 2000, '2024-12-19 12:44:52', '1970-01-01 06:00:00', '', 207),
(19, 208, 3555, '2024-12-19 12:45:04', '1970-01-01 06:00:00', '', 207),
(20, 204, 344, '2024-12-19 12:45:11', '1970-01-01 06:00:00', '', 207),
(21, 206, 456, '2024-12-19 12:45:16', '1970-01-01 06:00:00', '', 207),
(22, 207, 4555, '2024-12-19 12:45:21', '1970-01-01 06:00:00', '', 207),
(23, 209, 456, '2024-12-19 12:45:26', '1970-01-01 06:00:00', '', 207),
(24, 210, 455, '2024-12-19 12:45:34', '1970-01-01 06:00:00', '', 207),
(25, 211, 4322, '2024-12-19 12:45:39', '1970-01-01 06:00:00', '', 207),
(26, 212, 3556, '2024-12-19 12:45:49', '1970-01-01 06:00:00', '', 207);

-- --------------------------------------------------------

--
-- Table structure for table `core_vendors`
--

CREATE TABLE `core_vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `photo` varchar(45) NOT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_vendors`
--

INSERT INTO `core_vendors` (`id`, `name`, `mobile`, `photo`, `address`) VALUES
(1, 'Abdur Rahman', '23432432', '1.jpeg', 'Testsa fsa fsdaf'),
(2, 'Jahidul Islam', '23432432342', '2.png', 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `core_warehouses`
--

CREATE TABLE `core_warehouses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_warehouses`
--

INSERT INTO `core_warehouses` (`id`, `name`, `city`, `contact`) VALUES
(1, 'Tajgon', 'Dhaka', '4543534534'),
(2, 'Rangpur', 'Rangpur', '324242342'),
(3, 'Badda', 'Rampura', '3434334324');

-- --------------------------------------------------------

--
-- Table structure for table `home_content`
--

CREATE TABLE `home_content` (
  `id` int(10) NOT NULL,
  `content_section` varchar(255) NOT NULL,
  `first_title` varchar(255) NOT NULL,
  `second_title` varchar(255) NOT NULL,
  `description` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `home_content`
--

INSERT INTO `home_content` (`id`, `content_section`, `first_title`, `second_title`, `description`) VALUES
(2, 'About Downloader', 'sscczxc', 'adsaczxczxc', 'dsnadasnckc aksdjasdklj asdljdls asldjsdl '),
(3, 'How to Download', 'dsds', 'dsds', '					\r\ndsds');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `contact` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`id`, `name`, `contact`) VALUES
(2, 'ISL', '2345454'),
(3, 'IDB', '9390033'),
(5, 'APCL', '23432432');

--
-- Triggers `manufacturer`
--
DELIMITER $$
CREATE TRIGGER `ad_manufacturer` AFTER DELETE ON `manufacturer` FOR EACH ROW begin
  delete from product where manufacturer_id=old.id;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(21, 'Super Mario: The Timeless Classic', 'Super Mario is an iconic character and one of the most beloved video game franchises of all time. Created by Nintendo&#039;s Shigeru Miyamoto, the game was first released in 1985 and has since become a cultural phenomenon. Its popularity has endured for almost four decades, and it continues to captivate audiences of all ages.\r\n\r\nThe game&#039;s protagonist, Mario, is a plumber who embarks on a quest to rescue Princess Toadstool from the evil Bowser. Along the way, he must navigate through a series of obstacles and enemies, collecting coins and power-ups to help him on his journey. The game&#039;s simple yet challenging gameplay has made it a favorite among gamers of all ages.\r\n\r\nOne of the game&#039;s defining features is its colorful and vibrant world, which is filled with memorable characters and locations. From the Mushroom Kingdom to Bowser&#039;s Castle, each level is distinct and offers unique challenges. The game&#039;s soundtrack is also iconic, with catchy tunes that are instantly recognizable to anyone who has played the game.\r\n\r\nSuper Mario&#039;s success can be attributed to its accessibility and universal appeal. The game is easy to pick up and play, but it also offers a level of challenge that keeps players engaged. The character of Mario himself is also a major factor in the game&#039;s popularity. With his signature red hat and mustache, he has become one of the most recognizable figures in pop culture.\r\n\r\nOver the years, Super Mario has spawned numerous sequels and spin-offs, including Super Mario Bros. 2, Super Mario Bros. 3, Super Mario World, and Super Mario 64. Each game has introduced new elements and mechanics while still maintaining the core gameplay that made the original so successful.\r\n\r\nIn addition to its impact on the video game industry, Super Mario has also had a significant cultural impact. The character has appeared in countless forms of media, including cartoons, movies, and even theme parks. The game&#039;s influence can be seen in everything from fashion to music, and it has inspired countless other video games over the years.\r\n\r\nIn conclusion, Super Mario is a timeless classic that has earned its place in the pantheon of video game greats. Its simple yet challenging gameplay, vibrant world, and iconic characters have captured the hearts of gamers around the world. It&#039;s hard to imagine a world without Super Mario, and we can only hope that the franchise will continue to delight and inspire new generations of gamers for many years to come.', '1677835502blog102.jpg', '2023-03-03 09:25:02', 7, 5, 0),
(22, 'AI Robots: The Current State of Progress', 'Artificial Intelligence (AI) has come a long way in recent years, and nowhere is this more evident than in the field of robotics. Advances in machine learning and computer vision have enabled robots to perform increasingly complex tasks, from manufacturing and assembly to healthcare and hospitality. In this blog post, we&#039;ll take a look at some of the current progress in AI robots and explore the potential applications of this technology.\r\n\r\n    Manufacturing and Assembly\r\n\r\nOne of the most well-established applications of AI robots is in manufacturing and assembly. Robots can perform repetitive tasks with speed and precision, improving efficiency and reducing errors. AI-powered robots can also adapt to changes in the production line, making them more versatile than traditional industrial robots.\r\n\r\n    Healthcare\r\n\r\nAI robots are also making inroads in the healthcare industry. Robots can assist doctors and nurses in a variety of tasks, from patient monitoring to surgery. They can also help patients with mobility issues, providing assistance with tasks such as getting out of bed or moving around the hospital.\r\n\r\n    Hospitality\r\n\r\nAnother area where AI robots are making an impact is in hospitality. Robots can be used to greet guests, provide information about the hotel, and even deliver room service. They can also perform housekeeping tasks, such as cleaning and restocking rooms.\r\n\r\n    Agriculture\r\n\r\nAI robots are also being used in agriculture, where they can perform tasks such as planting and harvesting crops. They can also be used to monitor crop health and identify areas that require attention.\r\n\r\n    Education\r\n\r\nAI robots are also being used in education. Robots can be used to provide personalized learning experiences for students, adapting to their individual needs and preferences. They can also be used to teach coding and other STEM subjects.\r\n\r\nIn conclusion, AI robots have come a long way in recent years, and their potential applications are vast. From manufacturing and assembly to healthcare and hospitality, robots are already making an impact in a variety of industries. As machine learning and computer vision continue to advance, we can expect to see even more sophisticated AI robots in the years to come, helping to improve efficiency, safety, and quality of life for people around the world.', '1677835638blog15.jpg', '2023-03-03 09:27:18', 8, 6, 0),
(23, 'Advancements in VR: The Future of Immersive Gaming', 'One of the most popular and well-known applications of VR is in gaming. VR games provide a highly immersive experience, transporting players to a virtual world where they can interact with their surroundings in a way that traditional video games can&#039;t match. Here are some ways that VR is advancing the gaming industry:\r\n\r\n    Immersive gameplay\r\n\r\nVR gaming provides players with a level of immersion that traditional games cannot match. With VR, players can be fully immersed in a virtual world and interact with it in a way that feels natural. They can use their hands to pick up objects, explore new environments, and experience gameplay that is unlike anything else.\r\n\r\n    Unique game mechanics\r\n\r\nVR gaming allows for unique game mechanics that can&#039;t be replicated in traditional video games. For example, in Beat Saber, players use motion controllers to slash and dodge incoming blocks to the beat of a song. The sense of physically moving to dodge obstacles or interacting with objects in a virtual world creates an incredibly unique gaming experience.\r\n\r\n    Realistic environments\r\n\r\nVR allows game developers to create highly detailed and realistic environments, immersing players in a world that feels alive. The use of 3D audio and realistic lighting adds to the sense of immersion, creating an experience that feels like a real-world environment.\r\n\r\n    Multiplayer capabilities\r\n\r\nVR gaming also has the potential to revolutionize multiplayer gaming. VR headsets allow for full-body tracking, meaning that players can interact with each other in a virtual space. This opens up possibilities for multiplayer experiences that feel like real-life interactions.\r\n\r\n    New ways to tell stories\r\n\r\nVR also provides new ways to tell stories. For example, games like The Walking Dead: Saints &amp; Sinners use VR to create a highly immersive narrative experience. By placing players in a virtual world, they can become fully invested in the story, interacting with the environment and characters in a way that traditional games can&#039;t replicate.\r\n\r\nIn conclusion, VR is advancing the gaming industry by providing players with a highly immersive and unique experience. With the continued development of hardware and software, we can expect to see even more exciting VR games in the future.', '1677835859blog20.jpg', '2023-03-03 09:30:59', 7, 7, 0),
(24, 'Takoyaki: A Delicious Japanese Street Food', 'Takoyaki is a popular Japanese street food that has become increasingly popular around the world. These savory balls of batter are typically filled with diced octopus and other ingredients, and are cooked on a special griddle until golden brown. In this blog post, we&#039;ll explore the history and ingredients of takoyaki, and explain how to make this delicious snack at home.\r\n\r\nHistory of Takoyaki\r\n\r\nTakoyaki originated in Osaka, Japan in the 1930s. A street vendor named Tomekichi Endo created the dish by combining bits of octopus and other ingredients with batter and cooking them in a specialized iron griddle. The dish quickly became popular, and today takoyaki is sold in food stalls and restaurants all over Japan.\r\n\r\nIngredients of Takoyaki\r\n\r\nTakoyaki is typically made with a batter consisting of flour, eggs, dashi (Japanese fish stock), and water. Other ingredients that can be added to the batter include green onion, pickled ginger, and tenkasu (tempura scraps). The filling of the takoyaki is usually diced octopus, but other seafood or meat can also be used.\r\n\r\nMaking Takoyaki at Home\r\n\r\nMaking takoyaki at home requires a special takoyaki griddle, which can be purchased at Japanese specialty stores or online. Here is a basic recipe for making takoyaki at home:\r\n\r\nIngredients:\r\n\r\n    1 cup flour\r\n    1 egg\r\n    1 tsp. baking powder\r\n    1 tsp. soy sauce\r\n    1 tsp. sugar\r\n    1 1/2 cups dashi (Japanese fish stock)\r\n    1/2 cup diced octopus\r\n    1/4 cup chopped green onion\r\n    1/4 cup tenkasu (tempura scraps)\r\n    Takoyaki sauce\r\n    Mayonnaise\r\n    Aonori (dried seaweed flakes)\r\n    Katsuobushi (dried bonito flakes)\r\n\r\nInstructions:\r\n\r\n    In a bowl, whisk together the flour, egg, baking powder, soy sauce, and sugar.\r\n    Slowly add the dashi, whisking until the batter is smooth.\r\n    Heat the takoyaki griddle over medium-high heat, and lightly oil the molds.\r\n    Fill each mold with batter until it is about 80% full.\r\n    Add a few pieces of diced octopus, green onion, and tenkasu to each mold.\r\n    Use a skewer to flip the takoyaki as it cooks, until it is golden brown on all sides.\r\n    Remove the takoyaki from the griddle, and top with takoyaki sauce, mayonnaise, aonori, and katsuobushi.\r\n\r\nIn conclusion, takoyaki is a delicious Japanese street food that has become a favorite of people all around the world. While it may seem intimidating to make at home, with a little practice and a takoyaki griddle, anyone can enjoy this savory snack in the comfort of their own home.\r\n', '1677836026blog13.jpg', '2023-03-03 09:33:46', 1, 8, 0),
(25, 'Artificial Intelligence and Chess', 'Artificial Intelligence and Chess: A Match Made in Heaven\r\n\r\nArtificial intelligence (AI) has made significant strides in the past few decades and has been increasingly utilized in various fields, including gaming. One game that has been a favorite among AI researchers is chess, due to its complexity and the challenge it presents.\r\n\r\nChess is a board game played between two players, where each player has 16 pieces that can move in different ways to attack and defend. The goal of the game is to checkmate the opponent&#039;s king, which means to put it in a position where it is under attack and cannot escape capture. There are over 10^120 possible moves in chess, making it impossible for humans to calculate all possible moves and outcomes.\r\n\r\nAI has been able to defeat some of the best human chess players in the world, including Garry Kasparov and Magnus Carlsen. This has been achieved through the development of various AI algorithms, such as deep learning, reinforcement learning, and genetic algorithms. These algorithms have been used to train neural networks to evaluate the board state and make optimal moves.\r\n\r\nOne notable AI algorithm is AlphaZero, developed by Google&#039;s DeepMind. AlphaZero is a self-taught AI system that learned to play chess, shogi, and Go through self-play. AlphaZero&#039;s approach is based on Monte Carlo tree search and neural networks, which allows it to evaluate the board state and search for the best moves. AlphaZero was able to defeat the world&#039;s strongest chess engines in a 100-game match, winning 28 games and drawing 72.\r\n\r\nAI has also been used to analyze chess games and provide insights into the game. Chess.com&#039;s analysis tool, powered by Stockfish (an open-source chess engine), uses AI to analyze games and provide feedback on the best moves and strategies.\r\n\r\nAI has revolutionized the game of chess, providing a new level of insight and understanding into the game. It has also opened up new possibilities for the development of AI systems that can learn to play other complex games and solve complex problems. Chess remains an important testbed for AI research and development, and the future looks bright for the continued integration of AI into the game.', '1678235660blog17.jpg', '2023-03-08 00:34:20', 9, 9, 0),
(26, 'Exploring the World: A Journey', 'There&#039;s something magical about watching the sun set on the horizon, and taking the time to appreciate the beauty of nature. From the vibrant colors to the peaceful atmosphere, it&#039;s a moment that can leave a lasting impression. That&#039;s why we&#039;re taking you on a virtual journey around the world to experience some of the most stunning sunsets from different locations.\r\n\r\nWe begin our journey in Bali, Indonesia, where the sunsets over the ocean are truly breathtaking. With a perfect view of the sun setting behind the rolling waves, it&#039;s no wonder Bali is often referred to as the &quot;Island of the Gods&quot;. As the sky turns from bright orange to deep purple, it&#039;s easy to feel a sense of peace and awe.\r\n\r\nNext, we move on to Tokyo, Japan, where the sunset over the city skyline is a beautiful contrast to the busy streets below. From the top of a skyscraper, the sun seems to melt into the buildings, creating a surreal and almost otherworldly scene. As the sky turns from pink to orange to red, the cityscape transforms into a beautiful painting.\r\n\r\nIn Santorini, Greece, the sunset over the caldera is a sight that many consider to be one of the most beautiful in the world. The combination of the white-washed buildings and the deep blue sea creates a perfect backdrop for the sun to set against. As the sky turns from yellow to pink to purple, the caldera takes on a whole new level of beauty.\r\n\r\nWe end our journey in the American Southwest, where the sunsets over the desert are unlike anything else. The way the sun illuminates the red rock formations of Sedona, Arizona or the Grand Canyon, creates a striking contrast that has to be seen to be believed. As the sky turns from orange to red to deep blue, the landscape seems to come alive.\r\n\r\nFrom Bali to Tokyo, Santorini to the American Southwest, the world is full of stunning sunsets that leave a lasting impression. Whether you&#039;re able to witness these sights in person or just through pictures, take a moment to appreciate the beauty and wonder of nature.\r\n', '1678235943blog7.jpg', '2023-03-08 00:39:03', 1, 8, 1),
(27, ' Loy Krathong: A Celebration of Water and Light', 'Loy Krathong is an ancient and beloved festival in Thailand that celebrates the importance of water and light in our lives. From the floating of krathongs down the river to the release of paper lanterns into the sky, this festival is a magical experience that brings people together to honor the goddess of water and let go of negative emotions.\r\n\r\nIn this festival, participants make offerings of krathongs, small baskets made of banana leaves, that are filled with flowers, candles, and incense. The krathongs are then released onto the water and floated away, symbolizing the release of negativity and the letting go of worries. Along with the krathongs, paper lanterns are released into the sky, creating a beautiful and mesmerizing sight that represents the hope for good luck and a bright future.\r\n\r\nThe history of Loy Krathong can be traced back to the Sukhothai period over 700 years ago, and it has since become a significant festival in Thailand. It&#039;s a time for people to come together, celebrate, and give thanks for the abundance of water that&#039;s so important to life in the country. Loy Krathong is also an opportunity to taste traditional foods, watch cultural performances, and take part in beauty contests, fireworks displays, and boat races.\r\n\r\nLoy Krathong is truly a celebration of water and light, and it&#039;s a beautiful and meaningful experience that should not be missed. Whether you&#039;re a local or a visitor, this festival is a chance to connect with the community, show gratitude, and experience the beauty of Thailand&#039;s waterways. So, if you&#039;re ever in Thailand during the full moon of the twelfth lunar month, join in on this unforgettable celebration of water and light.', '1678236380blog18.jpg', '2023-03-08 00:46:20', 10, 10, 0),
(28, 'Donut Delight: A Colorful and Tasty Wonderland', 'Who doesn&#039;t love donuts? They come in all shapes, sizes, and colors, and they&#039;re the perfect treat for any time of day. Recently, I had the pleasure of visiting a place that takes donuts to a whole new level of deliciousness and creativity. Let me take you on a journey to a donut wonderland that will tantalize your taste buds and delight your senses.\r\n\r\nLocated in the heart of the city, Donut Delight is a small bakery that offers a wide variety of handmade donuts. As soon as you enter the shop, you&#039;ll be greeted by the delicious aroma of freshly baked donuts, and a colorful display of donuts of all flavors and shapes.\r\n\r\nFrom classic glazed donuts to fruity ones, there&#039;s something for everyone at Donut Delight. They offer unique and creative flavors like matcha green tea, blueberry cheesecake, and maple bacon. And if you&#039;re feeling adventurous, you can try their speciality donuts like the unicorn donut, which is a colorful and glittery masterpiece that&#039;s almost too pretty to eat.\r\n\r\nBut the real highlight of Donut Delight is their customizable donuts. You can choose from a variety of toppings like Oreos, sprinkles, nuts, and chocolate chips, and create your own unique donut. You can even get your donut personalized with your name or a special message.\r\n\r\nThe donuts at Donut Delight are not only tasty but also Instagram-worthy. The colorful and creative designs make for a perfect photo-op, and you can share your donut experience with your friends and family on social media.\r\n\r\nIn addition to the delicious donuts, Donut Delight offers a cozy and welcoming ambiance that&#039;s perfect for a quick snack or a morning coffee break. The staff is friendly and always ready to help you choose the perfect donut flavor.\r\n\r\nIf you&#039;re a donut lover or just looking for a fun and tasty experience, Donut Delight is a must-visit place. It&#039;s a journey to a colorful and tasty wonderland that will satisfy your sweet tooth and leave you craving for more. So, what are you waiting for? Head to Donut Delight and indulge in the deliciousness of handmade, creative, and customizable donuts.', '1678237190blog101.jpg', '2023-03-08 00:59:50', 1, 11, 0),
(29, 'Bionic Arms: The Future', 'Bionic arms are one of the most exciting and promising developments in the field of prosthetics. These high-tech devices are designed to replace missing or damaged limbs, providing amputees with greater mobility and independence than ever before.\r\n\r\nBionic arms work by using sensors that detect muscle movements in the remaining portion of the amputee&#039;s limb. These sensors send signals to a small computer processor located inside the prosthetic arm. The computer then translates these signals into movements of the bionic arm, allowing the user to control the arm with their mind.\r\n\r\nOne of the key advantages of bionic arms is that they offer a greater range of motion than traditional prosthetics. With a bionic arm, amputees can perform a wide variety of tasks that were previously impossible, such as holding and manipulating delicate objects or reaching for items on high shelves.\r\n\r\nIn addition, bionic arms are designed to be more comfortable and user-friendly than traditional prosthetics. They are typically made from lightweight materials that are easy to wear for extended periods of time. Many bionic arms also feature advanced cooling systems that prevent overheating, making them much more comfortable to wear in warm weather.\r\n\r\nPerhaps the most exciting aspect of bionic arms is their potential for future development. As technology continues to advance, bionic arms are likely to become even more advanced and capable. We may one day see bionic arms that are fully integrated with the nervous system, providing users with even greater control and flexibility.\r\n\r\nIn conclusion, bionic arms represent a significant advancement in the field of prosthetics. These high-tech devices offer amputees greater mobility and independence than ever before, and they are designed to be comfortable, user-friendly, and highly capable. As technology continues to evolve, bionic arms are likely to become even more advanced and capable, offering even greater benefits to those who rely on them.\r\n', '1678237466blog2.jpg', '2023-03-08 01:04:26', 9, 5, 0),
(30, 'Clocks Around the World: A Journey Through Time', 'Clocks have been a part of human history for thousands of years, and can be found in many different cultures and locations around the world. From the ornate mechanical clocks of Europe to the ancient sundials of Egypt, clocks come in all shapes and sizes, reflecting the unique cultural and historical context in which they were created.\r\n\r\nIn Europe, clocks have a long and rich history, dating back to the Middle Ages. Mechanical clocks were first developed in the 13th century, and quickly became a symbol of wealth and power. Clock towers, such as the famous Big Ben in London, still stand as iconic landmarks in many European cities.\r\n\r\nIn the Middle East, Islamic civilization played a significant role in the development of early mechanical clocks. Water clocks, also known as clepsydra, were commonly used in mosques to determine the time for prayer. These clocks were also used to regulate the irrigation systems in agriculture.\r\n\r\nIn China, the development of water clocks and astronomical instruments dates back to the Han Dynasty. The Chinese invented the first mechanical clock, known as the Su Song clock, which was designed to be an astronomical instrument. The clock featured a rotating armillary sphere, which was used to measure the positions of stars and planets.\r\n\r\nIn India, ancient sundials were used to tell time. The most famous of these is the Jantar Mantar observatory in Jaipur, which features a collection of large sundials and astronomical instruments.\r\n\r\nIn South America, the Incas used a system of knotted strings, known as quipus, to keep track of time and record historical events. The quipus were made of colored strings that were knotted in various ways to represent numbers and dates.\r\n\r\nIn Africa, the ancient Egyptians used sundials to tell time. They also used water clocks, which were filled with water that would gradually drain out, marking the passage of time.\r\n\r\nIn conclusion, clocks have a rich and diverse history that reflects the unique cultural and historical context in which they were created. From the mechanical clocks of Europe to the sundials of Egypt, clocks come in all shapes and sizes, and have played an important role in how we measure and manage time throughout human history.\r\n', '1678249472blog100.jpg', '2023-03-08 04:24:32', 10, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `manufacturer_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `manufacturer_id`) VALUES
(3, 'HRM', 100000, 2),
(4, 'ERP', 3000000, 2),
(5, 'Car', 900000, 3),
(7, 'Headphone', 2000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` int(10) NOT NULL,
  `student_id` int(10) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`id`, `student_id`, `amount`, `created_at`) VALUES
(1, 1, 2000, '2025-02-03 05:28:00'),
(2, 3, 3000, '2025-02-03 05:28:00'),
(3, 1, 2000, '2025-02-03 05:28:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Manager'),
(3, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `roless`
--

CREATE TABLE `roless` (
  `id` int(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `roless`
--

INSERT INTO `roless` (`id`, `name`) VALUES
(1, 'Shuvo'),
(2, 'rony');

-- --------------------------------------------------------

--
-- Table structure for table `roll`
--

CREATE TABLE `roll` (
  `id` int(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `roll`
--

INSERT INTO `roll` (`id`, `name`, `department`) VALUES
(1, 'Rabin', 'Economics'),
(2, 'Anayet', 'Account');

-- --------------------------------------------------------

--
-- Table structure for table `shuvo`
--

CREATE TABLE `shuvo` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password` varchar(50) DEFAULT NULL,
  `inactive` tinyint(1) DEFAULT 0,
  `remark` varchar(20) DEFAULT NULL,
  `products_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `shuvo`
--

INSERT INTO `shuvo` (`id`, `name`, `create_at`, `password`, `inactive`, `remark`, `products_name`) VALUES
(1, 'Shuvo', '2025-02-01 06:12:13', '20202', 0, NULL, NULL),
(2, 'shuvo', '2025-02-02 04:31:26', '101010', 0, NULL, 'apple'),
(3, 'Rahat', '2025-02-02 04:34:35', '101010', 0, NULL, 'Orang'),
(4, 'Tanmoy', '2025-02-01 06:12:13', '101010', 0, NULL, NULL),
(6, 'Rana', '2025-02-01 06:12:13', '101010', 0, NULL, NULL),
(7, 'Hridoy', '2025-02-01 06:12:13', '101010', 0, NULL, NULL),
(8, 'Rony', '2025-02-02 03:41:06', '2021020', 0, NULL, NULL),
(9, 'Sagor', '2025-02-02 04:38:30', '10010', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shuvo2`
--

CREATE TABLE `shuvo2` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `shuvo2`
--

INSERT INTO `shuvo2` (`id`, `name`, `password`) VALUES
(1, 'shuvo', '101010'),
(2, 'Rahat', '101010'),
(3, 'Tanmoy', '101010'),
(4, 'Sagor', '101010'),
(5, 'Rana', '101010'),
(6, 'Hridoy', '101010'),
(7, 'shuvo', '101010'),
(8, 'Rahat', '101010'),
(9, 'Tanmoy', '101010'),
(10, 'Sagor', '101010'),
(11, 'Rana', '101010'),
(12, 'Hridoy', '101010'),
(13, 'tomal', '101010');

-- --------------------------------------------------------

--
-- Table structure for table `shuvo51`
--

CREATE TABLE `shuvo51` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shuvo52`
--

CREATE TABLE `shuvo52` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shuvo53`
--

CREATE TABLE `shuvo53` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `password`) VALUES
(1, 'admin', '11111'),
(2, 'manager', '3333');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `mobile`) VALUES
(1, 'Jahid', '3434333'),
(2, 'Rahim', '4543434'),
(3, 'Karim', '4343432');

-- --------------------------------------------------------

--
-- Table structure for table `theme_setting`
--

CREATE TABLE `theme_setting` (
  `id` int(10) NOT NULL,
  `header_background` varchar(255) NOT NULL,
  `footer_background` varchar(255) NOT NULL,
  `downloader_box_background` varchar(255) NOT NULL,
  `downloader_box_button` varchar(255) NOT NULL,
  `first_title` varchar(255) NOT NULL,
  `second_title` varchar(255) NOT NULL,
  `third_title` varchar(255) NOT NULL,
  `footer_menu_link` varchar(255) NOT NULL,
  `header_menu_link` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `paragraph` varchar(255) NOT NULL,
  `logo_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `theme_setting`
--

INSERT INTO `theme_setting` (`id`, `header_background`, `footer_background`, `downloader_box_background`, `downloader_box_button`, `first_title`, `second_title`, `third_title`, `footer_menu_link`, `header_menu_link`, `icon`, `paragraph`, `logo_name`) VALUES
(1, '#0a570d', '#c2c52b', '#a61c1c', '#8a7575', '#d53030', '#4d1f1f', '#1917a6', '#75c5c7', '#6ff316', '#4f24eb', '#ff0000', '#f50000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `role_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `role_id`) VALUES
(1, 'jahid2', '111111', 1),
(2, 'Test333', '333333', 2),
(3, 'rahim', '111111', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users1`
--

CREATE TABLE `users1` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password` varchar(50) DEFAULT NULL,
  `inactive` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users1`
--

INSERT INTO `users1` (`id`, `name`, `created_at`, `password`, `inactive`) VALUES
(1, 'jahid', '2025-02-01 04:50:26', '111111', 0),
(2, 'rasel', '2025-02-01 04:50:26', '444444', 0),
(3, 'karim', '2025-02-01 04:50:26', '222222', 0);

-- --------------------------------------------------------

--
-- Table structure for table `userss`
--

CREATE TABLE `userss` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `role_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userss`
--

INSERT INTO `userss` (`id`, `name`, `password`, `role_id`) VALUES
(1, 'Shuvo', '222222', '1231122'),
(2, 'Rony', '2222221', '1231133'),
(3, 'Mahamudul', '2222223', '1231144'),
(4, 'Kawsar', '2222224', '1231155'),
(5, 'Nadim', '2222225', '1231166'),
(6, '', '', '1'),
(7, '', '', '1'),
(8, '', '222222', '1'),
(9, '', '', '1'),
(10, '', '222222', '2'),
(11, 'Shuvo', '222222', '2');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_product`
-- (See below for the actual view)
--
CREATE TABLE `v_product` (
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_product_list1`
-- (See below for the actual view)
--
CREATE TABLE `v_product_list1` (
`id` int(10)
,`product_name` varchar(50)
,`mfg_name` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `website_setting`
--

CREATE TABLE `website_setting` (
  `id` int(10) NOT NULL,
  `website_title` varchar(255) NOT NULL,
  `website_name` varchar(255) NOT NULL,
  `visible_website_name` int(10) NOT NULL DEFAULT 0,
  `website_logo` varchar(255) NOT NULL,
  `website_favicon` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `google_varification_code` text NOT NULL,
  `google_analytics_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `website_setting`
--

INSERT INTO `website_setting` (`id`, `website_title`, `website_name`, `visible_website_name`, `website_logo`, `website_favicon`, `meta_keyword`, `meta_description`, `google_varification_code`, `google_analytics_code`) VALUES
(1, 'dd', 'dd', 0, 'codingstatus-logo.jpg', 'codingstatus-icon.jpg', 'dd', 'dd', 'dd', 'dd');

-- --------------------------------------------------------

--
-- Structure for view `v_product`
--
DROP TABLE IF EXISTS `v_product`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_product`  AS SELECT `p`.`id` AS `id`, `p`.`name` AS `name`, `p`.`price` AS `price`, `m`.`address` AS `address`, `m`.`name` AS `mfn` FROM (`manufacturer` `m` join `product` `p`) WHERE `m`.`id` = `p`.`manufacturer_id` AND `p`.`price` > 5000 ;

-- --------------------------------------------------------

--
-- Structure for view `v_product_list1`
--
DROP TABLE IF EXISTS `v_product_list1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_product_list1`  AS SELECT `p`.`id` AS `id`, `p`.`name` AS `product_name`, `m`.`name` AS `mfg_name` FROM (`product` `p` join `manufacturer` `m`) WHERE `m`.`id` = `p`.`manufacturer_id` AND `p`.`price` > 5000 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ac_sell`
--
ALTER TABLE `ac_sell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_profile`
--
ALTER TABLE `admin_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anayet`
--
ALTER TABLE `anayet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_setting`
--
ALTER TABLE `color_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_email`
--
ALTER TABLE `contact_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_form_email`
--
ALTER TABLE `contact_form_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_ac`
--
ALTER TABLE `core_ac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_academy_admissions`
--
ALTER TABLE `core_academy_admissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_academy_batches`
--
ALTER TABLE `core_academy_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_academy_classes`
--
ALTER TABLE `core_academy_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_academy_exam_types`
--
ALTER TABLE `core_academy_exam_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_academy_invoices`
--
ALTER TABLE `core_academy_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_academy_invoice_details`
--
ALTER TABLE `core_academy_invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_academy_money_receipts`
--
ALTER TABLE `core_academy_money_receipts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_academy_money_receipt_details`
--
ALTER TABLE `core_academy_money_receipt_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_academy_periods`
--
ALTER TABLE `core_academy_periods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_academy_results`
--
ALTER TABLE `core_academy_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_academy_routines`
--
ALTER TABLE `core_academy_routines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_academy_sections`
--
ALTER TABLE `core_academy_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_academy_services`
--
ALTER TABLE `core_academy_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_academy_students`
--
ALTER TABLE `core_academy_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_academy_subjects`
--
ALTER TABLE `core_academy_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_academy_teachers`
--
ALTER TABLE `core_academy_teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_academy_terms`
--
ALTER TABLE `core_academy_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_ac_price`
--
ALTER TABLE `core_ac_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_assets`
--
ALTER TABLE `core_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_booking`
--
ALTER TABLE `core_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_bookings`
--
ALTER TABLE `core_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_booking_details`
--
ALTER TABLE `core_booking_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_buyers`
--
ALTER TABLE `core_buyers`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Indexes for table `core_cache`
--
ALTER TABLE `core_cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `core_cache_locks`
--
ALTER TABLE `core_cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `core_cattles`
--
ALTER TABLE `core_cattles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_cattle_categories`
--
ALTER TABLE `core_cattle_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_company`
--
ALTER TABLE `core_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_contacts`
--
ALTER TABLE `core_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_contact_categories`
--
ALTER TABLE `core_contact_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_customers`
--
ALTER TABLE `core_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_deliveries`
--
ALTER TABLE `core_deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_delivery`
--
ALTER TABLE `core_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_delivery_details`
--
ALTER TABLE `core_delivery_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_delivery_status`
--
ALTER TABLE `core_delivery_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_departments`
--
ALTER TABLE `core_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_districts`
--
ALTER TABLE `core_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_divisions`
--
ALTER TABLE `core_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_ecom_coupons`
--
ALTER TABLE `core_ecom_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_ecom_used_coupons`
--
ALTER TABLE `core_ecom_used_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_failed_jobs`
--
ALTER TABLE `core_failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `core_fan2`
--
ALTER TABLE `core_fan2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_fan3`
--
ALTER TABLE `core_fan3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_final`
--
ALTER TABLE `core_final`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_finished_goods`
--
ALTER TABLE `core_finished_goods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_hms_appointments`
--
ALTER TABLE `core_hms_appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_hms_consultants`
--
ALTER TABLE `core_hms_consultants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_hms_departments`
--
ALTER TABLE `core_hms_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_hms_medicines`
--
ALTER TABLE `core_hms_medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_hms_medicine_categories`
--
ALTER TABLE `core_hms_medicine_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_hms_medicine_types`
--
ALTER TABLE `core_hms_medicine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_hms_patients`
--
ALTER TABLE `core_hms_patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_hms_prescriptions`
--
ALTER TABLE `core_hms_prescriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_hms_prescription_details`
--
ALTER TABLE `core_hms_prescription_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_hotel`
--
ALTER TABLE `core_hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_hotelb`
--
ALTER TABLE `core_hotelb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_hotel_staffdepartment`
--
ALTER TABLE `core_hotel_staffdepartment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_hotel_staffrole`
--
ALTER TABLE `core_hotel_staffrole`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_invoices`
--
ALTER TABLE `core_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_invoice_details`
--
ALTER TABLE `core_invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_jobs`
--
ALTER TABLE `core_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_jobs_queue_index` (`queue`);

--
-- Indexes for table `core_job_batches`
--
ALTER TABLE `core_job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_manufacturers`
--
ALTER TABLE `core_manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_mfg_boms`
--
ALTER TABLE `core_mfg_boms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_mfg_bom_details`
--
ALTER TABLE `core_mfg_bom_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_mfg_bom_secondary_products`
--
ALTER TABLE `core_mfg_bom_secondary_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_mfg_productions`
--
ALTER TABLE `core_mfg_productions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_mfg_production_details`
--
ALTER TABLE `core_mfg_production_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_migrations`
--
ALTER TABLE `core_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_money_receipts`
--
ALTER TABLE `core_money_receipts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_money_receipt_details`
--
ALTER TABLE `core_money_receipt_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_monitor`
--
ALTER TABLE `core_monitor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_monitor2`
--
ALTER TABLE `core_monitor2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_orders`
--
ALTER TABLE `core_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_order_details`
--
ALTER TABLE `core_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_password_reset_tokens`
--
ALTER TABLE `core_password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `core_personal_access_tokens`
--
ALTER TABLE `core_personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_personal_access_tokens_token_unique` (`token`),
  ADD KEY `core_personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `core_persons`
--
ALTER TABLE `core_persons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_positions`
--
ALTER TABLE `core_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_production_manager`
--
ALTER TABLE `core_production_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_products`
--
ALTER TABLE `core_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uni_barcode` (`barcode`),
  ADD UNIQUE KEY `uni_name` (`name`);

--
-- Indexes for table `core_product_brands`
--
ALTER TABLE `core_product_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_product_categories`
--
ALTER TABLE `core_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_product_sections`
--
ALTER TABLE `core_product_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_product_types`
--
ALTER TABLE `core_product_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_product_units`
--
ALTER TABLE `core_product_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_purchases`
--
ALTER TABLE `core_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_purchase_details`
--
ALTER TABLE `core_purchase_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_raw_materials`
--
ALTER TABLE `core_raw_materials`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `core_rest_tables`
--
ALTER TABLE `core_rest_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_roles`
--
ALTER TABLE `core_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_rooms`
--
ALTER TABLE `core_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_room_types`
--
ALTER TABLE `core_room_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_round63`
--
ALTER TABLE `core_round63`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_sections`
--
ALTER TABLE `core_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_sessions`
--
ALTER TABLE `core_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_sessions_user_id_index` (`user_id`),
  ADD KEY `core_sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `core_shippers`
--
ALTER TABLE `core_shippers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_site_albums`
--
ALTER TABLE `core_site_albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_site_album_details`
--
ALTER TABLE `core_site_album_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_site_attributes`
--
ALTER TABLE `core_site_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_site_clients`
--
ALTER TABLE `core_site_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_site_menus`
--
ALTER TABLE `core_site_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_site_menu_subs`
--
ALTER TABLE `core_site_menu_subs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_site_menu_sub_details`
--
ALTER TABLE `core_site_menu_sub_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_site_pages`
--
ALTER TABLE `core_site_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_site_posts`
--
ALTER TABLE `core_site_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_site_post_categories`
--
ALTER TABLE `core_site_post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_site_post_details`
--
ALTER TABLE `core_site_post_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_site_products`
--
ALTER TABLE `core_site_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_site_product_categories`
--
ALTER TABLE `core_site_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_site_product_uoms`
--
ALTER TABLE `core_site_product_uoms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_site_routes`
--
ALTER TABLE `core_site_routes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uni_route` (`name`) USING BTREE;

--
-- Indexes for table `core_site_services`
--
ALTER TABLE `core_site_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_site_service_categories`
--
ALTER TABLE `core_site_service_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_status`
--
ALTER TABLE `core_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_stocks`
--
ALTER TABLE `core_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_stock_adjustments`
--
ALTER TABLE `core_stock_adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_stock_adjustment_details`
--
ALTER TABLE `core_stock_adjustment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_stock_adjustment_types`
--
ALTER TABLE `core_stock_adjustment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_students`
--
ALTER TABLE `core_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_suppliers`
--
ALTER TABLE `core_suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_tailor_dresses`
--
ALTER TABLE `core_tailor_dresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_tailor_dress_parameters`
--
ALTER TABLE `core_tailor_dress_parameters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_tailor_orders`
--
ALTER TABLE `core_tailor_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_tailor_order_details`
--
ALTER TABLE `core_tailor_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_tailor_order_measurements`
--
ALTER TABLE `core_tailor_order_measurements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_tailor_uoms`
--
ALTER TABLE `core_tailor_uoms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_thanas`
--
ALTER TABLE `core_thanas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_transaction_types`
--
ALTER TABLE `core_transaction_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_uoms`
--
ALTER TABLE `core_uoms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_users`
--
ALTER TABLE `core_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`name`) USING BTREE;

--
-- Indexes for table `core_users0`
--
ALTER TABLE `core_users0`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_users_email_unique` (`email`);

--
-- Indexes for table `core_user_deposits`
--
ALTER TABLE `core_user_deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_vendors`
--
ALTER TABLE `core_vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_warehouses`
--
ALTER TABLE `core_warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_content`
--
ALTER TABLE `home_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_blog_category` (`category_id`),
  ADD KEY `FK_blog_author` (`author_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roless`
--
ALTER TABLE `roless`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roll`
--
ALTER TABLE `roll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shuvo`
--
ALTER TABLE `shuvo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shuvo2`
--
ALTER TABLE `shuvo2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shuvo51`
--
ALTER TABLE `shuvo51`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shuvo52`
--
ALTER TABLE `shuvo52`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shuvo53`
--
ALTER TABLE `shuvo53`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme_setting`
--
ALTER TABLE `theme_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users1`
--
ALTER TABLE `users1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `userss`
--
ALTER TABLE `userss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_setting`
--
ALTER TABLE `website_setting`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ac_sell`
--
ALTER TABLE `ac_sell`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_profile`
--
ALTER TABLE `admin_profile`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `anayet`
--
ALTER TABLE `anayet`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `color_setting`
--
ALTER TABLE `color_setting`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_email`
--
ALTER TABLE `contact_email`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact_form_email`
--
ALTER TABLE `contact_form_email`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_ac`
--
ALTER TABLE `core_ac`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_academy_admissions`
--
ALTER TABLE `core_academy_admissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_academy_batches`
--
ALTER TABLE `core_academy_batches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `core_academy_classes`
--
ALTER TABLE `core_academy_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_academy_exam_types`
--
ALTER TABLE `core_academy_exam_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_academy_invoices`
--
ALTER TABLE `core_academy_invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_academy_invoice_details`
--
ALTER TABLE `core_academy_invoice_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_academy_money_receipts`
--
ALTER TABLE `core_academy_money_receipts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_academy_money_receipt_details`
--
ALTER TABLE `core_academy_money_receipt_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_academy_periods`
--
ALTER TABLE `core_academy_periods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_academy_results`
--
ALTER TABLE `core_academy_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `core_academy_routines`
--
ALTER TABLE `core_academy_routines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `core_academy_sections`
--
ALTER TABLE `core_academy_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_academy_services`
--
ALTER TABLE `core_academy_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_academy_students`
--
ALTER TABLE `core_academy_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_academy_subjects`
--
ALTER TABLE `core_academy_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_academy_teachers`
--
ALTER TABLE `core_academy_teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_academy_terms`
--
ALTER TABLE `core_academy_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_ac_price`
--
ALTER TABLE `core_ac_price`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_assets`
--
ALTER TABLE `core_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_booking`
--
ALTER TABLE `core_booking`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_bookings`
--
ALTER TABLE `core_bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `core_booking_details`
--
ALTER TABLE `core_booking_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `core_buyers`
--
ALTER TABLE `core_buyers`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `core_cattles`
--
ALTER TABLE `core_cattles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `core_cattle_categories`
--
ALTER TABLE `core_cattle_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_company`
--
ALTER TABLE `core_company`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_contacts`
--
ALTER TABLE `core_contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_contact_categories`
--
ALTER TABLE `core_contact_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_customers`
--
ALTER TABLE `core_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `core_deliveries`
--
ALTER TABLE `core_deliveries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `core_delivery`
--
ALTER TABLE `core_delivery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_delivery_details`
--
ALTER TABLE `core_delivery_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `core_delivery_status`
--
ALTER TABLE `core_delivery_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_departments`
--
ALTER TABLE `core_departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_districts`
--
ALTER TABLE `core_districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `core_divisions`
--
ALTER TABLE `core_divisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `core_ecom_coupons`
--
ALTER TABLE `core_ecom_coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_ecom_used_coupons`
--
ALTER TABLE `core_ecom_used_coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_failed_jobs`
--
ALTER TABLE `core_failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_fan2`
--
ALTER TABLE `core_fan2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `core_fan3`
--
ALTER TABLE `core_fan3`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_final`
--
ALTER TABLE `core_final`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_finished_goods`
--
ALTER TABLE `core_finished_goods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `core_hms_appointments`
--
ALTER TABLE `core_hms_appointments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_hms_consultants`
--
ALTER TABLE `core_hms_consultants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_hms_departments`
--
ALTER TABLE `core_hms_departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_hms_medicines`
--
ALTER TABLE `core_hms_medicines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_hms_medicine_categories`
--
ALTER TABLE `core_hms_medicine_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_hms_medicine_types`
--
ALTER TABLE `core_hms_medicine_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_hms_patients`
--
ALTER TABLE `core_hms_patients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `core_hms_prescriptions`
--
ALTER TABLE `core_hms_prescriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_hms_prescription_details`
--
ALTER TABLE `core_hms_prescription_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_hotel`
--
ALTER TABLE `core_hotel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_hotelb`
--
ALTER TABLE `core_hotelb`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_hotel_staffdepartment`
--
ALTER TABLE `core_hotel_staffdepartment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `core_hotel_staffrole`
--
ALTER TABLE `core_hotel_staffrole`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_invoices`
--
ALTER TABLE `core_invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `core_invoice_details`
--
ALTER TABLE `core_invoice_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `core_jobs`
--
ALTER TABLE `core_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_manufacturers`
--
ALTER TABLE `core_manufacturers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `core_mfg_boms`
--
ALTER TABLE `core_mfg_boms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_mfg_bom_details`
--
ALTER TABLE `core_mfg_bom_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `core_mfg_bom_secondary_products`
--
ALTER TABLE `core_mfg_bom_secondary_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_mfg_productions`
--
ALTER TABLE `core_mfg_productions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `core_mfg_production_details`
--
ALTER TABLE `core_mfg_production_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_migrations`
--
ALTER TABLE `core_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `core_money_receipts`
--
ALTER TABLE `core_money_receipts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `core_money_receipt_details`
--
ALTER TABLE `core_money_receipt_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `core_monitor`
--
ALTER TABLE `core_monitor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_monitor2`
--
ALTER TABLE `core_monitor2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_orders`
--
ALTER TABLE `core_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `core_order_details`
--
ALTER TABLE `core_order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `core_personal_access_tokens`
--
ALTER TABLE `core_personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_persons`
--
ALTER TABLE `core_persons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_positions`
--
ALTER TABLE `core_positions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_production_manager`
--
ALTER TABLE `core_production_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `core_products`
--
ALTER TABLE `core_products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `core_product_brands`
--
ALTER TABLE `core_product_brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_product_categories`
--
ALTER TABLE `core_product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `core_product_sections`
--
ALTER TABLE `core_product_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_product_types`
--
ALTER TABLE `core_product_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `core_product_units`
--
ALTER TABLE `core_product_units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `core_purchases`
--
ALTER TABLE `core_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `core_purchase_details`
--
ALTER TABLE `core_purchase_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `core_raw_materials`
--
ALTER TABLE `core_raw_materials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `core_rest_tables`
--
ALTER TABLE `core_rest_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `core_roles`
--
ALTER TABLE `core_roles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `core_rooms`
--
ALTER TABLE `core_rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_room_types`
--
ALTER TABLE `core_room_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_round63`
--
ALTER TABLE `core_round63`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_sections`
--
ALTER TABLE `core_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_shippers`
--
ALTER TABLE `core_shippers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_site_albums`
--
ALTER TABLE `core_site_albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_site_album_details`
--
ALTER TABLE `core_site_album_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `core_site_attributes`
--
ALTER TABLE `core_site_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_site_clients`
--
ALTER TABLE `core_site_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_site_menus`
--
ALTER TABLE `core_site_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `core_site_menu_subs`
--
ALTER TABLE `core_site_menu_subs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `core_site_menu_sub_details`
--
ALTER TABLE `core_site_menu_sub_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_site_pages`
--
ALTER TABLE `core_site_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_site_posts`
--
ALTER TABLE `core_site_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_site_post_categories`
--
ALTER TABLE `core_site_post_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_site_post_details`
--
ALTER TABLE `core_site_post_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `core_site_products`
--
ALTER TABLE `core_site_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `core_site_product_categories`
--
ALTER TABLE `core_site_product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_site_product_uoms`
--
ALTER TABLE `core_site_product_uoms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_site_routes`
--
ALTER TABLE `core_site_routes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `core_site_services`
--
ALTER TABLE `core_site_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `core_site_service_categories`
--
ALTER TABLE `core_site_service_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_status`
--
ALTER TABLE `core_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_stocks`
--
ALTER TABLE `core_stocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `core_stock_adjustments`
--
ALTER TABLE `core_stock_adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_stock_adjustment_details`
--
ALTER TABLE `core_stock_adjustment_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_stock_adjustment_types`
--
ALTER TABLE `core_stock_adjustment_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_students`
--
ALTER TABLE `core_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_suppliers`
--
ALTER TABLE `core_suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `core_tailor_dresses`
--
ALTER TABLE `core_tailor_dresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `core_tailor_dress_parameters`
--
ALTER TABLE `core_tailor_dress_parameters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `core_tailor_orders`
--
ALTER TABLE `core_tailor_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_tailor_order_details`
--
ALTER TABLE `core_tailor_order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_tailor_order_measurements`
--
ALTER TABLE `core_tailor_order_measurements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `core_tailor_uoms`
--
ALTER TABLE `core_tailor_uoms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_thanas`
--
ALTER TABLE `core_thanas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_transaction_types`
--
ALTER TABLE `core_transaction_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_uoms`
--
ALTER TABLE `core_uoms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_users`
--
ALTER TABLE `core_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `core_users0`
--
ALTER TABLE `core_users0`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_user_deposits`
--
ALTER TABLE `core_user_deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `core_vendors`
--
ALTER TABLE `core_vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_warehouses`
--
ALTER TABLE `core_warehouses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `home_content`
--
ALTER TABLE `home_content`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roless`
--
ALTER TABLE `roless`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roll`
--
ALTER TABLE `roll`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shuvo`
--
ALTER TABLE `shuvo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shuvo2`
--
ALTER TABLE `shuvo2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `shuvo51`
--
ALTER TABLE `shuvo51`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shuvo52`
--
ALTER TABLE `shuvo52`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shuvo53`
--
ALTER TABLE `shuvo53`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `theme_setting`
--
ALTER TABLE `theme_setting`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users1`
--
ALTER TABLE `users1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userss`
--
ALTER TABLE `userss`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `website_setting`
--
ALTER TABLE `website_setting`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
