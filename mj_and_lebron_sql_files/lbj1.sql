/*
originally 585 rows, becomes 238 rows

i used this website: https://tableconvert.com/csv-to-sql
(a phenomenal website bc it autocorrects foreign letters to american ones)
*/
/* select * from lbj1*/

/*
What i need to do first is remove duplicate names first -TOT values-, then edit the names to be correct.
Bc I may edit a name that may not have played over 1000 mins. 

update mj4
set Player = replace(replace(replace(Player, "*",""), "-", " "), " ", "");
*/

with lbj1 as (

select *, 
	Row_Number() over (Partition by Player Order by Tm = 'TOT' Desc) as rn
from lbj1

)

/*
UPDATE lbj1
SET Player = replace(replace(replace(Player, "*",""), "-", " "), " ", ""),
    Player = CASE
                WHEN Rk = 419 THEN 'Jiri Welsch'
                /*WHEN Rk = rank2 THEN 'New Name 2'
                WHEN Rk = rank11 THEN 'New Name 11'
                ELSE Player
            END
WHERE rn = 1 AND MP >= 1000;
*/

/*
I believe after the above code I can run my code to change the names
*/

/*
Error Code: 1288. The target table lbj1 of the UPDATE is not updatable
Error Code: 1288. The target table lbj1 of the UPDATE is not updatable
Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 29


*/
