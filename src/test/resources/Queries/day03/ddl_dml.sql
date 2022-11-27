select * from EMPLOYEES;

/*
 Create  table Syntax:
    create table TableName(
    colName1 DataType Constraints,
    colName2 DataType Constraints (optional)
    colName3 DataType Constraints,
    .....
    );
 */

 create table  scrumteam(
     empID INTEGER PRIMARY KEY ,
     firstName varchar(30) not null ,
     jobTiTle varchar(20) not null ,
     age INTEGER,
     salary integer
 );

select * from scrumteam;

/*
 INSERT -KEYWORD
 INSERT: SQL provides the INSERT keyword statement that
 allows you to insert one or more rows into a Table at a time
 */
 insert into scrumteam(empID, firstName, jobTiTle, age, salary)
            values (1,'Mike','Tester',34,120000);

insert into scrumteam(empID,firstName,jobTiTle,age,salary)
            values (2,'John','Tester',32, 130000);

insert into scrumteam(empID, firstName, jobTiTle, age, salary)
            values (3,'John','Developer',37,160000);

insert into scrumteam (empID, firstName, jobTiTle, age, salary)
            values (4,'Dembe','Developer',42,200000);