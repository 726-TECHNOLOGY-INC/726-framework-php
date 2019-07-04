CREATE TABLE `ARTICLE` (
  `ARTICLE_ID` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ARTICLE_PARENT_ID` int(11) UNSIGNED DEFAULT NULL,
  `ARTICLE_TYPE_ID` int(11) UNSIGNED DEFAULT NULL,
  `ARTICLE_AUTHOR_ID` int(11) UNSIGNED DEFAULT NULL,
  `ARTICLE_CANONICAL` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ARTICLE_TITLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ARTICLE_DESCRIPTION` text COLLATE utf8mb4_unicode_ci,
  `ARTICLE_IMGURL` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ARTICLE_IMGALT` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ARTICLE_TEXT` text COLLATE utf8mb4_unicode_ci,
  `ARTICLE_FILENAME` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ARTICLE_PUBLISHED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ISACTIVE` int(7) NOT NULL DEFAULT '1',
  `INSERTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
