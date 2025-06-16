

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555562, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-10-21 07:01:36');

-- Table structure for table `tblclient`
--

CREATE TABLE `tblclient` (
  `ID` int(10) NOT NULL,
  `AccountID` int(10) DEFAULT NULL,
  `AccountType` varchar(50) DEFAULT NULL,
  `ContactName` varchar(120) DEFAULT NULL,
  `CompanyName` varchar(120) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `City` varchar(120) DEFAULT NULL,
  `State` varchar(120) DEFAULT NULL,
  `ZipCode` int(10) DEFAULT NULL,
  `Workphnumber` bigint(10) DEFAULT NULL,
  `Cellphnumber` bigint(10) DEFAULT NULL,
  `Otherphnumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `WebsiteAddress` varchar(200) DEFAULT NULL,
  `Notes` mediumtext DEFAULT NULL,
  `Password` varchar(200) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclient`
--

INSERT INTO `tblclient` (`ID`, `AccountID`, `AccountType`, `ContactName`, `CompanyName`, `Address`, `City`, `State`, `ZipCode`, `Workphnumber`, `Cellphnumber`, `Otherphnumber`, `Email`, `WebsiteAddress`, `Notes`, `Password`, `CreationDate`) VALUES
(1, 8252122567, 'Active Account', 'Bhawesh Kumar Singh', 'Google', 'Google, Marathalli, Bengaluru', 'Bengaluru', 'Karnataka', 560100, 8888888888, 8252122568, 4564645646, 'bhawesh0100@gmail.com', 'www.google.in', 'Good Client', '202cb962ac59075b964b07152d234b70', '2023-10-22 04:40:11'),
(2, 8814010538, 'Active Account', 'Piyush Kumar', 'Infosys Pvt Ltd', 'Infosys Pvt Ltd\r\nC-123, Sector 15 Noida ', 'Noida', 'NCR', 321121, 4454545454, 7787878787, 5454545454, 'infosys@gmail.com', 'www.infosys.com', 'hfghfhffgjgjghgbjhgbhjgjhgvh', '202cb962ac59075b964b07152d234b70', '2023-11-23 05:24:39'),
(3, 8109338201, 'Contact/Lead', 'Naveen Singh', 'ghj pvt ltd', 'ghj pvt ltd\r\ng-127 Delhi', 'New Delhi', 'Delhi/NCR', 1100096, 4464654665, 4654654646, 7879877897, 'ghj@gmail.com', 'www.ghj.com', 'dty jhgyujiou bgyt htuyy c iu gb m oojf', '202cb962ac59075b964b07152d234b70', '2023-12-22 05:26:50'),
(4, 639974991, 'Contact/Lead', 'Abir Rajwansh', 'KML PVT LTD', 'KML PVT LTD\r\nh-224 sector 62, Noida(NCR)', 'Noida', 'Delhi/NCR', 5465456, 5523235656, 8985652332, 5451212451, 'kml@gmail.com', 'www.kml.com', 'hjkh khk h khkhkhiu uy uyt uytgyu', '202cb962ac59075b964b07152d234b70', '2023-12-24 05:29:59'),
(5, 602410634, 'Active Account', 'Kundan Shah', 'JK Enterprises', 'JK Enterprises\r\nH-120,Shivala Varanasi', 'Varanasi', 'UP', 221001, 1213465464, 1645489799, 3465465465, 'jk@gmail.com', 'www.jk.com', 'ghjgjguyjgbhjghjghgcfdfgdgf', '202cb962ac59075b964b07152d234b70', '2023-12-26 10:42:52'),
(6, 426546224, 'Active Account', 'Anuj Kumar', 'Accenture', 'New Delhi', 'New Delhi', 'Delhi', 110001, 9354778033, 9354778033, 9354778033, 'anujkr12345@gmail.com', 'www.accenture.in', 'New User', 'f925916e2754e5e03f75dd58a5733251', '2023-12-27 16:00:24');

-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `ID` int(10) NOT NULL,
  `Userid` varchar(120) DEFAULT NULL,
  `ServiceId` varchar(120) DEFAULT NULL,
  `BillingId` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`ID`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(1, '2', '2', '135792633', '2023-10-22 11:51:43'),
(2, '2', '3', '135792633', '2023-10-22 11:51:43'),
(3, '1', '4', '899898097', '2023-10-23 04:20:40'),
(4, '1', '6', '899898097', '2023-10-23 04:20:40'),
(5, '4', '1', '159659268', '2023-10-23 07:16:45'),
(6, '4', '2', '159659268', '2023-10-23 07:16:45'),
(7, '4', '3', '159659268', '2023-10-23 07:16:45'),
(8, '1', '1', '729070812', '2023-10-24 06:56:11'),
(9, '1', '2', '729070812', '2023-10-24 06:56:12'),
(10, '1', '4', '369333569', '2023-10-24 06:56:36'),
(11, '1', '5', '369333569', '2023-11-24 06:56:36'),
(12, '1', '1', '248174650', '2023-11-24 07:09:12'),
(13, '1', '2', '248174650', '2023-11-24 07:09:12'),
(14, '1', '1', '818388032', '2023-11-18 03:46:54'),
(15, '1', '2', '818388032', '2023-11-18 03:46:54'),
(16, '1', '2', '385373479', '2023-11-26 05:04:51'),
(17, '1', '3', '385373479', '2023-11-26 05:04:51'),
(18, '1', '9', '467109949', '2023-11-26 17:53:27'),
(19, '1', '10', '467109949', '2023-12-26 17:53:27'),
(20, '6', '1', '847895377', '2023-12-27 16:00:56'),
(21, '6', '3', '847895377', '2023-12-27 16:00:56'),
(22, '6', '8', '847895377', '2023-12-27 16:00:56'),
(23, '6', '9', '847895377', '2023-12-27 16:00:56');

-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', 'Here is the description about us...', NULL, NULL, '2023-10-24 07:54:52'),
(2, 'contactus', 'Contact Us', 'Feel free to contact us for any queries...', 'bhawesh0100@gmail.com', 8252122567, '2023-10-24 07:56:56');

-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `ServicePrice` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `ServicePrice`, `CreationDate`) VALUES
(1, 'Web Development', '521', '2023-10-22 13:42:29'),
(2, 'SEO Service', '310', '2023-10-21 22:56:17'),
(3, 'SMO Services', '150', '2023-10-22 01:22:19'),
(4, 'Web designing', '620', '2023-10-22 03:14:15'),
(5, 'Network Service', '380', '2023-10-21 18:30:00'),
(6, 'Broadband Services', '920', '2023-10-21 18:30:00'),
(7, 'Full Stack Development Services', '910', '2023-10-22 07:46:05'),
(8, 'AI Development Services', '756', '2023-10-22 07:46:30'),
(9, 'Magento Development Services.', '113', '2023-10-22 07:47:41'),
(10, 'Protoype Development', '356', '2023-11-26 05:02:54'),
(11, 'On Page SEO', '250', '2023-11-27 15:58:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblclient`
--
ALTER TABLE `tblclient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclient`
--
ALTER TABLE `tblclient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
