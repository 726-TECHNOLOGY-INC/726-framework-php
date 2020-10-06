CREATE TABLE `INVOICE` (
  `INVOICE_ID` int(11) UNSIGNED NOT NULL,
  `CLIENT_ID` int(11) UNSIGNED NOT NULL,
  `LIVESTREAM_ID` int(11) UNSIGNED DEFAULT NULL,
  `INVOICE_TYPE_ID` int(11) UNSIGNED NOT NULL DEFAULT '2',
  `INVOICE_STATUS_ID` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `INVOICE_INTERNAL_STATUS_ID` int(11) UNSIGNED DEFAULT NULL,
  `INVOICE_PAYPAL_ID` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INVOICE_PAYPAL_NUMBER` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INVOICE_PAYPAL_DATE` date DEFAULT NULL,
  `INVOICE_PAYPAL_AMOUNT` decimal(10,2) DEFAULT NULL,
  `INVOICE_PAYPAL_DUE_AMOUNT` decimal(10,2) DEFAULT NULL,
  `INVOICE_DELIVERY_ADDRESS_ID` int(11) UNSIGNED DEFAULT NULL,
  `INVOICE_BILLING_ADDRESS_ID` int(11) UNSIGNED DEFAULT NULL,
  `INVOICE_SHIPPING_AMOUNT` decimal(10,2) NOT NULL DEFAULT '0.00',
  `INVOICE_SHIPPING_PALLET` int(7) UNSIGNED NOT NULL DEFAULT '0',
  `INVOICE_PRINTED` int(7) UNSIGNED NOT NULL DEFAULT '0',
  `INVOICE_NOTES` text COLLATE utf8mb4_unicode_ci,
  `ISACTIVE` int(7) UNSIGNED NOT NULL DEFAULT '1',
  `INSERTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `INVOICE`
  ADD PRIMARY KEY (`INVOICE_ID`),
  ADD UNIQUE KEY `INVOICE_PAYPAL_ID` (`INVOICE_PAYPAL_ID`);
