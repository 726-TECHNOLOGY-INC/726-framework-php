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
-- Table structure for table `CLIENT`
--

CREATE TABLE `CLIENT` (
  `CLIENT_ID` int(11) UNSIGNED NOT NULL,
  `CLIENT_EMAIL` varchar(100) NOT NULL,
  `CLIENT_FACEBOOKNAME` varchar(100) DEFAULT NULL,
  `CLIENT_FIRSTNAME` varchar(50) DEFAULT NULL,
  `CLIENT_LASTNAME` varchar(50) DEFAULT NULL,
  `CLIENT_ORGANIZATION` varchar(100) DEFAULT NULL,
  `CLIENT_WEBURL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CLIENT_PHONE` varchar(100) DEFAULT NULL,
  `CLIENT_NOTES` text COLLATE utf8mb4_unicode_ci,
  `CLIENT_ISREGISTERED` int(7) NOT NULL DEFAULT '0',
  `ISACTIVE` int(7) NOT NULL DEFAULT '1',
  `INSERTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `CLIENT`
  ADD PRIMARY KEY (`CLIENT_ID`),
  ADD UNIQUE KEY `CLIENT_EMAIL` (`CLIENT_EMAIL`);

-- --------------------------------------------------------

--
-- Table structure for table `INVOICE`
--

CREATE TABLE `INVOICE` (
  `INVOICE_ID` int(11) UNSIGNED NOT NULL,
  `LIVESTREAM_ID` int(11) UNSIGNED DEFAULT NULL,
  `CLIENT_ID` int(11) UNSIGNED NOT NULL,
  `INVOICE_PAYPAL` varchar(50) DEFAULT NULL,
  `INVOICE_DELIVERY_ADDRESS_ID` int(11) UNSIGNED DEFAULT NULL,
  `INVOICE_BILLING_ADDRESS_ID` int(11) UNSIGNED DEFAULT NULL,
  `INVOICE_STATUS_ID` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `INVOICE_NOTES` text COLLATE utf8mb4_unicode_ci,
  `INVOICE_SHIPPING_PRICE` decimal(10,2) DEFAULT NULL,
  `INVOICE_SHIPPING_PALLET` int(7) NOT NULL DEFAULT '0',
  `ISACTIVE` int(7) NOT NULL DEFAULT '1',
  `INSERTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `INVOICE`
  ADD PRIMARY KEY (`INVOICE_ID`),
  ADD UNIQUE KEY `INVOICE_PAYPAL` (`INVOICE_PAYPAL`);


-- --------------------------------------------------------

--
-- Table structure for table `INVOICE_ITEM`
--

CREATE TABLE `INVOICE_ITEM` (
  `INVOICE_ID` int(11) UNSIGNED NOT NULL,
  `INVOICE_ITEM_ID` int(11) UNSIGNED NOT NULL,
  `INVOICE_ITEM_NAME` varchar(200) DEFAULT NULL,
  `INVOICE_ITEM_DESC` varchar(200) DEFAULT NULL,
  `INVOICE_ITEM_PRICE` decimal(10,2) DEFAULT NULL,
  `INVOICE_ITEM_NOTES` text COLLATE utf8mb4_unicode_ci,
  `INVOICE_ITEM_TIME` time DEFAULT NULL,
  `ISACTIVE` int(7) NOT NULL DEFAULT '1',
  `INSERTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `INVOICE_ITEM`
  ADD PRIMARY KEY (`INVOICE_ID`,`INVOICE_ITEM_ID`);

-- --------------------------------------------------------

--
-- Table structure for table `LIVESTREAM`
--
CREATE TABLE `LIVESTREAM` (
  `LIVESTREAM_ID` int(11) UNSIGNED NOT NULL,
  `LIVESTREAM_NAME` varchar(50) DEFAULT NULL,
  `LIVESTREAM_DATE` date DEFAULT NULL,
  `LIVESTREAM_NOTES` text COLLATE utf8mb4_unicode_ci,
  `ISACTIVE` int(7) NOT NULL DEFAULT '1',
  `INSERTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `LIVESTREAM`
  ADD PRIMARY KEY (`LIVESTREAM_ID`);

-- --------------------------------------------------------

--
-- Table structure for table `MEMBER`
--

CREATE TABLE `MEMBER` (
  `MEMBER_ID` int(11) UNSIGNED NOT NULL,
  `MEMBER_EMAIL` varchar(100) NOT NULL,
  `MEMBER_USERNAME` varchar(50) DEFAULT NULL,
  `MEMBER_PASSWORD` varbinary(250) NOT NULL DEFAULT '\0',
  `MEMBER_FIRSTNAME` varchar(50) DEFAULT NULL,
  `MEMBER_LASTNAME` varchar(50) DEFAULT NULL,
  `MEMBER_ORGANIZATION` varchar(100) DEFAULT NULL,
  `MEMBER_WEBURL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MEMBER_PHONE` varchar(100) DEFAULT NULL,
  `MEMBER_ISREGISTERED` int(7) NOT NULL DEFAULT '0',
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
-- Table structure for table `PRODUCT`
--

CREATE TABLE `PRODUCT` (
  `PRODUCT_ID` int(11) UNSIGNED NOT NULL,
  `PRODUCT_STATUS_ID` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `PRODUCT_KWD` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `PRODUCT_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PRODUCT_IMGURL` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PRODUCT_DESCRIPTION` text COLLATE utf8mb4_unicode_ci,
  `PRIORITY` int(11) NOT NULL DEFAULT '0',
  `ISACTIVE` int(7) NOT NULL DEFAULT '1',
  `ISDELETED` int(7) NOT NULL DEFAULT '0',
  `INSERTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
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