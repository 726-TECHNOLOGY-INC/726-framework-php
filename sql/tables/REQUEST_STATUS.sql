CREATE TABLE `REQUEST_STATUS` (
  `REQUEST_STATUS_ID` int(11) UNSIGNED NOT NULL,
  `REQUEST_STATUS_ENUM` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `REQUEST_STATUS_KWD` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `REQUEST_STATUS_NAME` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `REQUEST_STATUS_DESC` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
