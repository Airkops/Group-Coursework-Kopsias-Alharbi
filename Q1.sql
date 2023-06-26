select firstname, lastname
from worker 
where departmentid = 
(select departmentid
from dept 
where departmentname =
(select departmentname 
from dept
where departmentname = 'Research'));
/* answer by Panteleimon Kopsias 
edit by layal alharbi */
