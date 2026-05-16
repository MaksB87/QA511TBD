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
select firstname,lastname,assesment from students s, achievements a where s.id=a.studentid and assesment>(select avg(assesment) from achievements group by studentid);