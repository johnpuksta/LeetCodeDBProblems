-- Second Highest Salary
IF((SELECT COUNT(distinct(salary)) FROM Employee) > 1)
    with salary_cte as
    (
    SELECT distinct top 2 salary FROM Employee
    Order by salary desc
    )
    select top 1 salary as SecondHighestSalary from salary_cte
    order by salary ASC
ELSE
    select top 1 null as SecondHighestSalary from Employee
