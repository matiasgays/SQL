use weskan;
select * from pedidos;

insert into clientes(razon_social,cuit,mercado,email) values ('14 de Julio',111,'interno','14dejulio@gmail.com');
insert into clientes(razon_social,cuit,mercado,email) values ('acotrac',112,'interno','acotrac@gmail.com');
insert into clientes(razon_social,cuit,mercado,email) values ('actis',113,'interno','actis@gmail.com');
insert into clientes(razon_social,cuit,mercado,email) values ('amaya',114,'interno','amaya@gmail.com');
insert into clientes(razon_social,cuit,mercado,email) values ('autofar',115,'interno','autofar@gmail.com');

insert into materias_primas(codigo_mp) values ('503112');
insert into materias_primas(codigo_mp) values ('472812');
insert into materias_primas(codigo_mp) values ('543813');
insert into materias_primas(codigo_mp) values ('433210');
 
insert into aplicaciones(marca,modelo) values ('BAJAJ','XCD 125-2v');
insert into aplicaciones(marca,modelo) values ('BAJAJ','ROUSER 135-4v');
insert into aplicaciones(marca,modelo) values ('BAJAJ','ROUSER 150');
insert into aplicaciones(marca,modelo) values ('BRAVA','XCD 125-2v');
insert into aplicaciones(marca,modelo) values ('CORVEN','ALTINO 150R');

insert into productos(codigo,materia_prima,aplicacion,diam_interior,diam_exterior,largo) values ('AV 1001','503112',1, 41.20,47.17,10.00);
insert into productos(codigo,materia_prima,aplicacion,diam_interior,diam_exterior,largo) values ('AV 1002','472812',2, 38.20,44.17,11.00);
insert into productos(codigo,materia_prima,aplicacion,diam_interior,diam_exterior,largo) values ('AV 1003','543813',3, 44.10,53.18,11.50);
insert into productos(codigo,materia_prima,aplicacion,diam_interior,diam_exterior,largo) values ('AV 1004','503112',4, 41.00,47.18,11.50);
insert into productos(codigo,materia_prima,aplicacion,diam_interior,diam_exterior,largo) values ('AV 1011','433210',5, 35.00,42.07,6.50);

insert into pedidos(cliente,codigo,cantidad,fecha_ingreso,fecha_objetivo) values ('actis','AV 1001',12,current_timestamp, DATE_ADD(current_timestamp,interval 10 day));
insert into pedidos(cliente,codigo,cantidad,fecha_ingreso,fecha_objetivo) values ('autofar','AV 1002',24, current_timestamp,DATE_ADD(current_timestamp,interval 10 day));
insert into pedidos(cliente,codigo,cantidad,fecha_ingreso,fecha_objetivo) values ('autofar','AV 1001',12, current_timestamp,DATE_ADD(current_timestamp,interval 10 day));
insert into pedidos(cliente,codigo,cantidad,fecha_ingreso,fecha_objetivo) values ('actis','AV 1003',120, current_timestamp,DATE_ADD(current_timestamp,interval 10 day));
insert into pedidos(cliente,codigo,cantidad,fecha_ingreso,fecha_objetivo) values ('14 de Julio','AV 1011',32, current_timestamp,DATE_ADD(current_timestamp,interval 10 day));

drop view if exists vw_clientes_mercado_interno;
create view vw_clientes_mercado_interno 
as (
select p.cliente, p.codigo, p.cantidad
from pedidos p join clientes cl
on p.cliente = cl.razon_social
where cl.mercado = 'interno'
);


drop procedure if exists sp_pedidosMercado;
DELIMITER //
create procedure sp_pedidosMercado(in param_mercado varchar(10))
begin 
	select p.cliente, p.codigo, p.cantidad
	from pedidos p join clientes cl
	on p.cliente = cl.razon_social
	where cl.mercado = param_mercado;
end
// DELIMITER ;




