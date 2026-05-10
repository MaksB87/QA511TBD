select id,groupname from [groups]  where groupname like '%11';  

-- !!!
-- select firstname||' '||lastname FullName,Grants from students s where
--  groupid=(select id from [groups]  where groupname like '%11');

select firstname||' '||lastname FullName,Grants ,GroupId from students s where
 groupid in (select id from [groups]  where groupname like '%11');


--подзапрос
 select s.id as subid, s.name as subname 
 from subjects s,achievements a where s.id=a.subjectid 
 group by s.name, s.id having max(a.assesment)>=10 ;

 --итог
 select t.firstname||' '||t.lastname FullName,m.subname  from teachers t,teachers_subjects ts, 
 (select s.id as subid, s.name as subname 
 from subjects s,achievements a where s.id=a.subjectid 
 group by s.name, s.id having max(a.assesment)>=10) as m where t.id=ts.teacherid and ts.subjectid=m.subid
 ;

--  select avg(cast(strftime('%m',birthdate) as integer)) from students;
select t.lastname||' '||t.firstname fullname from teachers t group by fullname 
having avg(cast(strftime('%m',birthdate) as integer))>
(select avg(cast(strftime('%m',birthdate) as integer)) from students);

-------------------------
-- 1
select max(grants) from students;
-- 2
select groupid from students where grants=(select max(grants) from students);
-- 3
select groupname from groups where  id in (select groupid from students where grants=(select max(grants) from students));

------------------------------------
select subjects.name subname,(select max(a.assesment) from achievements a where subjects.id=a.subjectid) as maximum from subjects;

----------------------
-- альтернатива
-- 1
select subjectid,max(assesment) maximum from  achievements group by subjectid ;
-- 2
select s.name subname,sm.maximum from
subjects s, (select a.subjectid subid,max(assesment) maximum
 from  achievements a group by subjectid 
) as sm  where s.id=sm.subid;


--------------------------------------
select avg(cast(strftime('%Y','now') -strftime('%Y',birthdate) as integer)) [средний возраст преподавателя] from teachers;
select lastname||' '||firstname fullname, cast(strftime('%Y','now') -strftime('%Y',birthdate) as integer) as age from teachers where
age>(select avg(cast(strftime('%Y','now') -strftime('%Y',birthdate) as integer)) [средний возраст преподавателя] from teachers);