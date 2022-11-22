select * from EMPLOYEES;

select FIRST_NAME from EMPLOYEES;
-- Display all different names from employees = Total 107 in Employees

select distinct FIRST_NAME from EMPLOYEES;
-- This will eliminate duplicate names = Total 91


select distinct * from EMPLOYEES;
-- it returns NO change unless all rows are completely the same

-- display different job_ids from table
select distinct JOB_ID from JOBS;
--NOTE: Since job id is PK for Jobs table it will give the same result with/out distinct


--Display different job_ids from employees table
select distinct  JOB_ID from EMPLOYEES;


--Display different country ids from location table
select distinct COUNTRY_ID from LOCATIONS;