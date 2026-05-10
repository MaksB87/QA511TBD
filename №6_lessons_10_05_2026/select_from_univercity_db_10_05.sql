select firstname||' '||lastname FullName from students group by 
Fullname having avg(grants)<=1200;


select firstname||' '||lastname FullName, Grants from students group by 
Fullname having avg(grants)<=1200;

select GroupName, count(*) [кол-во студентов] 
from [Groups] as G, Students S where G.id=S.Groupid
group by GroupName having 
count(S.groupid)>1 order by 
[кол-во студентов] desc; 

-- select * from Teachers;
select *from students;
-- select *from achievements;
-- select * from Subjects;
-- select*from [groups];


select T.Firstname||' '||T.LastName [Teacher Full Name], St.lastname,st.firstname
from Teachers T,
 Teachers_Subjects TS,Achievements A, Subjects S,
Students ST where T.Id=TS.Teacherid and
TS.subjectid=S.id and S.id=A.Subjectid 
and A.studentid=ST.id
;

-- !!!!
-- select T.Firstname||' '||T.LastName [Teacher Full Name]
-- from Teachers T,
--  Teachers_Subjects TS,Achievements A, Subjects S,
-- Students ST where T.Id=TS.Teacherid and
-- TS.subjectid=S.id and S.id=A.Subjectid and A.studentid=ST.id
-- group by  [Teacher Full Name] having ST.Lastname in ('Thomas','Miller','Evans','Jones') ;
-- !!!

select id,firstname,lastname from students
 group by firstname,lastname having lastname in ('Moore','Thomas','Brown');


select T.Firstname||' '||T.LastName [Teacher Full Name]  from Teachers T,
 Teachers_Subjects TS,Achievements A, Subjects S where T.Id=TS.Teacherid and
TS.subjectid=S.id and S.id=A.Subjectid and A.studentid in (select id from students
 group by firstname,lastname having lastname in ('Moore','Thomas','Evans')) ;


-- !!!
select  firstname,lastname,groupname,grants 
from students s, [groups] g where
 s.groupid=g.id group by 
  firstname,lastname,groupname,
 grants having grants=max(grants) ;

 select  firstname,lastname,groupname,grants 
from students s, [groups] g where
 s.groupid=g.id group by 
  firstname,lastname,groupname,
 grants having grants=1256.0;

-- select max(grants) from students;
select  firstname,lastname,groupname,grants 
from students s, [groups] g where
 s.groupid=g.id and grants=
 (select max(grants) from students);


