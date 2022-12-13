use weskan;
select * from clientes;
select * from materias_primas;
select * from aplicaciones;
select * from productos;
select * from pedidos;
select * from vw_clientes_mercado_interno;
call sp_pedidosMercado('interno');