use gammers;

select * from comment;

drop table if exists tr_log_comment;
create table tr_log_comment (
	id int not null auto_increment primary key,
    actionName varchar(10) not null,
    first_date varchar(50),
    last_date varchar(50),
    userName varchar(25) not null,
    _timestamp timestamp 
);

select * from tr_log_comment;

drop trigger if exists tr_update_row;
delimiter //
create trigger tr_update_row 
before update on comment
for each row
begin
	insert into tr_log_comment(actionName,first_date,last_date,userName,_timestamp) 
    values ('update',concat(old.first_date,'/',new.first_date),concat(old.last_date,'/',new.last_date),system_user(),current_timestamp());
end //

update comment 
set first_date = current_date()
where id_system_user = 299
and id_game = 1;
select * from tr_log_comment;

drop trigger if exists tr_delete_row;
delimiter //
create trigger tr_delete_row
after delete on comment
for each row
begin
	insert into tr_log_comment(actionName,first_date,last_date,userName,_timestamp) 
    values ('update',old.first_date,old.last_date,system_user(),current_timestamp());	
end //

SET FOREIGN_KEY_CHECKS=0;
delete from comment 
where id_game = 1
and id_system_user = 31;
SET FOREIGN_KEY_CHECKS=1;

select * from tr_log_comment;