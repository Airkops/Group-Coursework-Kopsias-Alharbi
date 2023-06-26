SELECT projno, COUNT(empid) AS number_of_workers, SUM(hoursassigned) AS number_of_hours
FROM ASSIGN
GROUP BY projno; /* groups all employees & hours by projects */
