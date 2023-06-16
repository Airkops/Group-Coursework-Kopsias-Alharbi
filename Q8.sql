SELECT w.firstName, w.lastName, a.rating
FROM Worker w, Assign a
WHERE w.empId = a.empId 
AND projNo in  /*pulling the manager name using the projno */
(SELECT projNo FROM Project 
WHERE projMgrId = (SELECT empId  /* linking the projno to the manager id*/
FROM Worker 
WHERE firstName='Helen' AND lastName='Smith')) /* adding the coniditons of helen smith*/
ORDER BY lastName, firstName; /*order alphabetically by last names */
