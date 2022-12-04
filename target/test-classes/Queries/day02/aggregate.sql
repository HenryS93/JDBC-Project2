select * from EMPLOYEES;




--Task 1: Display average for IT_PROG
select avg(SALARY) from EMPLOYEES
where JOB_ID = 'IT_PROG';


--Task 2: Display average for SA_REP
select avg(SALARY) from EMPLOYEES
where JOB_ID = 'SA_REP';


--Task 2: Display average for MK_MAN
select avg(SALARY) from EMPLOYEES
where JOB_ID = 'MK_MAN';


--how many JobID's do we have?

select count(distinct JOB_ID ) from EMPLOYEES;


/*
 Instead of typing same query for different JOBID
 we are going to group them based on JOBID and get average salary in one shot
 */
 select * from employees;

select JOB_ID, avg(salary), min(salary), max(salary), sum(SALARY), count(*) from EMPLOYEES
group by JOB_ID;


-- Get me total salary for each department from the Employees table
select DEPARTMENT_ID,sum(SALARY), count(*), max(SALARY), min(SALARY),round(avg(SALARY)) from EMPLOYEES
where DEPARTMENT_ID is not null --> to remove NULL departments from results
group by DEPARTMENT_ID;

--Order results based on max salary in asc
select DEPARTMENT_ID,sum(SALARY),count(*),max(SALARY),min(SALARY),round(avg(SALARY)) from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID
order by max(SALARY) ;



