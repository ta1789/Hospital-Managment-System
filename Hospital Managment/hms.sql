-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2023 at 06:47 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'tanmay', 'tanmay', '');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `appid` varchar(25) DEFAULT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `appid`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(6, 'HAPP001', 'Neurology', 6, 9, 600, '2023-06-28', '10:00', '2023-06-28 11:47:59', 0, 1, '2023-06-28 11:48:10'),
(7, 'HAPP007', 'Pediatrics', 2, 9, 400, '2023-06-28', '12:00', '2023-06-28 11:53:45', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `docid` varchar(25) DEFAULT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `education` varchar(255) DEFAULT NULL,
  `exp` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `docid`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`, `education`, `exp`) VALUES
(1, '1', 'Orthopedics', 'Dr Andrew Patrick', '123, Sunrise Apartments, Park Street, Bangalore, Karnataka, India', '500', 9876543561, 'andrew.p@gmail.com', 'abc', '2023-06-28 11:22:04', '2023-06-28 11:22:04', 'Central Medical College', NULL),
(2, '2', 'Pediatrics', 'Dr. Christopher Davis', '456, Green Valley Society, Hill Road, Mumbai, Maharashtra, India', '400', 9845678901, 'chris', 'abc', '2023-06-28 11:22:04', '2023-06-28 12:04:15', 'chris.d@gmail.com', NULL),
(3, '3', 'Radiology', 'Dr. Daniel Roberts\r\n', 'Liberty College of Medicine', '600', 6789023451, 'daniel.r@gmail.com', 'abc', '2023-06-28 11:36:36', '2023-06-28 11:36:36', 'Pacific Coast Medical Institute', NULL),
(4, '4', 'Opthalmology', 'Dr. Benjamin Wilson', 'Metropolitan Institute of Health Sciences', '450', 7890345612, 'benjamin.w@gmail.com', 'abc', '2023-06-28 11:36:36', '2023-06-28 11:36:36', 'Horizon Medical College', NULL),
(5, '5', 'Dermatology', 'Dr. Olivia Thompson', '789, Blissful Towers, Ashram Road, Ahmedabad, Gujarat, India', '550', 9023451231, 'olivia.t@gmail.com', 'abc', '2023-06-28 11:45:05', '2023-06-28 11:45:05', '456, Harmony Enclave, Silk Board, Bengaluru, Karnataka, India', NULL),
(6, '6', 'Neurology', 'Dr. John Smith', '333, Serene Gardens, Paradise Circle, Jaipur, Rajasthan, India', '600', 8904567811, 'john.s@gmail.com', 'abc', '2023-06-28 11:47:15', '2023-06-28 11:47:15', 'Grandview Medical School', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, NULL, 'tanmeh.2002@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-27 23:13:38', NULL, 0),
(21, NULL, 'daniel.r@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-28 12:05:33', NULL, 0),
(22, NULL, 'tanmeh.2002@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-28 12:05:42', NULL, 0),
(23, NULL, 'andrew.p@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-28 12:16:37', NULL, 0),
(24, 1, 'andrew.p@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-28 12:20:17', '28-06-2023 06:00:31 PM', 1),
(25, 1, 'andrew.p@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-28 13:06:18', '28-06-2023 06:47:31 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Orthopedics', '2023-06-28 10:55:17', '2023-06-28 10:55:17'),
(2, 'Pediatrics', '2023-06-28 10:55:17', '2023-06-28 10:55:17'),
(3, 'Radiology', '2023-06-28 11:11:17', '2023-06-28 11:11:17'),
(4, 'Ophthalmology', '2023-06-28 11:12:16', '2023-06-28 11:12:16'),
(5, 'Dermatology', '2023-06-28 11:12:16', '2023-06-28 11:37:41'),
(6, 'Neurology', '2023-06-28 11:12:58', '2023-06-28 11:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `id` int(11) NOT NULL,
  `emp_name` varchar(255) DEFAULT NULL,
  `salary` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `emp_name` varchar(255) DEFAULT NULL,
  `salary` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `patid` varchar(25) DEFAULT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `patid`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(6, 'HMSP001', 1, 'mno', 7890345691, 'mno.p@gmail.com', 'male', '98,Baghambari Housing Scheme\r\nAllapur', 21, 'N/A', '2023-06-28 12:21:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, NULL, 'tanmeh.2002@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-26 22:35:57', NULL, 0),
(25, 8, 'tanmeh.2002@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-26 22:36:14', '27-06-2023 04:21:52 AM', 1),
(26, NULL, 'tanmeh.2002@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-27 12:32:09', NULL, 0),
(27, 9, 'tanmeh.20021@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-28 10:47:17', '28-06-2023 05:30:39 PM', 1),
(28, NULL, 'tanmeh.2002@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-02 21:30:00', NULL, 0),
(29, NULL, 'tanmeh.2002@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-02 21:30:23', NULL, 0),
(30, NULL, 'tanmeh.2002@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-02 21:30:30', NULL, 0),
(31, NULL, 'Tanmay', 0x3a3a3100000000000000000000000000, '2023-07-02 21:31:07', NULL, 0),
(32, NULL, 'tanmeh.2002@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-02 21:32:01', NULL, 0),
(33, NULL, 'tanmeh.2002@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-02 21:32:24', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Name`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(8, 'Tanmay Mehrotra', '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '45bd4627d372427be887808d9bf016f7', '2023-06-26 22:35:26', NULL),
(9, 'ABC', '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.20021@gmail.com', 'd116fef1679f07fea383c01ced0e732a', '2023-06-28 10:46:52', NULL),
(32, NULL, '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '1234', '2023-07-02 20:24:58', NULL),
(33, NULL, '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '1234', '2023-07-02 20:26:26', NULL),
(34, NULL, '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '1234', '2023-07-02 20:29:09', NULL),
(35, NULL, '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '234', '2023-07-02 20:29:17', NULL),
(36, NULL, '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '2345', '2023-07-02 20:31:27', NULL),
(37, NULL, '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '123', '2023-07-02 20:45:13', NULL),
(38, NULL, '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '1234', '2023-07-02 20:50:57', NULL),
(39, NULL, '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', 'abc', '2023-07-02 20:51:50', NULL),
(40, NULL, '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '123456', '2023-07-02 20:52:43', NULL),
(41, NULL, '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '123456', '2023-07-02 20:53:52', NULL),
(42, NULL, '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '123455678', '2023-07-02 20:56:27', NULL),
(43, 'Tanmay', '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '123', '2023-07-02 21:06:43', NULL),
(44, NULL, '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '123', '2023-07-02 21:21:47', NULL),
(45, NULL, '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '123456', '2023-07-02 21:39:28', NULL),
(46, NULL, '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '123', '2023-07-02 21:40:51', NULL),
(47, NULL, '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '123', '2023-07-02 21:40:54', NULL),
(48, NULL, '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '123', '2023-07-02 21:41:12', NULL),
(49, NULL, '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '123', '2023-07-02 21:41:18', NULL),
(50, NULL, '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '123', '2023-07-02 21:41:24', NULL),
(51, NULL, '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '123', '2023-07-02 21:47:03', NULL),
(52, NULL, '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '123', '2023-07-02 21:53:08', NULL),
(54, 'Tanmay', '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', 'abc', '2023-07-02 22:35:16', NULL),
(55, 'Tanmay', '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '123', '2023-07-02 23:23:00', NULL),
(56, 'Tanmay', '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', 'abc', '2023-07-02 23:26:19', NULL),
(57, 'Tanmay', '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '123456', '2023-07-02 23:40:21', NULL),
(58, 'Tanmay', '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '12', '2023-07-03 00:39:48', NULL),
(59, 'Tanmay', '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '123456', '2023-07-03 12:44:48', NULL),
(60, 'Tanmay', '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', 'abc', '2023-07-03 13:25:29', NULL),
(61, 'Tanm', '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', 'abc', '2023-07-03 13:26:18', NULL),
(62, 'Tanm', '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', 'abc', '2023-07-03 13:26:22', NULL),
(63, 'tttt', '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', 'erty', '2023-07-03 13:27:54', NULL),
(64, 'Tanmay', '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '12345678', '2023-07-03 13:29:28', NULL),
(65, 'Tanmay', '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', 'abc', '2023-07-03 13:51:01', NULL),
(66, 'Tanmay', '98,Baghambari Housing Scheme', 'Prayagraj', 'male', 'tanmeh.2002@gmail.com', '1234', '2023-07-03 16:00:28', NULL);

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
-- Indexes for table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `employe`
--
ALTER TABLE `employe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
