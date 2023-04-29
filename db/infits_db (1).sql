-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 29, 2023 at 04:27 PM
-- Server version: 8.0.33
-- PHP Version: 7.4.3-4ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `infits_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `addclient`
--

CREATE TABLE `addclient` (
  `dietitianuserID` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `dietitian_id` int NOT NULL,
  `addclient_id` int NOT NULL,
  `client_id` int NOT NULL,
  `clientuserID` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `profile` text COLLATE utf8mb4_general_ci NOT NULL,
  `p_p` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'user-default.png',
  `name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `gender` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `age` varchar(3) COLLATE utf8mb4_general_ci NOT NULL,
  `height` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `weight` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `about` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `plan_id` int NOT NULL,
  `status` int DEFAULT NULL,
  `client_code` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_seen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addclient`
--

INSERT INTO `addclient` (`dietitianuserID`, `dietitian_id`, `addclient_id`, `client_id`, `clientuserID`, `profile`, `p_p`, `name`, `gender`, `email`, `phone`, `age`, `height`, `weight`, `about`, `plan_id`, `status`, `client_code`, `last_seen`) VALUES
('admin', 1, 1, 1, 'rahul_sharma', '', 'user-default.png', 'Rahul Sharma', 'm', 'test_user@test.com', '9988552266', '22', '130', '75', 'njlsa cjakc', 1, 1, 'c42', '2023-03-16 18:02:26'),
('admin', 1, 2, 2, 'user1', 'user-default.png', 'user-default.png', 'user1', 'F', 'user1@gmail.com', '9879879875', '22', '55', '166', 'About user1', 1, 1, 'C002', '2023-04-19 10:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `calorietracker`
--

CREATE TABLE `calorietracker` (
  `caloriesconsumed` int NOT NULL,
  `goal` int NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `carbs` int DEFAULT NULL,
  `fiber` int DEFAULT NULL,
  `protein` int DEFAULT NULL,
  `fat` int DEFAULT NULL,
  `clientID` varchar(25) NOT NULL,
  `clientuserID` varchar(25) NOT NULL,
  `dietitian_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `chat_id` int NOT NULL,
  `from_id` int NOT NULL,
  `to_id` int NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`chat_id`, `from_id`, `to_id`, `message`, `opened`, `created_at`) VALUES
(1, 1, 1, 'Hellooo !!', 1, '2023-01-27 19:26:01');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `clientuserID` varchar(25) NOT NULL,
  `password` varchar(12) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `plan` varchar(30) DEFAULT NULL,
  `profilePhoto` text,
  `dietitianuserID` varchar(25) DEFAULT NULL,
  `dietitian_id` int NOT NULL,
  `client_id` int NOT NULL,
  `gender` char(1) NOT NULL,
  `age` int NOT NULL,
  `verification` tinyint(1) NOT NULL DEFAULT '0',
  `height` int NOT NULL,
  `weight` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`clientuserID`, `password`, `name`, `location`, `email`, `mobile`, `plan`, `profilePhoto`, `dietitianuserID`, `dietitian_id`, `client_id`, `gender`, `age`, `verification`, `height`, `weight`) VALUES
('anagha', 'anagha', 'Anagha', NULL, 'anukombraje@gmail.com', '8147564128', NULL, NULL, NULL, 0, 0, 'F', 21, 0, 50, 163),
('kamakaka', 'qwert', 'shivaaa', NULL, 'shiuasofhoasfh@gmail', '7895157794', NULL, NULL, NULL, 0, 0, 'M', 23, 0, 180, 85),
('kamboj', 'qwert', 'shivanshu Kamboj', NULL, 'shivanshukambioj@gmail.com', '7895157794', NULL, NULL, NULL, 0, 0, 'M', 23, 0, 182, 0),
('kkkkkkk', '1234', 'kkkkk', NULL, 'kkkkkkk@kkkk.xoom', '7895157794', NULL, NULL, NULL, 0, 0, 'M', 20, 0, 180, 89),
('qwertt', 'qwertt', 'qwertt', NULL, 'qwert@gmail.com', '7895157794', NULL, NULL, NULL, 0, 0, 'M', 23, 0, 180, 85),
('rahul_sharma', '123', 'Rahul Sharma', 'India', 'user1@gmail.com', '9879879875', '1', NULL, 'admin', 1, 1, 'M', 22, 0, 182, 85),
('user1', 'user1', 'user1', NULL, 'user1@gmail.com', '9879879875', '1', NULL, 'admin', 1, 2, 'F', 22, 0, 55, 166);

-- --------------------------------------------------------

--
-- Table structure for table `clientcon`
--

