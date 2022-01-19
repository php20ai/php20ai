show databases;
create database bank_info;
use bank_info;
create table employer_info(emp_id int not null, Name varchar(20), Age int not null, Num_of_yrs_worked_in_company decimal(4,2),Name_of_Manager_of_employer varchar(20) not null,  manager_id int not null, primary key (emp_id));
explain employer_info;
Alter table employer_info
modify Name varchar(20) not null;

Alter table employer_info
modify Num_of_yrs_worked_in_company decimal(4,2) not null;
/* inserting records in the employer_info table */
insert into employer_info(emp_id, Name, Age, Num_of_yrs_worked_in_company, Name_of_Manager_of_employer, manager_id) 
values ('1', 'Jessica Hopkinson', '28', '4', 'Laura Maisey', '3'),
('2', 'Jack', '36', '13', 'Chris Johnson', '5'), 
('3', 'Laura Maisey', '35', '14', 'Jane Hedge', '4'),
('4', 'Jane Hedge', '47', '23', '0', '0'),
('5', 'Chris Johnson', '30', '9', 'Jane Hedge', '4'),
('6', 'Anna Scoffield', '23', '1', 'Katie Hemsworth', '8'), 
('7', 'John Beesley', '25', '3', 'Chris Johnson', '5'),
 ('8', 'Katie Hemsworth', '27', '6', 'Jane Hedge', '4'), 
('9', 'Andrew scott', '38', '17', 'Jane Hedge', '4'),
('10', 'Ashley Robinson', '29', '2', 'Andrew Scott', '9');

select*from employer_info;
Alter table employer_info
add column Department_name Varchar(20) not null;
insert into employer_info(Department_name)
values ('Data Engineering'), ('Finance'), ('HR');

update employer_info
set Department_name = 'Sales'
where emp_id = 10;

use bank_info;
create table department(Department_name Varchar(20) not null, 
manager_of_department_ID int not null, 
Average_profit_generated_per_month_in_pounds decimal (20, 2) not null , 
Average_percentage_performance decimal(4, 2), 
Best_performer_name_ID int not null, 
primary key (manager_of_department_ID));


/* adding records into the Department table */
use bank_info;
select*from employer_info;
explain department;
insert into department (Department_name, manager_of_department_ID, Average_profit_generated_per_month_in_pounds, Average_percentage_performance, Best_performer_name_ID)
values ('Data Engineering', '3', '167227.67', '78.63', '1'),
       ('Finance', '5', '289475.95', '89.48', '7'),
       ('Corporate', '4', '0', '68.47', '4'),
       ('HR', '8', '748.31', '54.97', '6'),
       ('Sales', '9', '8975436.70', '91.89', '10');
select*from employer_info;


# updated a record
update employer_info
set Department_name = 'Sales'
where emp_id = 10;

select*from department;
# joing table tables department and employer_info by manager_of_department_id and emploey_id;
Select Manager_of_department_ID, Name_of_Manager_of_employer, Average_percentage_performance, Average_profit_generated_per_month_in_pounds
From department
inner join employer_info
on department.manager_of_department_ID= employer_info.emp_id;

Select*from department;
# Using query to find out the names of best performers in each department
Select*from employer_info, department
where employer_info.emp_id = department.Best_performer_name_ID;



# sorting the employer info table by Num_of years worked in company in ascending order;
use bank_info;
select Name, Age, Num_of_yrs_worked_in_company from employer_info
order by Num_of_yrs_worked_in_company;


# sorting department table by monthly profit generated in ascending order;
use bank_info;
select Department_name, Average_percentage_performance, Average_profit_generated_per_month_in_pounds
from department
order by Average_profit_generated_per_month_in_pounds;

#Filtering data using comparison operators;
#for employer_info table;
# finding names of employer that are aged between 30 to 40 years old;
select*from employer_info
where Age between 30 and 40;

#for department table;
# finding names of departments that generate monthly profits between 100000 and 5000000 pounds;
explain department;
select*from department
where Average_profit_generated_per_month_in_pounds between 100000 and 5000000;
     
