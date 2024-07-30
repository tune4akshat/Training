create database School_management;
use School_management;
create table students(
student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    date_of_birth DATE
    );
select * from students;

create table courses(
	cousre_id int,
    course_name varchar(20),
    course_description text,
    credits int
    );
alter table students
add column grade varchar(2);

alter table students
modify column phone_number varchar(15);

insert into students(first_name, last_name, email, phone_number, date_of_birth, grade)
values
("Akshat" , "Chaudhary" , "akshat@revature.com" , 9389892708 , '2002-01-01', "A"),
("Deepak" , "Mor" , "deepak@revature.com" , 9867552356 , '2002-02-02' , "A"),
("Mayank" , "Joshi" , "mayank@revature.com" , 9345678932 , '2002-03-03' , "A");


insert into courses(cousre_id, course_name, course_description, credits)
values
('1','Mathematics', 'Study of numbers, quantities, and shapes.', 4),
('2','Physics', 'Study of matter, energy, and the interactions between them.', 3),
('3','Chemistry', 'Study of substances, compounds, and their reactions.', 4),
('4','Biology', 'Study of living organisms and their vital processes.', 3),
('5','History', 'Study of past events and their impact on the present.', 2);



SELECT first_name, last_name, email FROM students;

drop table student;

drop database school_mangement;




