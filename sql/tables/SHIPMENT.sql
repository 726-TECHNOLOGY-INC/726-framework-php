CREATE TABLE `SHIPMENT` (
  `SHIPMENT_ID` int(11) UNSIGNED NOT NULL,
  `SHIPMENT_NAME` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SHIPMENT_DESC` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SHIPMENT_AMOUNT` decimal(10,2) DEFAULT NULL,
  `SHIPMENT_DATE` date DEFAULT NULL,
  `ISACTIVE` int(7) NOT NULL DEFAULT '1',
  `INSERTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;