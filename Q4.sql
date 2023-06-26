/* answer by Panteleimon Kopsias */
select firstname, lastname
from worker, project 
where worker.empid = project.projmgrid and project.projno = 1041
order by lastname asc