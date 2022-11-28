select * from employees;

--Task 1: Display all first_name and Department_name
select FIRST_NAME,DEPARTMENT_NAME
from EMPLOYEES inner join DEPARTMENTS
on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

--Task 2: Display all first_name and department_name, including the departments without employee
select FIRST_NAME,DEPARTMENT_NAME
from EMPLOYEES inner join DEPARTMENTS
on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
where DEPARTMENT_NAME is null;


--Task 3: Display all first_name and department_name including the employee without department


--Task 4: Display all first_name and Department_Name
        --Including the department without employee and employees without departments


--Task 5: Display all cities and related country names


--Task 6: Display all cities and related country names including with countries without city


--Task 7: Display all department name and street address


--Task 8: Display first_name,Last_name and department_name,city for all employees


--Task 9: Display first_name,last_name and department_name,city,country_name for all employees