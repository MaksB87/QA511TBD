select *from Achievements;
select FirstName,LastName,Birthdate,Email
from students;


select *from achievements a,students where a.studentid=students.id;

select FirstName,LastName,Birthdate,Email
from students where exists( select *from achievements a where a.studentid=students.id);

select FirstName,LastName,Birthdate,Email
from students where not exists( select *from achievements a where a.studentid=students.id);

-- !!!!!
-- select FirstName,LastName,Birthdate,Email
-- from students where id=any(select studentid from achievements where assesment=10);
-- any,in,some
select FirstName,LastName,Birthdate,Email
from students where id in (select studentid from achievements where assesment=10);

-- select count(*) [кол-во] from students where birthdate<Any(select birthdate
--  from teachers);
select count(*) as [кол-во] from students s where s.birthdate<(select t.birthdate from teachers t);

-- all !!!
-- select firstname,lastname,assesment from students s, achievements a where studentsid=s.id and assesment>all(
-- select avg(assesment) from acievements group by studentid);

-- 1
select avg(assesment) from achievements group by studentid;
-- 2
select firstname,lastname,assesment from students s, achievements a where s.id=a.studentid;

-- 3
select firstname,lastname,assesment from students s, achievements a where s.id=a.studentid and assesment>
(select avg(assesment) from achievements group by studentid);

-------------<>,!=,not
-- select firstname,lastname,assesment from students s,
--  (select studentid,assesment from achievements group by studentsid,assesment having assement <>all(
--  select assesment from [groups] g,students s, achievements a
--  where s.groupid=g.id and a.studentid=s.id and groupname='30PR11')) as sa where sa.studentid=s.id;
-- |
-- |
-- V
-- 1
 select assesment from [groups] g,students s, achievements a
 where s.groupid=g.id and a.studentid=s.id and groupname='30PR11';

--  2
select studentid,assesment from achievements group by studentid,assesment having assesment not in( select assesment from [groups] g,students s, achievements a
 where s.groupid=g.id and a.studentid=s.id and groupname='30PR11');

-- 3
select firstname,lastname,assesment from students s,(select studentid,assesment from achievements group by studentid,assesment having assesment not in( select assesment from [groups] g,students s, achievements a
 where s.groupid=g.id and a.studentid=s.id and groupname='30PR11')) as sa where sa.studentid=s.id;

 ------------------------------------UNION-------------------------------
 select FirstName,LastName,Birthdate,Email
from students where not exists( select *from achievements a where a.studentid=students.id)
union
select FirstName,LastName,Birthdate,Email
from students where id in (select studentid from achievements where assesment=10);


select firstname||' '||lastname fullname, birthdate from teachers
union
select firstname||' '||lastname fullname, birthdate from students;

select firstname||' '||lastname fullname, birthdate from teachers where cast(strftime('%Y','now')-strftime('%Y',birthdate) as integer)<40
union
select firstname||' '||lastname fullname, birthdate from students;

select firstname||' '||lastname fullname, birthdate from teachers where cast(strftime('%Y','now')-strftime('%Y',birthdate) as integer)<40
union
select firstname||' '||lastname fullname, birthdate from students order by Birthdate;

select 'Весна' as [Сезоны года], count(*) as [кол-во студентов] from students
where cast(strftime('%m',birthdate) as integer) between 3 and 5
union all
select 'Лето' as [Сезоны года], count(*) as [кол-во студентов] from students
where cast(strftime('%m',birthdate) as integer) between 6 and 8
union all
select 'Осень' as [Сезоны года], count(*) as [кол-во студентов] from students
where cast(strftime('%m',birthdate) as integer) between 9 and 11
union all
select 'Зима' as [Сезоны года], count(*) as [кол-во студентов] from students
where cast(strftime('%m',birthdate) as integer) in(1,2,12);
--------

select  count(*) as allcount from students
where cast(strftime('%m',birthdate) as integer) between 5 and 8
union all
select  count(*) as allcount from teachers
where cast(strftime('%m',birthdate) as integer) between 5 and 8;


select 'Студенты' [Второй квартал года],count(*) as [кол-во] from students
where cast(strftime('%m',birthdate) as integer) between 5 and 8
union all
select 'Преподаватели' [Второй квартал года], count(*) as [кол-во] from teachers
where cast(strftime('%m',birthdate) as integer) between 5 and 8
union all
select 'Все', SUM(allsum.allcount) from (
select count(*) as allcount from students
where cast(strftime('%m',birthdate) as integer) between 5 and 8
union all
select  count(*) as allcount from teachers
where cast(strftime('%m',birthdate) as integer) between 5 and 8
) as allsum
;