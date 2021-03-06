CREATE TABLE `REQUISITION` (
  `REQUISITION_ID` int(11) UNSIGNED NOT NULL,
  `MEMBER_ID` int(11) UNSIGNED NOT NULL,
  `REQUISITION_DELIVERY_ID` int(11) UNSIGNED NOT NULL,
  `REQUISITION_BILLING_ID` int(11) UNSIGNED NOT NULL,
  `REQUISITION_STATUS_ID` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `REQUISITION_NOTES` text COLLATE utf8mb4_unicode_ci,
  `ISACTIVE` int(7) NOT NULL DEFAULT '1',
  `INSERTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `REQUISITION`
  ADD PRIMARY KEY (`REQUISITION_ID`);
