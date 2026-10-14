create database student_management;
use student_management;

create table Class (
id_class int(2) auto_increment not null primary key,
name varchar(20) not null default "class"
);

create table Student (
id_student int(7) auto_increment not null primary key,
name varchar(255) not null default "student",
age int(2) not null default 0,
country varchar(50) not null default "Vietnam",
classId int(2) not null default 1,
constraint fk_id_class foreign key (classId) references Class(id_class)
);

create table Teacher  (
id_teacher int(7) auto_increment not null primary key,
name_teacher varchar(255) not null default "teacher",
age_teacher int(2) not null default 0,
country varchar(50) not null default "Vietnam",
classId int(2) not null default 1,
constraint fk_teacher_id_class foreign key (classID) references Class(id_class)
);

select * from Class;
insert into Class(name) value ("Math");

select * from Student;
insert into Student(name, age, country, classId) 
value ("lmao", 12, "Vietnam", 1);

select * from Teacher;
insert into Teacher(name_teacher, age_teacher, country, classId) 
value ("dark", 32, "Vietnam", 1);