/* originally 379 rows
1st we remove "*" and "-"
2nd we remove the duplicate rows of players, leaving only the row with Tm = TOT
3rd we remove players with under 1000 MP
*/

update mj2
set Player = replace(replace(replace(Player, "*", ""), "-", " "), "_", "");

with mj2 as (

select *, 
	Row_Number() over(Partition by Player Order by Tm = 'TOT' Desc) as rn

from mj2

)

Select *
From
	mj2
Where rn =1 and MP >= 1000
Order by Rk;
