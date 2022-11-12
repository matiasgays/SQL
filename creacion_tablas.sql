drop schema if exists weskan;
create schema weskan;
use weskan;

drop table if exists pedidos;
create table pedidos(
	n_pedido int not null auto_increment primary key,
    fecha_ingreso date not null,
    cliente varchar(50) not null,
    codigo varchar(25) not null,
    cantidad int not null,
    fecha_objetivo date not null,
    foreign key (cliente) references clientes(razon_social),
    foreign key (codigo) references productos(codigo)
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
    marca varchar(25) not null,
    modelo varchar(25) not null,
    foreign key (materia_prima) references materias_primas(codigo),
    foreign key (marca,modelo) references aplicaciones(marca,modelo)
);

drop table if exists aplicaciones;
create table aplicaciones(
    marca varchar(25) not null,
    modelo varchar(25) not null,
    primary key (marca,modelo)
);

drop table if exists materias_primas;
create table materias_primas(
	codigo varchar(25) not null primary key,
    diam_interior decimal not null,
    diam_exterior decimal not null,
    largo decimal not null
);