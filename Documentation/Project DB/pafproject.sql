-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2019 at 07:04 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pafproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `lineID` int(11) NOT NULL,
  `cusID` int(11) NOT NULL,
  `addedDate` datetime NOT NULL,
  `checkedDate` datetime DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cartitems`
--

CREATE TABLE `cartitems` (
  `itemID` int(11) NOT NULL,
  `cartID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catID` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `catName` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'active',
  `addedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catID`, `description`, `catName`, `status`, `addedDate`) VALUES
(1, 'Test1 2 3', 'Test Category 1 4 5', 'active', '2019-04-10'),
(2, 'Test 3', 'Test Category 3', 'active', '2019-04-30'),
(3, 'sdfsdfsdfsdf', 'asdad', 'active', '2019-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `cusorder`
--

CREATE TABLE `cusorder` (
  `orderID` int(11) NOT NULL,
  `cartID` int(11) NOT NULL,
  `payID` int(11) NOT NULL,
  `billDate` date NOT NULL,
  `discount` double NOT NULL,
  `total` double NOT NULL,
  `shipID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cusID` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `city` varchar(100) NOT NULL,
  `postal` varchar(100) NOT NULL,
  `address1` varchar(200) NOT NULL,
  `address2` varchar(300) NOT NULL,
  `password` varchar(100) NOT NULL,
  `regDate` date NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cusID`, `fname`, `lname`, `email`, `phone`, `country`, `dob`, `city`, `postal`, `address1`, `address2`, `password`, `regDate`, `status`) VALUES
(1, 'asdasd', 'Jasd', 'sahanlakshitha1996@hotmail.com', '0711594019', 'Colombo', '2012-01-02', 'ddfdf', '1223', '204/1, Werahera, Boralesgamuwa', 'Boralesgamuwa.', 'assd', '2019-04-25', 'active'),
(2, 'Sahan', 'Jayawardena', 'sahanlakshitha1996@hotmail.com2', '0711594019', 'Sri Lanka', '2012-01-02', 'qwerty1', '11234', '204/1, Werahera, Boralesgamuwa', 'Boralesgamuwaa', 'assd', '2019-04-25', 'inactive'),
(3, 'Sahan', 'Jayawardena', 'sahanlakshitha1996@hotmail.commm', '0711594019', 'Sri Lanka', '2014-02-02', 'Trinco', '10290', '204/1, Werahera, Boralesgamuwa', 'Boralesgamuwa', 'assd', '2019-04-26', 'active'),
(4, 'Sahan12', 'Jayawardena12', 'sahanlakshitha1996@hotmail.com1', '07115940192', 'Russia1', '2012-12-02', 'Jakartha', '10290', '204/1, Werahera, Boralesgamuwaa', 'Boralesgamuwaa', 'assd', '2019-04-26', 'active'),
(5, 'Saman', 'Rajakumara', 'saman@gmail.com', '0711594019', 'Russia', '1996-04-19', 'Boralesgamuwa', '10290', '204/1, Gangarama Road, ', 'Boralesgamuwa', 'Kuma123456.', '2019-04-27', 'active'),
(6, 'Pasan', 'Jayawardena', 'pasan@gmail.com', '0718412070', 'Sri Lanka', '1992-12-05', 'Colombo', '10241', '204/1, Boralesgamuwa', 'Nugegoda', 'Pasan12345', '2019-04-30', 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payID` int(11) NOT NULL,
  `payType` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'active',
  `addedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payID`, `payType`, `status`, `addedDate`) VALUES
(1, 'Test12345', 'active', '2019-04-10'),
(2, 'Test2', 'inactive', '2019-04-23'),
(3, 'Test34', 'active', '2019-04-25'),
(4, 'payment54321', 'active', '2019-04-30'),
(5, 'ssdfghj', 'active', '2019-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prID` int(11) NOT NULL,
  `suppID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `unitPrice` double NOT NULL,
  `brand` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `catID` int(11) NOT NULL,
  `addedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `suppID` int(11) NOT NULL,
  `company` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `city` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `regDate` date NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`suppID`, `company`, `fname`, `lname`, `email`, `phone`, `country`, `dob`, `city`, `password`, `state`, `address1`, `address2`, `regDate`, `status`) VALUES
(1, 'Test Company1', 'Sahan1', 'Jay1', 'sahanjay@gmail.com1', '07115940191', 'Sri Lanka1', '1992-04-18', 'Colombo1', 'Kuma12345.', 'SL', '204/1, Werahera,1', 'Boralesgamuwa1', '2019-04-18', 'active'),
(2, 'Neem Ads', 'Nirmani', 'Jayawardena', 'nirmani@gmail.com', '0718413090', 'Sri Lanka', '1999-12-09', 'Colombo', 'nirmani123', 'BC', '204/1, Gangarama Rd,', 'Boralesgamuwa', '2019-04-30', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `shipID` int(11) NOT NULL,
  `company` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'active',
  `addedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`shipID`, `company`, `status`, `addedDate`) VALUES
(1, 'Ship Company1', 'active', '2019-04-17'),
(2, 'Asad Sali', 'active', '2019-04-26'),
(3, 'DHL', 'active', '2019-04-19'),
(4, 'Test Shipment', 'inactive', '2019-05-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`lineID`);

--
-- Indexes for table `cartitems`
--
ALTER TABLE `cartitems`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catID`);

--
-- Indexes for table `cusorder`
--
ALTER TABLE `cusorder`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cusID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prID`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`suppID`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`shipID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `lineID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cartitems`
--
ALTER TABLE `cartitems`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cusorder`
--
ALTER TABLE `cusorder`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `suppID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `shipID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
