Create Database task5;                      /*Create the Database*/
Create Table task5.Department(DepID int NOT NULL PRIMARY KEY,   
DepName VARCHAR(50) NOT NUll);


/*Create the Second table */
Create Table task5.Employee(
 EmpId int  Not Null PRIMARY KEY,
EmpName VARCHAR(50) NOT NUll,
EmpAge int Default 18,
DepID int,
 FOREIGN KEY(DepID) REFERENCES Department(DepID));  /*DepID used as foriegn key*/
 
 ALTER TABLE  task5.Department /* Alter the table and adding the column using the DDL*/
 ADD (salary Double NOT NULL);  
Insert INTO task5.Department Values(100,'HR', 20000.00); /* inserting the data into the department table using DML*/
Insert INTO task5.Department Values(101,'Manager', 20000.00); 
 Insert INTO task5.Department Values(102,'Developer', 40000.00);  
 
 Update task5.Department set salary= 30000.00 where DepID=101; /* Update the data in the department table using the DML*/
 Insert INTO task5.Employee(EmpId,EmpName,EmpAge,DepID) Values(1,'Vinitha', 25 ,100); /* inserting the data into the Employee table using DML*/
 Insert INTO task5.Employee(EmpId,EmpName,EmpAge,DepID) Values(2,'Aiswarya', 24 ,101);
Insert INTO task5.Employee(EmpId,EmpName,EmpAge,DepID) Values(3,'Vishal', 22 ,102);
Insert INTO task5.Employee(EmpId,EmpName,EmpAge,DepID) Values(4,'Sathish', 24 ,100);
Insert INTO task5.Employee(EmpId,EmpName,EmpAge,DepID) Values(5,'Boopathi', 23 ,102);
Insert INTO task5.Employee(EmpId,EmpName,DepID) Values(7,'Arya',101);  
Delete From task5.Employee WHERE EmpId=6; /* Delete the data From Employee table using the DML*/
/* Cascading the On delete the table*/
ALTER table  task5.Employee
add FOREIGN KEY(DepID) REFERENCES Department(DepID)  ON DELETE CASCADE; 
DELETE FROM task5.Department WHERE DepID = 102;  
/* Display the data*/
Select Employee.EmpId, Employee.EmpName, Employee.EmpAge,  Department.DepID, Department.DepName, Department.salary From task5.Employee, task5.Department Where Employee.DepID= Department.DepID;
