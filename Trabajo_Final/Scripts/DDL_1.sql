drop schema if exists weskan;
create schema weskan;
use weskan;

drop table if exists materias_primas;
create table materias_primas(
	codigo varchar(25) not null primary key,
    diam_exterior decimal (4,2) not null,
    diam_interior decimal (4,2) not null,
    largo decimal (4,2) not null
);

drop table if exists aplicaciones;
create table aplicaciones(
	id int not null auto_increment primary key,
    marca varchar(25) not null,
    modelo varchar(100) not null
);

drop table if exists clientes;
create table clientes(
	razon_social varchar(50) not null primary key,
    mercado enum ('interno','externo') not null
);

drop table if exists productos;
create table productos (
	codigo varchar(25) not null primary key,
    diam_exterior decimal (4,2) not null,
    diam_interior decimal (4,2) not null,
    largo decimal (4,2) not null,
    materia_prima varchar(25) not null,
    id_aplicacion int not null,
    constraint fk_materia_prima_productos foreign key (materia_prima) references materias_primas(codigo),
    constraint fk_aplicaciones_productos foreign key (id_aplicacion) references aplicaciones(id)
);

drop table if exists stg_pedidos;
create table stg_pedidos (
	id int not null auto_increment primary key,
    cliente varchar(250) not null,
    codigo varchar(250) not null,
    cantidad varchar(250) not null,
    fecha_ingreso varchar(250) not null,
    fecha_objetivo varchar(250) null
);