select firstname, lastname, departmentname
from worker,dept,assign
where worker.empid=assign.empid and assign.projno = 1025 and worker.departmentid = dept.departmentid
/* answer by Panteleimon Kopsias */