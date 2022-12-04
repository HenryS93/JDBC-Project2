select * from employees;

--Task 1: Display all first_name and Department_name
select FIRST_NAME,DEPARTMENT_NAME
from EMPLOYEES inner join DEPARTMENTS
on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

--Order them base on first_name asc
select FIRST_NAME,DEPARTMENT_NAME
from EMPLOYEES inner join DEPARTMENTS
on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
order by FIRST_NAME ;


--Task 2: Display all first_name and department_name, including the departments without employee
select * from EMPLOYEES;
select * from DEPARTMENTS;

--Right JOIN
select FIRST_NAME,D.DEPARTMENT_ID from EMPLOYEES E right JOIN  DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

--Left JOIN
select E.FIRST_NAME,E.DEPARTMENT_ID from DEPARTMENTS D left join EMPLOYEES E
on D.DEPARTMENT_ID = E.DEPARTMENT_ID;

--How many employees we have for each department name

select DEPARTMENT_NAME,count(*) from DEPARTMENTS D left join EMPLOYEES E
on  D.DEPARTMENT_ID = E.DEPARTMENT_ID
group by DEPARTMENT_NAME;



--Task 3: Display all first_name and department_name including the employee without department
select FIRST_NAME,DEPARTMENT_NAME from EMPLOYEES E left join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID;




--Task 4: Display all first_name and Department_Name
        --Including the department without employee and employees without departments
select FIRST_NAME,DEPARTMENT_NAME from EMPLOYEES E full join DEPARTMENTS D
on D.DEPARTMENT_ID = E.DEPARTMENT_ID;


--Task 5: Display all cities and related country names
select * from COUNTRIES;
select * from LOCATIONS;

select CITY,COUNTRY_NAME from  COUNTRIES C inner join LOCATIONS L
on C.COUNTRY_ID = L.COUNTRY_ID;

--Task 6: Display all cities and related country names including with countries without city
select * from COUNTRIES;
select * from LOCATIONS;
select distinct COUNTRY_ID from LOCATIONS;

--LEFT JOIN
select city,COUNTRY_NAME from COUNTRIES C left join LOCATIONS L
on C.COUNTRY_ID = L.COUNTRY_ID;

--RIGHT JOIN
select city,COUNTRY_NAME from LOCATIONS L right join COUNTRIES C
on L.COUNTRY_ID = C.COUNTRY_ID;

--FULL JOIN
select CITY,COUNTRY_NAME from LOCATIONS L full join COUNTRIES C
on L.COUNTRY_ID = C.COUNTRY_ID;

--Task 7: Display all department name and street address
select * from DEPARTMENTS;
select * from LOCATIONS;
select DEPARTMENT_NAME,STREET_ADDRESS,L.LOCATION_ID  from  LOCATIONS L inner join DEPARTMENTS D
on L.LOCATION_ID = D.LOCATION_ID;


--Task 8: Display first_name,Last_name and department_name,city for all employees
select * from EMPLOYEES;
select * from DEPARTMENTS;
select * from LOCATIONS;

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY from EMPLOYEES E inner join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID
inner join LOCATIONS L
on D.LOCATION_ID = L.LOCATION_ID;



--Where is Kimberly?
select * from EMPLOYEES;
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY from EMPLOYEES E
left join  DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID
left join LOCATIONS L
on D.LOCATION_ID = L.LOCATION_ID;

--How Many Employees departments live in each City?
select CITY,count(*) from EMPLOYEES E left join DEPARTMENTS D
    on E.DEPARTMENT_ID = D.DEPARTMENT_ID
left join LOCATIONS L
    on D.LOCATION_ID = L.LOCATION_ID
   group by CITY
    order by 2;



--Task 9: Display first_name,last_name and department_name,city,country_name for all employees
select * from EMPLOYEES;
select * from DEPARTMENTS;
select * from COUNTRIES;
select * from LOCATIONS;

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY,COUNTRY_NAME from EMPLOYEES E inner join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID
left join LOCATIONS L
on D.LOCATION_ID = L.LOCATION_ID
left join COUNTRIES
on L.COUNTRY_ID = COUNTRIES.COUNTRY_ID;


--How Many employees departments we have in same country name
select COUNTRY_NAME, count(*) from EMPLOYEES E inner join DEPARTMENTS D
          on E.DEPARTMENT_ID = D.DEPARTMENT_ID
       inner join LOCATIONS L
          on D.LOCATION_ID = L.LOCATION_ID
        inner join COUNTRIES
          on L.COUNTRY_ID = COUNTRIES.COUNTRY_ID
        group by COUNTRY_NAME
        order by COUNTRY_NAME;


/*
 LEFT OUTER WITH WHERE
 --Get me Unique part from left

 NOTE: --> If there is a customer with c.address_id 6, there is no matching data from address table
            So it will assign as value for a.address_id as NULL

 That is why we are checking address.address_id IS NULL to make get ONLY data from left side

 */

select CUSTOMER_ID,FIRST_NAME,LAST_NAME,ADDRESS,PHONE from CUSTOMER left outer join ADDRESS
on CUSTOMER.ADDRESS_ID =ADDRESS.ADDRESS_ID
where ADDRESS.ADDRESS_ID is null ;