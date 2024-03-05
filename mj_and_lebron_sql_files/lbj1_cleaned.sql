update lbj1
set Player = replace(replace(Player, "*",""), "-", " "),
	Player = CASE
                WHEN Rk = 419 THEN 'Jiri Welsch'
                WHEN Rk = 149 THEN 'Manu Ginobli'
                WHEN Rk = 179 THEN 'Nene'
                When Rk = 242 THEN 'Raul Lopez'
                ELSE Player
            END;

WITH lbj1 AS (
    SELECT *, 
        ROW_NUMBER() OVER (PARTITION BY Player ORDER BY Tm = 'TOT' DESC) AS rn
    FROM lbj1
)
SELECT *
FROM lbj1

where rn = 1 and MP >= 1000
Order by Rk;

