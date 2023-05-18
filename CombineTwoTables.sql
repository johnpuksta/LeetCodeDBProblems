-- Combine Two Tables Query
SELECT 
    p.firstName as firstName,
    p.lastName as lastName, 
    a.city as city,
    a.state as state
FROM Person as p
Left Join Address as a on 
p.personId = a.personId
