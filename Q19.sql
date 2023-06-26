alter table project 
add numEmployeesAssigned number;

update project
set project.numemployeesassigned = 
(select count(assign.empid)
from assign
where assign.empid = project.projmgrid)
/* answer by Panteleimon Kopsias */
