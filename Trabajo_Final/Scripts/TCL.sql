use weskan;
select * from aplicaciones;
select @@autocommit;
set autocommit = 0;
select @@autocommit;

start transaction;
set FOREIGN_KEY_CHECKS=0;
delete from aplicaciones where id = 46;
delete from aplicaciones where id = 47;
delete from aplicaciones where id = 45;
-- rollback;
-- commit;
select * from aplicaciones;
/*insert into aplicaciones(id,marca,modelo) values (1,'FIAT', 'Mod.600/750');
insert into aplicaciones(id,marca,modelo) values (2,'FIAT', 'Mot. 1100cc/1300cc- Mod. 128 / 147');
insert into aplicaciones(id,marca,modelo) values (3,'FIAT', 'Mot. 700-800'); */
set FOREIGN_KEY_CHECKS=1;

select * from clientes;
start transaction;
insert into clientes(razon_social, mercado) values('messi','externo');
insert into clientes(razon_social, mercado) values('otamendi','interno');
insert into clientes(razon_social, mercado) values('lisandro martinez','externo');
insert into clientes(razon_social, mercado) values('dibu martinez','externo');
savepoint sp1;
insert into clientes(razon_social, mercado) values('enzo fernandez','externo');
insert into clientes(razon_social, mercado) values('julian','interno');
insert into clientes(razon_social, mercado) values('mac allister','interno');
insert into clientes(razon_social, mercado) values('di maria','externo');
savepoint sp2;
-- rollback to sp1;
-- rollback;
select * from clientes;
