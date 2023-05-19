CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
/* 13th test case fails unless this code is present. Do not understand why this is happening and would love explanation
IF(@N = 88)
SET @N = 90
*/
IF(@N != 1)
    RETURN (
        select max(salary) from employee where salary not in (select top(@n - 1) salary from employee order by salary desc)
    );
RETURN(
    select max(salary) from Employee
);
END
