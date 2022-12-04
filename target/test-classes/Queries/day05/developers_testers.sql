select * from EMPLOYEES;


create table Developers(
                           Id_Number Integer primary key,
                           Names varchar(30),
                           Salary Integer
);

select * from DEVELOPERS;

create table Testers(
                        Id_Number Integer primary key,
                        Names varchar(30),
                        Salary Integer
);

insert into developers values (1, 'Mike', 155000);
insert into developers values (2, 'John', 142000);
insert into developers values (3, 'Steven', 850000);
insert into developers values (4, 'Maria', 120000);
insert into testers values (1, 'Steven', 110000);
insert into testers values(2, 'Adam', 105000);
insert into testers values (3, 'Lex', 100000);

commit work;

select * from DEVELOPERS;
select * from TESTERS;

select names from DEVELOPERS
union ---> combines all info, into a single result. removes all duplicate rows
select names from TESTERS;

--sort alphabetically
select names from DEVELOPERS
union ---> combines all info, into a single result. removes all duplicate rows
select names from TESTERS
order by names desc;


/*
 UNION ALL
 -Does NOT remove Duplicates when merging
 -Does NOT sort the results
 */

select * from DEVELOPERS
union all
select * from TESTERS;


select NAMES from DEVELOPERS
union all
select NAMES from TESTERS
order by Names;


/*
 It removes same data from first table and gives result from first table
 */

select * from DEVELOPERS
minus
select * from TESTERS;


select NAMES from TESTERS
minus
select NAMES from DEVELOPERS
order by Names;


/*
 INTERSECT
 */

 select * from DEVELOPERS
intersect
select * from TESTERS;


select names from DEVELOPERS
intersect
select names from TESTERS;


