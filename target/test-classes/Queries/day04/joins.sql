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
--LEFT OUTER JOIN / LEFT JOIN
/*
 -It will give matching part + Unique for LEFT table
 - The order of it is important

 SYNTAX:
        SELECT * FROM Customer LEFT OUTER JOIN Address
        ON Customer.Address_Id = Address.Address_Id

        * - This applies all matching data onto table
        * - Plus all unique -> without matching Data as well

SYNTAX FOR SPECIFIC DATA:
                            select FIRST_NAME,LAST_NAME,ADDRESS,PHONE from CUSTOMER C left outer join  ADDRESS A
                            on C.ADDRESS_ID = A.ADDRESS_ID;

                            *- Brings All Matching Data from
 */

select FIRST_NAME,LAST_NAME,ADDRESS,PHONE from CUSTOMER C left outer join  ADDRESS A
on C.ADDRESS_ID = A.ADDRESS_ID;


------------------------------------------------------------------------------------------------------------------------

--Right OUTER JOIN / RIGHT JOIN

/*
 -It will give matching part + unique for RIGHT table
 - The order of it is important
 */

select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from ADDRESS A left outer join  CUSTOMER C
on C.ADDRESS_ID = A.ADDRESS_ID;


--LEFT OUTER JOIN
select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from CUSTOMER C  left outer join  ADDRESS A
on C.ADDRESS_ID = A.ADDRESS_ID;


select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from ADDRESS A right join CUSTOMER C
on A.ADDRESS_ID = C.ADDRESS_ID;


/*
 Full outer join
 It will give all matching + unique  for LEFT + Unique RIGHT
 -The order for the table does NOT matter
 */

 select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from ADDRESS A full join CUSTOMER C
on A.ADDRESS_ID = C.ADDRESS_ID;

