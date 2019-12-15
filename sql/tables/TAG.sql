CREATE TABLE `TAG` (
  `TAG_ID` int(11) UNSIGNED NOT NULL,
  `TAG_KWD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TAG_NAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TAG_IMGURL` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TAG_DESCRIPTION` text COLLATE utf8mb4_unicode_ci,
  `ISACTIVE` int(7) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `TAG`
  ADD PRIMARY KEY (`TAG_ID`);
