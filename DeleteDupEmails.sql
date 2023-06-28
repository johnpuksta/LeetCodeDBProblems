-- Delete Duplicate Emails - Easy Difficulty
DELETE P1
FROM
(
SELECT *
, dupes = ROW_NUMBER() OVER (
              PARTITION BY email
              ORDER BY id
            )
FROM Person
) AS P1
WHERE dupes > 1 


