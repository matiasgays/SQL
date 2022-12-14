use weskan;

select * from vw_pedidos_fiat;
select * from productos;
select * from aplicaciones; 
select fn_dimensiones('av 1001') as dimensiones;
select fn_pedidos_auto('actis');

drop procedure if exists sp_insertdata;
delimiter //
create procedure sp_insertdata(in p_marca char(25), in p_modelo char(25))
begin
	if (p_marca = "" or p_modelo = "") then
		select "ERROR: the row couldn't be inserted";
	else
		insert into aplicaciones(marca, modelo) values(p_marca,p_modelo);
		select * from aplicaciones order by marca;
	end if;
end //

call sp_insertdata('PEUGEOT','');
