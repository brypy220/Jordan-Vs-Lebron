/*
rk 53, 179, 242, 288, 325, 338, 380, 419 player name needs to be fixed 
*/

create table MappingPlayerName(
Rk INT Primary Key, 
NewName VarChar(255)

);

/*
Insert Into MappingPlayerName (Rk, NewName)
Values
	/*(53, 'Primoz Brezec'),*/
    (179, 'Nene'),
    (242, 'Raul Lopez'),
    /*(288, 'Bostjan Nachbar'),
    (325, 'Mickael Pietrus'),
    (338, 'Zeljko Rebraca'),
    (380, 'Bruno Sundov'),*/
    (419, 'Jiri Welsch');
    
    /* 
    
    update lbj1 as lbj_1
    join MappingPlayerName as m on lbj_1.Rk = m.Rk
    set lbj_1.Player = m.NewName
    where lbj_1.Player = 53;
    
    update lbj1
    join MappingPlayerName as m on lbj_.Rk = m.Rk
    set lbj1.Player = m.NewName
    where lbj1.Rk = `179`;
    
    update lbj1
    join MappingPlayerName as m on lbj1.Rk = m.Rk
    set lbj1.Player = m.NewName
    where lbj1.Rk = `242`;
    
    update lbj1 as lbj_1
    join MappingPlayerName as m on lbj_1.Rk = m.Rk
    set lbj_1.Rk = m.NewName
    where lbj_1.Rk = 288;
    
    update lbj1 as lbj_1
    join MappingPlayerName as m on lbj_1.Rk = m.Rk
    set lbj_1.Rk = m.NewName
    where lbj_1.Rk = 325;
    
    update lbj1 as lbj_1
    join MappingPlayerName as m on lbj_1.Rk = m.Rk
    set lbj_1.Rk = m.NewName
    where lbj_1.Rk = 338;
    
    update lbj1 as lbj_1
    join MappingPlayerName as m on lbj_1.Rk = m.Rk
    set lbj_1.Rk = m.NewName
    where lbj_1.Rk = 380;*/
    
    update lbj1 
    join MappingPlayerName as m on lbj1.Rk = m.Rk
    set lbj1.Rk = m.NewName
    where lbj1.Rk = `419`;
    
    */
    
    ****
    /*
    Error Code: 1292. Truncated incorrect DOUBLE value: 'Shareef Abdur-Rahim'
    
    Error Code: 1366. Incorrect integer value: 'Jiri Welsch' for column 'Rk' at row 1
    
    3 row(s) affected Records: 3  Duplicates: 0  Warnings: 0
    
    Error Code: 1054. Unknown column '179' in 'where clause'


*/

    

