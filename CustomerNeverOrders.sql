-- Customers Who Never Order - Easy Difficulty

--Solution 1
SELECT name as Customers from Customers where id not in (select customerId from orders)

--Solution 2
SELECT name as Customers 
from Customers as C
FULL OUTER JOIN Orders as O
on C.Id = O.customerId
WHERE C.ID is NULL
OR O.customerId is NULL
