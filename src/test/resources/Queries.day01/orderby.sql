select * from EMPLOYEES;

/*
 OrderBy - keyword

 -It allows us to sort ndata based on provided column
 -As a DEFAULT it will order the result ASCENDING ORDER (A_Z, 0-9)
 - IF you wanna sort it DESCENDING OREDER we need to specify right after column name

 */

 -- display all employees based salary in Asc Order
select * from EMPLOYEES
order by SALARY asc;

-- display all employees based salary in Des Order
select * from EMPLOYEES
order by SALARY desc ;

-- display all employees based firstName in Des Order
select * from EMPLOYEES
order by FIRST_NAME desc ;


--CAN we use index to order results?
--YES, every row from left to right has a IndexNumber
select * from EMPLOYEES
order by 8 desc ;

select FIRST_NAME,LAST_NAME,EMAIL from EMPLOYEES
order by 3 desc;


--Display all information from employees
--where employeeId is Smaller than 120 and order them based on salary

select * from EMPLOYEES
where EMPLOYEE_ID < 120
order by SALARY desc ;


--display all information from employees and order them based firstname asc
select  * from EMPLOYEES
order by FIRST_NAME asc;

--Display all information from employees and order them based firstName asc and based on lastName desc
 select * from EMPLOYEES
order by FIRST_NAME asc,LAST_NAME desc ;