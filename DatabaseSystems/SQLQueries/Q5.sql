-- DB: https://www.programiz.com/sql/online-compiler/ 
-- NOTE: There are tables in this SQL editor that exist when you open the page, Customers, Orders, and Shipping, you can just ignore those
-- Simply copy and paste the SQL table creation and query below and it should work


-- Create table of specialties to show Chefs and their respective dishes
CREATE TABLE Specialties(
	Chef varchar(1),
    Dish varchar(100));
    
INSERT INTO Specialties VALUES
	('A',          'Apple pie'),
	('A',          'Beignet'),
	('A',          'Andes Chocolate Cake'),
	('B',          'Tiramisu'),
	('B',          'Creme brulee'),
	('B',          'Beignet'),
	('C',          'Tiramisu'),
	('C',          'Creme brulee'),
	('D',          'Apple pie'),
	('D',          'Tiramisu'),
	('D',          'Creme brulee'),
	('E',          'Apple pie'),
	('E',          'Bananas Foster'),
	('E',          'Creme brulee'),
	('E',          'Tiramisu');
   
-- Create table of desired dishes to see which chefs we need
CREATE TABLE DesiredDishes(
Name varchar(100)
);

INSERT INTO DesiredDishes VALUES
	('Creme brulee'),
	('Apple pie'),
	('Tiramisu');

-- For the query, I am trying to return Chef letters, so thats whwere my SELECT comes from initially. Chefs are stored in the Specialties table, 
-- so thats where my "FROM Specialties comes from". 

--The goal here is to find the direct correspondance between the DesiredDishes names and Specialties dishes, so the "WHERE Dish IN (SELECT Name FROM DesiredDishes)" 
--command creates a table of just Chef letters that have a matching to any of the 
-- dishes in desired dishes, so if the letter appears once, there is 1 match between Chef specialty and the desired dish name, twice is 2 matches, three times means 3 matches. 

--From here, we would want to find which Chefs have the same number of matches to the number of entries in the DesiredDishes table, which is 
-- where "GROUP BY Chef HAVING COUNT(DISTINCT Dish) = (SELECT COUNT(*) FROM DesiredDishes)" comes from, it counts the # of distinct dishes in the returned table
-- of chefs (afeter the IN command), and finds which chefs have the same # of distinct dishes as the size of the DesiredDish table. The GROUP BY
-- command before "HAVING" makes sure the output is the group of Chef letters that fulfill this "HAVING" requirement. 

SELECT Chef FROM Specialties WHERE Dish IN (SELECT Name FROM DesiredDishes) GROUP BY Chef HAVING COUNT(DISTINCT Dish) = (SELECT COUNT(*) FROM DesiredDishes);

