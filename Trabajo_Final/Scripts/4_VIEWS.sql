use weskan;

-- PEDIDOS DE CLIENTES DE MERCADO INTERNO
drop view if exists vw_pedidos_mercado_interno;
create view vw_pedidos_mercado_interno 
as (
	select p.cliente, p.codigo, p.cantidad, cl.mercado
	from pedidos p 
	join clientes cl
		on p.cliente = cl.razon_social
	where cl.mercado = 'interno'
	order by p.cliente
);
select * from vw_pedidos_mercado_interno;

-- PEDIDOS CON FECHA OBJETIVO MENOR A LA FECHA ACTUAL
drop view if exists vw_pedidos_pendientes;
create view vw_pedidos_pendientes as (
	select cliente, codigo, cantidad, date_format(fecha_objetivo,'%d/%m/%Y') as fecha_objetivo
    from pedidos
    where fecha_objetivo < curdate()
    order by fecha_objetivo desc
);
select * from vw_pedidos_pendientes;

-- MATERIA PRIMA NECESARIA PARA PEDIDOS CUYO DIAMETRO INTERIOR ES MENOR A 20
drop view if exists vw_pedidos_diam_int_menor_20;
create view vw_pedidos_diam_int_menor_20 as (
	select p.cliente, p.codigo, p.cantidad, prod.diam_interior, m.codigo as materia_prima
    from pedidos p 
    join productos prod
		on p.codigo = prod.codigo
    join materias_primas m 
		on prod.materia_prima = m.codigo
    where m.diam_interior < 20
    order by prod.diam_interior
);
select * from vw_pedidos_diam_int_menor_20;

-- LISTADO DE LAS VARIEDADES DE MARCAS Y MODELOS QUE SE APLICAN LOS PRODUCTOS CUYOS CODIGOS EMPIZAN CON "AV 8"
drop view if exists vw_cantidad_marcas_av8;
create view vw_cantidad_marcas_av8 as (
	select prod.codigo, a.marca, a.modelo 
    from aplicaciones a 
    join productos prod 
		on a.id = prod.id_aplicacion
    where prod.codigo like 'AV 8%'
    order by marca
);
select * from vw_cantidad_marcas_av8;

-- PEDIDOS PARA AUTOS FIAT
drop view if exists vw_pedidos_fiat;
create view vw_pedidos_fiat as (
	select p.cliente, p.codigo, p.cantidad, a.marca
    from pedidos p
    join productos prod
		on p.codigo = prod.codigo
    join aplicaciones a
		on prod.id_aplicacion = a.id
	where a.marca = 'FIAT'
    order by p.cliente
);

select * from vw_pedidos_fiat;