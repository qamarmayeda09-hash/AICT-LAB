
IF OBJECT_ID('Students', 'U') IS NOT NULL
    DROP TABLE Students;



CREATE TABLE Students (
    SID INT PRIMARY KEY,
    FirstName VARCHAR(30),
    LastName VARCHAR(30),
    RollNo INT,
    GPA FLOAT,
    Section CHAR(1),
    Age INT
);



INSERT INTO Students VALUES
(1, 'Ali', 'Khan', 101, 3.2, 'A', 19),
(2, 'Sara', 'Ahmed', 102, 3.8, 'B', 20),
(3, 'Usman', 'Raza', 103, 2.9, 'A', 18),
(4, 'Ayesha', 'Iqbal', 104, 3.5, 'B', 21),
(5, 'Hassan', 'Ali', 105, 3.1, 'A', 17),
(6, 'Fatima', 'Noor', 106, 3.9, 'B', 22),
(7, 'Bilal', 'Hussain', 107, 2.7, 'A', 18),
(8, 'Zara', 'Malik', 108, 3.6, 'B', 19),
(9, 'Ahmed', 'Sheikh', 109, 3.4, 'A', 20),
(10, 'Noor', 'Javed', 110, 2.8, 'B', 17);



SELECT FirstName + ' ' + LastName AS FullName
FROM Students
WHERE Age > 18;



SELECT FirstName + ' ' + LastName AS FullName, RollNo
FROM Students
WHERE Section = 'B';


SELECT FirstName + ' ' + Section + ' ' + LastName AS FormattedName
FROM Students;



SELECT RollNo
FROM Students
WHERE GPA > (SELECT AVG(GPA) FROM Students);



SELECT FirstName + ' ' + LastName AS FullName, RollNo
FROM Students
WHERE Age >= 18
  AND Section = 'A'
  AND GPA > 3;



SELECT * FROM Students;
