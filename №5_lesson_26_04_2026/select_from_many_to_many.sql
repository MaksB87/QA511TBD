-- select * from Teachers;
-- select*from [Groups];
-- Select*from TeachersGroups;


select T.id as TeachersID, FirstName||' '||LastName as FullName,
BirthDate,GroupName,FacultyId
 from Teachers T, [Groups] G,TeachersGroups TG
 where T.id=TG.TeachersId and TG.GroupsId=G.id;



select T.id as TeachersID, FirstName||' '||LastName as FullName,
BirthDate,GroupName,FacultyId
 from Teachers T, [Groups] G,TeachersGroups TG
 where T.id=TG.TeachersId and TG.GroupsId=G.id and TeachersId=1;

select count(G.GroupName) as [кол-во групп] from Teachers T, [Groups] G,TeachersGroups TG
 where T.id=TG.TeachersId and TG.GroupsId=G.id and TeachersId=1;
