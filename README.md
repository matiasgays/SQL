# WESKAN DB
## Introduccion
Creacion de una base de datos (DB) en MySQL para la administracion/gestion de los pedidos internos de la empresa [Weskan](http://www.weskan.com.ar/).

## Descripcion
<img src="/Diagrama_EER.png" alt="Alt text" title="Optional title">

La DB contiene:
> **Tabla de hecho** <br>
&emsp; pedidos <br>
> **Tablas relacionales** <br>
&emsp; productos<br>
&emsp; clientes<br>
&emsp; aplicaciones<br>
&emsp; materias_primas
 
## Requerimientos
Tener instalado la plataforma de [MySQL](https://www.mysql.com/)

- Guia de instalacion MySQL en [Windows](https://docs.google.com/document/d/1BZ5IdNg4BjlBlgcsaTCN2hkYTc4lN9rsm5gOlyFT3ko/edit)
- Guia de instalacion MySQL en [MAC](https://docs.google.com/document/d/1BZ5IdNg4BjlBlgcsaTCN2hkYTc4lN9rsm5gOlyFT3ko/edit)

## Pasos a seguir:

1. Ejecutar script DDL_1
2. Importar los datos de las respectivas tablas (la tabla pedidos se carga en una tabla intermedia stg_pedidos)
3. Ejecutar script DDL_2
4. Ejecutar script VISTAS
