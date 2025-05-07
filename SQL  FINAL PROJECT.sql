######                        MY SQL PROJECT

######           Case Study: Attendance Management System
####### 1. Create Tables

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Department VARCHAR(50),
    HireDate DATE
);
####### 2. Insert Records
INSERT INTO Employees VALUES
(1, 'John', 'Doe', 'john.doe@email.com', '1234567890', 'HR', '2021-05-10'),
(2, 'Jane', 'Smith', 'jane.smith@email.com', '0987654321', 'IT', '2019-07-22'),
(3, 'Alice', 'Johnson', 'alice.johnson@email.com', '1122334455', 'Finance', '2018-03-15'),
(4, 'Bob', 'Brown', 'bob.brown@email.com', '2233445566', 'HR', '2020-06-01'),
(5, 'Charlie', 'Davis', 'charlie.davis@email.com', '3344556677', 'Marketing', '2022-01-10'),
(6, 'Diana', 'Evans', 'diana.evans@email.com', '4455667788', 'IT', '2017-09-25'),
(7, 'Edward', 'Garcia', 'edward.garcia@email.com', '5566778899', 'Operations', '2016-05-14'),
(8, 'Fiona', 'Harris', 'fiona.harris@email.com', '6677889900', 'HR', '2023-02-20'),
(9, 'George', 'Iverson', 'george.iverson@email.com', '7788990011', 'Finance', '2021-11-11'),
(10, 'Hannah', 'Jackson', 'hannah.jackson@email.com', '8899001122', 'Marketing', '2020-08-05');


CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    Location VARCHAR(100)
);

INSERT INTO Departments VALUES
(1, 'HR', 'New York'),
(2, 'IT', 'Los Angeles'),
(3, 'Finance', 'Chicago'),
(4, 'Marketing', 'Houston'),
(5, 'Operations', 'San Francisco'),
(6, 'Sales', 'Seattle'),
(7, 'Support', 'Boston'),
(8, 'Engineering', 'Austin'),
(9, 'Legal', 'Denver'),
(10, 'Admin', 'Miami');

