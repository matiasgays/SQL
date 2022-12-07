drop schema if exists paises;
create schema paises;
use paises;

drop table if exists pais;
create table pais (
	nombre varchar(50) not null primary key,
    continente varchar(50) not null
);

drop table if exists localidad;
create table localidad (
	nombre varchar(50) not null primary key,
    pais varchar(50),
    constraint fk_localidad_pais foreign key (pais) references pais(nombre) on delete set null
);

insert into pais(nombre,continente) values ("argentina","america del sur"),
									("brasil","america del sur"),
                                    ("uruguay","america del sur"),
                                    ("chile","america del sur");
                                    
insert into localidad(nombre, pais) values ("rafaela","argentina"),
											("san telmo","argentina"),
                                            ("sao pablo","brasil"),
                                            ("portobello","brasil");
                                            
delete from pais where nombre = "argentina";

select * from localidad;

drop table if exists localidad;
truncate table pais;
insert into pais(nombre,continente) values ("argentina","america del sur"),
									("brasil","america del sur"),
                                    ("uruguay","america del sur"),
                                    ("chile","america del sur");

create table localidad (
	nombre varchar(50) not null primary key,
    pais varchar(50),
    constraint fk_localidad_pais foreign key (pais) references pais(nombre) 
		on update cascade on delete cascade
);
                                  
insert into localidad(nombre, pais) values ("rafaela","argentina"),
											("san telmo","argentina"),
                                            ("sao pablo","brasil"),
                                            ("portobello","brasil");
update pais set nombre = "colombia" where nombre = "argentina";
delete from pais where nombre = "argentina";

select * from localidad;
