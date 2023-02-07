/*  SQL  
Example of group by statement showing the group by value race and the count of each result appearing.
*/
SELECT race, COUNT(*)
FROM demographics
GROUP BY race
ORDER BY count DESC;



