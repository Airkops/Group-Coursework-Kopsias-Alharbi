/* answer by Panteleimon Kopsias */
create view view_proj as
select projno, projname, firstname, lastname, empid
from project, worker 