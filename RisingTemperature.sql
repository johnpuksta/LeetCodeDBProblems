-- Rising Temperature - Easy Difficulty
With tempCte as(
SELECT *, 
       Lag(temperature, 1) OVER(
       ORDER BY recordDate ASC) AS prevTemp,
       Lag(recordDate, 1) OVER(
       ORDER BY recordDate ASC) AS prevDate
FROM Weather
)
Select Id from tempCte
WHERE temperature > prevTemp AND DATEDIFF(DAY,prevDate,recordDate) = 1
