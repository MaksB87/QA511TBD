select firstname||' '||lastname FullName from students group by 
Fullname having avg(grants)<=1200;


select firstname||' '||lastname FullName, Grants from students group by 
Fullname having avg(grants)<=1200;

select GroupName, count(*) [кол-во студентов] 
from [Groups] as G, Students S where G.id=S.Groupid
group by GroupName having 
count(S.groupid)>1 order by 
[кол-во студентов] desc; 