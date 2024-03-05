/*
1st we clean the data and the modify the data types 
*/

update lbj4
set Player = replace(replace(Player, "*", ""), "-", " ");

delete from lbj4
where Rk = 'Rk';

alter table lbj4
drop column Column_1;

with lbj4 as (
	select*, 
			row_number() over (Partition by player order by Tm = 'TOT' Desc)
		as rn from lbj4
        )

select* from lbj4
where rn = 1 and MP >=1000