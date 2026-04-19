select T.firstname||' '||T.lastname [teachers name], 
T.Birtdate,T.email,T.salary,D.DepName,D.phone from 
Teachers T, Departments D where T.Departmentid=D.id; 