select * from employees;

--Display all information who is getting more than average
    --Find the average
select avg(SALARY) from EMPLOYEES;

--display who is getting over average
select * from EMPLOYEES
where SALARY > 6462;


--make it dynamic
select avg(SALARY) from EMPLOYEES
where SALARY > (select avg(SALARY) from EMPLOYEES);

--HOMEWORK -->> DISPLAY: all information who is getting second minimum salary?
--** HARDCODED **--
select * from EMPLOYEES
where SALARY = 2200;


/*
 It limits row based on provided number
 */

select * from EMPLOYEES
where ROWNUM< 11;

--Display all information from employees who is getting 5 highest salary
select * from EMPLOYEES
where ROWNUM <=5
order by SALARY desc ;


select * from EMPLOYEES
where ROWNUM < 6
order by SALARY desc;

--Display all information who is getting 5th highest salary
    --Display 5th highest salary
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where rownum <=5;

select * from EMPLOYEES
where SALARY =(select min(salary) from (select distinct salary from EMPLOYEES order by SALARY desc)
where rownum <6);


--Display all information  who is getting 1212 highest salary
select * from EMPLOYEES
where SALARY = (select min(SALARY) from (select distinct SALARY from EMPLOYEES order by salary desc)
where rownum <10);

-- display all information who is getting 3rd lowest salary
select * from EMPLOYEES
where SALARY = (select max(SALARY) from (select distinct SALARY from EMPLOYEES order by salary  )
where rownum < 3);





