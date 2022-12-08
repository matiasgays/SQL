use gammers;

select * from game;

drop function if exists get_game;
delimiter //
create function get_game(id int)
returns varchar(100) 
deterministic
begin
    return (select name from game where id_game = id); 
end //

select get_game(4);