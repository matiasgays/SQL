# WESKAN DB
## Introduccion
Creacion de una base de datos (DB) en MySQL para la administracion/gestion de los pedidos internos de la empresa [Weskan](http://www.weskan.com.ar/).

## Descripcion
<img src="/Diagramas/Diagrama_EER.png" alt="Alt text" title="Optional title">

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

## Scripts
### [DDL](/DDL.sql)
### [DML](/DML.sql)


## Pasos a seguir:

1. Ejecutar DDL_1
2. Importar datos ubicados en la carpeat "Importaciones"
3. Ejecutar DDL_2
4. Ejecutar VISTAS
5. Ejecutar FUNCIONES
