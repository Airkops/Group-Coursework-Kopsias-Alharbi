alter table project 
add Status varchar(50);

update project

set status = case projno
when 1001 then 'canceled'
when 1032 then 'completed'
when 1005 then 'active'
when 1019 then 'active'
when 1025 then 'active'
when 1030 then 'active'
when 1031 then 'active'
when 1033 then 'active'
end;

select*
from project 
where status = 'active';
