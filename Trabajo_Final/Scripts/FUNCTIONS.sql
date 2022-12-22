use weskan;

-- FUNCION QUE TRAE EL MERCADO DEL RESPECTIVO CLIENTE
drop function if exists fn_mercado_cliente;
delimiter //
create function fn_mercado_cliente(nombre varchar(50))
returns varchar(10)
deterministic
begin
	return (select mercado from clientes where razon_social = nombre);
end // 

select p.cliente, p.codigo, p.cantidad, fn_mercado_cliente(p.cliente) as mercado
from pedidos p
order by p.cliente;

-- FUNCION QUE CONCATENA LAS DIMENSIONES(DIAMETROS Y LARGO) DE LOS CODIGOS
drop function if exists fn_dimensiones;
delimiter //
create function fn_dimensiones(cod varchar(25))
returns varchar(50)
deterministic
begin
	declare exterior decimal(4,2);
    declare interior decimal(4,2);
    declare l decimal(4,2);
	set exterior = (select diam_exterior from productos where codigo = cod);
    set interior = (select diam_interior from productos where codigo = cod);
    set l = (select largo from productos where codigo = cod);
    return concat(exterior,'x',interior,'x',l);
end//

select p.cliente, p.codigo, p.cantidad, fn_dimensiones(p.codigo) as dimensiones
from pedidos p
order by p.codigo;