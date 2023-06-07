create table employeesss(
id serial primary key,
employeessss_name varchar (70) unique not null
);
insert into employeesss(employeessss_name)
values ('Viernen'),
('Daxxten'),
('Kyylan'),
('Haarry'),
('Geerardo'),
('Xiidorn'),
('Weells'),
('Ziiya'),
('Alexander'),
('Houston'),
('Patricio'),
('Landry'),
('Issa'),
('Torin'),
('Fidel'),
('Wurry'),
('Sutton'),
('Zeke'),
('Orlando'),
('Stephen'),
('Xiomar'),
('Ryland'),
('Boston'),
('Pierson'),
('Natan'),
('Tripp'),
('Boone'),
('Quintrell'),
('Charles'),
('Nikolai'),
('Harlyn'),
('Ziya'),
('Urijah'),
('Harris'),
('Major'),
('Porter'),
('August'),
('Finnley'),
('Ramon'),
('Dexton'),
('Russell'),
('Caiden'),
('Oskar'),
('Nathan'),
('Zain'),
('Silas'),
('Gary'),
('Ace'),
('Oakleigh'),
('Travis'),
('Desmond'),
('Andrew'),
('David'),
('Xu'),
('Bowen'),
('Ulrich'),
('Wilmer'),
('Gianni'),
('Ryder'),
('Isaiah'),
('Zephaniah'),
('Salvatore'),
('Ursel'),
('Felipe'),
('Preston'),
('Conner'),
('Sebastian'),
('Daxton'),
('Edward'),
('Malachi');

select * from employeesss
order by id asc;

create table salaryes(
id serial primary key,
monthly_salary int not null
);

insert into salaryes(monthly_salary)
values (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
	
	select * from salaryes
order by id;
	
create table employeer_salary(
id serial primary key,
employee_id  int  unique not null ,
salary_id int not null,
foreign key (employee_id)
		references employee(id),
foreign key ( salary_id)
		references salary(id)
);


insert into  employeer_salary(employee_id, salary_id)
values (1, 1),
		(2, 2),
		(3, 4),
		(4, 3),
		(5, 5),
		(6, 5),
		(7, 8),
		(8, 8),
		(9, 11),
		(10, 10),
		(11, 15),
		(12, 4),
		(13, 3),
		(14, 7),
		(15, 6),
		(16, 2),
		(17, 3),
		(18, 6),
		(19, 5),
		(20, 13),
		(21, 9),
		(22, 8),
		(23, 11),
		(24, 12),
		(25, 12),
		(26, 15),
		(27, 14),
		(28, 12),
		(29, 1),
		(30, 11),
		(31, 13),
		(32, 12),
		(33, 13),
		(34, 14),
		(35, 1),
		(36, 6),
		(37, 5),
		(38, 6),
		(39, 2),
		(40, 15);
		
	
	select * from  employeer_salary;

create table roless(
id serial primary key,
role_name int not null unique
);

alter table roless
alter column role_name  type varchar(30);

insert into roless(role_name)
values ('Junior Python developer'),
('Middle Python developer'),
 ('Senior Python developer '),
('Junior Java developer '),
('Middle Java developer '),
('Senior Java developer '),
('Junior JavaScript developer'),
 ('Middle JavaScript developer'),
 ('Senior JavaScript developer'),
 ('Junior Manual QA engineer'), 
('Middle Manual QA engineer'), 
('Senior Manual QA engineer'), 
('Project Manager Designer'), 
('HR CEO Sales manager'),
 ('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
 ('Senior Automation QA engineer');

select * from roles;

create table role_employeers(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
		references employee(id),
foreign key (role_id)
		references role(id)
);
select * from role_employeers;

alter table employee
add column taxi int; 

select * from employee;


insert into role_employeers(employee_id, role_id)
values (3, 15);

select * from role_employeers;

