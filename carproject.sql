-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 08, 2024 at 08:02 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id22285866_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ADMIN_ID` varchar(255) NOT NULL,
  `ADMIN_PASSWORD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ADMIN_ID`, `ADMIN_PASSWORD`) VALUES
('ADIYOGI', 'Shiva@123');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `BOOK_ID` int(11) NOT NULL,
  `CAR_ID` int(11) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `BOOK_PLACE` varchar(255) NOT NULL,
  `BOOK_DATE` date NOT NULL,
  `DURATION` int(11) NOT NULL,
  `PHONE_NUMBER` bigint(20) NOT NULL,
  `DESTINATION` varchar(255) NOT NULL,
  `RETURN_DATE` date NOT NULL,
  `PRICE` int(11) NOT NULL,
  `BOOK_STATUS` varchar(255) NOT NULL DEFAULT 'UNDER PROCESSING'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`BOOK_ID`, `CAR_ID`, `EMAIL`, `BOOK_PLACE`, `BOOK_DATE`, `DURATION`, `PHONE_NUMBER`, `DESTINATION`, `RETURN_DATE`, `PRICE`, `BOOK_STATUS`) VALUES
(85, 31, 'abhisheksidnal14@gmail.com', 'hubli', '2024-06-05', 1, 8660390854, 'sakleshpura', '2024-06-06', 3300, 'APPROVED'),
(86, 23, 'abhisheksidnal14@gmail.com', 'belagavi', '2024-06-07', 2, 8792287099, 'Goa', '2024-06-09', 9600, 'UNDER PROCESSING'),
(87, 32, 'yadavdarshan12@gmail.com', 'dawangere', '2024-06-07', 4, 7876555659, 'chikkmangalur', '2024-06-11', 18000, 'APPROVED'),
(88, 23, 'yadavdarshan12@gmail.com', 'belagavi', '2024-06-07', 1, 8971993378, 'dharwad', '2024-06-08', 4800, 'UNDER PROCESSING'),
(89, 23, 'abhisheksidnal14@gmail.com', 'hubli', '2024-06-08', 2, 8976543456, 'delhi', '2024-06-10', 9600, 'UNDER PROCESSING'),
(90, 33, 'abhisheksidnal14@gmail.com', 'goa', '2024-06-08', 2, 8976543245, 'tamilnadu', '2024-06-10', 5400, 'UNDER PROCESSING'),
(91, 33, 'abhisheksidnal14@gmail.com', 'Andra', '2024-06-08', 2, 8792584536, 'Karnataka ', '2024-06-10', 5400, 'UNDER PROCESSING'),
(92, 33, 'shreeram@gmail.com', 'hubli', '2024-06-10', 1, 8976543456, 'delhi', '2024-06-11', 2700, 'UNDER PROCESSING'),
(93, 27, 'shriballari@gmail.com', 'Dharwad ', '2024-06-17', 2, 9900431383, 'Goa', '2024-06-19', 7200, 'UNDER PROCESSING'),
(94, 23, 'abhisheksidnal14@gmail.com', 'dharwad', '2024-06-29', 2, 9353854006, 'goa', '2024-07-01', 9600, 'UNDER PROCESSING'),
(95, 27, 'rohitballari7@gmail.com', 'Dharwad', '2024-07-01', 2, 9620715959, 'Chikmagaluru', '2024-07-04', 7200, 'RETURNED'),
(96, 23, 'rohitballari7@gmail.com', 'Dharwad', '2024-07-01', 3, 9620715959, 'Chikmagaluru', '2024-07-04', 14400, 'APPROVED'),
(97, 27, 'sahanachikkodikar@gmail.com', 'Dharwad', '2024-07-01', 12, 9353854006, 'Maldives', '2024-07-13', 43200, 'APPROVED');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `CAR_ID` int(11) NOT NULL,
  `CAR_NAME` varchar(255) NOT NULL,
  `FUEL_TYPE` varchar(255) NOT NULL,
  `CAPACITY` int(11) NOT NULL,
  `PRICE` int(11) NOT NULL,
  `CAR_IMG` varchar(255) NOT NULL,
  `AVAILABLE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`CAR_ID`, `CAR_NAME`, `FUEL_TYPE`, `CAPACITY`, `PRICE`, `CAR_IMG`, `AVAILABLE`) VALUES
