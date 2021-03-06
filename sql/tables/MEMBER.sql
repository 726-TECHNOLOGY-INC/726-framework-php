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


ALTER TABLE `MEMBER`
  ADD PRIMARY KEY (`MEMBER_ID`),
  ADD UNIQUE KEY `MEMBER_EMAIL` (`MEMBER_EMAIL`);
