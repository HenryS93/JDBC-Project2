select * from EMPLOYEES;

/*
 We are selecting

 from customer:
 first_name
 last_name

 from address
 address
 phone

 */
 -- INNER JOIN
--For INNER Join Order of TABLES DO NOT MATTER
 select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
-- From = keyword we must use a TABLE that holds all of the information -> FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from ADDRESS inner join CUSTOMER --These 2 tables hold all fields from line 16
on ADDRESS.ADDRESS_ID = CUSTOMER.ADDRESS_ID; -- connect them based on matching data and will give correct result
----------------------------------------------------------------------------------------------------------------------

SELECT * FROM CUSTOMER;
SELECT * FROM ADDRESS;

-----------------------------------------------------------------------------------------------------------------------

--another Q -> what if i want to see customer.address_id information too
select FIRST_NAME,LAST_NAME,CUSTOMER.ADDRESS_ID,ADDRESS,PHONE
from ADDRESS inner join CUSTOMER
on ADDRESS.ADDRESS_ID = CUSTOMER.ADDRESS_ID;


-------------------------------------------------------------------------------------------------------------------------

--ALIASES
/*
 *****   ANOTHER Q- Do I need to type name always?
 -NO, we have Aliases, which gives a Temporary name to our tables

 Example:
            Table ALIASES:
                            -Customer ---> C
                            -Employees ---> E
                            -Address --->
 */
select FIRST_NAME,LAST_NAME,C.ADDRESS_ID,A.ADDRESS_ID,ADDRESS,PHONE
from ADDRESS A inner join CUSTOMER C
                        on A.ADDRESS_ID = C.ADDRESS_ID;


------------------------------------------------------------------------------------------------------------------------

