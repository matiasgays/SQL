use gammers;
select * from play;
select * from level_game;
select * from game;

drop table if exists advergame;
create table advergame (
select g.id_game id_advergame, g.name adver_name, g.description adver_description, id_level, id_class
from game g
limit 5);

select * from advergame;

create table adverclass (
select id_level, id_class
from advergame);

select * from adverclass;