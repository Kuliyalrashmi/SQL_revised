-- logical operator 
select true & true as 'AND Result';
select true | false as 'OR Result';
select not true as 'Not operator';


-- arithmetic operator 
select 2 + 3 as "Add";
select 2 - 3 as "subtract";
select 4 * 3 as "multiply";
select 4 / 2 as  "devision";
select 5 % 2 as "Modulo";


-- comparison operator 
select 2 > 3  as "2 > 3";
select 3 < 3 as  "3 < 3";
select  7 <= 4.5 as "7 <= 4.5";
select 7 >= 4.5 as "7 >= 4.5";
select 4 != 4 as "4 != 4";
select 4 = 4 as "4 = 4"; 



-- set operators 

create table info (
    roll int primary key,
    name varchar(15),
    phone varchar(10),
    address text,
    size varchar(10) check(size in ('x-small', 'small', 'medium', 'large', 'x-large')),
    fav_brand varchar(50) check(fav_brand in ('porshe', 'lamborghini', 'ferrari', 'rolls royce'))
);

create table info2 (
    roll int primary key,
    name varchar(15),
    phone varchar(10),
    address text,
    size varchar(10) check(size in ('x-small', 'small', 'medium', 'large', 'x-large')),
    fav_brand varchar(50) check(fav_brand in ('porshe', 'lamborghini', 'ferrari', 'rolls royce'))
);

insert into info values (1, 'Ram', '2344567891', 'xyz location', 'medium', 'porshe');
insert into info values (2, 'Sandy', '5849853221', 'rishikesh', 'small', 'lamborghini');
insert into info2 values (2, 'Sandy', '5849853221', 'rishikesh', 'small', 'lamborghini'); -- Common row
insert into info2 values (3, 'Rajat', '2331232456', 'abc location', 'large', 'ferrari');

select * from info
union
select * from info2 as "union result";

select * from info
intersect
select * from info2 as "intersect";

select * from info
except
select * from info2 as "except";
