create TABLE if not EXISTS Teachers(
id integer PRIMARY key,
firstname nvarchar(20) not null,
lastname nvarchar(20) not null,
Birtdate date DEFAULT '1987-10-11',
email text UNIQUE,
salary integer CHECK(salary>100),
DepartmentId integer,
FOREIGN key(DepartmentId) references Departments(id)  
);
create TABLE if not EXISTS Departments(
id integer PRIMARY key ,
DepName nvarchar(30) UNIQUE,
Phone varchar(20) UNIQUE
);



insert into Teachers values
 (1,'Sophia', 'Davies','1984-12-08','sophy@gmail.com',200,1),
(2,'Emma','Kirk','1973-05-12','emma@mail.com',300,2),
(3,'Henry','MacAlister','1975-02-17','henry@gmail.com',200,1);

insert into Departments values(
1,'Software development','32-12'),(2,'Mathematics','55-34');