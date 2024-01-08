CREATE DATABASE IF NOT EXISTS mbox_db;

USE mbox_db;

CREATE TABLE IF NOT EXISTS Counts (
    org TEXT,
    count INTEGER
);


INSERT INTO Counts (org, count)
values
('iupui.edu', 536),
('umich.edu', 491),
('indiana.edu', 178),
('caret.cam.ac.uk', 157),
('9vt.edu', 110),
('uct.ac.za', 96),
('media.berkeley.edu', 56),
('ufp.pt', 28),
('gmail.com', 25),
('et.gatech.edu', 17);


SELECT
    SUBSTR(email, INSTR(email, '@') + 1) AS org,
    COUNT(*) AS count
FROM
    (SELECT DISTINCT email FROM mbox) AS unique_emails
GROUP BY org
ORDER BY count DESC;



SELECT * FROM Counts;