CREATE TABLE `clientcon` (
  `ClientName` text NOT NULL,
  `question` text NOT NULL,
  `answers` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_health_files`
--

CREATE TABLE `client_health_files` (
  `clientID` varchar(30) NOT NULL,
  `dietitianuserID` varchar(30) NOT NULL,
  `files` text NOT NULL,
  `upload_date` text NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `consultations`
--

CREATE TABLE `consultations` (
  `dateAndTime` datetime NOT NULL,
  `dietitianID` varchar(25) NOT NULL,
  `clientID` varchar(25) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `conversation_id` int NOT NULL,
  `user_1` int NOT NULL,
  `user_2` int NOT NULL,
  `convo_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`conversation_id`, `user_1`, `user_2`, `convo_time`) VALUES
(1, 2, 1, '2023-02-17 11:06:31'),
(2, 3, 2, '2023-02-17 11:06:31'),
(3, 4, 1, '2023-02-17 11:06:31'),
(4, 4, 2, '2023-02-17 11:06:31'),
(5, 4, 3, '2023-02-17 11:06:31'),
(6, 1, 2, '2023-02-17 11:06:31'),
(10, 6, 1, '2023-02-22 19:43:06'),
(11, 6, 3, '2023-02-27 23:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `createplan`
--

CREATE TABLE `createplan` (
  `plan_id` int NOT NULL,
  `profile` text NOT NULL,
  `name` varchar(30) NOT NULL,
  `tags` text NOT NULL,
  `duration` varchar(25) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `create_client`
--

CREATE TABLE `create_client` (
  `dietitianuserID` varchar(30) NOT NULL,
  `clientName` varchar(30) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `age` int NOT NULL,
  `height` int NOT NULL,
  `weight` int NOT NULL,
  `about` text NOT NULL,
  `description` text NOT NULL,
  `title` text NOT NULL,
  `plantitle` text NOT NULL,
  `plandescription` text NOT NULL,
  `referalcode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `create_event`
--

CREATE TABLE `create_event` (
  `eventID` int NOT NULL,
  `dietitianuserID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `eventname` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `clientuserid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `meeting_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `place_of_meeting` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `attachment` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `create_event`
--

INSERT INTO `create_event` (`eventID`, `dietitianuserID`, `eventname`, `clientuserid`, `meeting_type`, `start_date`, `end_date`, `place_of_meeting`, `description`, `attachment`) VALUES
(1, 'admin', 'Event-1', 'rahul_sharma', 'online', '2023-03-11 15:02:47', '2023-03-12 15:02:47', 'Kolkata', 'awareness', 'files');

-- --------------------------------------------------------

--
-- Table structure for table `create_plan`
--

CREATE TABLE `create_plan` (
  `plan_id` int NOT NULL,
  `dietitian_id` int NOT NULL,
  `profile` text,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `duration` varchar(25) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `features` varchar(255) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `create_plan`
--

INSERT INTO `create_plan` (`plan_id`, `dietitian_id`, `profile`, `image`, `name`, `tags`, `duration`, `start_date`, `end_date`, `features`, `description`, `price`) VALUES
(1, 1, 'Lose Weight', NULL, 'Lose Weight', 'Keto Diet , Vegan Diet', '2', '2023-03-09', '2023-05-09', 'affordable ', 'very cost effective', 1000),
(2, 2, 'Lose Weight', NULL, 'Gain Weight', 'Keto Diet , Vegan Diet', '2', '2023-03-09', '2023-05-09', 'affordable ', 'very cost effective', 1200);

-- --------------------------------------------------------

--
-- Table structure for table `daily_meals`
--

CREATE TABLE `daily_meals` (
  `clientID` varchar(25) NOT NULL,
  `name` varchar(30) NOT NULL,
  `calorie` varchar(30) NOT NULL,
  `protein` varchar(30) NOT NULL,
  `fibre` varchar(30) NOT NULL,
  `carb` varchar(30) NOT NULL,
  `fat` varchar(30) NOT NULL,
  `time` varchar(5) NOT NULL,
  `goal` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dietian_recipies`
--

CREATE TABLE `dietian_recipies` (
  `name` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `serving` int NOT NULL,
  `link` text NOT NULL,
  `calories` int NOT NULL,
  `proteins` int NOT NULL,
  `fats` int NOT NULL,
  `fibres` int NOT NULL,
  `carbs` int NOT NULL,
  `ingredient` text NOT NULL,
  `instruction` text NOT NULL,
  `category` varchar(200) NOT NULL,
  `dietitianuserID` varchar(200) NOT NULL,
  `image` text NOT NULL,
  `file` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dietitian`
--

CREATE TABLE `dietitian` (
  `dietitianuserID` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `dietitian_id` int NOT NULL,
  `password` varchar(12) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `qualification` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `profilePhoto` blob,
  `p_p` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'user-default.png',
  `location` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `experience` float DEFAULT NULL,
  `about_me` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `no_of_clients` int DEFAULT NULL,
  `referral_code` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_seen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dietitian`
--

INSERT INTO `dietitian` (`dietitianuserID`, `dietitian_id`, `password`, `name`, `qualification`, `email`, `mobile`, `profilePhoto`, `p_p`, `location`, `age`, `gender`, `experience`, `about_me`, `no_of_clients`, `referral_code`, `facebook`, `whatsapp`, `twitter`, `linkedin`, `instagram`, `last_seen`) VALUES
('admin', 1, '123', 'John Wayne', 'Btech', 'email@gmail.com', '9988775522', NULL, 'user-default.png', 'India', 45, 'm', 16, '151', 1, '', NULL, NULL, NULL, NULL, NULL, '2023-04-26 15:13:51'),
('Anupam', 2, '12345', 'Anupam Manna', 'not verified', 'its7080@outlook.com', '7059141480', NULL, 'user-default.png', 'set new location', NULL, NULL, NULL, 'infits', NULL, 'Undefine', NULL, NULL, NULL, NULL, NULL, '2023-04-06 11:20:49'),
('3', 3, '12345', 'Mary Jane', 'verified', 'maryjane@gmail.com', '9988776655', 0x494d472d36343330313764326332666465312e37383031353838312e6a70677c2e2f696d616765732f494d472d36343330313764326332666465312e37383031353838312e6a7067, 'user-default.png', 'Pune', 30, 'female', 9, 'infits', NULL, 'Undefine', NULL, NULL, NULL, NULL, NULL, '2023-04-06 11:23:47'),
('4', 4, '12345', 'Jane Foster', 'verified', 'jane@gmail.com', '1472583690', 0x494d472d36343330303961303935393431332e35373736333036352e6a70677c2e2f696d616765732f494d472d36343330303961303935393431332e35373736333036352e6a7067, 'user-default.png', 'Indore', 35, 'female', 5, 'infits', NULL, 'Undefine', NULL, NULL, NULL, NULL, NULL, '2023-04-06 13:58:11'),
('5', 5, '12345', 'Resham Kumari', 'verified', 'resham@gmail.com', '9876543210', NULL, 'user-default.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-06 14:58:04');

-- --------------------------------------------------------

--
-- Table structure for table `dietitian_client`
--

CREATE TABLE `dietitian_client` (
  `dietitian_client_id` int NOT NULL,
  `dietitianID` int NOT NULL,
  `clientID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dietitian_client`
--

INSERT INTO `dietitian_client` (`dietitian_client_id`, `dietitianID`, `clientID`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `diet_chart`
--

CREATE TABLE `diet_chart` (
  `dietitianuserID` varchar(30) NOT NULL,
  `clientID` varchar(30) NOT NULL,
  `sunday` longtext NOT NULL,
  `monday` text NOT NULL,
  `tuesday` text NOT NULL,
  `wednesday` text NOT NULL,
  `thursday` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `friday` text NOT NULL,
  `saturday` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_data_base_for_diet_chart`
--

CREATE TABLE `food_data_base_for_diet_chart` (
  `name` varchar(50) NOT NULL,
  `calorie` int NOT NULL,
  `description` text NOT NULL,
  `nutrients` text NOT NULL,
  `ingredients` text NOT NULL,
  `photo` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `preparation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_info`
--

CREATE TABLE `food_info` (
  `name` varchar(30) NOT NULL,
  `calorie` varchar(10) NOT NULL,
  `protein` varchar(10) NOT NULL,
  `fibre` varchar(10) NOT NULL,
  `carb` varchar(10) NOT NULL,
  `fat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE `goals` (
  `goal_id` int NOT NULL,
  `dietition_id` int NOT NULL,
  `client_id` int NOT NULL,
  `steps` int NOT NULL,
  `heart` int NOT NULL,
  `water` int NOT NULL,
  `weight` int NOT NULL,
  `sleep` int NOT NULL,
  `calorie` int NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `goals`
--

INSERT INTO `goals` (`goal_id`, `dietition_id`, `client_id`, `steps`, `heart`, `water`, `weight`, `sleep`, `calorie`, `time`) VALUES
(1, 1, 1, 3000, 90, 4000, 50, 8, 3000, '2023-03-12 06:04:11');

-- --------------------------------------------------------

--
-- Table structure for table `heartrate`
--

CREATE TABLE `heartrate` (
  `clientID` varchar(30) NOT NULL,
  `average` varchar(4) NOT NULL,
  `dateandtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `maximum` text NOT NULL,
  `minimum` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `in_app_notifications`
--

CREATE TABLE `in_app_notifications` (
  `clientID` varchar(25) NOT NULL,
  `type` varchar(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `text` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `in_app_notifications`
--

INSERT INTO `in_app_notifications` (`clientID`, `type`, `date`, `text`) VALUES
('user1', 'sleep', '2023-04-02 05:47:42', 'You slept for 00 hours, 01 minutes, 04 seconds.'),
('user1', 'sleep', '2023-04-02 05:47:42', 'You slept for 00 hours, 01 minutes, 04 seconds.'),
('user1', 'sleep', '2023-03-05 03:40:09', 'You slept for 00 hours, 02 minutes, 29 seconds.'),
('user1', 'sleep', '2023-03-06 03:45:28', 'You slept for 00 hours, 04 minutes, 04 seconds.'),
('user1', 'sleep', '2023-03-06 03:45:28', 'You slept for 00 hours, 04 minutes, 04 seconds.'),
('user1', 'sleep', '2023-03-07 03:48:02', 'You slept for 00 hours, 01 minutes, 31 seconds.'),
('user1', 'sleep', '2023-03-07 03:48:02', 'You slept for 00 hours, 01 minutes, 31 seconds.'),
('user1', 'sleep', '2023-04-06 01:11:35', 'You slept for 00 hours, 01 minutes, 20 seconds.'),
('user1', 'sleep', '2023-04-06 01:11:35', 'You slept for 00 hours, 01 minutes, 20 seconds.'),
('user1', 'sleep', '2023-04-06 01:17:15', 'You slept for 00 hours, 01 minutes, 36 seconds.'),
('user1', 'sleep', '2023-04-06 01:17:15', 'You slept for 00 hours, 01 minutes, 36 seconds.'),
('user1', 'sleep', '2023-04-06 01:24:01', 'You slept for 00 hours, 01 minutes, 07 seconds.'),
('user1', 'sleep', '2023-04-06 01:24:57', 'You slept for 00 hours, 00 minutes, 11 seconds.'),
('user1', 'sleep', '2023-04-06 01:24:57', 'You slept for 00 hours, 00 minutes, 11 seconds.'),
('user1', 'sleep', '2023-04-07 04:35:07', 'You slept for 00 hours, 02 minutes, 31 seconds.'),
('user1', 'sleep', '2023-04-07 04:35:07', 'You slept for 00 hours, 02 minutes, 31 seconds.'),
('user1', 'sleep', '2023-04-07 04:36:05', 'You slept for 00 hours, 00 minutes, 12 seconds.'),
('user1', 'sleep', '2023-04-07 04:36:05', 'You slept for 00 hours, 00 minutes, 12 seconds.'),
('user1', 'sleep', '2023-04-07 04:41:20', 'You slept for 00 hours, 00 minutes, 04 seconds.'),
('user1', 'sleep', '2023-04-07 04:41:20', 'You slept for 00 hours, 00 minutes, 04 seconds.'),
('user1', 'sleep', '2023-04-07 04:43:44', 'You slept for 00 hours, 00 minutes, 07 seconds.'),
('user1', 'sleep', '2023-04-07 04:47:13', 'You slept for 00 hours, 00 minutes, 16 seconds.'),
('user1', 'sleep', '2023-04-07 04:47:13', 'You slept for 00 hours, 00 minutes, 16 seconds.'),
('user1', 'sleep', '2023-04-07 04:59:11', 'You slept for 00 hours, 00 minutes, 29 seconds.'),
('user1', 'sleep', '2023-04-07 05:13:48', 'You slept for 00 hours, 00 minutes, 20 seconds.'),
('user1', 'sleep', '2023-04-07 10:09:17', 'You slept for 00 hours, 00 minutes, 30 seconds.'),
('user1', 'sleep', '2023-04-07 10:13:32', 'You slept for 00 hours, 00 minutes, 46 seconds.'),
('user1', 'sleep', '2023-04-07 10:24:18', 'You slept for 00 hours, 00 minutes, 10 seconds.');

-- --------------------------------------------------------

--
-- Table structure for table `live`
--

CREATE TABLE `live` (
  `dietitianuserID` varchar(30) NOT NULL,
  `dateandtime` datetime NOT NULL,
  `title` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(40) NOT NULL,
  `viewer` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mealtracker`
--

CREATE TABLE `mealtracker` (
  `name` text NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `date` text NOT NULL,
  `time` text NOT NULL,
  `meal` varchar(30) NOT NULL,
  `clientID` varchar(30) NOT NULL,
  `position` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `dietitianID` varchar(25) NOT NULL,
  `clientID` varchar(25) NOT NULL,
  `message` varchar(300) NOT NULL,
  `messageBy` varchar(10) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `dietition_id` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `read_or_not` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`dietition_id`, `message`, `time`, `read_or_not`) VALUES
('1', 'you have a new message!', '2023-03-13 16:28:53', 0);

-- --------------------------------------------------------

--
-- Table structure for table `referral_table`
--

CREATE TABLE `referral_table` (
  `clientID` varchar(25) NOT NULL,
  `referralCode` varchar(8) NOT NULL,
  `activeUsers` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sample`
--

CREATE TABLE `sample` (
  `name` varchar(30) NOT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL,
  `value` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sleeptracker`
--

CREATE TABLE `sleeptracker` (
  `ID` int NOT NULL,
  `sleeptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `waketime` timestamp NULL DEFAULT NULL,
  `clientID` varchar(25) NOT NULL,
  `hrsSlept` int DEFAULT NULL,
  `goal` int NOT NULL,
  `minsSlept` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `steptracker`
--

CREATE TABLE `steptracker` (
  `step_id` int NOT NULL,
  `steps` text COLLATE utf8mb4_general_ci NOT NULL,
  `dateandtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `avgspeed` text COLLATE utf8mb4_general_ci NOT NULL,
  `distance` text COLLATE utf8mb4_general_ci NOT NULL,
  `calories` text COLLATE utf8mb4_general_ci NOT NULL,
  `goal` text COLLATE utf8mb4_general_ci NOT NULL,
  `clientuserID` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `clientID` int NOT NULL,
  `dietitian_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `steptracker`
--

INSERT INTO `steptracker` (`step_id`, `steps`, `dateandtime`, `avgspeed`, `distance`, `calories`, `goal`, `clientuserID`, `clientID`, `dietitian_id`) VALUES
(1, '0', '2023-03-29 04:19:46', '0', '0', '0', '78954.0', 'rahul_sharma', 1, 1),
(2, '0', '2023-03-29 04:19:48', '0', '0', '0', '78954.0', 'rahul_sharma', 1, 1),
(3, '0', '2023-03-29 04:23:14', '0', '0', '0', '8877.0', 'rahul_sharma', 1, 1),
(4, '0', '2023-04-01 07:49:15', '0', '0', '0', '656.0', 'rahul_sharma', 1, 1),
(10, '0', '2023-04-03 07:10:12', '0', '0', '0', '1000', 'rahul_sharma', 1, 1),
(11, '0', '2023-04-04 07:10:12', '0', '0', '0', '1000', 'rahul_sharma', 1, 1),
(12, '0', '2023-04-05 07:10:12', '0', '0', '0', '1000', 'rahul_sharma', 1, 1),
(13, '0', '2023-04-06 07:10:12', '0', '0', '0', '2000', 'rahul_sharma', 1, 1),
(14, '0', '2023-04-07 07:10:12', '0', '0', '0', '2000', 'rahul_sharma', 1, 1),
(15, '0', '2023-04-08 07:10:12', '0', '0', '0', '2000', 'rahul_sharma', 1, 1),
(16, '1000', '2023-04-08 09:40:37', '0', '0', '0', '2232.0', 'rahul_sharma', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscribedclient`
--

CREATE TABLE `subscribedclient` (
  `clientID` int NOT NULL,
  `plan` int NOT NULL,
  `startdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `enddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dietChart` varchar(30) DEFAULT NULL,
  `dietitianID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subscribedclient`
--

INSERT INTO `subscribedclient` (`clientID`, `plan`, `startdate`, `enddate`, `dietChart`, `dietitianID`) VALUES
(1, 1, '2023-03-12 06:31:00', '2023-03-12 06:31:00', 'good', 1);

-- --------------------------------------------------------

--
-- Table structure for table `template_name`
--

CREATE TABLE `template_name` (
  `template_name` varchar(30) NOT NULL,
  `diet_chart` text NOT NULL,
  `dietitianuserID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `watertracker`
--

CREATE TABLE `watertracker` (
  `water_id` int NOT NULL,
  `drinkConsumed` int NOT NULL DEFAULT '0',
  `goal` int NOT NULL DEFAULT '1800',
  `date` date NOT NULL,
  `clientuserID` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `time` text NOT NULL,
  `type` text,
  `amount` int NOT NULL,
  `clientID` int NOT NULL,
  `dietitian_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `watertracker`
--

INSERT INTO `watertracker` (`water_id`, `drinkConsumed`, `goal`, `date`, `clientuserID`, `time`, `type`, `amount`, `clientID`, `dietitian_id`) VALUES
(4, 1468, 2423, '2023-04-07', 'rahul_sharma', '11:35:29', 'water', 59, 1, 1),
(7, 500, 0, '2023-04-07', 'rahul_sharma', '12:09:29', 'soda', 250, 1, 1),
(8, 1064, 2353, '2023-04-08', 'rahul_sharma', '12:34:29', 'water', 250, 1, 1),
(9, 1996, 3121, '2023-04-08', 'rahul_sharma', '12:31:28', 'coffee', 250, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `watertrackerdt`
--

CREATE TABLE `watertrackerdt` (
  `drinkConsumed` int NOT NULL,
  `goal` int NOT NULL DEFAULT '1800',
  `dateandtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `clientID` varchar(25) NOT NULL,
  `type` text NOT NULL,
  `amount` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `watertrackerdt`
--

INSERT INTO `watertrackerdt` (`drinkConsumed`, `goal`, `dateandtime`, `clientID`, `type`, `amount`) VALUES
(0, 8899, '2023-04-02 01:46:15', 'kamboj', 'water', 0),
(0, 88996, '2023-04-02 02:18:14', 'kamboj', 'soda', 0),
(500, 1000, '2023-04-02 02:18:44', 'kamboj', 'soda', 0),
(0, 8888, '2023-04-02 03:11:13', 'kamboj', 'water', 0),
(0, 222, '2023-04-02 03:12:00', 'kamboj', 'water', 0),
(250, 1212, '2023-04-02 12:30:00', 'kamboj', 'water', 0),
(0, 2233, '2023-04-01 12:30:00', 'kamboj', 'water', 0),
(0, 223, '2023-04-01 12:30:00', 'kamboj', 'water', 0),
(0, 223, '2023-03-31 12:30:00', 'kamboj', 'water', 0),
(200, 223, '2023-04-01 12:30:00', 'kamboj', 'water', 0),
(0, 223, '2023-03-29 12:30:00', 'kamboj', 'water', 0),
(20, 223, '2023-03-29 12:30:00', 'kamboj', 'water', 0),
(300, 980, '2023-03-30 12:30:00', 'kamboj', 'water', 0);

-- --------------------------------------------------------

--
-- Table structure for table `weighttracker`
--

CREATE TABLE `weighttracker` (
  `weight_id` int NOT NULL,
  `date` date DEFAULT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `bmi` float NOT NULL,
  `goal` float NOT NULL,
  `clientID` int NOT NULL,
  `clientuserID` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dietitian_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `weighttracker`
--

INSERT INTO `weighttracker` (`weight_id`, `date`, `height`, `weight`, `bmi`, `goal`, `clientID`, `clientuserID`, `dietitian_id`) VALUES
(1, '2023-03-01', 182, 86, 25.96, 70, 1, 'rahul_sharma', 1),
(2, '2023-03-02', 182, 86, 25.96, 70, 1, 'rahul_sharma', 1),
(3, '2023-03-03', 182, 86, 25.96, 70, 1, 'rahul_sharma', 1),
(4, '2023-03-04', 182, 87, 26.26, 70, 1, 'rahul_sharma', 1),
(5, '2023-03-05', 182, 87, 26.26, 70, 1, 'rahul_sharma', 1),
(6, '2023-03-06', 182, 87, 26.26, 70, 1, 'rahul_sharma', 1),
(7, '2023-03-07', 182, 87, 26.26, 70, 1, 'rahul_sharma', 1),
(8, '2023-03-08', 182, 88, 26.57, 70, 1, 'rahul_sharma', 1),
(9, '2023-03-09', 182, 88, 26.57, 70, 1, 'rahul_sharma', 1),
(10, '2023-03-11', 182, 87, 26.26, 70, 1, 'rahul_sharma', 1),
(11, '2023-03-10', 182, 87, 26.26, 70, 1, 'rahul_sharma', 1),
(12, '2023-03-12', 182, 87, 26.26, 70, 1, 'rahul_sharma', 1),
(13, '2023-03-13', 182, 87, 26.26, 70, 1, 'rahul_sharma', 1),
(14, '2023-03-14', 182, 87, 26.26, 70, 1, 'rahul_sharma', 1),
(15, '2023-03-15', 182, 87, 26.26, 70, 1, 'rahul_sharma', 1),
(16, '2023-03-16', 182, 86, 25.96, 70, 1, 'rahul_sharma', 1),
(17, '2023-03-17', 182, 86, 25.96, 70, 1, 'rahul_sharma', 1),
(18, '2023-03-18', 182, 86, 25.96, 70, 1, 'rahul_sharma', 1),
(19, '2023-03-19', 182, 86, 25.96, 70, 1, 'rahul_sharma', 1),
(20, '2023-03-20', 182, 85, 25.66, 70, 1, 'rahul_sharma', 1),
(21, '2023-03-21', 182, 86, 25.96, 70, 1, 'rahul_sharma', 1),
(22, '2023-03-22', 182, 85, 25.66, 70, 1, 'rahul_sharma', 1),
(23, '2023-03-23', 182, 85, 25.66, 70, 1, 'rahul_sharma', 1),
(24, '2023-03-24', 182, 84, 25.36, 70, 1, 'rahul_sharma', 1),
(25, '2023-03-25', 182, 85, 25.66, 70, 1, 'rahul_sharma', 1),
(26, '2023-03-26', 182, 84, 25.36, 70, 1, 'rahul_sharma', 1),
(27, '2023-03-27', 182, 84, 25.36, 70, 1, 'rahul_sharma', 1),
(28, '2023-03-28', 182, 83, 25.06, 70, 1, 'rahul_sharma', 1),
(29, '2023-03-29', 182, 83, 25.06, 70, 1, 'rahul_sharma', 1),
(30, '2023-03-30', 182, 83, 25.06, 70, 1, 'rahul_sharma', 1),
(31, '2023-03-31', 182, 84, 25.36, 70, 1, 'rahul_sharma', 1),
(32, '2023-04-01', 182, 83, 25.06, 70, 1, 'rahul_sharma', 1),
(33, '2023-04-02', 182, 84, 25.36, 70, 1, 'rahul_sharma', 1),
(34, '2023-04-03', 182, 83, 25.06, 70, 1, 'rahul_sharma', 1),
(35, '2023-04-04', 182, 83, 25.06, 70, 1, 'rahul_sharma', 1),
(39, '2023-04-06', 182, 85, 25.66, 70, 1, 'rahul_sharma', 1),
(40, '2023-04-05', 182, 83, 25.06, 70, 1, 'rahul_sharma', 1),
(41, '2023-04-07', 182, 85, 25.66, 70, 1, 'rahul_sharma', 1),
(42, '2023-04-08', 182, 84, 25.36, 70, 1, 'rahul_sharma', 1),
(43, '2023-04-25', 182, 85, 25.66, 70, 1, 'rahul_sharma', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addclient`
--
ALTER TABLE `addclient`
  ADD PRIMARY KEY (`addclient_id`),
  ADD KEY `dietitian_id` (`dietitian_id`),
  ADD KEY `plan_id` (`plan_id`);

--
-- Indexes for table `calorietracker`
--
ALTER TABLE `calorietracker`
  ADD UNIQUE KEY `time` (`time`),
  ADD KEY `calorietracker_fk` (`clientID`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`clientuserID`),
  ADD KEY `dietitian_id` (`dietitian_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `consultations`
--
ALTER TABLE `consultations`
  ADD UNIQUE KEY `dateAndTime` (`dateAndTime`),
  ADD KEY `consultation_fk1` (`dietitianID`),
  ADD KEY `consultation_fk2` (`clientID`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`conversation_id`);

--
-- Indexes for table `createplan`
--
ALTER TABLE `createplan`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `create_event`
--
ALTER TABLE `create_event`
  ADD PRIMARY KEY (`eventID`);

--
-- Indexes for table `create_plan`
--
ALTER TABLE `create_plan`
  ADD PRIMARY KEY (`plan_id`),
  ADD KEY `dietitian_id` (`dietitian_id`);

--
-- Indexes for table `dietitian`
--
ALTER TABLE `dietitian`
  ADD PRIMARY KEY (`dietitian_id`),
  ADD UNIQUE KEY `dietitian_id` (`dietitian_id`),
  ADD KEY `dietitian_id_2` (`dietitian_id`);

--
-- Indexes for table `dietitian_client`
--
ALTER TABLE `dietitian_client`
  ADD PRIMARY KEY (`dietitian_client_id`),
  ADD KEY `dietitianID` (`dietitianID`),
  ADD KEY `clientID` (`clientID`);

--
-- Indexes for table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`goal_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `goals_ibfk_1` (`dietition_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`dietitianID`,`clientID`,`message`,`time`),
  ADD KEY `messages_fk2` (`clientID`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD KEY `dietition_id` (`dietition_id`) USING BTREE;

--
-- Indexes for table `sleeptracker`
--
ALTER TABLE `sleeptracker`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Forgin key` (`clientID`);

--
-- Indexes for table `steptracker`
--
ALTER TABLE `steptracker`
  ADD PRIMARY KEY (`step_id`);

--
-- Indexes for table `subscribedclient`
--
ALTER TABLE `subscribedclient`
  ADD PRIMARY KEY (`clientID`,`plan`,`dietitianID`),
  ADD UNIQUE KEY `clientID` (`clientID`),
  ADD KEY `subscribed_client_fl1` (`clientID`),
  ADD KEY `subscribed_client_fk2` (`dietitianID`),
  ADD KEY `plan` (`plan`);

--
-- Indexes for table `template_name`
--
ALTER TABLE `template_name`
  ADD PRIMARY KEY (`template_name`);

--
-- Indexes for table `watertracker`
--
ALTER TABLE `watertracker`
  ADD PRIMARY KEY (`water_id`),
  ADD KEY `watertracker_fk` (`clientuserID`),
  ADD KEY `dietitian_id` (`dietitian_id`),
  ADD KEY `clientID` (`clientID`);

--
-- Indexes for table `weighttracker`
--
ALTER TABLE `weighttracker`
  ADD PRIMARY KEY (`weight_id`),
  ADD KEY `weighttracker_fk` (`clientuserID`),
  ADD KEY `dietitian_id` (`dietitian_id`),
  ADD KEY `clientID` (`clientID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addclient`
--
ALTER TABLE `addclient`
  MODIFY `addclient_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `chat_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `conversation_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `createplan`
--
ALTER TABLE `createplan`
  MODIFY `plan_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `create_event`
--
ALTER TABLE `create_event`
  MODIFY `eventID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `create_plan`
--
ALTER TABLE `create_plan`
  MODIFY `plan_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dietitian`
--
ALTER TABLE `dietitian`
  MODIFY `dietitian_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dietitian_client`
--
ALTER TABLE `dietitian_client`
  MODIFY `dietitian_client_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sleeptracker`
--
ALTER TABLE `sleeptracker`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `steptracker`
--
ALTER TABLE `steptracker`
  MODIFY `step_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `watertracker`
--
ALTER TABLE `watertracker`
  MODIFY `water_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `weighttracker`
--
ALTER TABLE `weighttracker`
  MODIFY `weight_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addclient`
--
ALTER TABLE `addclient`
  ADD CONSTRAINT `addclient_ibfk_2` FOREIGN KEY (`dietitian_id`) REFERENCES `dietitian` (`dietitian_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `addclient_ibfk_3` FOREIGN KEY (`plan_id`) REFERENCES `create_plan` (`plan_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `calorietracker`
--
ALTER TABLE `calorietracker`
  ADD CONSTRAINT `calorietracker_fk` FOREIGN KEY (`clientID`) REFERENCES `client` (`clientuserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `consultations`
--
ALTER TABLE `consultations`
  ADD CONSTRAINT `consultation_fk2` FOREIGN KEY (`clientID`) REFERENCES `client` (`clientuserID`);

--
-- Constraints for table `create_plan`
--
ALTER TABLE `create_plan`
  ADD CONSTRAINT `create_plan_ibfk_1` FOREIGN KEY (`dietitian_id`) REFERENCES `dietitian` (`dietitian_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `dietitian_client`
--
ALTER TABLE `dietitian_client`
  ADD CONSTRAINT `dietitian_client_ibfk_1` FOREIGN KEY (`dietitianID`) REFERENCES `dietitian` (`dietitian_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `dietitian_client_ibfk_2` FOREIGN KEY (`clientID`) REFERENCES `client` (`client_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `sleeptracker`
--
ALTER TABLE `sleeptracker`
  ADD CONSTRAINT `Forgin key` FOREIGN KEY (`clientID`) REFERENCES `client` (`clientuserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subscribedclient`
--
ALTER TABLE `subscribedclient`
  ADD CONSTRAINT `subscribedclient_ibfk_1` FOREIGN KEY (`clientID`) REFERENCES `client` (`client_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `subscribedclient_ibfk_2` FOREIGN KEY (`plan`) REFERENCES `create_plan` (`plan_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `watertracker`
--
ALTER TABLE `watertracker`
  ADD CONSTRAINT `watertracker_fk` FOREIGN KEY (`clientuserID`) REFERENCES `client` (`clientuserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `weighttracker`
--
ALTER TABLE `weighttracker`
  ADD CONSTRAINT `weighttracker_fk` FOREIGN KEY (`clientuserID`) REFERENCES `client` (`clientuserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `weighttracker_ibfk_1` FOREIGN KEY (`dietitian_id`) REFERENCES `client` (`dietitian_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `weighttracker_ibfk_2` FOREIGN KEY (`clientID`) REFERENCES `client` (`client_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
