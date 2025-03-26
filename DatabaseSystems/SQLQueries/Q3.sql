-- DB: https://www.programiz.com/sql/online-compiler/ 
-- NOTE: There are tables in this SQL editor that exist when you open the page, Customers, Orders, and Shipping, you can just ignore those
-- Simply copy and paste the SQL table creation and query below and it should work

CREATE TABLE Projects(
    ProjectID varchar(4),
    Step integer,
    Status varchar(1)
);

INSERT INTO Projects VALUES
	('P100', 0, 'C'),
   	 ('P100', 1, 'W'),
	('P100', 2, 'W'),
	('P201', 0, 'C'),
	('P201', 1, 'C'),
	('P333', 0, 'W'),
	('P333', 1, 'W'),
	('P333', 2, 'W'),
	('P333', 3, 'W');

SELECT ProjectID FROM Projects WHERE (Step = 0 AND Status = 'C') INTERSECT SELECT ProjectID FROM Projects WHERE (Step = 1 AND Status = 'W');
