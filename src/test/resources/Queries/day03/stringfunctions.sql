select * from EMPLOYEEs;

/*
 --Add Email to @Gmail.com domain for all employees and show column name as full Email
 Ex: SKING@Gmail.com

 */

 select EMAIL || '@Gmail.com' as full_email from EMPLOYEES;

--SOLUTION 2:
select concat(EMAIL,'@Gmail.com') as full_email from EMPLOYEES;

select concat('cydeo', concat(EMAIL,'@gmail.com')) as full_email from EMPLOYEES;

--UpperCase (Varchar)
select UPPER(EMAIL||'@gmail.com') as full_email from EMPLOYEES;

--LowerCase
select lower(EMAIL||'@GMAIL.com') as full_email from EMPLOYEES;

--INITCAP

select EMAIL from EMPLOYEES;
select initcap(EMAIL) from EMPLOYEES;

--Length()
select EMAIL,length(EMAIL||'@Gmail.com')as email_length from EMPLOYEES
order by email_length;


--Display all employees where first name length equals 6

select FIRST_NAME from EMPLOYEES
where length(FIRST_NAME) = 6;

--ANOTHER SOLUTION:
select  FIRST_NAME from EMPLOYEES
where FIRST_NAME like '______';

--ANOTHER SOLUTION
select count(*) from EMPLOYEES
where FIRST_NAME like '______';


--SUBTR(columnName,beginningIndex,numbeOfChar)

--Display initial from firstname and lastname --> S.K
-- if the beginning index is negative, it will start from backward
-- If we don't specify number of char it will work till the end

select * from EMPLOYEES;

select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.' as initials from EMPLOYEES;

select FIRST_NAME,substr(FIRST_NAME,-3,2) from EMPLOYEES;

select FIRST_NAME,substr(FIRST_NAME,3) from EMPLOYEES;