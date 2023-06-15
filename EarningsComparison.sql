-- Employees Earning More Than Their Managers - Easy Difficulty
Select E1.name as Employee FROM
    Employee as E1
    INNER Join
    Employee as E2
    on E1.managerId = E2.id
Where E1.salary > E2.salary
