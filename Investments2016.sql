-- Investments in 2016 - Medium Difficulty
SELECT SUM(numbers) as tiv_2016
FROM(
    SELECT SUM(tiv_2016) as numbers FROM Insurance GROUP BY lat,lon HAVING count(*) <= 1
    )
    T1