(23, 'ERTIGA', 'DEISEL', 7, 4800, 'IMG-6654b813742025.35208030.jpeg', 'N'),
(27, 'SWIFT ', 'DEISEL', 5, 3600, 'IMG-6659f1488f97c3.79222771.jpg', 'Y'),
(29, 'TT', 'DEISEL', 15, 5700, 'IMG-6659f208643791.20421217.png', 'Y'),
(31, 'VENUE', 'DEISEL', 5, 3300, 'IMG-665da515ad20c9.69413197.png', 'N'),
(32, 'INNOVA', 'DEISEL', 7, 4500, 'IMG-665da54d5fc7d1.02901912.jpeg', 'N'),
(33, 'ALTO', 'PETROL', 5, 2700, 'IMG-665da57c13cd23.77487611.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `FED_ID` int(11) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `COMMENT` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`FED_ID`, `EMAIL`, `COMMENT`) VALUES
(14, 'abhisheksidnal14@gmail.com', 'good'),
(15, 'yadavdarshan12@gmail.com', 'good service and well designed website'),
(16, 'abhisheksidnal14@gmail.com', 'good service'),
(17, 'rohitballari7@gmail.com', 'Excellent Service, Excellent staff friendly and helpful I will Recommend to my Friends and Family'),
(18, 'sahanachikkodikar@gmail.com', 'Really Great Experience overall. Friendly staff,Great price, clear instructions and very easy checkout');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PAY_ID` int(11) NOT NULL,
  `BOOK_ID` int(11) NOT NULL,
  `CARD_NO` varchar(255) NOT NULL,
  `EXP_DATE` varchar(255) NOT NULL,
  `CVV` int(11) NOT NULL,
  `PRICE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PAY_ID`, `BOOK_ID`, `CARD_NO`, `EXP_DATE`, `CVV`, `PRICE`) VALUES
(38, 85, '123456789009', '1234', 543, 3300),
(39, 86, '123456789009', '1234', 123, 9600),
(40, 87, '123456789098', '1234', 213, 18000),
(41, 88, '123456789098', '3452', 234, 4800),
(42, 89, '123456789098', '1234', 123, 9600),
(46, 90, '546787542312', '6523', 765, 5400),
(47, 91, '67584536', '4678', 765, 5400),
(48, 92, '123456789046', '3462', 236, 2700),
(49, 94, '987654321234', '1234', 234, 9600),
(50, 95, '123456789', '12/01', 123, 7200),
(51, 96, '123456789', '12/11', 123, 14400),
(52, 97, '123456', '12/11', 123, 43200);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `FNAME` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `PHONE_NUMBER` bigint(20) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`FNAME`, `EMAIL`, `PHONE_NUMBER`, `PASSWORD`) VALUES
('Abhishek', 'abhisheksidnal14@gmail.com', 8971993378, '8371f69bdcc49cb926f09c9f4a061082'),
('harish', 'harish123@gmail.com', 7876555659, '02ab970087ecdd690dc412cd8621bf64'),
('jaggu', 'jaggu143@gmail.com', 8792287099, 'cd787893f4230ec45b35eed4ef466af0'),
('Raghu', 'raghupriyarkulkarni@gmail.com', 1234567890, 'f361de18025adba8f984166b8e35a408'),
('ram', 'ram123@gmai.com', 8976543456, '1b7b4c38f626766bbdcfc895e2c514f6'),
('Rohit', 'rohitballari7@gmail.com', 7876555659, '24780214eac5297e08da75a44c5f0480'),
('Sahana', 'sahanachikkodikar@gmail.com', 9353854006, 'ec0ed515fae03d90171d1b15001ec2a6'),
('ram', 'shreeram@gmail.com', 8976543456, '66ab25ac273b425efab5a232450fff70'),
('Irappa', 'shriballari@gmail.com', 9900431383, '0d46984dc7b885d7dbd0359d4e0536c8'),
('darshan yadav', 'yadavdarshan12@gmail.com', 8971993378, '0700bcf4fde97c5d775732bd32a986fc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ADMIN_ID`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`BOOK_ID`),
  ADD KEY `CAR_ID` (`CAR_ID`),
  ADD KEY `EMAIL` (`EMAIL`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`CAR_ID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`FED_ID`),
  ADD KEY `TEST` (`EMAIL`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PAY_ID`),
  ADD UNIQUE KEY `BOOK_ID` (`BOOK_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`EMAIL`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `BOOK_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `CAR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FED_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `PAY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`CAR_ID`) REFERENCES `cars` (`CAR_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`EMAIL`) REFERENCES `users` (`EMAIL`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `TEST` FOREIGN KEY (`EMAIL`) REFERENCES `users` (`EMAIL`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`BOOK_ID`) REFERENCES `booking` (`BOOK_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
