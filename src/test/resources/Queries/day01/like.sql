select * from EMPLOYEES;


/*

 LIKE

 - Percent (%) for matching any sequence of characters.
 - Underscore (_) for matching any single character.
  -Contains
 -StartsWith
 -EndsWith
 */

 --display all employees where firstNAme startswith B
select * from EMPLOYEES
where FIRST_NAME like 'B%';

select * from EMPLOYEES
where FIRST_NAME like 'B-'; --> it says give all info name starts with B and Length is 2

--Display 5 letter first names from employees where char is z
select * from EMPLOYEES
where FIRST_NAME like '__z__';


