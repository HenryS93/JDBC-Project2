select * from EMPLOYEES;

--Task 7: Display manager name of 'Neena'

select * from EMPLOYEES;

select MANAGER_ID from EMPLOYEES
where FIRST_NAME = 'Neena';

select FIRST_NAME,LAST_NAME from EMPLOYEES
where EMPLOYEE_ID =(select MANAGER_ID from EMPLOYEES
                   where FIRST_NAME = 'Neena');


-------------------------------------------------------------------------------------------------------------------------

select EMPLOYEE_ID,FIRST_NAME,LAST_NAME,MANAGER_ID from EMPLOYEES;


select Workers.FIRST_NAME,Workers.LAST_NAME,Managers.FIRST_NAME,Managers.LAST_NAME
from EMPLOYEES Workers inner join EMPLOYEES Managers
on Workers.MANAGER_ID = Managers.EMPLOYEE_ID;

--to see steven

select Workers.FIRST_NAME,Workers.LAST_NAME,Managers.FIRST_NAME,Managers.LAST_NAME
from EMPLOYEES Workers left join EMPLOYEES Managers
on Workers.MANAGER_ID = Managers.EMPLOYEE_ID;