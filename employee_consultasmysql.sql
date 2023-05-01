SHOW databases;
CREATE database db_book;
USE db_book;
SHOW tables;
SELECT * from employee;

INSERT INTO EMPLOYEE
VALUES ( 'Richard', 'K', 'Marini', '653298653', '1962-12-30', '98 Oak Forest', 'Katy', 'TX', 'M', 37000,'653298653', 4 );
           
INSERT INTO EMPLOYEE (Fname, Lname, Dno, Ssn)
VALUES ('Richard', 'Marini', 4,'653298653');

INSERT INTO EMPLOYEE (Fname, Lname, Ssn, Dno)
VALUES ('Robert', 'Hatcher', '980760540', 2);

INSERT INTO EMPLOYEE (Fname, Lname, Dno)
VALUES ('Robert', 'Hatcher', 5);

SELECT Bdate, Address
FROM EMPLOYEE
WHERE Fname = 'John' AND Minit = 'B' AND Lname = 'Smith';

SELECT Pnumber, Dnum, Lname, Address, Bdate
FROM PROJECT, DEPARTMENT, EMPLOYEE
WHERE Dnum = Dnumber AND Mgr_ssn = Ssn AND Plocation = 'Stafford';

SELECT Ssn
FROM EMPLOYEE;
SELECT Ssn, Dname
FROM EMPLOYEE, DEPARTMENT;

SELECT *
FROM EMPLOYEE
WHERE Dno = 5;

SELECT *
FROM EMPLOYEE, DEPARTMENT
WHERE Dname = 'Research' AND Dno = Dnumber;

SELECT ALL Salary
FROM EMPLOYEE;

SELECT DISTINCT Salary
FROM EMPLOYEE;

CREATE TABLE WORKS_ON_INFO
( Emp_name VARCHAR(15),
  Proj_name varchar(15),
  Hours_per_week decimal(3,1));
 
INSERT INTO WORKS_ON_INFO ( Emp_name, Proj_name,
Hours_per_week )
SELECT E.Lname, P.Pname, W.Hours
FROM PROJECT P, WORKS_ON W, EMPLOYEE E
WHERE P.Pnumber = W.Pno AND W.Essn = E.Ssn;

CREATE TABLE D5EMPS LIKE EMPLOYEE;
INSERT INTO D5EMPS SELECT * FROM EMPLOYEE WHERE Dno = 5;

SET SQL_SAFE_UPDATES=0;
DELETE FROM EMPLOYEE
WHERE Lname = "Brown";
SET SQL_SAFE_UPDATES=1;

SET SQL_SAFE_UPDATES=0;
DELETE FROM EMPLOYEE
WHERE Ssn = "123456789";
SET SQL_SAFE_UPDATES=1;

DELETE FROM EMPLOYEE
WHERE Dno = "5";

DELETE FROM EMPLOYEE;

UPDATE PROJECT
SET Plocation = 'Bellaire', Dnum = 5
WHERE Pnumber = 10;

UPDATE EMPLOYEE
SET   Salary = Salary* 1.1
WHERE Dno = 5;


