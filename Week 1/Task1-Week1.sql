create database students;
create table student(
s_id int,
s_name varchar(30),
s_age int);


Insert into student(s_id, s_name, s_age)
values (1, "Ram", 21);

Insert into student(s_id, s_name, s_age)
values (2, "shaam", 21);

select * from student;