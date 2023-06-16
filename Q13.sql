SELECT p.projno, w.empid, w.firstName /*tried to do it as a fullname instead but failed, will look into it again */
from assign p , worker w
WHERE w.empId = p.empId 
and projno in (select projno from project
where startdate > '31-01-2023') /*limiting results to anything after jan, the database didnt have anything in jan anyways?" */
order by projno;