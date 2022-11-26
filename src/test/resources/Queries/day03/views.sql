select * from EMPLOYEES;

create view EmployeeInfo as
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as initials, FIRST_NAME||' makes ' || SALARY as employees_salary from EMPLOYEES;

--S.K

select * from EMPLOYEEINFO;
