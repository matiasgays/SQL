use weskan;

-- TABLA LOG DE PEDIDOS
drop table if exists log_pedidos;
create table log_pedidos (
	id int not null auto_increment primary key,
    actionName varchar(10) not null,
    id_pedido varchar(50) not null,
    cliente varchar(50) not null,
    codigo varchar(50) not null,
    cantidad varchar(50) not null,
    fecha_ingreso varchar(50) not null,
    fecha_objetivo varchar(50),
    userName varchar(50) not null,
    timestamp_ timestamp not null
);

-- TRIGER NUEVO PEDIDO
drop trigger if exists tr_log_add_pedido;
delimiter //
create trigger tr_log_add_pedido
after insert on pedidos
for each row
begin
	insert into log_pedidos(actionName,id_pedido,cliente,codigo,cantidad,fecha_ingreso,fecha_objetivo,userName,timestamp_)
    values ('insert',new.id,new.cliente,new.codigo,new.cantidad,new.fecha_ingreso,new.fecha_objetivo,system_user(),current_timestamp());
end//

insert into pedidos(cliente,codigo,cantidad,fecha_ingreso,fecha_objetivo)
values ('vazquez luciano','AV 4330',300,current_date(),current_date()+1);
select * from log_pedidos;

-- TRIGER ACTUALIZACION PEDIDO
drop trigger if exists tr_log_update_pedido;
delimiter //
create trigger tr_log_update_pedido
after update on pedidos
for each row
begin
	insert into log_pedidos(actionName,id_pedido,cliente,codigo,cantidad,fecha_ingreso,fecha_objetivo,userName,timestamp_)
    values ('update',concat(old.id, ' - ',new.id),concat(old.cliente,' - ',new.cliente),concat(old.codigo,' - ',new.codigo),concat(old.cantidad,' - ',new.cantidad),concat(old.fecha_ingreso,' - ',new.fecha_ingreso),concat(old.fecha_objetivo,' - ',new.fecha_objetivo),system_user(),current_timestamp());
end//

update pedidos
set cantidad = 350
where id = 1;
select * from log_pedidos;

-- TRIGER BORRADO PEDIDO
drop trigger if exists tr_log_delete_pedido;
delimiter //
create trigger tr_log_delete_pedido
before delete on pedidos
for each row
begin
	insert into log_pedidos(actionName,id_pedido,cliente,codigo,cantidad,fecha_ingreso,fecha_objetivo,userName,timestamp_)
    values ('delete',concat(old.id),concat(old.cliente),concat(old.codigo),concat(old.cantidad),concat(old.fecha_ingreso),concat(old.fecha_objetivo),system_user(),current_timestamp());
end//

delete from pedidos
order by id desc
limit 1;
select * from log_pedidos;

-- TABLA LOG DE PRODUCTOS
drop table if exists log_productos;
create table log_productos (
	id int not null auto_increment primary key,
    actionName varchar(10) not null,
    codigo varchar(50) not null,
    diam_exterior varchar(50) not null,
    diam_interior varchar(50) not null,
    largo varchar(50),
    materia_prima varchar(50) not null,
    id_aplicacion varchar(50),
    userName varchar(50) not null,
    timestamp_ timestamp not null
);

-- TRIGER NUEVO PRODUCTO
drop trigger if exists tr_log_add_producto;
delimiter //
create trigger tr_log_add_producto
after insert on productos
for each row
begin
	insert into log_productos(actionName,codigo,diam_exterior,diam_interior,largo,materia_prima,id_aplicacion,userName,timestamp_)
    values ('insert',new.codigo,new.diam_exterior,new.diam_interior,new.largo,new.materia_prima,new.id_aplicacion,system_user(),current_timestamp());
end//

insert into productos(codigo,diam_exterior,diam_interior,largo,materia_prima,id_aplicacion)
values('av 8602',32.15,27,10,'503112',12);
select * from log_productos;

-- TRIGER BORRADO PRODUCTO
drop trigger if exists tr_log_delete_producto;
delimiter //
create trigger tr_log_delete_producto
before delete on productos
for each row
begin
	insert into log_productos(actionName,codigo,diam_exterior,diam_interior,largo,materia_prima,id_aplicacion,userName,timestamp_)
    values ('delete',old.codigo,old.diam_exterior,old.diam_interior,old.largo,old.materia_prima,old.id_aplicacion,system_user(),current_timestamp());
end//

delete from productos
where codigo = 'av 8602'; 
select * from log_productos;