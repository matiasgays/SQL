use weskan;

drop table if exists pedidos;
create table pedidos as ( select
	id,
	cast(cliente as char(50)) as cliente,
    cast(codigo as char(25)) as codigo,
    cast(cantidad as signed) as cantidad,
    cast(str_to_date(fecha_ingreso,'%d/%m/%Y') as date) as fecha_ingreso,
    cast(str_to_date(fecha_objetivo,'%d/%m/%Y') as date) as fecha_objetivo
	from stg_pedidos
);

SET FOREIGN_KEY_CHECKS=0;

alter table pedidos 
modify id int not null auto_increment primary key;

alter table pedidos 
modify cliente varchar(50) not null;

alter table pedidos 
modify codigo varchar(25) not null;

alter table pedidos 
modify cantidad int not null;

alter table pedidos 
modify fecha_ingreso date not null;

alter table pedidos
add constraint fk_productos_pedidos
foreign key (codigo)
references productos(codigo);

alter table pedidos
add constraint fk_clientes_pedidos 
foreign key (cliente)
references clientes(razon_social);

SET FOREIGN_KEY_CHECKS=1;

drop table if exists stg_pedidos;