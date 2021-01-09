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

ALTER TABLE `CLIENT`
  ADD PRIMARY KEY (`CLIENT_ID`),
  ADD UNIQUE KEY `CLIENT_EMAIL` (`CLIENT_EMAIL`);
