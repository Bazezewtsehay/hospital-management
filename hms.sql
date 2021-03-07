-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2021 at 05:24 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'ad', 'admin@123', '28-12-2016 11:42:05 AM'),
(8, 'test2', '123456', ''),
(10, 'math', 'MMMmmm@3', ''),
(11, 'mat', '123456', ''),
(12, 'zz', '123456', '');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `consultancyFees` int(11) NOT NULL,
  `appointmentDate` varchar(255) NOT NULL,
  `appointmentTime` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `userStatus` int(11) NOT NULL,
  `doctorStatus` int(11) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'Dentist', 1, 1, 500, '2021-01-07', '09:25', '2021-01-01 00:29:02', 1, 0, ''),
(2, 'Homeopath', 4, 5, 700, '2021-01-11', '14:10', '2021-01-07 08:02:58', 0, 1, ''),
(3, 'Demo test', 7, 7, 200, '2021-01-20', '2:15 PM', '2021-01-10 11:02:41', 1, 1, ''),
(4, 'Demo test', 7, 7, 200, '2021-01-10', '2:15 PM', '2021-01-10 11:04:00', 1, 1, ''),
(5, 'Demo test', 7, 7, 200, '2021-01-10', '2:30 PM', '2021-01-10 11:18:05', 1, 1, ''),
(6, 'General Physician', 8, 8, 250, '2021-01-07', '10:45 PM', '2021-01-10 19:35:37', 1, 1, ''),
(7, 'Dentist', 1, 1, 500, '2016-12-31', '09:25', '2019-12-31 23:29:02', 1, 0, ''),
(8, 'Homeopath', 4, 5, 700, '2020-01-11', '14:10', '2020-01-07 07:02:58', 0, 1, ''),
(9, 'Demo test', 7, 7, 200, '2021-01-20', '2:15 PM', '2021-01-10 10:02:41', 1, 1, ''),
(10, 'Demo test', 7, 7, 200, '2021-01-10', '2:15 PM', '2021-01-10 10:04:00', 1, 1, ''),
(11, 'Demo test', 7, 7, 200, '2021-01-10', '2:30 PM', '2021-01-10 10:18:05', 1, 1, ''),
(12, 'General Physician', 8, 8, 250, '2021-01-07', '10:45 PM', '2021-01-10 18:35:37', 1, 1, ''),
(13, 'General Physician', 8, 8, 250, '2021-02-06', '11:30 PM', '2021-02-05 22:18:30', 1, 1, ''),
(14, 'Dentist', 1, 1, 500, '2021-12-31', '09:25', '2021-02-19 23:29:02', 1, 0, ''),
(15, 'Homeopath', 4, 5, 700, '2017-01-11', '14:10', '2021-02-10 07:02:58', 0, 1, ''),
(16, 'Demo test', 7, 7, 200, '2021-01-20', '2:15 PM', '2021-01-10 10:02:41', 1, 1, ''),
(17, 'Demo test', 7, 7, 200, '2021-01-10', '2:15 PM', '2021-01-10 10:04:00', 1, 1, ''),
(18, 'Demo test', 7, 7, 200, '2021-01-10', '2:30 PM', '2021-01-10 10:18:05', 1, 1, ''),
(19, 'General Physician', 8, 8, 250, '2021-01-07', '10:45 PM', '2021-01-10 18:35:37', 1, 1, ''),
(20, 'General Physician', 8, 8, 250, '2021-03-01', '2:15 PM', '2021-02-25 13:11:18', 1, 1, ''),
(21, 'General Physician', 8, 12, 250, '2021-02-25', '3:40 PM', '2021-02-25 14:39:26', 1, 1, ''),
(22, 'Homeopath', 11, 13, 250, '2021-02-28', '11:00 PM', '2021-02-26 23:49:48', 1, 1, ''),
(23, 'Ayurveda', 12, 13, 250, '2021-03-03', '4:15 AM', '2021-02-27 00:09:22', 1, 1, ''),
(24, 'Ayurveda', 12, 13, 250, '2021-03-06', '3:15 AM', '2021-02-27 02:03:08', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `bed`
--

CREATE TABLE `bed` (
  `id` int(30) NOT NULL,
  `bedid` varchar(100) NOT NULL,
  `bedlocation` varchar(100) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bed`
--

INSERT INTO `bed` (`id`, `bedid`, `bedlocation`, `createdate`) VALUES
(1, '1001', 'first floor 3 4', '2021-03-03 00:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `depid` int(11) NOT NULL,
  `departmentName` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`depid`, `departmentName`, `creationDate`, `updationDate`) VALUES
(1, 'General', '2021-02-28 00:54:08', ''),
(3, 'Emergency department 5', '2021-02-28 00:55:18', '03-03-2021 03:46:40 AM'),
(4, 'Intensive care unit', '2021-02-28 00:55:18', ''),
(5, 'Physical therapy', '2021-02-28 00:55:18', ''),
(6, 'Psychiatric hospital', '2021-02-28 00:55:18', ''),
(7, 'Nersing ', '2021-03-02 22:17:29', ''),
(8, 'Nersing 1', '2021-03-02 22:18:38', '03-03-2021 03:51:30 AM');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `doctorName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `docFees` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `docEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(8, 'General Physician', 'MURAD12', 'Aser -  Zubairi Street', '250', 95556755, 'dc', '123456', '2021-01-10 19:19:53', ''),
(9, 'General Physician', 'melat', 'bolle airport', '250', 901933633, 'melat.bahiru@gmail.com', 'mELI@1212', '2021-02-25 14:51:00', ''),
(10, 'Dentist', 'ALi', 'Aser -  Zubairi Street', '240', 901933633, 'ali@gmail.com', 'MMMmmm@3', '2021-02-26 23:20:15', ''),
(11, 'Homeopath', 'Math', 'bolle- beside rawanda emassy', '250', 901933633, 'math', 'MMMmmm@3', '2021-02-26 23:41:59', ''),
(12, 'Ayurveda', 'zz', 'bolle- beside rawanda emassy', '250', 901933633, 'zz', '123456', '2021-02-27 00:05:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 8, 'dc', 0x3a3a3100000000000000000000000000, '2021-02-04 00:28:51', '04-02-2021 06:03:17 AM', 1),
(25, 8, 'dc', 0x3a3a3100000000000000000000000000, '2021-02-04 00:33:28', '', 1),
(26, 0, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-04 19:11:27', '', 0),
(27, 8, 'dc', 0x3a3a3100000000000000000000000000, '2021-02-04 19:11:39', '', 1),
(28, 8, 'dc', 0x3a3a3100000000000000000000000000, '2021-02-04 19:21:42', '', 1),
(29, 8, 'dc', 0x3a3a3100000000000000000000000000, '2021-02-04 19:25:34', '', 1),
(30, 8, 'dc', 0x3a3a3100000000000000000000000000, '2021-02-04 19:28:05', '', 1),
(31, 8, 'dc', 0x3a3a3100000000000000000000000000, '2021-02-04 19:34:51', '', 1),
(32, 0, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-04 21:43:54', '', 0),
(33, 0, 'dc', 0x3a3a3100000000000000000000000000, '2021-02-04 21:43:59', '', 0),
(34, 0, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-04 21:44:01', '', 0),
(35, 8, 'dc', 0x3a3a3100000000000000000000000000, '2021-02-04 21:44:07', '', 1),
(36, 8, 'dc', 0x3a3a3100000000000000000000000000, '2021-02-05 21:13:31', '', 1),
(37, 8, 'dc', 0x3a3a3100000000000000000000000000, '2021-02-05 21:20:20', '', 1),
(38, 8, 'dc', 0x3a3a3100000000000000000000000000, '2021-02-05 22:21:13', '', 1),
(39, 8, 'dc', 0x3a3a3100000000000000000000000000, '2021-02-05 23:28:04', '', 1),
(40, 8, 'dc', 0x3a3a3100000000000000000000000000, '2021-02-05 23:35:08', '', 1),
(41, 0, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-09 14:41:53', '', 0),
(42, 8, 'dc', 0x3a3a3100000000000000000000000000, '2021-02-09 14:42:00', '', 1),
(43, 8, 'dc', 0x3a3a3100000000000000000000000000, '2021-02-10 13:28:25', '', 1),
(44, 0, 'melat.bahiru@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-25 14:40:45', '', 0),
(45, 9, 'melat.bahiru@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-25 14:52:32', '', 1),
(46, 0, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-25 14:59:24', '', 0),
(47, 11, 'math', 0x3a3a3100000000000000000000000000, '2021-02-26 23:42:30', '', 1),
(48, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 00:05:22', '', 1),
(49, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 00:21:31', '27-02-2021 05:56:27 AM', 1),
(50, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 00:26:34', '', 1),
(51, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 00:26:48', '', 1),
(52, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 00:27:45', '', 1),
(53, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 00:29:30', '', 1),
(54, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 00:31:32', '', 1),
(55, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 00:31:40', '', 1),
(56, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 00:33:28', '27-02-2021 06:12:14 AM', 1),
(57, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 00:49:13', '', 1),
(58, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 00:49:23', '', 1),
(59, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 00:49:25', '', 1),
(60, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 00:49:27', '', 1),
(61, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 00:49:28', '', 1),
(62, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 00:49:29', '', 1),
(63, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 00:49:30', '', 1),
(64, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 00:49:31', '', 1),
(65, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 00:49:31', '', 1),
(66, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 00:50:27', '', 1),
(67, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 00:50:35', '', 1),
(68, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 00:51:20', '', 1),
(69, 0, 'mu@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-27 00:51:40', '', 0),
(70, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 00:58:12', '', 1),
(71, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 00:59:38', '27-02-2021 06:29:56 AM', 1),
(72, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 01:00:03', '', 1),
(73, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 01:02:03', '', 1),
(74, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 01:03:18', '', 1),
(75, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 01:04:18', '', 1),
(76, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 01:05:31', '', 1),
(77, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 01:09:35', '', 1),
(78, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 01:11:06', '', 1),
(79, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 01:11:11', '', 1),
(80, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 01:12:05', '', 1),
(81, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 01:12:06', '', 1),
(82, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 01:12:07', '', 1),
(83, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 01:12:07', '', 1),
(84, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 01:12:08', '', 1),
(85, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 01:12:09', '', 1),
(86, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 01:13:39', '', 1),
(87, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 01:13:51', '', 1),
(88, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 01:13:52', '', 1),
(89, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 01:13:53', '', 1),
(90, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 01:13:54', '', 1),
(91, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 01:13:55', '', 1),
(92, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 01:13:55', '', 1),
(93, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 01:13:56', '', 1),
(94, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 01:13:57', '', 1),
(95, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 01:14:41', '', 1),
(96, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 01:15:56', '', 1),
(97, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 01:19:38', '', 1),
(98, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 01:19:42', '', 1),
(99, 1, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 01:19:43', '', 1),
(100, 12, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 01:23:10', '', 1),
(101, 12, '', 0x3a3a3100000000000000000000000000, '2021-02-27 01:24:35', '', 1),
(102, 0, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 01:24:40', '', 0),
(103, 0, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 01:30:42', '', 0),
(104, 0, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 01:31:00', '', 0),
(105, 0, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 01:31:06', '', 0),
(106, 0, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 01:31:09', '', 0),
(107, 0, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 01:31:10', '', 0),
(108, 0, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 01:31:11', '', 0),
(109, 0, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 01:31:12', '', 0),
(110, 0, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-27 01:31:14', '', 0),
(111, 0, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 01:33:14', '', 0),
(112, 0, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 01:33:23', '', 0),
(113, 12, '', 0x3a3a3100000000000000000000000000, '2021-02-27 01:36:36', '', 1),
(114, 12, '', 0x3a3a3100000000000000000000000000, '2021-02-27 01:36:54', '', 1),
(115, 12, '', 0x3a3a3100000000000000000000000000, '2021-02-27 01:37:24', '', 1),
(116, 12, '', 0x3a3a3100000000000000000000000000, '2021-02-27 01:47:01', '', 1),
(117, 12, '', 0x3a3a3100000000000000000000000000, '2021-02-27 02:03:28', '', 1),
(118, 12, '', 0x3a3a3100000000000000000000000000, '2021-02-27 21:31:27', '', 1),
(119, 12, '', 0x3a3a3100000000000000000000000000, '2021-02-27 21:31:36', '', 1),
(120, 12, '', 0x3a3a3100000000000000000000000000, '2021-02-27 21:32:38', '', 1),
(121, 12, '', 0x3a3a3100000000000000000000000000, '2021-02-27 21:33:45', '', 1),
(122, 0, 'kk@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-02 18:54:21', '', 0),
(123, 0, 'dc', 0x3a3a3100000000000000000000000000, '2021-03-02 18:54:29', '', 0),
(124, 0, 'dc', 0x3a3a3100000000000000000000000000, '2021-03-02 18:54:38', '', 0),
(125, 0, 'dc', 0x3a3a3100000000000000000000000000, '2021-03-02 18:55:06', '', 0),
(126, 12, '', 0x3a3a3100000000000000000000000000, '2021-03-02 18:55:32', '', 1),
(127, 12, '', 0x3a3a3100000000000000000000000000, '2021-03-03 14:40:26', '', 1),
(128, 12, '', 0x3a3a3100000000000000000000000000, '2021-03-03 15:19:57', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2020-12-28 06:37:25', ''),
(2, 'General Physician', '2020-12-28 06:38:12', ''),
(3, 'Dermatologist', '2020-12-28 06:38:48', ''),
(4, 'Homeopath', '2020-12-28 06:39:26', ''),
(5, 'Ayurveda', '2020-12-28 06:39:51', ''),
(6, 'Dentist', '2020-12-28 06:40:08', ''),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2020-12-28 06:41:18', ''),
(9, 'Demo test', '2020-12-28 07:37:39', '28-12-2016 01:28:42 PM'),
(10, 'Bones Specialist demo', '2020-01-07 08:07:53', '07-01-2017 01:38:04 PM'),
(11, '111111', '2021-02-25 14:46:23', '');

-- --------------------------------------------------------

--
-- Table structure for table `laboratory`
--

CREATE TABLE `laboratory` (
  `id` int(11) NOT NULL,
  `patintid` varchar(100) NOT NULL,
  `laboratoryName` varchar(255) NOT NULL,
  `laboratoryReslt` varchar(100) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laboratory`
--

INSERT INTO `laboratory` (`id`, `patintid`, `laboratoryName`, `laboratoryReslt`, `creationDate`) VALUES
(14, '1', 'first test', 'i dont knpw', '2021-03-03 00:54:21'),
(15, '5', 'hvhvhvhv', '', '2021-03-02 00:30:27'),
(16, '7', 'bazaaazz  ', '', '2021-03-02 01:30:30'),
(18, '13', 'murad', 'good blood ', '2021-03-03 15:23:51'),
(19, '1', 'my may he get ..', 'i dont knpw', '2021-03-03 00:54:21'),
(20, '7', 'hhhhh', '', '2021-03-03 00:16:58'),
(21, '7', 'jbjbfhdsfd', '', '2021-03-03 00:18:49'),
(22, '7', 'nhhsdd', '', '2021-03-03 00:22:00'),
(23, '7', 'vcgfgfcfgc', '', '2021-03-03 00:24:53'),
(24, '13', 'blood ,urine test', 'good blood ', '2021-03-03 15:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `nurses`
--

CREATE TABLE `nurses` (
  `id` int(11) NOT NULL,
  `departments` varchar(255) NOT NULL,
  `nurseName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `nurEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Card_no` int(11) NOT NULL,
  `PatientName` varchar(255) NOT NULL,
  `Gender` varchar(30) NOT NULL,
  `docFees` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `Age` int(11) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `docEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reception`
--

CREATE TABLE `reception` (
  `id` int(30) NOT NULL,
  `receptionname` varchar(30) NOT NULL,
  `creatdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `roomno` varchar(255) NOT NULL,
  `roomlocation` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `roomno`, `roomlocation`, `updationDate`) VALUES
(1, '1023', 'First Floor Man Departmentr', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(6, 1, '', 0x3a3a3100000000000000000000000000, '2017-01-06 07:02:28', '', 1),
(7, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-06 07:04:28', '', 1),
(8, 0, 'admin', 0x3a3a3100000000000000000000000000, '2017-01-06 07:07:41', '06-01-2017 12:38:09 PM', 0),
(9, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-06 07:08:01', '', 1),
(10, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-06 07:10:09', '06-01-2017 12:41:43 PM', 1),
(11, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-07 07:57:18', '07-01-2017 01:27:34 PM', 1),
(12, 0, 'asdad', 0x3a3a3100000000000000000000000000, '2017-01-07 07:57:44', '', 0),
(13, 0, 'xyz@test.com', 0x3a3a3100000000000000000000000000, '2017-01-07 07:59:43', '', 0),
(14, 5, 'amit12@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:00:44', '07-01-2017 01:34:19 PM', 1),
(15, 0, 'admin', 0x3a3a3100000000000000000000000000, '2021-01-08 22:24:18', '', 0),
(16, 0, 'murad', 0x3a3a3100000000000000000000000000, '2021-01-08 22:28:09', '', 0),
(17, 0, 'murad', 0x3a3a3100000000000000000000000000, '2021-01-08 22:28:18', '', 0),
(18, 0, 'murad', 0x3a3a3100000000000000000000000000, '2021-01-08 22:28:29', '', 0),
(19, 0, 'murad@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-08 22:29:09', '', 0),
(20, 0, 'murad', 0x3a3a3100000000000000000000000000, '2021-01-08 22:29:15', '', 0),
(21, 0, 'murad', 0x3a3a3100000000000000000000000000, '2021-01-08 22:30:46', '', 0),
(22, 0, 'murad', 0x3a3a3100000000000000000000000000, '2021-01-08 22:30:55', '', 0),
(23, 0, 'murad', 0x3a3a3100000000000000000000000000, '2021-01-08 22:33:03', '', 0),
(24, 0, 'murad', 0x3a3a3100000000000000000000000000, '2021-01-08 22:33:18', '', 0),
(25, 0, 'murad', 0x3a3a3100000000000000000000000000, '2021-01-08 22:36:25', '', 0),
(26, 6, 'murad@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-08 22:37:26', '', 1),
(27, 6, 'murad@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-10 10:59:18', '', 1),
(28, 7, 'napolio2nd@test.com', 0x3a3a3100000000000000000000000000, '2021-01-10 11:23:00', '', 1),
(29, 7, 'napolio2nd@test.com', 0x3a3a3100000000000000000000000000, '2021-01-10 19:16:17', '', 1),
(30, 8, 'test2@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-10 19:34:19', '', 1),
(31, 0, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-02-05 21:16:05', '', 0),
(32, 0, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-02-05 22:15:29', '', 0),
(33, 0, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-02-05 22:15:55', '', 0),
(34, 0, 'test2', 0x3a3a3100000000000000000000000000, '2021-02-05 22:16:32', '', 0),
(35, 0, 'test2', 0x3a3a3100000000000000000000000000, '2021-02-05 22:16:49', '', 0),
(36, 8, 'test2@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-05 22:17:34', '', 1),
(37, 0, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-02-05 23:38:21', '', 0),
(38, 0, 'test2', 0x3a3a3100000000000000000000000000, '2021-02-05 23:38:34', '', 0),
(39, 0, 'test2', 0x3a3a3100000000000000000000000000, '2021-02-05 23:38:53', '', 0),
(40, 8, 'test2@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-05 23:39:23', '', 1),
(41, 8, 'test2@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-05 23:40:02', '', 1),
(42, 0, 'tast2', 0x3a3a3100000000000000000000000000, '2021-02-07 08:54:29', '', 0),
(43, 0, 'test2@demo.com', 0x3a3a3100000000000000000000000000, '2021-02-07 08:54:39', '', 0),
(44, 0, 'dc', 0x3a3a3100000000000000000000000000, '2021-02-07 08:54:46', '', 0),
(45, 0, 'dc', 0x3a3a3100000000000000000000000000, '2021-02-07 08:54:50', '', 0),
(46, 8, 'test2@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-07 08:56:13', '', 1),
(47, 0, 'test2@demo.com', 0x3a3a3100000000000000000000000000, '2021-02-07 20:43:54', '', 0),
(48, 0, 'test2', 0x3a3a3100000000000000000000000000, '2021-02-07 20:44:06', '', 0),
(49, 8, 'test2', 0x3a3a3100000000000000000000000000, '2021-02-07 20:47:04', '08-02-2021 02:26:54 AM', 1),
(50, 8, 'test2', 0x3a3a3100000000000000000000000000, '2021-02-07 21:56:55', '', 1),
(51, 8, 'test2', 0x3a3a3100000000000000000000000000, '2021-02-09 14:41:02', '', 1),
(52, 0, 'ad', 0x3a3a3100000000000000000000000000, '2021-02-24 22:42:17', '', 0),
(53, 0, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-02-24 22:42:30', '', 0),
(54, 6, 'murad@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-24 22:42:38', '25-02-2021 04:12:53 AM', 1),
(55, 0, 'test', 0x3a3a3100000000000000000000000000, '2021-02-25 13:09:14', '', 0),
(56, 8, 'test2', 0x3a3a3100000000000000000000000000, '2021-02-25 13:09:23', '', 1),
(57, 12, 'melat.bahiru@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-25 14:38:06', '', 1),
(58, 12, 'melat.bahiru@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-25 15:20:02', '', 1),
(59, 0, 'math', 0x3a3a3100000000000000000000000000, '2021-02-26 23:47:27', '', 0),
(60, 13, 'mu@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-26 23:48:42', '', 1),
(61, 0, 'mu@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-26 23:50:36', '', 0),
(62, 13, 'mu@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-26 23:50:50', '', 1),
(63, 13, 'mu@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-27 00:07:15', '', 1),
(64, 0, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 00:08:23', '', 0),
(65, 0, 'zz', 0x3a3a3100000000000000000000000000, '2021-02-27 00:08:32', '', 0),
(66, 13, 'mu@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-27 00:08:42', '', 1),
(67, 13, 'mu@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-27 01:39:30', '', 1),
(68, 13, 'mu@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-27 01:46:32', '', 1),
(69, 13, 'mu@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-27 02:02:42', '', 1),
(70, 0, 'mu@', 0x3a3a3100000000000000000000000000, '2021-02-27 21:32:08', '', 0),
(71, 13, 'mu@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-27 21:32:17', '', 1),
(72, 26, 'kk@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-02 18:52:56', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `roomno` int(30) NOT NULL,
  `depno` int(30) NOT NULL,
  `Contactno` int(30) NOT NULL,
  `Diagnostic` varchar(300) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL,
  `Patientstatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `roomno`, `depno`, `Contactno`, `Diagnostic`, `email`, `password`, `regDate`, `updationDate`, `Patientstatus`) VALUES
(1, 'Murad', 'gegg', 'Addis', 'Males', 102, 1, 2147483647, 'jbhjc', 'info@w3gang.com', 'f925916e2754e5e03f75dd58a5733251', '2021-12-26 07:03:09', '30-12-2016 11:27:47 AM', 'ON'),
(2, 'Melat', 'Addis ababa', 'Addis', 'female', 0, 0, 0, '', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-12-30 05:34:39', '', ''),
(3, 'Amit', 'Addis ababa', 'Addis', 'male', 0, 0, 0, '', 'amit@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 06:36:53', '', ''),
(4, 'rony', 'Addis ababa', 'Addis', 'male', 0, 0, 0, '', 'rahul@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:41:14', '', ''),
(5, 'Ali', 'Addis ababa', 'Addis', 'male', 0, 0, 0, '', 'amit12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:00:26', '07-01-2017 01:32:12 PM', ''),
(6, 'murad', 'boly', 'addis', 'male', 0, 1, 0, '', 'murad@gmail.com', 'murad123', '2021-01-08 22:27:00', '', ''),
(7, 'Bazezew tseshay', 'yeka', 'Gondar', 'male', 0, 0, 0, '', 'napolio2nd@test.com', '123456', '2021-01-10 11:22:31', '', ''),
(9, 'murad', 'boly', 'addis', 'male', 0, 0, 0, '', 'murad@gmail.com', 'murad123', '2021-02-13 21:27:00', '', ''),
(10, 'Bazezew tseshay', 'yeka', 'Gondar', 'male', 0, 0, 0, '', 'napolio2nd@test.com', '123456', '2021-02-10 10:22:31', '', ''),
(11, 'test2', 'test2', 'test2', 'female', 0, 0, 0, '', 'test2@gmail.com', '123456', '2021-02-10 18:33:55', '', ''),
(12, 'melat', 'bole', 'addis ababa', 'female', 0, 0, 0, '', 'melat.bahiru@gmail.com', 'Meli@1212', '2021-02-25 14:37:17', '', ''),
(13, 'MK', 'bolle- beside rawanda emassy', 'addis ababa', 'female', 0, 0, 0, 'malaria infected', 'mu@gmail.com', '123456', '2021-02-26 23:48:08', '', ''),
(14, 'mrrrr', 'roomno', 'roomno', 'male', 102, 0, 2147483647, '', '', '', '2021-02-28 00:33:49', '', ''),
(15, 'kkkk', 'kkkk', 'kkkk', 'female', 102, 0, 2147483647, '', '', '', '2021-02-28 00:40:34', '', ''),
(16, 'll', 'll', 'll', 'female', 102, 0, 2147483647, '', '', '', '2021-02-28 00:43:53', '', ''),
(17, 'rr', 'r', 't', 'female', 102, 0, 2147483647, '', '', '', '2021-02-28 00:46:00', '', ''),
(18, 'ppp', 'ppp', 'pp', 'female', 102, 0, 2147483647, '', '', '', '2021-02-28 00:57:09', '', ''),
(19, 'z', 'z', 'z', 'female', 102, 0, 2147483647, '', '', '', '2021-02-28 01:01:44', '', ''),
(20, 'xx', 'x', 'x', 'female', 102, 0, 2147483647, '', '', '', '2021-02-28 01:03:33', '', ''),
(21, 'hh', 'd', 's', 'female', 102, 0, 2147483647, '', '', '', '2021-02-28 01:04:49', '', ''),
(22, 'l', 'l', 'u', 'female', 102, 0, 2147483647, '', '', '', '2021-02-28 01:13:43', '', ''),
(23, 'pppp', 'ew', 'w', 'female', 102, 0, 2147483647, '', '', '', '2021-02-28 01:20:43', '', ''),
(24, 'ttt', 'tt', 't', 'female', 102, 1, 2147483647, '', '', '', '2021-02-28 01:23:16', '', ''),
(25, 'h', 'jj', 'jjj', 'male', 0, 3, 0, '', '', '', '2021-03-01 23:07:15', '', ''),
(26, 'kkkk', 'kkkk', 'kkkkk', 'male', 0, 0, 0, '', 'kk@gmail.com', '123456', '2021-03-02 18:52:44', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed`
--
ALTER TABLE `bed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`depid`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laboratory`
--
ALTER TABLE `laboratory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurses`
--
ALTER TABLE `nurses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Card_no`);

--
-- Indexes for table `reception`
--
ALTER TABLE `reception`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `bed`
--
ALTER TABLE `bed`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `depid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `laboratory`
--
ALTER TABLE `laboratory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `nurses`
--
ALTER TABLE `nurses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `Card_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reception`
--
ALTER TABLE `reception`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
