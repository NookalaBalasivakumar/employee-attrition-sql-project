CREATE DATABASE TCS_Employee_Analytics;
USE TCS_Employee_Analytics;

CREATE TABLE employee_performance (
    Employee_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(50),
    Gender VARCHAR(20),
    Salary INT,
    Experience INT,
    Attendance FLOAT,
    Projects_Completed INT,
    Performance_Score INT,
    Overtime_Hours INT,
    Training_Hours INT,
    Work_Mode VARCHAR(20),
    Attrition VARCHAR(10)
);

SELECT * FROM employee_performance;

insert into employee_performance values(1001,'Rahul Sharma','IT','Male',65000,5,92,12,88,15,20,'Hybrid','NO');
insert into employee_performance values(1002,'Priya Reddy','HR','Female',55000,3,85,8,76,10,15,'Office','NO')
insert into employee_performance values(1003,'Amit Kumar','Finace','Male',72000,7,95,15,91,18,25,'Remote','NO')
insert into employee_performance values(1004,'Sneha Patel','IT','Female',60000,4,80,7,69,12,18,'Hybrid','YES')
insert into employee_performance values(1005,' Arjun Verma','Marketing','Male',50000,2,78,6,65,20,10,'Office','NO')
insert into employee_performance values(1006,'Divya Nair','HR','Female',58000,4,90,10,82,8,22,'Remote','NO');
insert into employee_performance values(1007,'Karan Mehta','IT','Male',80000,8,97,18,95,25,30,'Hybrid','NO')
insert into employee_performance values(1008,'Anjali Rao','Finace','Female',67000,6,88,11,84,14,20,'Office','NO')
insert into employee_performance values(1009,'Vikram Singh','Marketing','Male',48000,2,75,5,60,22,8,'Remote','YES')
insert into employee_performance values(1010,'Pooja Das','IT','Female',75000,7,93,16,90,17,28,'Hybrid','NO')
insert into employee_performance values(1011,'Rohan Gupta','Finace','Male',69000,5,89,13,86,16,21,'Office','NO');
insert into employee_performance values(1012,'Neha Joshi','HR','Female',54000,3,82,7,72,11,16,'Remote','NO')
insert into employee_performance values(1013,'Suresh yadhav','Marketing','Male',51000,2,77,6,63,19,12,'Office','NO')
insert into employee_performance values(1014,'Kavya Lyer','IT','Female',82000,9,98,20,97,26,35,'Hybrid','NO')
insert into employee_performance values(1015,'Manoje kumar','Finace','Male',71000,6,91,14,89,15,24,'Remote','NO')
insert into employee_performance values(1016,'Aisha Khan','HR','Female',56000,4,84,8,74,9,18,'Office','NO');
insert into employee_performance values(1017,'Harish Rao','IT','Male',78000,8,96,17,94,23,23,'Hybrid','NO')
insert into employee_performance values(1018,'Meena Lakshmi','Marketing','Female',52000,3,79,6,67,18,14,'Remote','YES')
insert into employee_performance values(1019,'Deepak Jain','Finace','Male',73000,7,94,15,92,20,27,'Office','NO')
insert into employee_performance values(1020,'Swathi Reddy','IT','Female',76000,6,90,14,87,16,23,'Hybrid','NO')

SELECT COUNT(*) AS Total_Employees
FROM employee_performance;

SELECT AVG(Salary) AS Average_Salary
FROM employee_performance;

SELECT TOP 10 Name, Department, Salary
FROM employee_performance
ORDER BY Salary DESC;

SELECT TOP 10 Name, Department, Performance_Score
FROM employee_performance
ORDER BY Performance_Score DESC;

SELECT TOP 10 Name, Department, Performance_Score
FROM employee_performance
ORDER BY Performance_Score ASC;

SELECT Department,
COUNT(*) AS Total_Employees
FROM employee_performance
GROUP BY Department;

SELECT Department,
AVG(Salary) AS Avg_Salary
FROM employee_performance
GROUP BY Department
ORDER BY Avg_Salary DESC;

SELECT Department,
AVG(Performance_Score) AS Avg_Performance
FROM employee_performance
GROUP BY Department
ORDER BY Avg_Performance DESC;

SELECT Department,
AVG(Performance_Score) AS Avg_Performance
FROM employee_performance
GROUP BY Department
ORDER BY Avg_Performance DESC;

SELECT Name, Department, Attendance
FROM employee_performance
WHERE Attendance < 80;

SELECT Attrition,
COUNT(*) AS Employee_Count
FROM employee_performance
GROUP BY Attrition;

SELECT Department,
COUNT(*) AS Employees_Left
FROM employee_performance
WHERE Attrition = 'Yes'
GROUP BY Department;

SELECT Name,
Overtime_Hours,
Performance_Score
FROM employee_performance
ORDER BY Overtime_Hours DESC;

SELECT Work_Mode,
COUNT(*) AS Employees
FROM employee_performance
GROUP BY Work_Mode;

SELECT Gender,
COUNT(*) AS Total
FROM employee_performance
GROUP BY Gender;

SELECT Name,
Training_Hours,
Performance_Score
FROM employee_performance
ORDER BY Training_Hours DESC;

SELECT TOP 1 Department,
AVG(Performance_Score) AS Avg_Performance
FROM employee_performance
GROUP BY Department
ORDER BY Avg_Performance DESC;

SELECT Name,
Salary,
Performance_Score
FROM employee_performance
WHERE Performance_Score > 85
AND Salary < 60000;

SELECT Experience,
AVG(Performance_Score) AS Avg_Performance
FROM employee_performance
GROUP BY Experience
ORDER BY Experience;


CREATE VIEW Employee_Dashboard_View AS
SELECT
    Department,
    Gender,
    Salary,
    Attendance,
    Performance_Score,
    Attrition
FROM employee_performance;


SELECT *
FROM Employee_Dashboard_View;