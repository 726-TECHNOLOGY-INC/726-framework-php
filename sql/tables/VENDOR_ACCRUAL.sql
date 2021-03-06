CREATE TABLE `VENDOR_ACCRUAL` (
  `VENDOR_ACCRUAL_ID` int(11) UNSIGNED NOT NULL,
  `VENDOR_ACCRUAL_NAME` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VENDOR_ACCRUAL_DESC` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VENDOR_ACCRUAL_AMOUNT` decimal(10,2) DEFAULT NULL,
  `ISACTIVE` int(7) NOT NULL DEFAULT '1',
  `INSERTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
