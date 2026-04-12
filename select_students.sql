SELECT*FROM Students;
select firstname||' '||lastname as [Ф И О], email as почта, 
cast(strftime('%Y.%m%d','now')-strftime('%Y.%m%d',birthdate) as int) as Возраст
from Students;

select id,firstname||' '||lastname as [Ф И О], email as почта, 
cast(strftime('%Y.%m%d','now')-strftime('%Y.%m%d',birthdate) as int) as Возраст
from Students where Возраст > 30;

select * from Students where email='potehins@mail.ru';

select count(*) as [кол-во студентов] from Students; 
select count(distinct firstname) [кол-во уникальных имен] from Students;
select distinct firstname from Students;
select firstname from Students;

-- insert into Students (lastname,firstname,email) values
-- ('Питер', 'Паркер','spidy@gmail.com');