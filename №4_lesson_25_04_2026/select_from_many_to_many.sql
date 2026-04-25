select*from Teachers;
SELECT*from [Groups];
SELECT*from TeachersGroups;


select FirstName,LastName,BirthDate, GroupName from Teachers T, [Groups] G,
 TeachersGroups TG where TG.TeachersId=T.id 
 and TG.GroupsId=G.Id;
--  x->y