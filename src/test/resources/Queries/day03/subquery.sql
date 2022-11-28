select * from EMPLOYEES;

--max salary
select max(SALARY) from EMPLOYEES;

-- if we know max salary can we find who is gettinjg
select * from EMPLOYEES
where SALARY = 24000; --> this is HARDCODED

--if Steven King salary changes we can't find person who is getting max salary


/*
 NOTES: SUBQUERY
 -instead we can combine this two query, basically we put second query
  in  brackets and use it in the WHERE clause as an input

 SYNTAX:
 SELECT *
 FROM employees
 WHERE salary = (SELECT MAX(salary) FROM employees);

 */

--> ** SOLUTION **  we need to make it dynamic
SELECT * from EMPLOYEES
where SALARY=(select max(SALARY) from EMPLOYEES);


-- Give me all information who is getting min salary

--HARDCODED--
select * from EMPLOYEES
where SALARY = 2100;

--DYNAMIC--
select * from EMPLOYEES
where SALARY=(select min(SALARY) from EMPLOYEES);

--(HARDCODED) ->> FIND THE SECOND HIGHEST PAYING SALARY
select max(SALARY) from EMPLOYEES;


--(DYNAMIC) -->> FIND THE SECOND HIGHEST PAYING SALARY
select max(SALARY) from EMPLOYEES
where SALARY <(select max(SALARY) from EMPLOYEES);




--(HARDCODED) -->> FIND THE SECOND LOWEST SALARY FROM EMPLOYEES
select min(SALARY) from EMPLOYEEs;

--(DYNAMIC) -->> FIND THE SECOND LOWEST SALARY FROM EMPLOYEES
select MIN(SALARY)from EMPLOYEES
where SALARY > (select min(SALARY) from EMPLOYEES)