INSERT INTO `SHIPMENT_CONTAINER_TYPE` (`SHIPMENT_CONTAINER_TYPE_ID`, `SHIPMENT_CONTAINER_KWD`, `SHIPMENT_CONTAINER_NAME`, `SHIPMENT_CONTAINER_DESC`, `SHIPMENT_CONTAINER_COST`, `SHIPMENT_CONTAINER_LENGTH`, `SHIPMENT_CONTAINER_WIDTH`, `SHIPMENT_CONTAINER_HEIGHT`, `SHIPMENT_CONTAINER_MAX_WEIGHT`, `ISACTIVE`) VALUES
(1, 'custom', 'Custom', 'Any shipment container not otherwise defined in the system', 0.00, 0.00, 0.00, 0.00, 0.00, 1),
(2, 'pallet', 'Pallet', 'All pallets, regardless of size', 0.00, 0.00, 0.00, 0.00, 0.00, 1),
(3, 'usps-large-frb', 'USPS Large FRB', 'USPS Large flat-rate box', 20.00, 10.00, 10.00, 4.00, 0.00, 1),
(4, 'usps-medium-frb', 'USPS Medium FRB', 'USPS Large flat-rate box', 15.00, 12.00, 6.00, 3.00, 0.00, 1),
(5, 'usps-small-frb', 'USPS Small FRB', 'USPS Small flat-rate box', 12.00, 7.00, 5.00, 2.00, 0.00, 1),
(6, 'usps-padded-fr', 'USPS Padded FR', 'USPS Padded flat-rate envelope', 12.00, 12.00, 9.00, 0.00, 0.00, 1),
(7, 'medium-home-depot', 'Medium Home Depot', 'Medium size Home Depot box', 60.00, 20.00, 20.00, 20.00, 0.00, 1),
(8, 'small-home-depot', 'Small Home Depot', 'Small size Home Depot box', 40.00, 16.00, 12.00, 12.00, 0.00, 1),
(9, 'small-padded-envelope', 'Small Padded Envelope', 'Generic Padded Envelope', 5.00, 6.00, 4.00, 1.00, 0.00, 1);
