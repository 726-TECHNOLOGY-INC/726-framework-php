INSERT INTO `INVOICE_TYPE` (`INVOICE_TYPE_ID`, `INVOICE_TYPE_ENUM`, `INVOICE_TYPE_KWD`, `INVOICE_TYPE_NAME`, `INVOICE_TYPE_DESC`, `ISACTIVE`) VALUES
(1, 'UNDEFINED', 'undefined', 'Undefined', 'Undefined', 1),
(2, 'GOODS', 'goods', 'Goods', 'Goods / Shippable', 1),
(3, 'SERVICES', 'services', 'Services', 'Services', 1),
(4, 'FREIGHT_ACCRUAL', 'freight-accrual', 'Freight Accrual', 'Payment made towards shipping costs', 1),
(5, 'VENDOR_ACCRUAL', 'vendor-accrual', 'Vendor Accrual', 'Payment made to a Vendor', 1),
(6, 'SHIPPING', 'shipping', 'Shipping', 'When exact shipping costs are known', 1);
