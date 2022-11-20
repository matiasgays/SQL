drop schema if exists weskan;
create schema weskan;
use weskan;

drop table if exists materias_primas;
create table materias_primas(
	codigo_mp varchar(25) not null primary key
);

drop table if exists aplicaciones;
create table aplicaciones(
	id_aplicacion int not null auto_increment primary key,
    marca varchar(25) not null,
    modelo varchar(25) not null
);

drop table if exists clientes;
create table clientes(
	razon_social varchar(50) not null primary key,
	cuit int not null,
    mercado enum ('interno','externo') not null,
    email varchar(25) not null,
    whatsapp varchar(25)
);

drop table if exists productos;
create table productos (
	codigo varchar(25) not null primary key,
    materia_prima varchar(25) not null,
    aplicacion int not null,
    diam_interior decimal (4,2) not null,
    diam_exterior decimal (4,2) not null,
    largo decimal (4,2) not null,
    foreign key (materia_prima) references materias_primas(codigo_mp),
    foreign key (aplicacion) references aplicaciones(id_aplicacion)
);

drop table if exists pedidos;
create table pedidos(
	n_pedido int not null auto_increment primary key,
    cliente varchar(50) not null,
    codigo varchar(25) not null,
    cantidad int not null,
    fecha_ingreso date not null,
    fecha_objetivo date not null,
    foreign key (cliente) references clientes(razon_social),
    foreign key (codigo) references productos(codigo)
); 