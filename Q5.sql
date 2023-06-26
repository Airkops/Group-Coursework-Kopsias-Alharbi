select firstname, lastname 
from worker 
where salary IN
(select min(salary)
from worker
where departmentid = 1)
/* answer by Panteleimon Kopsias */
