select projno, projname, startdate 
from Project 
where startDate in 
(select startDate from Project 
group by startDate having count(*) > 1) 
/*selects projects that only have the same start date */
