CREATE TABLE `MESSAGE` (
  `MESSAGE_ID` int(11) UNSIGNED NOT NULL,
  `MESSAGE_PARENT_ID` int(11) UNSIGNED DEFAULT NULL,
  `MESSAGE_FLAGS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MESSAGE_SEND_DATE` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MESSAGE_SEND_TO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MESSAGE_SUBJECT` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MESSAGE_TEXT` text COLLATE utf8mb4_unicode_ci,
  `MESSAGE_AUTHOR_MEMBER_ID` int(11) UNSIGNED DEFAULT NULL,
  `MESSAGE_AUTHOR_NAME` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MESSAGE_AUTHOR_PHONE` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MESSAGE_AUTHOR_EMAIL` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MESSAGE_AUTHOR_ORG` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MESSAGE_AUTHOR_WEBURL` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MESSAGE_AUTHOR_TAGS` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MESSAGE_ISREAD` int(7) NOT NULL DEFAULT '0',
  `ISACTIVE` int(7) NOT NULL DEFAULT '1',
  `INSERTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `MESSAGE`
  ADD PRIMARY KEY (`MESSAGE_ID`);