CREATE TABLE Attendance1 (
    AttendanceID INT PRIMARY KEY,
    EmployeeID INT,
    Date DATE,
    CheckInTime DATETIME,
    CheckOutTime DATETIME,
    Status VARCHAR(20),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

INSERT INTO Attendance VALUES
(1, 1, '2024-02-01', '2024-02-01 08:35:00', '2024-02-01 17:00:00', 'Present'),
(2, 2, '2024-02-01', '2024-02-01 09:15:00', '2024-02-01 17:30:00', 'Late'),  
(3, 3, '2024-02-02', '2024-02-02 08:45:00', '2024-02-02 17:15:00', 'Present'),
(4, 4, '2024-02-02', '2024-02-02 10:00:00', '2024-02-02 18:00:00', 'Late'),
(5, 5, '2024-02-03', '2024-02-03 08:00:00', '2024-02-03 16:30:00', 'Present'),
(6, 6, '2024-02-03', '2024-02-03 08:20:00', '2024-02-03 17:10:00', 'Present'),
(7, 7, '2024-02-04', '2024-02-04 09:00:00', '2024-02-04 17:30:00', 'Late'),
(8, 8, '2024-02-04', '2024-02-04 08:10:00', '2024-02-04 16:45:00', 'Present'),
(9, 9, '2024-02-05', '2024-02-05 08:50:00', '2024-02-05 17:20:00', 'Present'),
(10, 10, '2024-02-05', '2024-02-05 09:30:00', '2024-02-05 18:00:00', 'Late');


CREATE TABLE Holidays (
    HolidayID INT PRIMARY KEY,
    HolidayDate DATE,
    HolidayName VARCHAR(100)
);
INSERT INTO Holidays VALUES
(1, '2024-12-25', 'Christmas'),
(2, '2024-07-04', 'Independence Day'),
(3, '2024-01-01', 'New Year'),
(4, '2024-11-28', 'Thanksgiving'),
(5, '2024-05-27', 'Memorial Day'),
(6, '2024-09-02', 'Labor Day'),
(7, '2024-02-14', 'Valentine Day'),
(8, '2024-04-01', 'Easter Monday'),
(9, '2024-06-19', 'Juneteenth'),
(10, '2024-10-31', 'Halloween');

CREATE TABLE LeaveRequests (
    LeaveRequestID INT PRIMARY KEY,
    EmployeeID INT,
    StartDate DATE,
    EndDate DATE,
    LeaveType VARCHAR(50),
    Status VARCHAR(20),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
INSERT INTO LeaveRequests VALUES
(1, 1, '2024-01-10', '2024-01-15', 'Vacation', 'Approved'),
(2, 2, '2024-02-05', '2024-02-07', 'Sick', 'Approved'),
(3, 3, '2024-03-01', '2024-03-03', 'Personal', 'Pending'),
(4, 4, '2024-04-15', '2024-04-20', 'Vacation', 'Rejected'),
(5, 5, '2024-05-10', '2024-05-12', 'Sick', 'Approved'),
(6, 6, '2024-06-25', '2024-06-30', 'Vacation', 'Approved'),
(7, 7, '2024-07-15', '2024-07-18', 'Sick', 'Pending'),
(8, 8, '2024-08-05', '2024-08-07', 'Personal', 'Approved'),
(9, 9, '2024-09-20', '2024-09-22', 'Vacation', 'Pending'),
(10, 10, '2024-10-10', '2024-10-12', 'Sick', 'Approved');


CREATE TABLE WorkSchedules (
    ScheduleID INT PRIMARY KEY,
    EmployeeID INT,
    StartTime TIME,
    EndTime TIME,
    ScheduleDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
INSERT INTO WorkSchedules VALUES
(1, 1, '08:00:00', '17:00:00', '2024-02-01'),
(2, 2, '09:00:00', '18:00:00', '2024-02-02'),
(3, 3, '08:30:00', '17:30:00', '2024-02-03'),
(4, 4, '10:00:00', '19:00:00', '2024-02-04'),
(5, 5, '08:00:00', '16:30:00', '2024-02-05'),
(6, 6, '08:20:00', '17:10:00', '2024-02-06'),
(7, 7, '09:00:00', '17:30:00', '2024-02-07'),
(8, 8, '08:10:00', '16:45:00', '2024-02-08'),
(9, 9, '08:50:00', '17:20:00', '2024-02-09'),
(10, 10, '09:30:00', '18:00:00', '2024-02-10');


#### 3.    Select Records:
SELECT * FROM Attendance  
WHERE Status = 'Late';


#### 4.	Where Clause (AND/OR):
SELECT * FROM Employees  
WHERE Department = 'HR'  
AND HireDate > '2020-01-01';


#### 5.	LIKE Operator:
SELECT * FROM Departments  
WHERE DepartmentName LIKE '%Sales%';


#### 6.	CASE Statement:
SELECT CheckInTime,
	CheckOutTime, 
    TIMEDIFF(CheckOutTime, CheckInTime) AS AttendanceDuration 
FROM Attendance;


#### 7.	Subquery:
SELECT * FROM Employees  
WHERE EmployeeID IN (  
    SELECT EmployeeID  
    FROM LeaveRequests  
    WHERE Status = 'Approved');


#### 8.	Group By:
SELECT EmployeeID, COUNT(*) AS TotalDaysPresent  
FROM Attendance  
WHERE Status = 'Present'  
AND MONTH(Date) = MONTH(CURDATE())  
AND YEAR(Date) = YEAR(CURDATE())  
GROUP BY EmployeeID;


#### 9.	Having Clause:
SELECT EmployeeID, COUNT(*) AS TotalLeaveRequests  
FROM LeaveRequests  
GROUP BY EmployeeID  
HAVING COUNT(*) > 3;


#### 10.	Limit:
SELECT e.EmployeeID, e.FirstName, e.LastName, COUNT(a.Status) AS AbsentDays  
FROM Employees e  
JOIN Attendance a ON e.EmployeeID = a.EmployeeID  
WHERE a.Status = 'Absent'  
AND a.Date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)  
GROUP BY e.EmployeeID, e.FirstName, e.LastName  
ORDER BY AbsentDays DESC  
LIMIT 5;


#### 11.	Inner Join:
SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName  
FROM Employees e  
INNER JOIN Departments d ON e.Department = d.DepartmentID;


#### 12.	Outer Join:
SELECT e.EmployeeID, e.FirstName, e.LastName, lr.LeaveRequestID, lr.StartDate, lr.EndDate, lr.LeaveType, lr.Status  
FROM Employees e  
LEFT JOIN LeaveRequests lr ON e.EmployeeID = lr.EmployeeID; 


#### 13.	Join with Aggregation:
SELECT a.EmployeeID, 
       ROUND(AVG(TIMESTAMPDIFF(HOUR, a.CheckInTime, a.CheckOutTime)), 2) AS AvgHoursWorkedPerDay  
FROM Attendance a  
INNER JOIN WorkSchedules ws ON a.EmployeeID = ws.EmployeeID  
GROUP BY a.EmployeeID;


#### 14.	Subquery with Join:
SELECT e.EmployeeID, e.FirstName, e.LastName, a.Date AS WorkDate, 
       (SELECT h.HolidayName FROM Holidays h WHERE h.HolidayDate = a.Date) AS HolidayName  
FROM Employees e  
INNER JOIN Attendance a ON e.EmployeeID = a.EmployeeID  
WHERE a.Date IN (SELECT HolidayDate FROM Holidays);


#### 15.	Advanced Join:
SELECT e.FirstName, e.LastName, d.DepartmentName, h.HolidayName  
FROM Employees e  
INNER JOIN Departments d ON e.Department = d.DepartmentName  
INNER JOIN Attendance a ON e.EmployeeID = a.EmployeeID  
LEFT JOIN Holidays h ON a.Date = h.HolidayDate  
WHERE h.HolidayDate IS NOT NULL;

                                         ---- END ----


