select * from EMPLOYEES;

create view EmployeeInfo as
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as initials, FIRST_NAME||' makes ' || SALARY as employees_salary from EMPLOYEES;

--S.K

select * from EMPLOYEEINFO;

-- How many columns we have in view?
    --Initials
    --Employee salary

--can we call specific column from view?

select initials from EmployeeInfo;
select employees_salary from EmployeeInfo;

/*
 Suppose we want to find who is making the highest salary. we can do this in two steps

 > Find the highest salary with SELECT statement and MAX function
 > Use the result of first Query as an input to second query where the employee details are equal to the result

 */

