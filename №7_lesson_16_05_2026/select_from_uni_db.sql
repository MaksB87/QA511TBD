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
