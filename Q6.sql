/* answer by Panteleimon Kopsias */
select * from project 
where budget = 
(select min(budget)
from project); 