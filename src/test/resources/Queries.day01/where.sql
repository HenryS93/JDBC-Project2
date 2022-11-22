select * from employees;

/*
 Where
 -- Which Keyword we are  using in JAVA to filter?
 -> if statement

 to filter result from database while we are running query
 we are gonna use WHERE keyword


 --> String will be Varchar in (Database)
 */


 SELECT * from EMPLOYEES
where FIRST_NAME = 'David';

-- ' '  it is case Sensitive

--Display firstname,lastname,salary where firstname is peter

select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES
where FIRST_NAME = 'Peter';


--Display firstname,lastname,salary where firstname is david and lastname is Austin
select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES
where FIRST_NAME='David' and LAST_NAME='Austin';


-- display all information from employees where salary is bigger than 6000.
select * from EMPLOYEES
where SALARY > 6000;

--Display email from  who is making less than 6000
select FIRST_NAME,EMAIL from EMPLOYEES
where SALARY<6000;

--display all information from employees who is making more than 6000 and department  id is 60;
select * from EMPLOYEES
where SALARY>6000 and DEPARTMENT_ID = 60;

--Display all information from employees where salary is equals and more than 3000 and salary equals  or less than 7000
select * from EMPLOYEES
where SALARY >= 3000
and SALARY <= 7000;

-- between keyword
--it will give result within this range -> boundaries are included

select  * from EMPLOYEES
where SALARY between 3000 and 7000;


-- display all information from employee-id between 100 and 120

select * from EMPLOYEES
where EMPLOYEE_ID between  100 and 120; -- Range is included

-- display all info from employees who is working as IT_Pro or Mk_Man
select * from EMPLOYEES
where JOB_ID = 'IT_PROG' or JOB_ID = 'MK_MAN';


--IN CLAUSES
--It uses or logic
--It check JobID from IN parenthesis to see condition is Matching
--SOLUTION 2
select * from EMPLOYEES
where JOB_ID  IN  ('IT_PROG','MK_MAN');




--Display all information where employee ID is 12,121,143,156,134
--SOLUTION 1
select * from EMPLOYEES
where EMPLOYEE_ID = 121 or
      EMPLOYEE_ID = 134 or
      EMPLOYEE_ID = 143 or
      EMPLOYEE_ID = 156;

--SOLUTION 2
select * from EMPLOYEES
where EMPLOYEE_ID IN (12,121,143,156,134);

--Display all information where countryID equals US, IT
--SOLUTION 1
select * from COUNTRIES
where COUNTRY_ID = 'US' or COUNTRY_ID = 'IT';

--SOLUTION 2
select * from COUNTRIES
where COUNTRY_ID IN ('US','IT');


--Display all country names except countryid is US and IT
select COUNTRY_NAME from COUNTRIES
where COUNTRY_ID not in ('US','IT');


--display all information where department id is null
-- is NULL
select * from EMPLOYEES
where DEPARTMENT_ID is null;



--display all information from employees where manager_id is null
select * from EMPLOYEES
where MANAGER_ID is null ;


--IS NOT NULL
--display all information from employees where departmentID is not null
select * from EMPLOYEES
where DEPARTMENT_ID is not null ;

--Display all information from employees where managerID is NOT null
select * from EMPLOYEES
where MANAGER_ID is not null ;
