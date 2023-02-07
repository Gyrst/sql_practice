/*  SQL  
SQL to return a shortlist of names that fulfill the conditions (contain tegil or astar in first, last -name),
and use the function CONCAT() to return a shortlist in one column and INTICAP() to capitalize every word.
*/


SELECT INITCAP(CONCAT(firstname,' ', lastname)) as shortlist
FROM elves
WHERE firstname LIKE '%tegil%'
   OR lastname LIKE '%astar%'