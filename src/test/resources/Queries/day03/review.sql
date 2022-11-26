select * from EMPLOYEES;


--Task 1: How many employees working for each manager
select MANAGER_ID,count(*) from EMPLOYEES
where MANAGER_ID is not NULL
group by MANAGER_ID;

--Lets order them based on count desc
select MANAGER_ID,count(*) as employees_count from EMPLOYEES
where MANAGER_ID is not null
group by MANAGER_ID
order by count(*) desc ;

-- Ignore manager where employees count is smaller than 6
select MANAGER_ID,count(*) employees_count from EMPLOYEES
where MANAGER_ID is not null --> to ignore NULL VALUES
group by MANAGER_ID
having count(*) > 6
order by count(*) desc ;


--TASK 2: How many locations we have for each country
select COUNTRY_ID,count(*) from LOCATIONS
group by COUNTRY_ID;

--Order them based on country ID in asc
select COUNTRY_ID,COUNT(*) from LOCATIONS
group by COUNTRY_ID
order by COUNTRY_ID;


-- what if I want to see only US and CA
select COUNTRY_Id,count(*) from LOCATIONS
where COUNTRY_ID in ('US','CA')
group by COUNTRY_Id;


--Display where location count is bigger than 2
select COUNTRY_ID,count(*) from LOCATIONS
where COUNTRY_ID in ('US','CA')
group by COUNTRY_ID
having count(*) > 2;


--Task 3: Display all employees salary in following format as column name employees salary
--SOLUTION 1
select FIRST_NAME||' makes '|| SALARY as employee_salary from EMPLOYEES;

--SOLUTION 2:
select concat(concat(FIRST_NAME, ' makes '),salary) as employee_salary from EMPLOYEES;