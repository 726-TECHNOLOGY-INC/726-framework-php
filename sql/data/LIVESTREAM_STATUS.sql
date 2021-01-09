INSERT INTO `LIVESTREAM_STATUS` (`LIVESTREAM_STATUS_ID`, `LIVESTREAM_STATUS_ENUM`, `LIVESTREAM_STATUS_KWD`, 
            `LIVESTREAM_STATUS_NAME`, `LIVESTREAM_STATUS_DESC`, `ISACTIVE`)
VALUES
(1, 'FUTURE', 'future', 'Future', 'An upcoming LiveStream in the schedule', 1),
(2, 'ACTIVE', 'active', 'Active', 'The LiveStream is currently active but not started', 1),
(3, 'LIVE', 'live', 'Live', 'The LiveStream is currently LIVE', 1),
(4, 'PAUSED', 'paused', 'Paused', 'The LiveStream is live but paused', 1),
(5, 'ENDED', 'ended', 'Ended', 'The LiveStream has just ended', 1),
(6, 'INVOICED', 'invoiced', 'Invoiced', 'The invoices for the LiveStream have been sent', 1),
(7, 'ARCHIVED', 'archived', 'Archived', 'No further actions are required of the LiveStream', 1),
(8, 'DELETED', 'deleted', 'Deleted', 'The LiveStream has been deleted', 1);
