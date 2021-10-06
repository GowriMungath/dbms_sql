create table student (id int primary key,name varchar(20),class varchar(20));
insert into student values(20,'Jassim','F');
insert into student values(28,'Gowri','C');
insert into student values(50,'Rona','C');
insert into student values(46,'Uthara','A');
insert into student values(58,'Sreelekshmi','C');
insert into student values(30,'Heba','C');
select*from student;

Alter table student add marks float;
update student set marks=100 where id=20;
update student set marks=95 where id=28;
update student set marks=98 where id=50;
update student set marks=75 where id=46;
update student set marks=80 where id=58;
update student set marks=85 where id=30;
select * from student;

create table sport (ID int references student, Item varchar(20), Grace_mark float);
insert into sport values (20,'Rugby',13);
insert into sport values (28,'Football',17);
insert into sport values (50,'Badminton',23);
insert into sport values (46,'Cricket',12);
insert into sport values (58,'Basketball',18);
select id,name,Item,Grace_mark from student natural join sport;
update sport set Grace_mark=Grace_mark+Grace_mark*0.1;
select * from sport;
select * from student where id in (select id from student where marks>90);
delete from sport where id=58 or id=30;
select * from sport;

select name,class from student where exists(select id from sport where student.id = sport.ID);
select * from student where id in (select id from sport);
select count(*) from student;
select count(*) from sport;
select avg(marks) from student;
select max(marks) from student;
select min(marks) from student;
select sum(marks) from student;

insert into student values (35,'Sreelekshmi','D',98);
select name from student
select distinct name from student;
select count(name) from student;
select count(distinct name) from student;

update student set marks=80 where id=30;
select * from student;
select marks from student;
select distinct marks from student;
select sum(marks)from student;
select sum(distinct marks)from student;
select avg(marks)from student;
select avg(distinct marks)from student;

insert into student values(23,'Sreelekshmi','C',80)
select name,count(name) from student group by name;
select class,count(*) from student group by class;
select name,count(*) from student group by class, name order by name;

create view studsport as select name, Item from student as st, sport as s where st.id=s.ID;
select * from studsport;

create assertion markrestrict check (not exists (select * from student where marks>100));
update student set marks=120 where id = 28;
select*from student; 

create trigger get_gpa before insert on student for each row set marks=marks/10;
create type name as(first_name varchar(20),last_name varchar(20));

