-- select*from Teachers;
-- select*from Students;
-- select*from [Groups];
-- select*from Subjects;
-- select*from Teachers_Subjects;
-- select*from Achievements;


-- select T.id [ID TEACHER],T.Firstname||' '||T.Lastname [teachers name],
-- T.birthdate [teachers birthdate], S.Name [Subject Name],
-- ST.firstname||' '||ST.lastname [student name], ST.Birthdate [Student Birthdate],
-- ST.Grants [Student Grant], ST.Email [Student Email],Assesment
--   from Teachers T, 
-- Teachers_Subjects TS, Subjects S, Students ST, Achievements A
-- where TS.TeacherId=T.id and TS.SubjectId=S.id and A.SubjectId=S.id and 
-- A.StudentId=ST.Id;


-- select T.id [Айди Преподавателя],T.Firstname||' '||T.Lastname [ФИО Преподавателя],
-- T.birthdate [День рождения преподавателя],G.GroupName [Имя группы]
--   from Teachers T, 
-- Teachers_Subjects TS, Subjects S, Students ST, Achievements A,[Groups] G
-- where TS.TeacherId=T.id and TS.SubjectId=S.id and A.SubjectId=S.id and 
-- A.StudentId=ST.Id and G.id=ST.GroupId;




-- select*from Students;
-- select count(*) as [кол-во студентов] from students;
-- select count(Grants)  [кол-во стипендий] from 
-- students;
-- select count(distinct Grants) [кол-во уникальных стипендий]
-- from students;
-- select distinct Grants from students where Grants is not null;

-- select avg(Grants) as [средняя стипендия] from students;
-- select sum(Grants) [общая сумма стипендии] from students; 
-- select sum(Grants)/count(Grants) [средняя стипендия] from students; 
-- select max(Grants) [максимальная стипендия] from students;
-- select min(Grants) [минимальная стипендия] from students;

-- select count(*) [Кол-во студентов] from Students where Firstname like 'J%';
-- -- select *from Groups;
-- select count(*) as [кол-во студентов] from 
-- students st, [groups] g where g.id=st.Groupid and g.GroupName like '32%';

-- select avg(cast(strftime('%Y','now')-strftime('%Y',birthdate) as integer)) [средний возраст преподавтеля]
-- from Teachers;


select count(GroupName) as [кол-во групп] from [Groups];
select * from [Groups];

select FacultyId,count(GroupName) as [кол-во групп] from [Groups] group by Facultyid;

select T.id [Айди Преподавателя],T.Firstname||' '||T.Lastname [ФИО Преподавателя],
count(ST.firstname)[кол-во студентов у преподавателя] from  Teachers T, 
 Teachers_Subjects TS, Subjects S, Students ST, Achievements A 
 where TS.TeacherId=T.id and TS.SubjectId=S.id and A.SubjectId=S.id and A.StudentId=ST.Id  
 group by [ФИО Преподавателя],[Айди Преподавателя];
