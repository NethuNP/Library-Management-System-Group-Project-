-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2023 at 09:56 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librarymanagementsystemdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_book`
--

CREATE TABLE `tbl_book` (
  `ISBN` varchar(255) NOT NULL,
  `Book_name` varchar(255) NOT NULL,
  `Author` varchar(150) NOT NULL,
  `Publisher` varchar(150) NOT NULL,
  `Edition` varchar(100) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Category` varchar(150) NOT NULL,
  `No_of_pages` int(11) NOT NULL,
  `Price` varchar(100) NOT NULL,
  `RegistrationDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_book`
--

INSERT INTO `tbl_book` (`ISBN`, `Book_name`, `Author`, `Publisher`, `Edition`, `Quantity`, `Category`, `No_of_pages`, `Price`, `RegistrationDate`) VALUES
('9780141439556', 'Wuthering Heights', 'Emily Bronte', 'Penguin Classics', '6', 1, 'Novel', 230, '500.00', '2023-07-06'),
('9780439064873', 'Harry Potter and the Chamber of Secrets', 'J. K. Rowling', 'Bloomsbury (UK)', '1', 2, 'Fantasy', 341, '4800.00', '2023-07-06'),
('9780439136358', 'Harry Potter and the Prisoner of Azkaban', 'J. K. Rowling', 'Bloomsbury (UK)', '1', 2, 'Fantasy', 341, '4800.00', '2023-07-06'),
('9780553212754', 'Little Women', 'Louisa May Alcott', 'Roberts Brothers ', '7', 2, 'Novel', 759, '2969.50', '2023-07-05'),
('9781408855652', 'Harry Potter and the Philosopher\'s Stone', 'J. K. Rowling', 'Bloomsbury (UK)', '1', 4, 'Fantasy', 223, '2750.00', '2023-07-06'),
('9789552126420', 'Pride & Prejudice', 'Jane Austen', 'iRead Publisher', '5', 3, 'Novel', 292, '1530.00', '2023-07-05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookcopy`
--

CREATE TABLE `tbl_bookcopy` (
  `Book_ID` varchar(100) NOT NULL,
  `ISBN` varchar(255) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_bookcopy`
--

INSERT INTO `tbl_bookcopy` (`Book_ID`, `ISBN`, `Status`) VALUES
('9780141439556C1', '9780141439556', 'Pending'),
('9780439064873C1', '9780439064873', 'Available'),
('9780439064873C2', '9780439064873', 'Available'),
('9780439136358C1', '9780439136358', 'Pending'),
('9780439136358C2', '9780439136358', 'Available'),
('9780553212754C1', '9780553212754', 'Reserved'),
('9780553212754C2', '9780553212754', 'Pending'),
('9781408855652C1', '9781408855652', 'Available'),
('9781408855652C2', '9781408855652', 'Available'),
('9781408855652C3', '9781408855652', 'Available'),
('9781408855652C4', '9781408855652', 'Available'),
('9789552126420C1', '9789552126420', 'Pending'),
('9789552126420C2', '9789552126420', 'Available'),
('9789552126420C3', '9789552126420', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_issuebook`
--

CREATE TABLE `tbl_issuebook` (
  `Issue_ID` int(11) NOT NULL,
  `NIC` varchar(255) NOT NULL,
  `Book_ID` varchar(100) NOT NULL,
  `Issue_Date` date NOT NULL,
  `Return_Date` date DEFAULT NULL,
  `Due_Date` date NOT NULL,
  `Fines` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_issuebook`
--

INSERT INTO `tbl_issuebook` (`Issue_ID`, `NIC`, `Book_ID`, `Issue_Date`, `Return_Date`, `Due_Date`, `Fines`) VALUES
(1, '200073500130', '9780141439556C1', '2023-05-02', NULL, '2023-05-16', NULL),
(2, '200073500130', '9789552126420C1', '2023-07-06', NULL, '2023-07-20', NULL),
(3, '200073500131', '9780553212754C1', '2023-07-06', '2023-07-06', '2023-07-20', 0),
(4, '200073500132', '9780553212754C2', '2023-07-06', NULL, '2023-07-20', NULL),
(5, '200073500132', '9780439136358C1', '2023-07-06', NULL, '2023-07-20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_memberdetails`
--

CREATE TABLE `tbl_memberdetails` (
  `NIC` varchar(100) NOT NULL,
  `Member_Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Date_of_birth` date NOT NULL,
  `Age` int(11) NOT NULL,
  `Contact_no` varchar(20) NOT NULL,
  `RegistrationDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_memberdetails`
--

INSERT INTO `tbl_memberdetails` (`NIC`, `Member_Name`, `Address`, `Email`, `Gender`, `Date_of_birth`, `Age`, `Contact_no`, `RegistrationDate`) VALUES
('200073500130', 'Senath Chandira', 'Mirigama', 'senath@gmail.com', 'Male', '2001-03-15', 22, '0775062789', '2023-06-21'),
('200073500131', 'Kavishka Sandeep', 'Mirigama', 'pasam@gmail.com', 'Male', '2001-03-13', 22, '0775062789', '2023-06-23'),
('200073500132', 'Ridmi Weerasinghe', 'colombo 07', 'Ridmi@gmail.com', 'Female', '1997-03-27', 26, '0775062789', '2023-06-25'),
('200073500133', 'Krishni Manamperi', 'Rathnapura', 'krishni@gmail.com', 'Female', '1993-03-12', 30, '0775896412', '2023-06-25'),
('200073500134', 'Nethmini Praboda', 'Rathnapura', 'nethmini@gmail.com', 'Female', '1986-03-19', 37, '0782345971', '2023-07-04'),
('200073500135', 'Gihani Megana', 'Alawwa', 'megana@gmail.com', 'Female', '1962-03-14', 61, '0748965124', '2023-07-04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reservedbook`
--

CREATE TABLE `tbl_reservedbook` (
  `Reservation_ID` int(11) NOT NULL,
  `ISBN` varchar(100) NOT NULL,
  `NIC` varchar(100) NOT NULL,
  `Reserved_Date` date NOT NULL,
  `Reservation_Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_reservedbook`
--

INSERT INTO `tbl_reservedbook` (`Reservation_ID`, `ISBN`, `NIC`, `Reserved_Date`, `Reservation_Status`) VALUES
(1, '9780553212754', '200073500134', '2023-07-06', 'Reserved'),
(2, '9780141439556', '200073500133', '2023-07-06', 'Reserved');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `NIC` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`NIC`, `username`, `password`, `user_Type`) VALUES
('200073500000', 'Admin', 'MTIzNDU2Nzg=', 'Librarian'),
('200073500133', 'krishni', 'a3Jpc2huaTEyMw==', 'Member'),
('200073500135', 'megana', 'bWVnYW5hMTIz', 'Member'),
('200073500134', 'nethmini', 'bmV0aG1pbmkxMjM=', 'Member'),
('200073500131', 'pasan', 'cGFzYW4xMjM=', 'Member'),
('200073500132', 'ridmi', 'cmlkbWkxMjM=', 'Member'),
('200073500130', 'Seenath', 'c2VuYXRoMTIz', 'Member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_book`
--
ALTER TABLE `tbl_book`
  ADD PRIMARY KEY (`ISBN`);

--
-- Indexes for table `tbl_bookcopy`
--
ALTER TABLE `tbl_bookcopy`
  ADD PRIMARY KEY (`Book_ID`),
  ADD KEY `ISBN` (`ISBN`);

--
-- Indexes for table `tbl_issuebook`
--
ALTER TABLE `tbl_issuebook`
  ADD PRIMARY KEY (`Issue_ID`),
  ADD KEY `tbl_issuebook_ibfk_1` (`NIC`),
  ADD KEY `Book_ID` (`Book_ID`);

--
-- Indexes for table `tbl_memberdetails`
--
ALTER TABLE `tbl_memberdetails`
  ADD PRIMARY KEY (`NIC`);

--
-- Indexes for table `tbl_reservedbook`
--
ALTER TABLE `tbl_reservedbook`
  ADD PRIMARY KEY (`Reservation_ID`),
  ADD KEY `NIC` (`NIC`),
  ADD KEY `tbl_reservedbook_ibfk_3` (`ISBN`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`username`),
  ADD KEY `NIC` (`NIC`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_issuebook`
--
ALTER TABLE `tbl_issuebook`
  MODIFY `Issue_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_reservedbook`
--
ALTER TABLE `tbl_reservedbook`
  MODIFY `Reservation_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_bookcopy`
--
ALTER TABLE `tbl_bookcopy`
  ADD CONSTRAINT `tbl_bookcopy_ibfk_1` FOREIGN KEY (`ISBN`) REFERENCES `tbl_book` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_issuebook`
--
ALTER TABLE `tbl_issuebook`
  ADD CONSTRAINT `tbl_issuebook_ibfk_1` FOREIGN KEY (`NIC`) REFERENCES `tbl_memberdetails` (`NIC`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_issuebook_ibfk_2` FOREIGN KEY (`Book_ID`) REFERENCES `tbl_bookcopy` (`Book_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_reservedbook`
--
ALTER TABLE `tbl_reservedbook`
  ADD CONSTRAINT `tbl_reservedbook_ibfk_2` FOREIGN KEY (`NIC`) REFERENCES `tbl_memberdetails` (`NIC`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_reservedbook_ibfk_3` FOREIGN KEY (`ISBN`) REFERENCES `tbl_book` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
