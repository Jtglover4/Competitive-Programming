-- DB: https://www.programiz.com/sql/online-compiler/ 
-- NOTE: There are tables in this SQL editor that exist when you open the page, Customers, Orders, and Shipping, you can just ignore those
-- Simply copy and paste the SQL table creation and query below and it should work

CREATE TABLE Enrollment(
  	SID integer,
  	ClassName varchar(100),
  	Grade varchar(1));
    
 INSERT INTO Enrollment VALUES
 	(123,  'ARCH201',   'A'),
	(123,  'QUAN432',   'B'),
	(662,  'AMER352',   'B'),
	(662,  'ECON966',   'A'),
	(662,  'QUAN432',   'B'),
	(345,  'QUAN432',   'A'),
	(345,  'ECON966',  	'D');

SELECT ClassName, COUNT(SID) FROM Enrollment GROUP BY ClassName ORDER BY COUNT(SID) DESC;