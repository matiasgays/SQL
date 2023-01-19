use weskan;

drop user if exists 'envasado'@'localhost';
create user 'envasado'@'localhost' identified by 'envasado';
grant select on weskan.* to 'envasado'@'localhost';
show grants for 'envasado'@'localhost';

drop user if exists 'comercial'@'localhost';
create user 'comercial'@'localhost' identified by 'comercial';
grant select, insert, update on weskan.* to 'comercial'@'localhost';
show grants for 'comercial'@'localhost';