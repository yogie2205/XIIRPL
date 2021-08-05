-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2021 at 02:52 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multitablesmkgeoper`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` varchar(10) NOT NULL,
  `CompanyName` varchar(19) DEFAULT NULL,
  `ContactName` varchar(15) DEFAULT NULL,
  `Address` varchar(19) DEFAULT NULL,
  `City` varchar(9) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `Country` varchar(7) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `CompanyName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`, `Phone`) VALUES
('ALFKI', 'Alferds Futterkiste', 'Maria Anders', 'Obere Str.57', 'Berlin', '12209', 'GERMANY', '030-0074321'),
('EASTC', 'Eastern Connection', 'Ann Devon', '35 King George', 'London', 'WX3FW', 'UK', '(171)75716-1111'),
('ISLAT', 'Island Trading', 'Helen Bennet', '75 Crowther Way', 'Cowes', 'PO31 7PJ', 'UK', '(198)88213'),
('MAISD', 'Maison Dewey', 'Catherine Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', 'B-1180', 'BELGIUM', '(02)987212'),
('SAVES', 'Seven Seas Imports', 'Hari Kumar', '90 Wadhurst Rd', 'London', 'OX154', 'UK', '(171)555-1717');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `EmpId` varchar(5) NOT NULL,
  `LastName` varchar(9) DEFAULT NULL,
  `FirstName` varchar(9) DEFAULT NULL,
  `Title` varchar(14) DEFAULT NULL,
  `Address` varchar(23) DEFAULT NULL,
  `City` varchar(7) DEFAULT NULL,
  `Country` varchar(7) DEFAULT NULL,
  `HomePhone` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EmpId`, `LastName`, `FirstName`, `Title`, `Address`, `City`, `Country`, `HomePhone`) VALUES
('1', 'Dacolio', 'Nancy', 'Sales Rep.', 'Ave. E. APT.2A', 'Seattle', 'USA', '(206)555-9857'),
('2', 'Fuller', 'Andrew', 'Vice President', '908 W. Capital Way', 'Tacoma', 'USA', '(206)555-98212'),
('3', 'Leverling', 'Janet', 'Sales Rep.', '722 Moss Bay Blvd', 'Kikland', 'USA', '(206)555-12314'),
('4', 'Peacock', 'Margaret', 'Sales Rep.', '4110 Old Redmond', 'Redmond', 'USA', '(206)555-9841'),
('5', 'Buchanan', 'Steve', 'Sales Manager', '14 Garret Hill', 'London', 'UK', '(71)555-53179'),
('6', 'Suayam', 'Michael', 'Sales Rep.', 'Coventry House Miner Rd', 'London', 'USA', '(206)555-7773'),
('7', 'King', 'Robert', 'Sales Rep.', '12 Winchester way', 'London', 'UK', '(71)555-2144'),
('8', 'Callahan', 'Laura', 'Sales Coord', '4726-11th Ave NE', 'Seattle', 'USA', '(206)555-2134'),
('9', 'Dodsworth', 'Anne', 'Sales Rep.', '7 Houndstooth Rd', 'London', 'UK', '(71)555-31245');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `OrderID` varchar(7) DEFAULT NULL,
  `ProductID` varchar(9) DEFAULT NULL,
  `UnitPrice` varchar(9) DEFAULT NULL,
  `Quantity` varchar(8) DEFAULT NULL,
  `Discount` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
('OrderID', 'ProductID', 'UnitPrice', 'Quantity', 'Discount'),
('10256', '53', '26', '15', '0,00'),
('10256', '77', '10', '12', '0,00'),
('10257', '27', '35', '25', '0,00'),
('10257', '39', '14', '6', '0,00'),
('10257', '77', '10', '15', '0,00'),
('10258', '2', '15', '50', '0,20'),
('10258', '5', '17', '65', '0,20'),
('10258', '32', '25', '6', '0,20'),
('10259', '21', '8', '10', '0,00'),
('10259', '37', '20', '1', '0,00'),
('10260', '41', '7', '16', '0,25'),
('10260', '57', '15', '50', '0,00'),
('10260', '62', '39', '15', '0,25'),
('10260', '70', '12', '21', '0,25');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` varchar(7) NOT NULL,
  `CustID` varchar(6) DEFAULT NULL,
  `EmpID` varchar(5) DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `RequiredDate` date DEFAULT NULL,
  `ShippedDate` date DEFAULT NULL,
  `ShipVia` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `CustID`, `EmpID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`) VALUES
('10256', 'EASTC', '3', '2021-07-15', '2021-08-12', '2021-07-17', '2'),
('10257', 'SEVES', '4', '2021-07-16', '2021-08-13', '2021-07-22', '3'),
('10258', 'MAISD', '1', '2021-07-16', '2021-08-14', '2021-08-23', '1'),
('10259', 'ALFKI', '4', '2021-07-18', '2021-08-15', '2021-08-25', '3'),
('10260', 'ISLAT', '4', '2021-07-16', '2021-08-16', '2021-07-29', '1');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` varchar(9) NOT NULL,
  `ProductName` varchar(11) DEFAULT NULL,
  `SupplierID` varchar(10) DEFAULT NULL,
  `QuantityPerUnit` varchar(15) DEFAULT NULL,
  `UnitPrice` varchar(9) DEFAULT NULL,
  `UnitsnStock` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `QuantityPerUnit`, `UnitPrice`, `UnitsnStock`) VALUES
('2', 'Chang', '1', '24 botel', '19', '17'),
('21', 'Scones', '8', '24 paket', '10', '17'),
('27', 'Sholggi', '11', '100 gram', '43', '49'),
('32', 'Beng beng', '14', '200 gram', '32', '9'),
('37', 'Gravad', '17', '500 gram', '46', '11'),
('39', 'Cokelat', '18', '200 gram', '18', '69'),
('41', 'Saus BCD', '19', '48 pieces', '9', '85'),
('5', 'Gumbo Mix', '2', '36 box', '21', '50'),
('53', 'Tofu Nyaman', '24', '12 pieces', '32', '15'),
('57', 'Es krim A', '26', '120 box', '19', '36'),
('62', 'Enak enak', '29', '130 box', '49', '17'),
('65', 'Gula gula', '2', '141 box', '21', '76'),
('70', 'Aque', '7', '100 box', '15', '15'),
('74', 'yogorat', '4', '25 botel', '10', '4'),
('77', 'Mie indo', '12', '50 box', '14', '32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmpId`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD KEY `OrderID` (`OrderID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
