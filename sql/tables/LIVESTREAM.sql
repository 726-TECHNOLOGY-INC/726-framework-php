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