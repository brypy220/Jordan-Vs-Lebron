/*
originally 426 rows
removing null values
removing hyphens, asterisk and players under 1000MP
*/


update mj4
set `FG%` = ifnull(`FG%`, 0),
`3P%` = ifnull(`3P%`, 0),
`2P%` = ifnull(`2P%`,0),
`eFG%` = ifnull(`eFG%`,0),
`FT%` = ifnull(`FT%`, 0);

update mj4
set Player = replace(replace(replace(Player, "*",""), "-", " "), " ", "");

with mj4 as (

select *, 
	Row_Number() over (Partition by Player Order by Tm = 'TOT' Desc) as rn
from mj4

)

select *
from mj4

where rn = 1 and MP >= 1000
Order by Rk;

/*now 200 rows*/



