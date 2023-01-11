use mysql;

select * from user;
create user 'mello'@'localhost' identified by '1234';
create user 'mello1'@'localhost' identified by '12345';
create user 'mello2'@'localhost' identified by '123456';

grant select on weskan.clientes to 'mello'@'localhost';
grant select, insert, update on weskan.* to 'mello1'@'localhost';
grant select, delete on weskan.* to 'mello2'@'localhost';

revoke all privileges on *.* from 'mello2'@'localhost';
show grants for 'mello2'@'localhost';
drop user 'mello2'@'localhost';
grant delete on weskan.* to 'mello1'@'localhost'