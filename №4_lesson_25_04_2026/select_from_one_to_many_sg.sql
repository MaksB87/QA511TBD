select*from Students;
select*from [Groups];

select S.Id StudentId, firstname,lastname,birthdate,email,Groupname
 from Students S, [Groups] G where S.Groupid=G.Id ;