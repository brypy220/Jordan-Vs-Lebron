/* 
1st we remove the duplicate rows of players, leaving only the row with Tm = TOT
2nd we remove "*" and "-"
3rd we remove players with under 1000 MP
*/
update mj1 

set Player = replace(replace(replace(Player, "*", ""), "-", " "), "_", "");

with mj1 as (
select *,
	Row_Number() over(Partition by Player Order by Tm = 'TOT'Desc) as rn
from mj1

)
 /* select replace(replace(replace(Player, "*", ""), "-", " "), "_", "") from mj1;*/
 
Select *
From 
	mj1
Where
	rn=1 and MP >= 1000
Order by Rk;



/*
select *
from mj1
*/
