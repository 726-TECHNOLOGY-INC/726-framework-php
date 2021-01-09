SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------

--
-- Table structure for table `ADDRESS`
--

CREATE TABLE `ADDRESS` (
  `ADDRESS_ID` int(11) UNSIGNED NOT NULL,
  `ADDRESS_NAME` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ADDRESS_DESCRIPTION` text COLLATE utf8mb4_unicode_ci,
  `ADDRESS_STREET_1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ADDRESS_STREET_2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ADDRESS_STREET_3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ADDRESS_CITY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ADDRESS_STATE_ID` int(11) UNSIGNED NOT NULL,
  `ADDRESS_POSTAL` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ADDRESS_COUNTRY_ID` int(11) UNSIGNED NOT NULL,
  `ISACTIVE` int(7) NOT NULL DEFAULT '1',
  `INSERTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ADDRESS_COUNTRY`
--

CREATE TABLE `ADDRESS_COUNTRY` (
  `ADDRESS_COUNTRY_ID` int(11) UNSIGNED NOT NULL,
  `ADDRESS_COUNTRY_CODE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ADDRESS_COUNTRY_NAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ADDRESS_COUNTRY`
--

INSERT INTO `ADDRESS_COUNTRY` (`ADDRESS_COUNTRY_ID`, `ADDRESS_COUNTRY_CODE`, `ADDRESS_COUNTRY_NAME`) VALUES
(1, 'US', 'United States');

-- --------------------------------------------------------

--
-- Table structure for table `ADDRESS_STATE`
--

CREATE TABLE `ADDRESS_STATE` (
  `ADDRESS_COUNTRY_ID` int(11) UNSIGNED NOT NULL,
  `ADDRESS_STATE_ID` int(11) UNSIGNED NOT NULL,
  `ADDRESS_STATE_CODE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ADDRESS_STATE_NAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ADDRESS_STATE`
--

INSERT INTO `ADDRESS_STATE` (`ADDRESS_COUNTRY_ID`, `ADDRESS_STATE_ID`, `ADDRESS_STATE_CODE`, `ADDRESS_STATE_NAME`) VALUES
(1, 1, 'AL', 'Alabama'),
(1, 2, 'AK', 'Alaska'),
(1, 3, 'AR', 'Arkansas'),
(1, 4, 'AZ', 'Arizona'),
(1, 5, 'CA', 'California'),
(1, 6, 'CO', 'Colorado'),
(1, 7, 'CT', 'Connecticut'),
(1, 8, 'DE', 'Delaware'),
(1, 9, 'FL', 'Florida'),
(1, 10, 'GA', 'Georgia'),
(1, 11, 'HI', 'Hawaii'),
(1, 12, 'IA', 'Iowa'),
(1, 13, 'ID', 'Idaho'),
(1, 14, 'IL', 'Illinois'),
(1, 15, 'IN', 'Indiana'),
(1, 16, 'KS', 'Kansas'),
(1, 17, 'KY', 'Kentucky'),
(1, 18, 'LA', 'Louisiana'),
(1, 19, 'MA', 'Massachusettes'),
(1, 20, 'MD', 'Maryland'),
(1, 21, 'ME', 'Maine'),
(1, 22, 'MI', 'Michigan'),
(1, 23, 'MN', 'Minnesota'),
(1, 24, 'MO', 'Missouri'),
(1, 25, 'MS', 'Mississippi'),
(1, 26, 'MT', 'Montana'),
(1, 27, 'NC', 'North Carolina'),
(1, 28, 'ND', 'North Dakota'),
(1, 29, 'NE', 'Nebraska'),
(1, 30, 'NH', 'New Hampshire'),
(1, 31, 'NJ', 'New Jersey'),
(1, 32, 'NM', 'New Mexico'),
(1, 33, 'NV', 'Nevada'),
(1, 34, 'NY', 'New York'),
(1, 35, 'OH', 'Ohio'),
(1, 36, 'OK', 'Oklahoma'),
(1, 37, 'OR', 'Oregon'),
(1, 38, 'PA', 'Pennsylvania'),
(1, 39, 'RI', 'Rhode Island'),
(1, 40, 'SC', 'South Carolina'),
(1, 41, 'SD', 'South Dakota'),
(1, 42, 'TN', 'Tennessee'),
(1, 43, 'TX', 'Texas'),
(1, 44, 'UT', 'Utah'),
(1, 45, 'VA', 'Virginia'),
(1, 46, 'VT', 'Vermont'),
(1, 47, 'WA', 'Washington'),
(1, 48, 'WI', 'Wisconsin'),
(1, 49, 'WV', 'West Virginia'),
(1, 50, 'WY', 'Wyoming');

-- --------------------------------------------------------
--
-- Table structure for table `ADDRESS_TYPE`
--

CREATE TABLE `ADDRESS_TYPE` (
  `ADDRESS_TYPE_ID` int(11) UNSIGNED NOT NULL,
  `ADDRESS_TYPE_ENUM` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ADDRESS_TYPE_KWD` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ADDRESS_TYPE_NAME` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ADDRESS_TYPE_DESC` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ISACTIVE` int(7) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
--
-- Table structure for table `CLIENT`
--

CREATE TABLE `CLIENT` (
  `CLIENT_ID` int(11) UNSIGNED NOT NULL,
  `CLIENT_EMAIL` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CLIENT_FACEBOOK_ID` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CLIENT_FACEBOOK_EMAIL` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CLIENT_FACEBOOK_NAME` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CLIENT_ROLE_ID` int(11) UNSIGNED DEFAULT NULL,
  `CLIENT_FIRSTNAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CLIENT_MIDDLENAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CLIENT_LASTNAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CLIENT_ORGANIZATION` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CLIENT_WEBURL` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CLIENT_PHONE` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CLIENT_NOTES` text COLLATE utf8mb4_unicode_ci,
  `CLIENT_REGIP` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CLIENT_ISREGISTERED` int(7) NOT NULL DEFAULT '0',
  `CLIENT_AGREEMENTS_SIGNED` date DEFAULT NULL,
  `CLIENT_AVATAR64` text CHARACTER SET ascii,
  `ISACTIVE` int(7) NOT NULL DEFAULT '1',
  `INSERTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- --------------------------------------------------------

--
-- Table structure for table `INVOICE`
--

CREATE TABLE `INVOICE` (
  `INVOICE_ID` int(11) UNSIGNED NOT NULL,
  `CLIENT_ID` int(11) UNSIGNED NOT NULL,
  `LIVESTREAM_ID` int(11) UNSIGNED DEFAULT NULL,
  `INVOICE_TYPE_ID` int(11) UNSIGNED NOT NULL DEFAULT '2',
  `INVOICE_STATUS_ID` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `INVOICE_INTERNAL_STATUS_ID` int(11) UNSIGNED DEFAULT NULL,
  `INVOICE_PAYPAL_ID` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INVOICE_PAYPAL_NUMBER` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INVOICE_PAYPAL_DATE` date DEFAULT NULL,
  `INVOICE_PAYPAL_AMOUNT` decimal(10,2) DEFAULT NULL,
  `INVOICE_PAYPAL_DUE_AMOUNT` decimal(10,2) DEFAULT NULL,
  `INVOICE_PAYPAL_REFUND_AMOUNT` decimal(10,2) NOT NULL DEFAULT '0.00',
  `INVOICE_PAYPAL_PAID_DATE` date DEFAULT NULL,
  `INVOICE_DELIVERY_ADDRESS_ID` int(11) UNSIGNED DEFAULT NULL,
  `INVOICE_BILLING_ADDRESS_ID` int(11) UNSIGNED DEFAULT NULL,
  `INVOICE_SHIPPING_AMOUNT` decimal(10,2) NOT NULL DEFAULT '0.00',
  `INVOICE_SHIPPING_PALLET` int(7) UNSIGNED NOT NULL DEFAULT '0',
  `INVOICE_PRINTED` int(7) UNSIGNED NOT NULL DEFAULT '0',
  `INVOICE_NOTES` text COLLATE utf8mb4_unicode_ci,
  `ISACTIVE` int(7) UNSIGNED NOT NULL DEFAULT '1',
  `INSERTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



-- --------------------------------------------------------

--
-- Table structure for table `INVOICE_ITEM`
--

CREATE TABLE `INVOICE_ITEM` (
  `INVOICE_ID` int(11) UNSIGNED DEFAULT NULL,
  `LIVESTREAM_ID` int(11) UNSIGNED DEFAULT NULL,
  `CLIENT_ID` int(11) UNSIGNED DEFAULT NULL,
  `VENDOR_PRODUCT_ID` int(11) UNSIGNED DEFAULT NULL,
  `SHIPMENT_CONTAINER_ID` int(11) UNSIGNED DEFAULT NULL,
  `INVOICE_ITEM_ID` int(11) UNSIGNED NOT NULL,
  `INVOICE_ITEM_NAME` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INVOICE_ITEM_QTY` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `INVOICE_ITEM_DESC` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INVOICE_ITEM_PRICE` decimal(10,2) DEFAULT NULL,
  `INVOICE_ITEM_UNIT_AMOUNT` decimal(10,2) NOT NULL DEFAULT '0.00',
  `INVOICE_ITEM_PAYPAL_ID` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INVOICE_ITEM_WEIGHT` decimal(10,2) DEFAULT NULL,
  `INVOICE_ITEM_LENGTH` decimal(10,2) DEFAULT NULL,
  `INVOICE_ITEM_WIDTH` decimal(10,2) DEFAULT NULL,
  `INVOICE_ITEM_HEIGHT` decimal(10,2) DEFAULT NULL,
  `INVOICE_ITEM_UOM_MASS` int(11) UNSIGNED DEFAULT NULL,
  `INVOICE_ITEM_UOM_VOLUME` int(11) UNSIGNED DEFAULT NULL,
  `INVOICE_ITEM_NOTES` text COLLATE utf8mb4_unicode_ci,
  `INVOICE_ITEM_TIME` time DEFAULT NULL,
  `ISACTIVE` int(7) NOT NULL DEFAULT '1',
  `INSERTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



-- --------------------------------------------------------

--
-- Table structure for table `LIVESTREAM`
--

CREATE TABLE `LIVESTREAM` (
  `LIVESTREAM_ID` int(11) UNSIGNED NOT NULL,
  `LIVESTREAM_STATUS_ID` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `LIVESTREAM_NAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LIVESTREAM_DATE` date DEFAULT NULL,
  `LIVESTREAM_NOTES` text COLLATE utf8mb4_unicode_ci,
  `ADDRESS_ID` int(11) UNSIGNED DEFAULT NULL,
  `ISACTIVE` int(7) NOT NULL DEFAULT '1',
  `INSERTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



-- --------------------------------------------------------

--
-- Table structure for table `LIVESTREAM_STATUS`
--

CREATE TABLE `LIVESTREAM_STATUS` (
  `LIVESTREAM_STATUS_ID` int(11) UNSIGNED NOT NULL,
  `LIVESTREAM_STATUS_ENUM` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LIVESTREAM_STATUS_KWD` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LIVESTREAM_STATUS_NAME` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LIVESTREAM_STATUS_DESC` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ISACTIVE` int(7) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



-- --------------------------------------------------------

--
-- Table structure for table `LIVESTREAM_VENDOR`
--

CREATE TABLE `LIVESTREAM_VENDOR` (
  `LIVESTREAM_ID` int(11) UNSIGNED NOT NULL,
  `VENDOR_ID` int(11) UNSIGNED NOT NULL,
  `VENDOR_ROLE_ID` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `VENDOR_RATE` decimal(10,2) DEFAULT NULL,
  `ISACTIVE` int(7) NOT NULL DEFAULT '1',
  `INSERTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Dumping data for table `LIVESTREAM_STATUS`
--

INSERT INTO `LIVESTREAM_STATUS` (`LIVESTREAM_STATUS_ID`, `LIVESTREAM_STATUS_ENUM`, `LIVESTREAM_STATUS_KWD`, `LIVESTREAM_STATUS_NAME`, `LIVESTREAM_STATUS_DESC`, `ISACTIVE`) VALUES
(1, 'FUTURE', 'future', 'Future', 'An upcoming LiveStream in the schedule', 1),
(2, 'ACTIVE', 'active', 'Active', 'The LiveStream is currently active but not started', 1),
(3, 'LIVE', 'live', 'Live', 'The LiveStream is currently LIVE', 1),
(4, 'PAUSED', 'paused', 'Paused', 'The LiveStream is live but paused', 1),
(5, 'ENDED', 'ended', 'Ended', 'The LiveStream has just ended', 1),
(6, 'INVOICED', 'invoiced', 'Invoiced', 'The invoices for the LiveStream have been sent', 1),
(7, 'ARCHIVED', 'archived', 'Archived', 'No further actions are required of the LiveStream', 1),
(8, 'DELETED', 'deleted', 'Deleted', 'The LiveStream has been deleted', 1);

-- --------------------------------------------------------

--
-- Table structure for table `MEMBER`
--

CREATE TABLE `MEMBER` (
  `MEMBER_ID` int(11) UNSIGNED NOT NULL,
  `MEMBER_EMAIL` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MEMBER_ROLE_ID` int(11) UNSIGNED DEFAULT NULL,
  `MEMBER_FACEBOOK_ID` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MEMBER_FACEBOOK_EMAIL` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MEMBER_FACEBOOK_NAME` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MEMBER_USERNAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MEMBER_PASSWORD` varbinary(250) NOT NULL DEFAULT '\0',
  `MEMBER_FIRSTNAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MEMBER_LASTNAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MEMBER_ORGANIZATION` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MEMBER_WEBURL` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MEMBER_PHONE` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MEMBER_ADDRESS_ID` int(11) UNSIGNED DEFAULT NULL,
  `MEMBER_ISREGISTERED` int(7) NOT NULL DEFAULT '0',
  `MEMBER_ISBANNED` int(7) NOT NULL DEFAULT '0',
  `ISACTIVE` int(7) NOT NULL DEFAULT '1',
  `INSERTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




-- --------------------------------------------------------

--
-- Table structure for table `MEMBER_ADDRESS`
--

CREATE TABLE `MEMBER_ADDRESS` (
  `MEMBER_ID` int(11) UNSIGNED NOT NULL,
  `ADDRESS_ID` int(11) UNSIGNED NOT NULL,
  `MEMBER_ADDRESS_NAME` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MEMBER_ADDRESS_ISPRIMARY` int(7) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MEMBER_ROLE`
--

CREATE TABLE `MEMBER_ROLE` (
  `MEMBER_ROLE_ID` int(11) UNSIGNED NOT NULL,
  `MEMBER_ROLE_ENUM` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MEMBER_ROLE_KWD` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MEMBER_ROLE_NAME` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MEMBER_ROLE_DESC` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PRODUCT`
--

CREATE TABLE `PRODUCT` (
  `PRODUCT_ID` int(11) UNSIGNED NOT NULL,
  `PRODUCT_STATUS_ID` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `PRODUCT_KWD` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRODUCT_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PRODUCT_IMGURL` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRODUCT_DESC` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRIORITY` int(11) NOT NULL DEFAULT '0',
  `ISACTIVE` int(7) NOT NULL DEFAULT '1',
  `INSERTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



-- --------------------------------------------------------

--
-- Table structure for table `PRODUCT_STATUS`
--

CREATE TABLE `PRODUCT_STATUS` (
  `PRODUCT_STATUS_ID` int(11) UNSIGNED NOT NULL,
  `PRODUCT_STATUS_ENUM` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRODUCT_STATUS_KWD` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRODUCT_STATUS_NAME` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRODUCT_STATUS_DESC` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ISACTIVE` int(7) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- --------------------------------------------------------

--
-- Table structure for table `PRODUCT_TAG`
--

CREATE TABLE `PRODUCT_TAG` (
  `PRODUCT_ID` int(11) UNSIGNED NOT NULL,
  `TAG_ID` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- --------------------------------------------------------

--
-- Table structure for table `REQUEST`
--

CREATE TABLE `REQUEST` (
  `REQUEST_ID` int(11) UNSIGNED NOT NULL,
  `CLIENT_ID` int(11) UNSIGNED DEFAULT NULL,
  `MEMBER_ID` int(11) UNSIGNED DEFAULT NULL,
  `VENDOR_ID` int(11) UNSIGNED DEFAULT NULL,
  `REQUEST_PARENT_ID` int(11) UNSIGNED DEFAULT NULL,
  `REQUEST_STATUS_ID` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `REQUEST_TITLE` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `REQUEST_TEXT` text COLLATE utf8mb4_unicode_ci,
  `REQUEST_RESPONSE` text COLLATE utf8mb4_unicode_ci,
  `REQUEST_PRIORITY` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ISACTIVE` int(7) NOT NULL DEFAULT '1',
  `INSERTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- --------------------------------------------------------
--
-- Table structure for table `REQUEST_STATUS`
--


CREATE TABLE `REQUEST_STATUS` (
  `REQUEST_STATUS_ID` int(11) UNSIGNED NOT NULL,
  `REQUEST_STATUS_ENUM` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `REQUEST_STATUS_KWD` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `REQUEST_STATUS_NAME` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `REQUEST_STATUS_DESC` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TAG`
--

CREATE TABLE `TAG` (
  `TAG_ID` int(11) UNSIGNED NOT NULL,
  `TAG_KWD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TAG_NAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TAG_IMGURL` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TAG_DESCRIPTION` text COLLATE utf8mb4_unicode_ci,
  `ISACTIVE` int(7) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UOM`
--

CREATE TABLE `UOM` (
  `UOM_ID` int(11) UNSIGNED NOT NULL,
  `UOM_SYM` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UOM_NAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UOM_IS_METRIC` int(7) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `UOM`
--

INSERT INTO `UOM` (`UOM_ID`, `UOM_SYM`, `UOM_NAME`, `UOM_IS_METRIC`) VALUES
(1, 'lb', 'pounds', 0),
(2, 'g', 'grams', 1),
(3, 't', 'tons', 0),
(4, 'oz', 'ounces', 0),
(5, 'kg', 'kilograms', 1),
(6, 'm', 'meters', 1),
(7, 'in', 'inches', 0),
(8, 'ft', 'feet', 0);

-- --------------------------------------------------------
--
-- Table structure for table `VENDOR`
--

CREATE TABLE `VENDOR` (
  `VENDOR_ID` int(11) UNSIGNED NOT NULL,
  `VENDOR_KWD` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VENDOR_NAME` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VENDOR_RATE` decimal(10,2) DEFAULT NULL,
  `VENDOR_TIER` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `ISACTIVE` int(7) NOT NULL DEFAULT '1',
  `INSERTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
--
-- Table structure for table `VENDOR_ACCRUAL`
--

CREATE TABLE `VENDOR_ACCRUAL` (
  `VENDOR_ACCRUAL_ID` int(11) UNSIGNED NOT NULL,
  `VENDOR_ACCRUAL_NAME` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VENDOR_ACCRUAL_DESC` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VENDOR_ACCRUAL_AMOUNT` decimal(10,2) DEFAULT NULL,
  `ISACTIVE` int(7) NOT NULL DEFAULT '1',
  `INSERTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
--
-- Table structure for table `VENDOR_PRODUCT`
--

CREATE TABLE `VENDOR_PRODUCT` (
  `VENDOR_PRODUCT_ID` int(11) UNSIGNED NOT NULL,
  `VENDOR_ID` int(11) UNSIGNED NOT NULL,
  `PRODUCT_ID` int(11) UNSIGNED NOT NULL,
  `VENDOR_PRODUCT_NAME` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VENDOR_PRODUCT_RATE` decimal(10,2) DEFAULT NULL,
  `VENDOR_PRODUCT_PRICE` decimal(10,2) DEFAULT NULL,
  `ISACTIVE` int(7) NOT NULL DEFAULT '1',
  `INSERTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
--
-- Table structure for table `VENDOR_ROLE`
--

CREATE TABLE `VENDOR_ROLE` (
  `VENDOR_ROLE_ID` int(11) UNSIGNED NOT NULL,
  `VENDOR_ROLE_ENUM` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VENDOR_ROLE_KWD` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VENDOR_ROLE_NAME` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VENDOR_ROLE_DESC` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `VENDOR_ROLE`
--

INSERT INTO `VENDOR_ROLE` (`VENDOR_ROLE_ID`, `VENDOR_ROLE_ENUM`, `VENDOR_ROLE_KWD`, `VENDOR_ROLE_NAME`, `VENDOR_ROLE_DESC`) VALUES
(1, 'WAREHOUSE', 'warehouse', 'Warehouse', NULL),
(2, 'STUDIO', 'studio', 'Studio', NULL),
(3, 'HOST', 'host', 'Host', NULL),
(4, 'CREW', 'crew', 'Crew', NULL),
(5, 'SUPPLIER', 'supplier', 'Supplier', NULL),
(6, 'SYNDICATOR', 'syndicator', 'Syndicator', NULL);


--
-- Indexes for dumped tables
--

--
-- Indexes for table `ADDRESS`
--
ALTER TABLE `ADDRESS`
  ADD PRIMARY KEY (`ADDRESS_ID`);

--
-- Indexes for table `ADDRESS_COUNTRY`
--
ALTER TABLE `ADDRESS_COUNTRY`
  ADD PRIMARY KEY (`ADDRESS_COUNTRY_ID`),
  ADD UNIQUE KEY `ADDRESS_COUNTRY_CODE` (`ADDRESS_COUNTRY_CODE`);

--
-- Indexes for table `ADDRESS_STATE`
--
ALTER TABLE `ADDRESS_STATE`
  ADD PRIMARY KEY (`ADDRESS_COUNTRY_ID`,`ADDRESS_STATE_ID`);

--
-- Indexes for table `CLIENT`
--
ALTER TABLE `CLIENT`
  ADD PRIMARY KEY (`CLIENT_ID`);

--
-- Indexes for table `INVOICE`
--
ALTER TABLE `INVOICE`
  ADD PRIMARY KEY (`INVOICE_ID`),
  ADD UNIQUE KEY `INVOICE_PAYPAL` (`INVOICE_PAYPAL`);

--
-- Indexes for table `INVOICE_ITEM`
--
ALTER TABLE `INVOICE_ITEM`
  ADD PRIMARY KEY (`INVOICE_ITEM_ID`) USING BTREE;

--
-- Indexes for table `LIVESTREAM`
--
ALTER TABLE `LIVESTREAM`
  ADD PRIMARY KEY (`LIVESTREAM_ID`);


--
-- Indexes for table `MEMBER`
--
ALTER TABLE `MEMBER`
  ADD PRIMARY KEY (`MEMBER_ID`),
  ADD UNIQUE KEY `MEMBER_EMAIL` (`MEMBER_EMAIL`);

--
-- Indexes for table `MEMBER_ADDRESS`
--
ALTER TABLE `MEMBER_ADDRESS`
  ADD PRIMARY KEY (`MEMBER_ID`,`ADDRESS_ID`);

--
-- Indexes for table `PRODUCT`
--
ALTER TABLE `PRODUCT`
  ADD PRIMARY KEY (`PRODUCT_ID`);

--
-- Indexes for table `PRODUCT_TAG`
--
ALTER TABLE `PRODUCT_TAG`
  ADD PRIMARY KEY (`PRODUCT_ID`,`TAG_ID`);

--
-- Indexes for table `TAG`
--
ALTER TABLE `TAG`
  ADD PRIMARY KEY (`TAG_ID`);

--
-- Indexes for table `UOM`
--
ALTER TABLE `UOM`
  ADD PRIMARY KEY (`UOM_ID`),
  ADD UNIQUE KEY `UOM_SYM` (`UOM_SYM`);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
