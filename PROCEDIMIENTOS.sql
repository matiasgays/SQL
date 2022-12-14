use weskan;

-- PROCEDIMIENTO QUE ORDENA TABLA PEDIDOS POR @COLUMNA Y @ORDEN (ASC/DESC)
drop procedure if exists sp_order_table;
delimiter //
create procedure sp_order_table(in p_columnName char(25), in p_order char(25))
begin
	set @QueryColumn = concat('select * from pedidos order by ',p_columnName,' ',p_order); 
	prepare runSQL from @QueryColumn;
    execute runSQL;
    deallocate prepare runSQL;
end //

call sp_order_table('cliente','desc');

-- PROCEDIMIENTO QUE INSERTA NUEVO PEDIDO Y DEVUELVE TODOS LOS PEDIDOS DEL @CLIENTE
drop procedure if exists sp_insert_pedido;
delimiter //
create procedure sp_insert_pedido(in p_cliente char(25), in p_codigo char(25), in p_cantidad int)
begin
	set @InsertPedido = concat('insert into pedidos(cliente,codigo,cantidad,fecha_ingreso) values("',
		p_cliente,'","',p_codigo,'",',p_cantidad,',"',current_date(),'")');
	prepare runSQL from @InsertPedido;
    execute runSQL;
    deallocate prepare runSQL;
    
    select * from pedidos where cliente = p_cliente;
end //

-- alter table pedidos modify id int not null auto_increment;
call sp_insert_pedido('godoy','AV 1001',302);

