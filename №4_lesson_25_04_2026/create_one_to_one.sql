-- create TABLE if not exists Teachers(
-- id integer primary key AUTOINCREMENT,
-- LastName nvarchar(20) NOT NULL,
-- FirstName nvarchar(20) NOT NULL,
-- BirthDate date,
-- FOREIGN KEY (id) REFERENCES Authentifications(id)
-- );

-- create table if not exists Authentifications(
-- id integer primary key AUTOINCREMENT,
-- Login nvarchar(20) UNIQUE,
-- Password nvarchar(20)
-- );

-- insert into Teachers (FirstName,LastName,BirthDate) values('Sophia', 'Nelson','1984-12-08');
-- insert into Teachers(FirstName,LastName,BirthDate) values('Emma', 'Kirk','1973-05-12');
-- insert into Teachers (FirstName,LastName,BirthDate) values('Henry', 'MacAlister','1975-02-17');
-- insert into Teachers (FirstName,LastName,BirthDate) values('Michael', 'Cooper','1978-11-23');
-- insert into Teachers (FirstName,LastName,BirthDate) values('Daniel', 'Williams','1979-07-30');

-- insert into Authentifications (Login,Password) values('NelSop','hfggg23'),('Emma73','byfegyfy43'),
-- ('SuperMac','h545jfh_1'),('MiniCooper','gfyfy2343'),('CrazyWilly','1234fgfgf');

select*from Teachers;
select*from Authentifications;