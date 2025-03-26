-- DB: https://www.programiz.com/sql/online-compiler/ 
-- NOTE: There are tables in this SQL editor that exist when you open the page, Customers, Orders, and Shipping, you can just ignore those
-- Simply copy and paste the SQL table creation and query below and it should work

CREATE TABLE Spam(
	Name varchar(100),
    Address varchar(1),
	ID integer,
	SameFam integer);

INSERT INTO Spam VALUES
	('Alice',   'A',      10,  NULL),
	('Bob',     'B',      15,  NULL),
	('Carmen',  'C',      22,  NULL),
	('Diego',   'A',      9,   10),
	('Ella',    'B',      3,   15),
	('Farkhad', 'D',      11,  NULL);

-- There will be no ouput here, but you can see in the Spam table the rows "Alice" and "Bob" are removed

DELETE FROM Spam WHERE ID IN (SELECT SameFam FROM Spam);
