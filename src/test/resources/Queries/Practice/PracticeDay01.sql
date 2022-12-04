select * from EMPLOYEES;


 -- display all information from departments table
    select * from DEPARTMENTS;



--display first name from employees table
SELECT FIRST_NAME from EMPLOYEES
order by FIRST_NAME;

--display firstname, lastname and salary from employees table
select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES;


--display all info from locations table
select * from LOCATIONS;

--display country name and region id from countries table;
select COUNTRY_NAME,REGION_ID from COUNTRIES;

--display job_id and job title from jobs table
select JOB_ID,JOB_TITLE from JOBS;

--display firstname names from employees
    select FIRST_NAME from EMPLOYEES;

-- display firstname,lastname,salary where firstname is Peter
select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES
where first_name = 'Peter';


-- display firstname,lastname,salary where firstname is David and last_name is Austin
select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES
where FIRST_NAME = 'David' and LAST_NAME = 'Austin';

-- display all information from employees where salary is bigger than 6000
select  * from EMPLOYEES
where SALARY > 6000;

-- display email of who is making less than 6000
select EMAIL from EMPLOYEES
where SALARY < 6000;

-- display all info from employees who is making more than 6000 and department id is 60 ;
select * from employees
where salary > 6000 and DEPARTMENT_ID = 60;


-- display all info from employees where salary equals or more than 3000  and salary  equals or less than 7000
select * from EMPLOYEES
where SALARY between 3000 and 7000;

select * from EMPLOYEES
where SALARY >= 3000 and SALARY<= 7000;
-- BETWEEN lower and upper --> boundries are included it will give result within this range


-- display all info from employees where employee_id between 100 and 120
select * from EMPLOYEES
where EMPLOYEE_ID between 100 and 120;

-- display all info from employees who is working as IT_PROG or MK_MAN


select * from EMPLOYEES
WHERE JOB_ID = 'IT_PROG' or JOB_ID = 'MK_MAN';

-- it check jobID from IN paranthesis to see condition is matching
select * from EMPLOYEES
where JOB_ID in ('IT_PROG','MK_MAN');

-- display all information where employee id is 121,143,156,134
select * from EMPLOYEES
where EMPLOYEE_ID IN (121,143,156,134);

-- display all information where country id equals US , IT
select * from COUNTRIES
where COUNTRY_ID in ('US', 'IT');

-- display all country names except country_id is US and IT
select * from COUNTRIES
where COUNTRY_ID not in ('US','IT');

-- display all information from employees where department id is null
select * from EMPLOYEES
where DEPARTMENT_ID is null ;

-- display all information from emplyees where manager id is null
select * from EMPLOYEES
where MANAGER_ID is null ;

-- display all information from employees where department id is not nul
select * from EMPLOYEES
where DEPARTMENT_ID is not null ;

-- display all information from employees where manager id is not null
select * from EMPLOYEES
where MANAGER_ID is not null ;


-- display all employees based salary in asc order
select * from EMPLOYEES
order by SALARY;

-- display all employees based salary in desc order
select * from EMPLOYEES
order by SALARY desc ;

-- display all information from employees where employee id is smaller than 120 and order them based on salary desc order
select * from EMPLOYEES
where EMPLOYEE_ID < 120
order by SALARY desc ;

-- display all information from employees and order them based firstname asc
select * from EMPLOYEES
order by FIRST_NAME;

--IQ -->  display all information from employees and order them based firstname asc and based on lastname desc
select * from EMPLOYEES
order by FIRST_NAME , LAST_NAME desc ;

-- display all employees where first_name startswith B
select * from EMPLOYEES
where FIRST_NAME like 'B%';

-- display all employees where first_name startswith B and lenght of it 5 letter
select * from EMPLOYEES
where FIRST_NAME like 'B____';

-- display 5 letter first names from employees  where middle char is z
select FIRST_NAME from EMPLOYEES
where FIRST_NAME like '__z__';

-- display 5 letter first names from employees ending with e
select FIRST_NAME from EMPLOYEES
where FIRST_NAME like '____e';

-- it gives all firstnames ending with e
select FIRST_NAME from EMPLOYEES
where FIRST_NAME like '%e';


-- display firstnames where second letter is a
select FIRST_NAME from EMPLOYEES
where FIRST_NAME like '_a%';

-- display all employees where job id contains IT
select * from EMPLOYEES
where JOB_ID  like '%IT%';

-- display all information where firstname startswith H and ending with l
select * from EMPLOYEES
where FIRST_NAME like 'H%' and FIRST_NAME like '%l';

select * from EMPLOYEES
where FIRST_NAME like 'H%l';




