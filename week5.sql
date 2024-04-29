USE ld7084_week5;

SELECT x.postcode, x.city, x.locationID as Location, y.locationID as Neighbor
FROM location x, location y
WHERE x.Postcode = y.Postcode AND x.locationID != y.LocationID
ORDER BY x.locationID asc;

-- SELECT * FROM Employee 
-- INNER JOIN Department 
-- ON  employee.DeptID = department.DeptID;
-- SELECT * FROM Employee, department
-- WHERE employee.DeptID = department.DeptID;
SELECT location.LocationId, location.Postcode,department.DeptName 
FROM location 
LEFT JOIN department 
ON location.LocationID = department.LocationID;

SELECT City, COUNT(EmployeeId)
FROM employee 
JOIN department 
ON employee.DeptID = department.DeptID 
JOIN location 
ON location.LocationID = department.LocationID 
GROUP BY City;

-- SELECT City, COUNT(EmployeeId)
-- FROM employee e, department d, location l
-- WHERE e.DeptID = d.DeptID AND d.LocationID = l.LocationID
-- GROUP BY City;

SELECT department.DeptName, COUNT(employee.EmployeeID) as EmployeeCount 
FROM department 
JOIN employee ON employee.DeptID = department.DeptID 
JOIN location ON location.LocationID = department.LocationID 
WHERE location.City = 'London'
GROUP BY department.DeptName;

SELECT location.LocationId, location.Postcode,department.DeptName 
FROM location LEFT JOIN department 
ON location.LocationID = department.LocationID 
WHERE DeptName IS NULL;

CREATE TABLE IF NOT EXISTS Address (
  address_id INT NOT NULL AUTO_INCREMENT,
  country VARCHAR(100) DEFAULT 'United Kingdom',
  city VARCHAR(100) NOT NULL ,
  street VARCHAR(255),
  building VARCHAR(100),
  postcode VARCHAR(10) NOT NULL,
  PRIMARY KEY (address_id),
  UNIQUE KEY (country, city, street, building, postcode)
);
DROP table address;

INSERT INTO Address(
  city,street,building,postcode
) VALUES(
'Farnbrough',
'Knights Barang',
'01',
'GU14 8CD'
);
SELECT * FROM Address ORDER BY postcode;
