-- interger datatypes (exact + approx).
create table int_cols(
	bit_col bit(1),
  	i_col smallint unsigned,
  	i_col2 int,
  	i_col3 mediumint,
  	i_col4 bigint,
  	i_col5 decimal(10 , 4),
  	i_col6 float(10,6),
  	i_col7 double(15,8),
	i_col8 serial
);

desc int_cols;

insert into int_cols values (1 , 12 , 34 , 129342 , 1e9 , 1243.89832 , 23243.88 , 1232.32);

select * from int_cols;





-- date and time related datatypes
create table dt_tm_types(
	dates date,
	dt_tm datetime,
	tmsp timestamp,
	yr year,
	curr_tm time
);

insert into dt_tm_types values( '12-08-2003' , '18-06-12 10:34:09 PM' , '22:34:09' , 2023 , '10:34:09');


select * from dt_tm_types;



-- string datatypes

create table string_data(
    str1 char(4),
    str2 varchar(10),
    str3 text,
    str4 blob,
    gender enum('male' , 'female'),
    dishes set('dish1' , 'dish2' , 'dish3' , 'dish4')
);

INSERT INTO string_data (str1, str2, str3, str4, gender, dishes) 
VALUES 
('ABCD', 'Hello123', 'This is a text field.', NULL, 'male', 'dish1,dish3'),
('EFGH', 'World456', 'Another text field.', NULL, 'female', 'dish2,dish4'),
('IJKL', 'Example1', 'Blob is NULL here.', NULL, 'male', 'dish1,dish4'),
('MNOP', 'Sample99', 'Text data here.', NULL, 'female', 'dish3');


select * from string_data;


-- json datatype

create table jdata(
	data JSON
);

-- array json

insert into jdata values('[1,2,3,4]');
insert into jdata values(JSON_ARRAY('ram' , 'raj' , null , 1 , true));

-- json object
insert into jdata values('{"key1" : "value1" , "key2 : value2"}');
insert into jdata values(JSON_OBJECT('key1' , 'value1' , 'key2' , 'value2'));

