use mysql;

create user 'mello'@'localhost' identified by '1234';

select * from user;
show grants for 'mello'@'localhost';
grant all on *.* to 'mello'@'localhost';
show grants for 'mello'@'localhost';
revoke all on *.* from 'mello'@'localhost';
show grants for 'mello'@'localhost';

drop user 'mello'@'localhost';
select * from user;

create user 'coderhouse'@'localhost' identified by 'coderhouse';
select * from user;

-- ABRIR NUEVA CONEXION CON EL USUARIO CODERHPUSE Y EJECUTAR LAS SIGUIENTES SENTENCIAS 
use gammers;

select * from class;
select * from game;

update game
set name = 'american football'
where id = 1;

insert into class(id_level,id_class,description) values (11,301,'insert from user coderhpuse');
select * from class where id_class = 301;

delete from class where id_class = 301;
grant select on gammers.game to 'coderhouse'@'localhost';
select * from user;
show grants for 'coderhouse'@'localhost';
grant select, insert on gammers.class to 'coderhouse'@'localhost';