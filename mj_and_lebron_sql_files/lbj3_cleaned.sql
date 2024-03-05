/*
my thought process here is to clean the data and then convert the data types to their appropriate types.  
*/
update lbj3
set Player = replace(replace(Player, "*",""),"-", " ");

delete from lbj3 
where Rk = "Rk";

alter table lbj3
drop column Column_1;

with lbj3 as (
	select*, 
		row_number() over (Partition by player order by Tm = "TOT" Desc)
as rn from lbj3
)
select * from lbj3
        