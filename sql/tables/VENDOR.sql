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