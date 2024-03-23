create database join_practice


create table employeeOne(emp_id varchar(10),emp_name varchar (50),salary int,dep_id varchar(20),manager_id varchar(20));
insert into employeeOne values ('E1', 'RAHUL',15000,'D1','M1'),
                               ('E2', 'MANOJ',15000,'D1','M1'),
							   ('E3', 'JAMES',55000,'D2','M2'),
							   ('E4', 'MICHAEL',25000,'D2','M2'),
							   ('E5', 'ALI',20000,'D10','M3'),
							   ('E6', 'ROBIN',35000,'D10','M3');
							  
  CREATE TABLE department(dep_id VARCHAR(20),dep_name varchar(50));
  insert into department values ('D1','IT'),('D2','HR'),('D3','FINANCE'),('D4','ADMIN');
  
CREATE TABLE manager(manager_id VARCHAR(20),manager_name varchar(50),dep_id varchar(20));
insert into manager values('M1','PREM','D3'),('M2','SHRIPADH','D4'),('M3','NICK','D1'),('M4','CORY','D1');

CREATE TABLE project(project_id varchar(20),project_name varchar(50),team_member_id varchar(20));
insert into project values ('P1','DATA MIGRATION','E1'),('P1','DATA MIGRATION','E2'),('P1','DATA MIGRATION','M3'),
                     ('P2',' ETL TOOL','E1'),('P2','ETL TOOL','M4');

SELECT * FROM employeeOne;
SELECT * FROM department;
SELECT * FROM manager;
SELECT * FROM project;

-- my manager ask me to fetch the employee name and the department name they belong to.
SELECT e.emp_name , d.dep_name
from employeeOne e inner join department d on e.dep_id = d.dep_id ;
---Fetch ALL the employee name and their  department name they belong to 
select e.emp_name , d.dep_name from employeeOne e left join department d on e.dep_id = d.;
---LEFT JONE = INNER JOIN  +  INCLUD ANY ADDITIONAL RECORDS IN THE LEFT-OUT FROM EMPLOYEEONE TABEL(the left side table or the first tabel)
---------------------------------------------------------------------------------------------------------------------------------------------------------
---Fetch ALL the department name and their  employee name  they belong to 
SELECT e.emp_name ,d.dep_name FROM employeeOne e right join DEPARTMENT d on e.dep_id =d.dep_id;
---RIGHT JOIN = INNER JOIN +  INCLUD ANY ADDITIONAL RECORDS IN THE SECOND TABLE THAT IS LEFT_OUT( THE RIGHT OR THE SECOND TABLE )

----FATCH DETAILS OF ALL EMP,THEIR MANAGER,THEIR DEPARTMENT AND THE PROJECTS THEY WORK ON.
SELECT * FROM employeeOne;
SELECT * FROM DEPARTMENT;
SELECT * FROM MANAGER;
SELECT * FROM project;
SELECT  e.emp_name , d.dep_name , m.manager_name , p.project_name  
from employeeOne e 
left join department d on e.dep_id = d.dep_id
inner join manager m on m.manager_id = e.manager_id
left join project p on p.team_member_id = e.emp_id
   


 



