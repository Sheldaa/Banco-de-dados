#Query 0
SELECT Bdate, Address
FROM EMPLOYEE
WHERE Fname = 'John' AND Minit = 'B' AND Lname = 'Smith';

#Query 1
SELECT Fname, Lname, Address
FROM EMPLOYEE, DEPARTMENT
WHERE Dname = 'Research' AND Dnumber = Dno;

#Query 2
SELECT Pnumber, Dnum, Lname, Address, Bdate
FROM PROJECT, DEPARTMENT, EMPLOYEE
WHERE Dnum = Dnumber AND Mgr_ssn = Ssn AND Plocation = 'Stafford';

#Query 3
SELECT E.Fname, E.Lname, S.Fname, S.Lname
FROM EMPLOYEE AS E, EMPLOYEE AS S
WHERE E.Super_ssn = S.Ssn;

#Query 4
SELECT Ssn
FROM EMPLOYEE;

#Query 5
SELECT Ssn, Dname
FROM EMPLOYEE, DEPARTMENT;

#Query 6
SELECT *
FROM EMPLOYEE
WHERE Dno = 5;

#Query 7
SELECT *
FROM EMPLOYEE, DEPARTMENT
WHERE Dname = 'Research' AND Dno = Dnumber;

#Query 8
SELECT ALL Salary
FROM EMPLOYEE;

#Query 9
SELECT DISTINCT Salary
FROM EMPLOYEE;