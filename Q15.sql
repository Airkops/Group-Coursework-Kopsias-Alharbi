SELECT firstName, lastName, mgrid
from worker 
join dept 
on worker.departmentid = dept.departmentid 
where empid 
not in (Select empid from assign)

