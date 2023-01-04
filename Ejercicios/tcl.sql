use gammers;
select * from class;
set autocommit = 0;

start transaction;
insert into class(id_level,id_class,description) values (11,302,'argentinian comedy');
insert into class(id_level,id_class,description) values (11,303,'brasilian comedy');
insert into class(id_level,id_class,description) values (11,304,'colombian comedy');
commit;
select * from class;

start transaction;
delete from class where id_level = 11 and id_class = 302;
delete from class where id_level = 11 and id_class = 303;
delete from class where id_level = 11 and id_class = 304;
commit;
select * from class;

start transaction;
insert into class(id_level,id_class,description) values (11,302,'argentinian comedy');
insert into class(id_level,id_class,description) values (11,303,'brasilian comedy');
insert into class(id_level,id_class,description) values (11,304,'colombian comedy');
rollback;
select * from class;

start transaction;
insert into class(id_level,id_class,description) values (11,302,'argentinian comedy');
insert into class(id_level,id_class,description) values (11,303,'brasilian comedy');
insert into class(id_level,id_class,description) values (11,304,'colombian comedy');
insert into class(id_level,id_class,description) values (11,305,'argentinian comedy');
insert into class(id_level,id_class,description) values (11,306,'brasilian comedy');
insert into class(id_level,id_class,description) values (11,307,'colombian comedy');
savepoint sp1;
insert into class(id_level,id_class,description) values (11,308,'argentinian comedy');
insert into class(id_level,id_class,description) values (11,309,'brasilian comedy');
insert into class(id_level,id_class,description) values (11,310,'colombian comedy');
insert into class(id_level,id_class,description) values (11,311,'argentinian comedy');
insert into class(id_level,id_class,description) values (11,312,'brasilian comedy');
savepoint sp2;
insert into class(id_level,id_class,description) values (11,313,'colombian comedy');
insert into class(id_level,id_class,description) values (11,314,'argentinian comedy');
insert into class(id_level,id_class,description) values (11,315,'brasilian comedy');
insert into class(id_level,id_class,description) values (11,316,'colombian comedy');
-- select * from class;
release savepoint sp2;
commit;
select * from class;