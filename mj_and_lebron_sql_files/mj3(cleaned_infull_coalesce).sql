/* 
Removing null values with infull and coalesce. 
For posterity, ifnull taxes exactly two argumnets, whereas, coalesce takes two or more
also, ifnull is specific to mysql and coalesce is a standard sql function
*/
update mj3 
set `FG%` = ifnull(`FG%`, 0),
`3P%` = ifnull(`3P%`, 0),
 `2P%` = coalesce(`2P%`, 0),
 `eFG%`= coalesce(`eFG%`, 0),
  `FT%`= coalesce( `FT%`,0);
  
update mj3
set Player = replace(replace(replace(Player, "*", ""),"-", " "), "_", "");

with mj3 as (
select *,
		Row_Number() over (Partition by Player Order by Tm = 'TOT'Desc) as rn
from mj3

)

select *
from
	mj3
where 
	rn = 1 and MP >= 1000
Order by Rk;