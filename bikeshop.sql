-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2019 at 01:54 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bikeshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL,
  `FirstName` text,
  `LastName` text,
  `Adress` text,
  `City` text,
  `State` text,
  `Zip code` int(11) DEFAULT NULL,
  `PhoneNumber` int(11) DEFAULT NULL,
  `Email` text,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `FirstName`, `LastName`, `Adress`, `City`, `State`, `Zip code`, `PhoneNumber`, `Email`, `Password`) VALUES
(1, 'Adam', 'Johnson', '222 Apple St', 'Saint Paul', 'MN', 55110, 2147483647, 'adam.johnson@gmail.com', 'hello'),
(2, 'Jack', 'Jones', '3877 1st Ave', 'Woodbury', 'MN', 55106, 2147483647, 'jack.johns@gmail.com', 'jello'),
(3, 'Amanda', 'Smith', '120999 broadway Ave', 'Hudson', 'WI', 54016, 2147483647, 'amanda.smith@yahoo.com', 'mayo'),
(4, 'Tyler', 'Williams', '1265 Rainey Ave', 'River Falls', 'WI', 54022, 2147483647, 'tyler.williams@msn.com', 'fuego'),
(5, 'Rose', 'Davis', '7767 Hilltop Ct', 'Minneapolis', 'MN', 55125, 2147483647, 'rose.davis@yahoo.com', 'park'),
(6, 'Olivia', 'Brown', '12211 Woodbury Ave', 'Summerset', 'WI', 54022, 2147483647, 'olivia.brown@outlook.com', 'bark'),
(7, 'Ellen', 'Miller', '122288 Circle St', 'North Saint Paul', 'MN', 55106, 2147483647, 'ellen.miller@outlook.com', 'dark'),
(8, 'Gina', 'Willson', '76544 45th St', 'Apple Valley', 'MN', 55110, 2147483647, 'gina.wilson@gmail.com', 'mark'),
(9, 'Scott', 'Jackson', '12 Clearnce St', 'Highland', 'MN', 55105, 2147483647, 'scott.jackson@comcast.net', 'vark'),
(10, 'Tim', 'Turner', '4555 Float Ct', 'Frogtown', 'MN', 55025, 2147483647, 'tim.turner@yahoo.com', 'nark');

-- --------------------------------------------------------

--
-- Table structure for table `onlinetracker`
--

CREATE TABLE `onlinetracker` (
  `TicketID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `Message` text,
  `EmployeeID` int(11) DEFAULT NULL,
  `JobDescription` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlinetracker`
--

INSERT INTO `onlinetracker` (`TicketID`, `CustomerID`, `Message`, `EmployeeID`, `JobDescription`) VALUES
(100001, 1, 'Done - ready for pick up.', 1001, 'Seat was bent from accident, was replaced and fixed'),
(100002, 2, 'In Progress - check back later for new updates', 1002, 'Bent frame, waiting for new parts to arrive from warehouse, should be here in a few days'),
(100003, 3, 'Done - ready for pick up.', 1003, 'Chain off of rails, realigned rails and bike pedals like new'),
(100004, 4, 'Done - ready for pick up.', 1004, 'Reinstalling front and back pegs after relining bike tires'),
(100005, 5, 'Done - ready for pick up.', 1005, 'Wheel bent and is now replaced and installed on bike'),
(100006, 6, 'In Progress - check back later for new updates', 1006, 'Handle bars are bent and are flexible, waiting for new parts to arrive for replacement handle bars '),
(100007, 7, 'In Progress - check back later for new updates', 1003, 'Popped tires'),
(100008, 8, 'Done - ready for pick up.', 1004, 'Handle bar replacement '),
(100009, 9, 'In Progress - check back later for new updates', 1001, 'Handle bar replacement waiting for part to arrive'),
(100010, 10, 'In Progress - check back later for new updates', 1005, 'Brakes not working, running test on lines and break pads');

-- --------------------------------------------------------

--
-- Table structure for table `repairteam`
--

CREATE TABLE `repairteam` (
  `EmployeeID` int(11) NOT NULL,
  `FirstName` text,
  `LastName` text,
  `Adress` text,
  `City` text,
  `State` text,
  `Zip Code` int(11) DEFAULT NULL,
  `PhoneNumber` int(11) DEFAULT NULL,
  `Email` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `repairteam`
--

INSERT INTO `repairteam` (`EmployeeID`, `FirstName`, `LastName`, `Adress`, `City`, `State`, `Zip Code`, `PhoneNumber`, `Email`) VALUES
(1001, 'Steven', 'Micheals', '233322 Orange St', 'St Paul', 'MN', 55110, 2147483647, 'steven.michaels@gmail.com'),
(1002, 'Jackson', 'Jackson', '3877 23rd Ave', 'Woodbury', 'MN', 55106, 2147483647, 'jackson.jackson@gmail.com'),
(1003, 'Anderson', 'Smithson', '19999 Hall St', 'Hudson', 'WI', 54016, 2147483647, 'anderson.smithson@yahoo.com'),
(1004, 'Kyler', 'Wilson', '1265 Rainey Ave', 'River Falls', 'WI', 54022, 2147483647, 'kyler.wilson@msn.com'),
(1005, 'Rossa', 'Davison', '77122 Hilltop Ct', 'Minneapolis', 'MN', 55125, 2147483647, 'wilson.davison@yahoo.com'),
(1006, 'Octavia', 'Adams', '3490 Wood Ave', 'River Falls', 'WI', 54022, 2147483647, 'octavia.adams@outlook.com');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `TicketID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `Description` text,
  `EmployeeID` int(11) DEFAULT NULL,
  `Date` date DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`TicketID`, `CustomerID`, `Description`, `EmployeeID`, `Date`) VALUES
(100001, 1, 'Seat was bent from accident, was replaced and fixed', 1001, '0000-00-00'),
(100002, 2, 'Bent frame, waiting for new parts to arrive from warehouse, should be here in a few days', 1002, '2018-12-01'),
(100003, 3, 'Chain off of rails, realigned rails and bike pedals like new', 1003, '2019-07-02'),
(100004, 4, 'Reinstalling front and back pegs after relining bike tires', 1004, '2019-03-15'),
(100005, 5, 'Wheel bent and is now replaced and installed on bike', 1005, '2019-01-28'),
(100006, 6, 'Handle bars are bent and are flexible, waiting for new parts to arrive for replacement handle bars ', 1006, '2019-04-01'),
(100007, 7, 'Popped tires', 1003, '2019-03-18'),
(100008, 8, 'Handle bar replacement ', 1004, '2019-02-02'),
(100009, 9, 'Handle bar replacement waiting for part to arrive', 1001, '2019-04-12'),
(100010, 10, 'Brakes not working, running test on lines and break pads', 1005, '2019-05-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `onlinetracker`
--
ALTER TABLE `onlinetracker`
  ADD PRIMARY KEY (`TicketID`);

--
-- Indexes for table `repairteam`
--
ALTER TABLE `repairteam`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`TicketID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
