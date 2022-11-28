
--
create table scrumteam(
    empID INTEGER primary key ,
    firstName varchar(30) not null ,
    jobTitle varchar(20) not null ,
    age integer,
    salary integer
);

select * from scrumteam;
/*
 INSERT:
 -> when you create a new table, it doesn't
    have any data.
 -> The first thing you often do is to insert new rows into the table.
 -> SQL provides the INSERT statement that allows you to insert one or
    more rows into a table at a time.
 */

select * from scrumteam;

/*
 INSERT INTO TableName (COLUMN1,COLUMN2,....
 VALUES (value1,value2,.....);
 */

insert into scrumteam(empID, firstName, jobTitle, age, salary)
                values (1,'Mike','Tester',34,120000);
insert into scrumteam(empID, firstName, jobTitle, age, salary)
                values (2,'John','Tester',32,130000);
insert into scrumteam (empID, firstName, jobTitle, age, salary)
                values (3,'John','Developer',37,160000);
insert into scrumteam(empID, firstName, jobTitle, age, salary)
                values (4,'Dembe','Developer',42,200000);


-- to push changes into database we need to use the commit or commit work keyword
commit ;

/*
 UPDATE tableName
 set column1 = value1,
 column2 = value2,....
 where condition;
 */

select * from scrumteam;

update scrumteam
    set salary= salary+5000;

update scrumteam
set salary = salary +20000
where jobTitle = 'Tester';

update scrumteam
set salary = salary +10000
where age > 40;

commit ;

/*
 DELETE
 Delete from TableName
 Where condition;
 */

 DELETE from scrumteam
 where empID = 1;

delete from scrumteam
where jobTitle = 'Developer' and age > 40;

commit ;

--

/*
ALTER
--ADd new column

 */
select * from scrumteam;

ALTER table scrumteam add gender varchar(10);

--update empID=2 gender as MALE
update scrumteam
set gender = 'Male'
where empID = 2;

--Rename column
alter table scrumteam rename column salary to annual_salary;


alter table scrumteam drop column gender;

select * from scrumteam;

--Rename to -> table name
alter table scrumteam rename to agileteam;
select * from agileteam;
commit ;

--Truncate
truncate table agileteam;
select * from agileteam;


